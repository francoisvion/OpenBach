#!/usr/bin/env python3
"""
Compare les NOTES de nos chorals à nos scans (2 portées, bach-chorales.com),
lus par OMR (Audiveris -> MusicXML).

- Nos notes : LilyPond lui-même via event-listener.ly (attaque, hauteur MIDI,
  durée, liaisons) — aucune réécriture du parseur, \\repeat / \\relative /
  \\time compris.
- Scan : MusicXML d'Audiveris (rapports/omr/BWV_x_y.mxl), 2 portées,
  2 voix par portée.

Comparaison par PORTÉE (S+A = portée 1, T+B = portée 2) et non par voix :
l'OMR attribue parfois mal les voix, surtout aux unissons. Notes liées
fusionnées des deux côtés. Chaque note = (attaque, hauteur, durée) en noires.

Ne fait que signaler : l'OMR se trompe aussi. Chaque écart se vérifie sur le
scan avant correction.

Usage : python3 comparer_scans.py [BWV_121_6 ...]   (sans argument : tout)
        -> rapports/comparaison_scans.txt
"""
import re
import subprocess
import sys
import tempfile
import zipfile
import xml.etree.ElementTree as ET
from fractions import Fraction
from pathlib import Path

HERE = Path(__file__).resolve().parent
CHORALS = HERE.parent
FOLDER = CHORALS / "Chorals avec paroles - partition ouverte - notes et layout séparés"
OMR = HERE / "rapports" / "omr"
REPORT = HERE / "rapports" / "comparaison_scans.txt"
LILYPOND = (Path.home() / "Library/Application Support/frescobaldi/frescobaldi/"
            "lilypond-binaries/lilypond-2.27.3/bin/lilypond")
NOMS = "do do# ré mib mi fa fa# sol sol# la sib si".split()


def nom(midi):
    return f"{NOMS[midi % 12]}{midi // 12 - 1}"


def fusion_liaisons(notes):
    """notes: [(on, midi, dur, tie_vers_suivante)] triées -> liaisons fusionnées."""
    out = []
    ouvertes = {}  # midi -> index dans out d'une note liée en attente
    for on, midi, dur, tie in sorted(notes):
        i = ouvertes.pop(midi, None)
        if i is not None and out[i][0] + out[i][2] == on:
            a, m, d = out[i]
            out[i] = (a, m, d + dur)
            if tie:
                ouvertes[midi] = i
            continue
        out.append((on, midi, dur))
        if tie:
            ouvertes[midi] = len(out) - 1
    return out


# ---------- nos fichiers : LilyPond event-listener ----------

def notes_lilypond(layout):
    with tempfile.TemporaryDirectory() as tmp:
        w = Path(tmp) / "w.ly"
        w.write_text(f'\\include "event-listener.ly"\n\\include "{layout}"\n', encoding="utf-8")
        subprocess.run([str(LILYPOND), "-s", "-dno-print-pages", "-o", str(Path(tmp) / "w"), str(w)],
                       cwd=tmp, capture_output=True)
        voix = {}
        for f in Path(tmp).glob("w-*.notes"):
            notes, ties = [], set()
            for line in f.read_text(encoding="utf-8").splitlines():
                c = line.split("\t")
                on = Fraction(c[0]).limit_denominator(960) * 4
                if c[1] == "note":
                    notes.append([on, int(c[2]), Fraction(c[4]).limit_denominator(960) * 4])
                elif c[1] == "tie":
                    ties.add(on)
            voix[f.stem.split("-", 1)[1]] = fusion_liaisons(
                [(on, m, d, on in ties) for on, m, d in notes])
    return voix


# ---------- scan : MusicXML Audiveris ----------

