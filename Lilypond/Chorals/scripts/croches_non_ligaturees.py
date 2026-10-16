#!/usr/bin/env python3
"""
Repère les croches (ou plus courtes) NON ligaturées qui chantent une même syllabe (syllabe
suivie de « _ »). Convention vocale du corpus : crochets séparés = une syllabe par note,
ligature = mélisme. Une syllabe sur des croches séparées est donc illogique : il faut les
ligaturer (et le trait « __ » devient inutile sur une noire ou moins).
Exclut les chorals à \\shiftDurations (durées doublées au rendu : ce sont des noires).
Ne fait que signaler. Usage : python3 croches_non_ligaturees.py [BWV_x ...] -> rapports/croches_non_ligaturees.txt
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

REPORT = Path(__file__).resolve().parent / "rapports" / "croches_non_ligaturees.txt"


def cas(bwv):
    t = next(FOLDER.glob(f"*({bwv})*_notes.ily")).read_text(encoding="utf-8")
    if "\\shiftDurations" in t:
        return []
    tm = next(FOLDER.glob(f"*({bwv})*_layout.ly")).read_text(encoding="utf-8") + t
    out, vus = [], set()
    for suf in COUPLETS:
        for v, nv in VOIX.items():
            ly, mus = extract_var(t, f"{nv}Lyrics{suf}"), extract_var(t, f"{nv}Music")
            if ly is None or mus is None or "associatedVoice" in ly or "\\skip" in ly or a_liaisons(mus):
                continue
            sl = slots(mus)
            toks, hy, und = lyric_tokens_with_hyphens(ly)
            for k in range(min(len(toks), len(sl))):
                if toks[k] == "_" or k + 1 >= len(toks) or toks[k + 1] != "_":
                    continue
                j = k + 1
                while j < len(toks) and toks[j] == "_":
                    j += 1
                grp = sl[k:min(j, len(sl))]
                # au moins deux notes simples consécutives, croche ou plus courte, sans silence entre
                # que des croches (ou plus court) séparées : la syncope croche-noire-croche (§4) et
                # les groupes avec noire ne se ligaturent pas
                if len(grp) < 2 or not all(s["n"] == 1 and not s["is_tie"] and s["dur"] * 4 < 1 for s in grp):
                    continue
                if any(b["on"] != a["on"] + a["dur"] for a, b in zip(grp, grp[1:])):
                    continue
                cle = (v, sl[k]["on"])          # même endroit dans plusieurs couplets : une fois
                if cle in vus:
                    continue
                vus.add(cle)
                durs = " + ".join(f"{float(s['dur'] * 4):g}{'(lig)' if s['n'] > 1 else ''}" for s in grp)
                out.append((v, suf or "1", mesure(tm, sl[k]["on"] * 4), toks[k], durs))
    return out


def main(ids):
    lignes, n = [], 0
    for bwv in ids:
        try:
            c = cas(bwv)
        except Exception as e:  # format inhabituel : signalé, pas bloquant
            lignes.append(f"{bwv} : erreur ({e})"); continue
        for v, suf, m, x, d in c:
            lignes.append(f"{bwv}\t{v}\tcouplet {suf}\tmes. ≈{m}\t{x}\t{d} (noires)"); n += 1
    return f"{n} syllabe(s) sur croches non ligaturées\n\n" + "\n".join(lignes) + "\n"


if __name__ == "__main__":
    ids = sys.argv[1:] or sorted(m.group(1) for f in FOLDER.glob("*_layout.ly")
                                 if (m := re.search(r"\((BWV_[^)]+)\)", f.name)))
    rapport = main(ids)
    if sys.argv[1:]:
        print(rapport)
    else:
        REPORT.write_text(rapport, encoding="utf-8"); print(rapport.splitlines()[0], "->", REPORT)
