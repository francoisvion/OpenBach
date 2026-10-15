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


# --- Seconde passe : recoupe générale des mots (coupés OU soudés), 2026-10-15 ---------------

def syllabes_pos(corps):
    """Syllabes (hors « _ ») avec position (début, fin) dans le corps."""
    out, brut, k, saute = [], list(re.finditer(r'"[^"]*"|\S+', corps)), 0, 0
    while k < len(brut):
        t = brut[k].group(0)
        if t == "\\stanza":
            saute = 2
        elif t.startswith("\\set") or t.startswith("\\tweak"):
            saute = 4 if t.startswith("\\set") else 3
        if saute:
            saute -= 1; k += 1; continue
        if t not in ("--", "__", "{", "}", "_") and not t.startswith("\\"):
            out.append((t, brut[k].start(), brut[k].end()))
        k += 1
    return out


def recouper(corps, cibles):
    """cibles : liste de (début, fin, [mots]) en positions de la chaîne normalisée de la voix ;
    force les « -- » entre syllabes pour que les mots de ces zones soient ceux demandés."""
    syl = syllabes_pos(corps)
    lng = [len(norm(s)) for s, _, _ in syl]
    fins, x = [], 0
    for L in lng:
        x += L; fins.append(x)
    modifs = []  # (position, texte à insérer) ou (début, fin) à supprimer
    for deb, fin, mots_cibles in cibles:
        bornes, y = set(), deb
        for m in mots_cibles:
            y += len(m); bornes.add(y)
        for i in range(len(syl) - 1):
            if not (deb < fins[i] < fin):
                continue
            ecart = corps[syl[i][2]:syl[i + 1][1]]
            veut = fins[i] not in bornes
            a = "--" in ecart.split()
            if veut and not a:
                modifs.append((syl[i][2], syl[i][2], " --"))
            elif a and not veut:
                j = corps.index("--", syl[i][2], syl[i + 1][1])
                modifs.append((j - 1 if corps[j - 1] == " " else j, j + 2, ""))
    for d, f, txt in sorted(modifs, reverse=True):
        corps = corps[:d] + txt + corps[f:]
    return corps


def seconde_passe(appliquer_=False):
    import collections
    vocab = collections.Counter()
    textes = {f: f.read_text(encoding="utf-8") for f in sorted(FOLDER.glob("*_notes.ily"))}
    for t in textes.values():
        for v in VOIX:
            for suf in COUPLETS:
                sp = corps_span(t, f"{v}Lyrics{suf}")
                if sp:
                    vocab.update(norm(m) for m in mots(t[sp[0]:sp[1]]))
    # Le soprano fait référence, sauf erreurs connues du soprano (vérifiées à la main) :
    CORRECTIONS_SOPRANO = {"jesu": ["jesu"]}
    total = 0
    for f, t in textes.items():
        nouveau = t
        for suf in COUPLETS:
            spans = {v: corps_span(nouveau, f"{v}Lyrics{suf}") for v in VOIX}
            if not spans["soprano"]:
                continue
            corps = {v: nouveau[s[0]:s[1]] for v, s in spans.items() if s}
            ws = {v: [norm(m) for m in mots(c)] for v, c in corps.items()}
            cibles = {v: [] for v in corps}
            for v in corps:
                if v == "soprano":
                    continue
                sm = difflib.SequenceMatcher(a=ws["soprano"], b=ws[v], autojunk=False)
                for op, i1, i2, j1, j2 in sm.get_opcodes():
                    a, b = ws["soprano"][i1:i2], ws[v][j1:j2]
                    if op != "replace" or "".join(a) != "".join(b):
                        continue
                    bon = CORRECTIONS_SOPRANO.get("".join(a), a)
                    for w, (k1, k2), cur in (("soprano", (i1, i2), a), (v, (j1, j2), b)):
                        if cur != bon:
                            deb = sum(len(x) for x in ws[w][:k1])
                            cibles[w].append((deb, deb + len("".join(cur)), bon))
                            print(f"{f.name.split('_Jean')[0]} | {w}{suf} | {' '.join(cur)} → {' '.join(bon)}")
                            total += 1
            for v, c in cibles.items():
                if c:
                    nc = recouper(corps[v], list({x[0]: x for x in c}.values()))
                    if lyric_tokens_with_hyphens(nc)[0] != lyric_tokens_with_hyphens(corps[v])[0]:
                        print("  !! syllabes modifiées, ignoré :", f.name.split("_Jean")[0], v + suf)
                        continue
                    s = corps_span(nouveau, f"{v}Lyrics{suf}")
                    nouveau = nouveau[:s[0]] + nc + nouveau[s[1]:]
        if appliquer_ and nouveau != t:
            f.write_text(nouveau, encoding="utf-8")
    print(f"{total} recoupe(s)" + (" appliquée(s)" if appliquer_ else " (simulation)"))