def notes_musicxml(mxl):
    with zipfile.ZipFile(mxl) as z:
        name = next(n for n in z.namelist() if n.endswith(".xml") and not n.startswith("META"))
        root = ET.fromstring(z.read(name))
    STEP = {"C": 0, "D": 2, "E": 4, "F": 5, "G": 7, "A": 9, "B": 11}
    # 1re passe : contenu de chaque mesure, en temps relatif, pour chaque partie
    parties, nominaux = [], []
    for ip, part in enumerate(root.iter("part")):
        div, nominal, mesures = 1, None, []
        for k, mes in enumerate(part.iter("measure")):
            t = prec = fin = Fraction(0)
            contenu = []
            for el in mes:
                if el.tag == "attributes":
                    if el.find("divisions") is not None:
                        div = int(el.find("divisions").text)
                    ts = el.find("time")
                    if ts is not None and ts.find("beats") is not None:
                        nominal = Fraction(4 * int(ts.find("beats").text), int(ts.find("beat-type").text))
                elif el.tag == "backup":
                    t -= Fraction(int(el.find("duration").text), div)
                elif el.tag == "forward":
                    t += Fraction(int(el.find("duration").text), div)
                elif el.tag == "note":
                    if el.find("grace") is not None or el.find("cue") is not None \
                            or el.get("print-object") == "no":
                        continue
                    d = Fraction(int(el.find("duration").text), div) if el.find("duration") is not None else 0
                    on = prec if el.find("chord") is not None else t
                    p = el.find("pitch")
                    if p is not None:
                        alt = p.find("alter")
                        midi = (12 * (int(p.find("octave").text) + 1) + STEP[p.find("step").text]
                                + (int(float(alt.text)) if alt is not None else 0))
                        tie = any(x.get("type") == "start" for x in el.findall("tie"))
                        st = el.find("staff")
                        staff = (ip, int(st.text) if st is not None else 1)
                        contenu.append((on, midi, d, tie, staff))
                    if el.find("chord") is None:
                        prec = t
                        t += d
                fin = max(fin, t)
            mesures.append((contenu, fin))
            if ip == 0:
                nominaux.append(nominal)
        parties.append(mesures)
    # 2e passe : longueur commune = plus grande lecture des parties, bornée au chiffrage
    # (une durée mal lue sur une portée ne décale pas la suite ; les vraies mesures
    # courtes, levées et coupes aux points d'orgue, restent courtes sur toutes les portées)
    n = min(len(m) for m in parties)
    notes, mesures, t = {}, [], Fraction(0)
    for k in range(n):
        mesures.append(t)
        long = max(parties[ip][k][1] for ip in range(len(parties)))
        if nominaux[k]:
            long = min(long, nominaux[k])
        for ip in range(len(parties)):
            for on, midi, d, tie, staff in parties[ip][k][0]:
                notes.setdefault(staff, []).append((t + on, midi, d, tie))
        t += long
    portees = [fusion_liaisons(notes[s]) for s in sorted(notes)]
    # numérotation comme nos fichiers : levée = mesure 0 (Audiveris la numérote 1)
    levee = len(mesures) > 2 and mesures[1] - mesures[0] < mesures[2] - mesures[1]
    return portees, [(t, str(i if levee else i + 1)) for i, t in enumerate(mesures)]


def mesure_de(on, mesures):
    num = mesures[0][1] if mesures else "?"
    for debut, n in mesures:
        if debut <= on:
            num = n
    return num


def comparer(bwv):
    layout = next(FOLDER.glob(f"*({bwv})*_layout.ly"), None)
    mxl = OMR / f"{bwv}.mxl"
    if layout is None or not mxl.exists():
        return None, "fichier ou OMR manquant"
    ours = notes_lilypond(layout)
    scan, mesures = notes_musicxml(mxl)
    if len(scan) != 2 or not all(v in ours for v in "SATB"):
        return None, f"structure inattendue (OMR : {len(scan)} portée(s))"
    lignes = []
    for i, (haut, bas) in enumerate((("S", "A"), ("T", "B"))):
        a = set(ours[haut]) | set(ours[bas])
        b = set(scan[i])
        for cat, mes, nous, eux in classer(a - b, b - a, a, b, mesures):
            debut = dict((n_, t_) for t_, n_ in mesures).get(mes, 0)
            f = lambda l: " ".join(f"{nom(m)}({d})@{float(o - debut + 1):g}" for o, m, d in sorted(l)) or "—"
            lignes.append((PRIO[cat], int(re.sub(r"\D", "", mes) or 0),
                           f"  [{cat}] {haut}{bas} m.{mes:<4} nous : {f(nous):<30} scan : {f(eux)}"))
    lignes.sort()
    n_notes = sum(1 for l in lignes if l[0] <= 1)
    return [l for *_, l in lignes], n_notes


