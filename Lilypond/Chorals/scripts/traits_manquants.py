#!/usr/bin/env python3
"""
Repère les traits de prolongation « __ » manquants : une syllabe de fin de mot tenue sur
plusieurs notes sans trait. Deux cas :
  - suivie de « _ » (mélisme écrit) mais sans « __ » : « Gott _ Va » au lieu de « Gott __ _ Va » ;
  - tenue sur plusieurs notes d'au moins une blanche au total (liaison, ligature) et suivie
    d'une syllabe, sans « __ » seul (cf. BWV 29/8 ténor « zen », blanche pointée liée).
Convention du corpus : « -- _ » dans un mot, « __ _ » en fin de mot (regles_prosodie §9.5).
Ne fait que signaler. Usage : python3 traits_manquants.py [BWV_x ...] -> rapports/traits_manquants.txt
"""
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from comparer_scans import FOLDER
from conform_voice import extract_var, lyric_tokens_with_hyphens
from decalage_texte import a_liaisons, VOIX, mesure
from detecter_melisme_recopie import slots
from valider_chorals import COUPLETS

REPORT = Path(__file__).resolve().parent / "rapports" / "traits_manquants.txt"


def cas(bwv):
    t = next(FOLDER.glob(f"*({bwv})*_notes.ily")).read_text(encoding="utf-8")
    tm = next(FOLDER.glob(f"*({bwv})*_layout.ly")).read_text(encoding="utf-8") + t
    out = []
    for suf in COUPLETS:
        for v, nv in VOIX.items():
            ly, mus = extract_var(t, f"{nv}Lyrics{suf}"), extract_var(t, f"{nv}Music")
            if ly is None or mus is None or "associatedVoice" in ly or a_liaisons(mus):
                continue
            sl = slots(mus)
            toks, hy, und = lyric_tokens_with_hyphens(ly)
            for k in range(min(len(toks), len(sl))):
                if toks[k] == "_" or hy[k] or und[k]:
                    continue
                suit = toks[k + 1] if k + 1 < len(toks) else None
                if suit == "_" and "\\skip" not in ly:   # « \repeat unfold n { \skip1 } » : sauts, pas mélisme
                    genre = "« _ » sans « __ »"
                elif suit is not None and sl[k]["n"] > 1 and sl[k]["dur"] * 4 >= 2:
                    # convention du corpus : pas de trait sous une ligature d'une noire ou moins
                    # (11 139 cas sans, 26 avec) ; trait d'usage dès une blanche de tenue
                    genre = "tenue ≥ blanche sans « __ »"
                else:
                    continue
                out.append((v, suf or "1", mesure(tm, sl[k]["on"] * 4), toks[k], suit, genre))
    return out


def main(ids):
    lignes, n = [], 0
    for bwv in ids:
        try:
            c = cas(bwv)
        except Exception as e:  # format inhabituel : signalé, pas bloquant
            lignes.append(f"{bwv} : erreur ({e})"); continue
        for v, suf, m, x, s, g in c:
            lignes.append(f"{bwv}\t{v}\tcouplet {suf}\tmes. ≈{m}\t{x} {s}\t{g}"); n += 1
    return f"{n} trait(s) de prolongation manquant(s)\n\n" + "\n".join(lignes) + "\n"


if __name__ == "__main__":
    ids = sys.argv[1:] or sorted(m.group(1) for f in FOLDER.glob("*_layout.ly")
                                 if (m := re.search(r"\((BWV_[^)]+)\)", f.name)))
    rapport = main(ids)
    if sys.argv[1:]:
        print(rapport)
    else:
        REPORT.write_text(rapport, encoding="utf-8"); print(rapport.splitlines()[0], "->", REPORT)
