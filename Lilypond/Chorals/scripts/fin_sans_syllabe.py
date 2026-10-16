#!/usr/bin/env python3
"""
Repère les voix dont le couplet chanté jusqu'au bout laisse la ou les dernières notes sans
syllabe (ni syllabe ni « _ ») : presque toujours le signe d'un décalage en amont (un « _ »
manquant, cf. BWV 261 et 167/5). Couplet « jusqu'au bout » = celui dont le soprano a le plus
de jetons (les couplets de reprise s'arrêtent plus tôt, c'est normal).
Ne fait que signaler. Usage : python3 fin_sans_syllabe.py [BWV_x ...] -> rapports/fin_sans_syllabe.txt
"""
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from comparer_scans import FOLDER
from conform_voice import extract_var, lyric_tokens_with_hyphens
from decalage_texte import VOIX, mesure
from detecter_melisme_recopie import slots
from valider_chorals import COUPLETS

REPORT = Path(__file__).resolve().parent / "rapports" / "fin_sans_syllabe.txt"


def cas(bwv):
    t = next(FOLDER.glob(f"*({bwv})*_notes.ily")).read_text(encoding="utf-8")
    tm = next(FOLDER.glob(f"*({bwv})*_layout.ly")).read_text(encoding="utf-8") + t
    long = {s: len(lyric_tokens_with_hyphens(ly)[0]) for s in COUPLETS
            if (ly := extract_var(t, f"sopranoLyrics{s}")) is not None and "associatedVoice" not in ly}
    if not long:
        return []
    suf = max(long, key=long.get)
    out = []
    for v, nv in VOIX.items():
        ly, mus = extract_var(t, f"{nv}Lyrics{suf}"), extract_var(t, f"{nv}Music")
        if ly is None or mus is None:
            continue
        sl = slots(mus)
        toks = lyric_tokens_with_hyphens(ly)[0]
        if len(toks) < len(sl):
            out.append((v, suf or "1", mesure(tm, sl[len(toks)]["on"] * 4), len(sl) - len(toks), toks[-1] if toks else ""))
    return out


def main(ids):
    lignes, n = [], 0
    for bwv in ids:
        try:
            c = cas(bwv)
        except Exception as e:  # format inhabituel : signalé, pas bloquant
            lignes.append(f"{bwv} : erreur ({e})"); continue
        for v, suf, m, k, der in c:
            lignes.append(f"{bwv}\t{v}\tcouplet {suf}\tmes. ≈{m}\t{k} note(s) finale(s) sans syllabe\tdernier jeton « {der} »"); n += 1
    return f"{n} voix finissant avant la dernière note\n\n" + "\n".join(lignes) + "\n"


if __name__ == "__main__":
    ids = sys.argv[1:] or sorted(m.group(1) for f in FOLDER.glob("*_layout.ly")
                                 if (m := re.search(r"\((BWV_[^)]+)\)", f.name)))
    rapport = main(ids)
    if sys.argv[1:]:
        print(rapport)
    else:
        REPORT.write_text(rapport, encoding="utf-8"); print(rapport.splitlines()[0], "->", REPORT)
