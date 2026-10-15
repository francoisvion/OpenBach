#!/usr/bin/env python3
"""
Repère les notes répétées (même hauteur, consécutives, non liées) dont la seconde ne porte
qu'un « _ » dans le texte : on prolonge une voyelle sur une note réattaquée, ce qui contredit
§5 des règles (note répétée = nouvelle syllabe). Sur le lot 1 des liaisons (2026-10-16),
9 cas sur 10 étaient une seule note longue dans le scan (erreur de saisie chez nous).

Ne fait que signaler. Usage : python3 notes_repetees.py [BWV_x ...]
-> rapports/notes_repetees.txt
"""
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from comparer_scans import FOLDER, nom, notes_lilypond
from conform_voice import extract_var
from detecter_melisme_recopie import slots, syllables
from valider_chorals import COUPLETS

HERE = Path(__file__).resolve().parent
REPORT = HERE / "rapports" / "notes_repetees.txt"
VOIX = {"S": "soprano", "A": "alto", "T": "tenor", "B": "bass"}


def cas(bwv):
    lay = next(FOLDER.glob(f"*({bwv})*_layout.ly"))
    t = next(FOLDER.glob(f"*({bwv})*_notes.ily")).read_text(encoding="utf-8")
    notes = notes_lilypond(lay)
    out = []
    for v, nomv in VOIX.items():
        if v not in notes:
            continue
        hauteur = {on: (m, d) for on, m, d in notes[v]}            # notes liées déjà fusionnées
        sl = slots(extract_var(t, f"{nomv}Music"))
        verses = [syllables(extract_var(t, f"{nomv}Lyrics{s}"))[0]
                  for s in COUPLETS if extract_var(t, f"{nomv}Lyrics{s}") is not None]
        for i in range(1, len(sl)):
            a, b = sl[i - 1], sl[i]
            on_b = b["on"] * 4
            # dernière note de la place précédente (fin = début de b) et 1re note de b
            prec = [(on, m, d) for on, (m, d) in hauteur.items() if on + d == on_b]
            if on_b not in hauteur or not prec:
                continue
            if prec[0][1] != hauteur[on_b][0]:
                continue
            toks = [vs[i][2] for vs in verses if i < len(vs)]
            if toks and all(toks):                                     # « _ » dans tous les couplets
                out.append((v, float(on_b), nom(hauteur[on_b][0])))
    return out


def main(ids):
    lignes, n = [], 0
    for bwv in ids:
        try:
            c = cas(bwv)
        except Exception as e:  # choral au format inhabituel : signalé, pas bloquant
            lignes.append(f"{bwv} : erreur ({e})")
            continue
        for v, on, h in c:
            lignes.append(f"{bwv}\t{v}\tnoire {on:g}\t{h} répété, 2e note « _ »")
            n += 1
    return f"{n} note(s) répétée(s) portant « _ »\n\n" + "\n".join(lignes) + "\n"


if __name__ == "__main__":
    ids = sys.argv[1:] or sorted(m.group(1) for f in FOLDER.glob("*_layout.ly")
                                 if (m := re.search(r"\((BWV_[^)]+)\)", f.name)))
    rapport = main(ids)
    if sys.argv[1:]:
        print(rapport)
    else:
        REPORT.write_text(rapport, encoding="utf-8")
        print(rapport.splitlines()[0], "->", REPORT)
