#!/usr/bin/env python3
"""
Repère les « __ » seuls (trait de prolongation sans « _ ») posés sur une note simple
(ni liée à la suivante, ni ligaturée) et suivis d'une syllabe. Le trait annonce un mélisme
que la syllabe n'a pas : soit il manque des « _ » (la suite du couplet glisse d'une note,
cf. BWV 261 soprano « ruf __ dich »), soit le trait est superflu.

Colonne « soprano » : instant de la syllabe suivante au soprano ; « décalé » si la voix la
chante ailleurs (cas 261), sinon le trait est seulement en trop. Ne fait que signaler.
Usage : python3 traits_seuls.py [BWV_x ...]  -> rapports/traits_seuls.txt
"""
import re
import sys
from difflib import SequenceMatcher
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from comparer_scans import FOLDER
from conform_voice import extract_var, lyric_tokens_with_hyphens
from decalage_texte import a_liaisons, VOIX, debuts, mesure
from detecter_melisme_recopie import slots, clean
from valider_chorals import COUPLETS

REPORT = Path(__file__).resolve().parent / "rapports" / "traits_seuls.txt"


def cas(bwv):
    t = next(FOLDER.glob(f"*({bwv})*_notes.ily")).read_text(encoding="utf-8")
    tm = next(FOLDER.glob(f"*({bwv})*_layout.ly")).read_text(encoding="utf-8") + t
    out = []
    for suf in COUPLETS:
        sop = debuts(t, "soprano", suf)
        for v, nv in VOIX.items():
            ly, mus = extract_var(t, f"{nv}Lyrics{suf}"), extract_var(t, f"{nv}Music")
            if ly is None or mus is None or "associatedVoice" in ly or a_liaisons(mus):
                continue
            sl = slots(mus)
            toks, _, und = lyric_tokens_with_hyphens(ly)
            # instant au soprano de chaque syllabe de la voix (alignement des textes)
            syl = [k for k, x in enumerate(toks) if x != "_"]
            s_on = {}
            if sop and v != "S":
                sm = SequenceMatcher(None, [clean(toks[k]) for k in syl], [x for x, _ in sop[0]], autojunk=False)
                for a, b, n in sm.get_matching_blocks():
                    for q in range(n):
                        s_on[syl[a + q]] = sop[0][b + q][1]
            for k in range(min(len(toks), len(sl)) - 1):
                if toks[k] == "_" or not und[k] or toks[k + 1] == "_" or sl[k]["n"] > 1 or sl[k]["is_tie"]:
                    continue
                on = sl[k + 1]["on"] * 4
                r = s_on.get(k + 1)
                etat = "" if r is None else ("décalé" if r != on else "trait en trop")
                out.append((v, suf or "1", mesure(tm, sl[k]["on"] * 4), f"{toks[k]} __ {toks[k + 1]}",
                            f"{float(on):g}" + ("" if r is None else f" (soprano {float(r):g})"), etat))
    return out


def main(ids):
    lignes, n = [], 0
    for bwv in ids:
        try:
            c = cas(bwv)
        except Exception as e:  # format inhabituel : signalé, pas bloquant
            lignes.append(f"{bwv} : erreur ({e})"); continue
        for v, suf, m, txt, on, etat in c:
            lignes.append(f"{bwv}\t{v}\tcouplet {suf}\tmes. ≈{m}\t{txt}\t{on}\t{etat}"); n += 1
    return f"{n} trait(s) « __ » seul(s) sur une note simple\n\n" + "\n".join(lignes) + "\n"


if __name__ == "__main__":
    ids = sys.argv[1:] or sorted(m.group(1) for f in FOLDER.glob("*_layout.ly")
                                 if (m := re.search(r"\((BWV_[^)]+)\)", f.name)))
    rapport = main(ids)
    if sys.argv[1:]:
        print(rapport)
    else:
        REPORT.write_text(rapport, encoding="utf-8"); print(rapport.splitlines()[0], "->", REPORT)