PRIO = {"différent": 0, "absent chez nous": 1, "altération ?": 2, "absent du scan (OMR ?)": 3,
        "liaison ou note répétée": 4}


def couvert(note, autre):
    """La note est-elle couverte exactement, même hauteur, par une chaîne contiguë de l'autre côté ?"""
    on, m, d = note
    t, fin = on, on + d
    segs = sorted(x for x in autre if x[1] == m)
    while t < fin:
        nxt = [x for x in segs if x[0] == t and x[0] + x[2] <= fin]
        if not nxt:
            return False
        t = nxt[0][0] + nxt[0][2]
    return True


def couvert_inverse(note, autre):
    """La note fait-elle partie d'une note plus longue, même hauteur, de l'autre côté ?"""
    on, m, d = note
    return any(x[1] == m and x[0] <= on and on + d <= x[0] + x[2] for x in autre)


def classer(nous_seuls, eux_seuls, a, b, mesures):
    groupes = {}
    reste_n, reste_e = set(nous_seuls), set(eux_seuls)
    for x in sorted(nous_seuls):
        if couvert(x, b) or couvert_inverse(x, b):
            groupes.setdefault(("liaison ou note répétée", mesure_de(x[0], mesures)), [[], []])[0].append(x)
            reste_n.discard(x)
    for y in sorted(eux_seuls):
        if couvert(y, a) or couvert_inverse(y, a):
            groupes.setdefault(("liaison ou note répétée", mesure_de(y[0], mesures)), [[], []])[1].append(y)
            reste_e.discard(y)
    for x in sorted(reste_n):
        y = next((y for y in sorted(reste_e) if y[0] == x[0] and y[2] == x[2] and abs(y[1] - x[1]) == 1), None)
        if y:
            g = groupes.setdefault(("altération ?", mesure_de(x[0], mesures)), [[], []])
            g[0].append(x); g[1].append(y)
            reste_n.discard(x); reste_e.discard(y)
    autres = {}
    for x in reste_n:
        autres.setdefault(mesure_de(x[0], mesures), [[], []])[0].append(x)
    for y in reste_e:
        autres.setdefault(mesure_de(y[0], mesures), [[], []])[1].append(y)
    for m, (n, e) in autres.items():
        cat = "différent" if n and e else ("absent du scan (OMR ?)" if n else "absent chez nous")
        groupes[(cat, m)] = [n, e]
    return [(c, m, n, e) for (c, m), (n, e) in groupes.items()]


def main(ids):
    out, propres, ko = [], 0, []
    for bwv in ids:
        lignes, info = comparer(bwv)
        if lignes is None:
            ko.append(f"{bwv} : {info}")
        elif not lignes:
            propres += 1
        else:
            out.append(f"{bwv} — {info} écart(s) prioritaire(s)\n" + "\n".join(lignes))
    out.sort(key=lambda b: -int(re.search(r"— (\d+) écart", b).group(1)))
    entete = (f"{len(ids)} chorals : {propres} identiques au scan, {len(out)} avec écarts, "
              f"{len(ko)} non comparés\n"
              "Mesures numérotées comme le scan ; note(durée en noires)@temps. Priorité : différent > absent chez nous > "
              "altération ? > absent du scan (OMR ?) > liaison ou note répétée.\n")
    return entete + "\n" + "\n\n".join(out) + ("\n\nNon comparés :\n" + "\n".join(ko) if ko else "")


if __name__ == "__main__":
    assert fusion_liaisons([(0, 60, 1, True), (1, 60, Fraction(1, 2), False)]) == [(0, 60, Fraction(3, 2))]
    assert nom(61) == "do#4"
    ids = sys.argv[1:] or sorted(re.search(r"\((BWV_[^)]+)\)", f.name).group(1)
                                 for f in FOLDER.glob("*_layout.ly") if re.search(r"\((BWV_[^)]+)\)", f.name))
    rapport = main(ids)
    if sys.argv[1:]:
        print(rapport)
    else:
        REPORT.write_text(rapport, encoding="utf-8")
        print(rapport.splitlines()[0], "->", REPORT)
