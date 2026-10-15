#!/usr/bin/env python3
"""
Feuille de relecture des écarts de notes (scan contre nos fichiers).

Pour chaque cas BWV_x:mesure:portée (portée 0 = S/A, 1 = T/B ; mesures numérotées
comme dans comparaison_scans.txt) :
- scan : portée concernée, mesure précédente + mesure (encadrée) + mesure suivante,
  recadrée grâce aux coordonnées du fichier .omr d'Audiveris ;
- nous : même passage gravé par LilyPond (sans texte ni armure), calé sur NOS barres
  de mesure, mesure suivante comprise (liaisons sortantes visibles) ;
- les écarts de la zone, y compris « liaison ou note répétée ».

Usage : python3 feuille_relecture.py DOSSIER_OMR SORTIE.html BWV_x:mes:portée[:verdict] ...
        (DOSSIER_OMR : dossier contenant les .omr d'Audiveris, sous-dossiers acceptés)
"""
import base64
import io
import os
import re
import subprocess
import sys
import tempfile
import zipfile
import xml.etree.ElementTree as ET
from fractions import Fraction
from pathlib import Path

from PIL import Image, ImageDraw

sys.path.insert(0, str(Path(__file__).resolve().parent))
from comparer_scans import FOLDER, LILYPOND, OMR, comparer, nom, notes_musicxml

SCANS = FOLDER.parent / "scan"

# Barres de mesure de NOTRE fichier : moments (en rondes) où measurePosition = 0.
BARRES = r"""
\layout { \context { \Score \consists
  #(lambda (ctx)
     (make-engraver
       ((process-music engraver)
         (if (equal? (ly:context-property ctx 'measurePosition) ZERO-MOMENT)
             (format (current-error-port) "BARRE ~a\n"
                     (ly:moment-main (ly:context-current-moment ctx)))))))
} }
"""
PAPIER = ("\\paper { bookTitleMarkup = ##f scoreTitleMarkup = ##f oddFooterMarkup = ##f "
          "evenFooterMarkup = ##f oddHeaderMarkup = ##f evenHeaderMarkup = ##f }\n")


def saut(q):
    q = Fraction(q)
    return f"s1*{q.numerator}/{q.denominator * 4}" if q else ""


def wrapper(layout, prefixe):
    txt = layout.read_text(encoding="utf-8")
    inc = re.search(r'\\include\s+"([^"]+_notes\.ily)"', txt)
    notes = (FOLDER / inc.group(1)).read_text(encoding="utf-8")
    vides = "".join(f"\n{n} = \\lyricmode {{ }}"
                    for n in sorted(set(re.findall(r"^(\w+)\s*=\s*\\lyricmode", notes, re.M))))
    return txt.replace(inc.group(0), f'\\include "{FOLDER / inc.group(1)}"\n{prefixe}{vides}\n', 1) + PAPIER


def nos_barres(layout):
    with tempfile.TemporaryDirectory() as tmp:
        w = Path(tmp) / "b.ly"
        w.write_text(wrapper(layout, "") + BARRES, encoding="utf-8")
        p = subprocess.run([str(LILYPOND), "-dno-print-pages", "-o", str(Path(tmp) / "b"), str(w)],
                           cwd=tmp, capture_output=True, text=True)
    return sorted({Fraction(x) * 4 for x in re.findall(r"BARRE (\S+)", p.stderr)})


