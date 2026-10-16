#!/usr/bin/env python3
"""
Repère les voix internes (A, T, B) dont le texte est décalé par rapport au soprano : une suite
d'au moins MIN_SUITE syllabes posées ailleurs qu'à leur place attendue (note attaquée à l'instant
du soprano, sinon note qui sonne et libre, sinon note suivante ; « → » = place attendue). Référence = soprano (son texte se vérifie sur le scan) et
non la majorité : en 368 (« Alpha es et O »), A, T et B portaient la même erreur recopiée.
Typique d'un « _ » mal placé (syllabe glissée d'une note) ; cf. groupe 2 des notes répétées.

Couplet par couplet (même suffixe de variable dans chaque voix). Ne fait que signaler.
Usage : python3 decalage_texte.py [BWV_x ...]  -> rapports/decalages_texte.txt
"""
import re
import sys
from difflib import SequenceMatcher
from fractions import Fraction
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from comparer_scans import FOLDER
from conform_voice import extract_var
from detecter_melisme_recopie import slots, syllables, clean
from valider_chorals import COUPLETS

HERE = Path(__file__).resolve().parent
REPORT = HERE / "rapports" / "decalages_texte.txt"
VOIX = {"S": "soprano", "A": "alto", "T": "tenor", "B": "bass"}
# texte décalé voulu, vérifié sur le scan (ligne de texte propre à une voix) : ne plus signaler
CONFORME_SCAN = {"BWV_10_7", "BWV_121_6", "BWV_144_6"}
MIN_SUITE = 2   # ponytail: une syllabe isolée décalée est souvent légitime (rythme pointé, anticipation)


def a_liaisons(mus):
    """Liaison d'expression « ( ) » : LilyPond en fait un mélisme, que slots() ignore.
    ponytail: seul BWV_52_6 en a (convention du corpus : mélismes en « _ ») ; voix non analysée."""
    return re.search(r"(?<![#\\'])\((?!\s*\))", re.sub(r'"[^"]*"', "", mus)) is not None


def debuts(t, nomv, suf):
    """([(syllabe nettoyée, instant en noires)], instants des notes de la voix) d'un couplet, ou None."""
    ly = extract_var(t, f"{nomv}Lyrics{suf}")
    mus = extract_var(t, f"{nomv}Music")
    # couplet qui passe sur une autre voix (\set associatedVoice, divisi de BWV_76_7_14) :
    # ses syllabes ne suivent plus les notes de la voix principale, instants non calculables
    if ly is None or mus is None or "associatedVoice" in ly or a_liaisons(mus):
        return None
    sl = slots(mus)
    return [(clean(txt), s["on"] * 4) for s, (_, txt, hold) in zip(sl, syllables(ly)[0]) if not hold], \
        {s["on"] * 4 for s in sl}


def mesure(t, on):
    """Numéro de mesure approximatif (levée = 0), d'après \\time et \\partial (notes + layout).
    ponytail: premier \\time seulement ; un changement de mesure en cours de choral décale la suite."""
    m = re.search(r"\\time\s+(\d+)/(\d+)", t)
    temps = Fraction(int(m.group(1)) * 4, int(m.group(2))) if m else Fraction(4)
    p = re.search(r"\\partial\s+(\d+)(\.?)", t)
    lev = Fraction(4, int(p.group(1))) * (Fraction(3, 2) if p and p.group(2) else 1) if p else 0
    return int((Fraction(on) - lev) // temps) + 1 if on >= lev else 0


def cas(bwv):
    if bwv in CONFORME_SCAN:
        return []
    t = next(FOLDER.glob(f"*({bwv})*_notes.ily")).read_text(encoding="utf-8")
    # \time du layout en tête : un « \omit \time 2/4 » isolé dans les notes (BWV_261) doublait les numéros
    tm = next(FOLDER.glob(f"*({bwv})*_layout.ly")).read_text(encoding="utf-8") + t
    out = []
    for suf in COUPLETS:
        sop = debuts(t, "soprano", suf)
        if not sop:
            continue
        ref = sop[0]
        for v, nv in VOIX.items():
            if v == "S" or not (d := debuts(t, nv, suf)):
                continue
            seq, attaques = d
            # instant de la même syllabe au soprano (alignement des textes)
            s_on = {}
            sm = SequenceMatcher(None, [x for x, _ in seq], [x for x, _ in ref], autojunk=False)
            for a, b, n in sm.get_matching_blocks():
                for k in range(n):
                    s_on[a + k] = ref[b + k][1]
            # place attendue (règle de l'aligneur, cf. BWV 261) : note attaquée à l'instant du
            # soprano ; sinon la note qui sonne à cet instant, si la syllabe précédente ne l'occupe
            # pas ; sinon la note attaquée juste après. On compare à la place réelle.
            sl = slots(extract_var(t, f"{nv}Music"))
            ons = [s["on"] * 4 for s in sl]
            place = {o: i for i, o in enumerate(ons)}

            def attendue(r, p):
                for test in (lambda i: ons[i] == r, lambda i: ons[i] < r < ons[i] + sl[i]["dur"] * 4,
                             lambda i: ons[i] > r):
                    if (i := next((i for i in range(p, len(sl)) if test(i)), None)) is not None:
                        return i
                return None
            suite, prec = [], -1
            for k, (x, on) in enumerate(seq + [("", None)]):
                r = s_on.get(k)
                i = place.get(on)
                e = attendue(r, prec + 1) if r is not None and i is not None else None
                if i is not None:
                    prec = i
                if e is not None and e != i:
                    suite.append((x, on, ons[e]))
                    continue
                if len(suite) >= MIN_SUITE:
                    d0 = suite[0][1]
                    out.append((v, suf or "1", mesure(tm, d0), float(d0), len(suite),
                                " ".join(f"{x}@{float(o):g}(→{float(r):g})" for x, o, r in suite)))
                suite = []
    return out


def main(ids):
    lignes, n = [], 0
    for bwv in ids:
        try:
            c = cas(bwv)
        except Exception as e:  # choral au format inhabituel : signalé, pas bloquant
            lignes.append(f"{bwv} : erreur ({e})")
            continue
        for v, suf, m, on, nb, det in c:
            lignes.append(f"{bwv}\t{v}\tcouplet {suf}\tmes. ≈{m}\t{nb} syll.\t{det}")
            n += 1
    return f"{n} décalage(s) de texte entre voix (≥ {MIN_SUITE} syllabes)\n\n" + "\n".join(lignes) + "\n"


if __name__ == "__main__":
    ids = sys.argv[1:] or sorted(m.group(1) for f in FOLDER.glob("*_layout.ly")
                                 if (m := re.search(r"\((BWV_[^)]+)\)", f.name)))
    rapport = main(ids)
    if sys.argv[1:]:
        print(rapport)
    else:
        REPORT.write_text(rapport, encoding="utf-8")
        print(rapport.splitlines()[0], "->", REPORT)
