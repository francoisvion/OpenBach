#!/usr/bin/env python3
"""
Ajoute le trait d'union « -- » manquant quand une voix A/T/B coupe en deux un mot que
le soprano écrit d'un seul tenant (« Geschlech te » -> « Geschlech -- te »).

Sûr par construction : « -- » ne consomme aucune note ; on vérifie après coup que les
syllabes (et « _ ») sont inchangées et que les mots de la voix rejoignent ceux du soprano.

Usage : python3 recoller_mots.py            (simulation : liste les corrections)
        python3 recoller_mots.py --appliquer
"""
import difflib
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from conform_voice import lyric_tokens_with_hyphens
from valider_chorals import COUPLETS, FOLDER, VOIX, mots, norm

VAR = r"^({nom})\s*=\s*\\lyricmode\s*\{{"


def corps_span(texte, nom):
    m = re.search(VAR.format(nom=re.escape(nom)), texte, re.M)
    if not m:
        return None
    i, prof = m.end(), 1
    while prof:
        prof += {"{": 1, "}": -1}.get(texte[i], 0)
        i += 1
    return m.end(), i - 1


def jetons(corps):
    """Syllabes (hors « _ ») avec leur position et le fait qu'un « -- » les suit."""
    out = []
    brut = list(re.finditer(r'"[^"]*"|\S+', corps))
    k, saute = 0, 0
    while k < len(brut):
        t = brut[k].group(0)
        if t == "\\stanza":
            saute = 2
        if t.startswith("\\set") or t.startswith("\\tweak"):
            saute = 4 if t.startswith("\\set") else 3  # \set N = V / \tweak P V
        if saute:
            saute -= 1; k += 1; continue
        if t in ("--", "__"):
            if t == "--" and out:
                out[-1][2] = True
        elif not t.startswith("\\") and t not in ("{", "}", "_"):
            out.append([t, brut[k].end(), False])
        k += 1
    return out


def corrections(texte):
    res = []
    for suf in COUPLETS:
        sp = corps_span(texte, f"sopranoLyrics{suf}")
        if not sp:
            continue
        ref = [norm(m) for m in mots(texte[sp[0]:sp[1]])]
        for v in VOIX[1:]:
            span = corps_span(texte, f"{v}Lyrics{suf}")
            if not span:
                continue
            corps = texte[span[0]:span[1]]
            js = jetons(corps)
            # mots reconstruits depuis nos jetons = mots() du validateur ? sinon on ne touche pas
            mw, cur, fin_mot = [], "", []
            for t, pos, h in js:
                cur += t.strip('"')
                if not h:
                    mw.append(norm(cur)); fin_mot.append(pos); cur = ""
            if mw != [norm(m) for m in mots(corps)]:
                res.append((v + suf, None, "texte trop complexe, ignoré"))
                continue
            sm = difflib.SequenceMatcher(a=ref, b=mw, autojunk=False)
            for op, i1, i2, j1, j2 in sm.get_opcodes():
                if op == "replace" and "".join(ref[i1:i2]) == "".join(mw[j1:j2]) and j2 - j1 > i2 - i1 == 1:
                    for j in range(j1, j2 - 1):
                        res.append((v + suf, span[0] + fin_mot[j], " ".join(mw[j1:j2]) + " → " + ref[i1]))
    return res


def appliquer(texte, corr):
    for _, pos, _ in sorted((c for c in corr if c[1] is not None), key=lambda c: -c[1]):
        texte = texte[:pos] + " --" + texte[pos:]
    return texte


if __name__ == "__main__":
    total, fichiers = 0, 0
    for f in sorted(FOLDER.glob("*_notes.ily")):
        t = f.read_text(encoding="utf-8")
        corr = corrections(t)
        if not corr:
            continue
        fichiers += 1
        for v, pos, quoi in corr:
            print(f"{f.name.split('_Jean')[0]} | {v} | {quoi}")
        total += sum(1 for c in corr if c[1] is not None)
        if "--appliquer" in sys.argv:
            nouveau = appliquer(t, corr)
            # contrôle : mêmes syllabes et mêmes « _ » qu'avant (les « -- » ne consomment rien)
            for v in VOIX:
                for suf in COUPLETS:
                    a, b = corps_span(t, f"{v}Lyrics{suf}"), corps_span(nouveau, f"{v}Lyrics{suf}")
                    if a:
                        assert lyric_tokens_with_hyphens(t[a[0]:a[1]])[0] == lyric_tokens_with_hyphens(nouveau[b[0]:b[1]])[0], f
            f.write_text(nouveau, encoding="utf-8")
    print(f"\n{total} trait(s) d'union à ajouter dans {fichiers} fichier(s)"
          + (" — appliqué" if "--appliquer" in sys.argv else " — simulation"))