def rendu_nous(layout, debut, fin, portee):
    ctl = (f"{{ \\set Score.skipTypesetting = ##t {saut(debut)} \\set Score.skipTypesetting = ##f "
           f"{saut(fin - debut)} \\set Score.skipTypesetting = ##t }}")
    with tempfile.TemporaryDirectory() as tmp:
        w = Path(tmp) / "r.ly"
        w.write_text(wrapper(layout, f"sopranoMusic = << \\sopranoMusic {ctl} >>"), encoding="utf-8")
        subprocess.run([str(LILYPOND), "-s", "--png", "-dcrop", "-dresolution=200",
                        "-o", str(Path(tmp) / "r"), str(w)], cwd=tmp, capture_output=True)
        im = Image.open(Path(tmp) / "r.cropped.png").convert("RGB")
    h = im.height
    return im.crop((0, 0, im.width, h // 2 + 10)) if portee == 0 else im.crop((0, h // 2 - 10, im.width, h))


def rendu_scan(bwv, dossier_omr, lab, portee):
    omr = next(Path(dossier_omr).rglob(f"{bwv}.omr"))
    root = ET.fromstring(zipfile.ZipFile(omr).read("sheet#1/sheet#1.xml"))
    ms = []
    for sy in root.iter("system"):
        stv = list(sy.iter("staff"))
        for stk in sy.iter("stack"):
            ms.append((int(stk.get("left")), int(stk.get("right")), stv, stk.get("special")))
    i = int(lab) if ms[0][3] == "PICKUP" else int(lab) - 1
    l, r, stv, _ = ms[i]
    gauche = ms[i - 1][0] if i > 0 and ms[i - 1][2] is stv else l
    droite = ms[i + 1][1] if i + 1 < len(ms) and ms[i + 1][2] is stv else r
    ys = [float(p.get("y")) for p in stv[portee].iter("point")]
    im = Image.open(SCANS / f"{bwv}.jpg").convert("RGB")
    ImageDraw.Draw(im).rectangle((l - 4, int(min(ys)) - 70, r + 4, int(max(ys)) + 70),
                                 outline=(200, 90, 20), width=5)
    return im.crop((max(0, gauche - 20), int(min(ys)) - 130, min(im.width, droite + 30), int(max(ys)) + 130))


def paire(bwv, lab, portee, dossier_omr):
    layout = next(FOLDER.glob(f"*({bwv})*_layout.ly"))
    _, mes = notes_musicxml(OMR / f"{bwv}.mxl")
    t = dict((n, x) for x, n in mes)[lab]
    barres = nos_barres(layout)
    avant = [b for b in barres if b <= t]
    debut = avant[-2] if len(avant) > 1 else (avant[-1] if avant else 0)
    apres = [b for b in barres if b > t]
    fin = apres[1] if len(apres) > 1 else (apres[0] if apres else t + 8)
    scan = rendu_scan(bwv, dossier_omr, lab, portee)
    nous = rendu_nous(layout, debut, fin, portee)
    W = 1000
    scan = scan.resize((W, int(scan.height * W / scan.width)))
    nous = nous.resize((W, int(nous.height * W / nous.width)))
    out = Image.new("RGB", (W, scan.height + nous.height + 70), "white")
    d = ImageDraw.Draw(out)
    d.text((8, 6), "SCAN", fill=(0, 0, 0)); out.paste(scan, (0, 24))
    d.text((8, scan.height + 34), "NOUS", fill=(0, 0, 0)); out.paste(nous, (0, scan.height + 52))
    if os.environ.get("PAIRES_DIR"):  # copie des images, pour les examiner hors de la page
        out.save(Path(os.environ["PAIRES_DIR"]) / f"{bwv}_{lab}.png")
    b = io.BytesIO(); out.save(b, "PNG", optimize=True)
    return "data:image/png;base64," + base64.b64encode(b.getvalue()).decode()


def ecarts_zone(bwv, lab):
    lignes, _ = comparer(bwv)
    n = int(lab)
    return [l.strip() for l in lignes or [] if (m := re.search(r" m\.(\d+)", l)) and abs(int(m.group(1)) - n) <= 1]


STYLE = """<style>
:root{--paper:#fbfaf7;--ink:#1d1c1a;--muted:#6a655c;--rule:#dcd6cb;--plate:#fff;--accent:#9a4a12;
--display:Georgia,"Times New Roman",serif;--body:system-ui,"Helvetica Neue",Arial,sans-serif}
@media (prefers-color-scheme:dark){:root:not([data-theme="light"]){color-scheme:dark;--paper:#1b1a18;--ink:#ece8e1;--muted:#a8a296;--rule:#3a3732;--plate:#f4f2ee;--accent:#f0a86e}}
:root[data-theme="dark"]{color-scheme:dark;--paper:#1b1a18;--ink:#ece8e1;--muted:#a8a296;--rule:#3a3732;--plate:#f4f2ee;--accent:#f0a86e}
body{background:var(--paper);color:var(--ink);font:400 1rem/1.55 var(--body);padding-inline:clamp(16px,4vw,48px);padding-block:32px 64px}
main{max-width:1100px;margin-inline:auto;display:grid;gap:40px}
h1{font:600 clamp(1.7rem,3.2vw,2.3rem)/1.1 var(--display);margin:0;text-wrap:balance}
h2{font:600 1.4rem/1.2 var(--display);margin:0}
p{margin:0;max-width:72ch} .lede,.meta{color:var(--muted)}
section{display:grid;gap:12px;border-top:1px solid var(--rule);padding-top:22px}
.head{display:flex;flex-wrap:wrap;align-items:baseline;gap:8px 16px}
.verdict{color:var(--accent);font-weight:600}
img{width:100%;height:auto;background:var(--plate);border:1px solid var(--rule)}
ul{margin:0;padding-left:1.2em;font:0.85rem/1.5 ui-monospace,Menlo,monospace;overflow-x:auto}
</style>"""


def main(dossier_omr, sortie, cas):
    sections = []
    for c in cas:
        bwv, lab, portee, *verdict = c.split(":", 3)
        img = paire(bwv, lab, int(portee), dossier_omr)
        ecarts = "".join(f"<li>{e}</li>" for e in ecarts_zone(bwv, lab))
        sections.append(
            f'<section><div class="head"><h2>BWV {bwv[4:].replace("_", "/")}</h2>'
            f'<span class="meta">{"S/A" if portee == "0" else "T/B"} · mesure {lab}</span>'
            f'<span class="verdict">{verdict[0] if verdict else ""}</span></div>'
            f'<img src="{img}" alt="Scan et notre rendu, BWV {bwv[4:]}, mesure {lab}">'
            f'<p class="meta">Écarts de la zone (mesure ± 1), y compris liaisons :</p><ul>{ecarts}</ul></section>')
    html = (f"<title>{Path(sortie).stem}</title>{STYLE}<main><header><h1>{Path(sortie).stem}</h1>"
            "<p class='lede'>Pour chaque cas : en haut le scan (mesure encadrée, avec la précédente et la "
            "suivante), en bas notre fichier sur les mêmes mesures, calé sur nos barres (sans texte ni "
            "armure : altérations écrites sur les notes). Rien n'est encore corrigé.</p></header>"
            + "".join(sections) + "</main>")
    Path(sortie).write_text(html, encoding="utf-8")


if __name__ == "__main__":
    assert saut(Fraction(3, 2)) == "s1*3/8"
    main(sys.argv[1], sys.argv[2], sys.argv[3:])
