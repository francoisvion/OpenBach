#!/usr/bin/env python3
"""
Détecte le « mélisme recopié du soprano » (regles_prosodie_textunterlegung.md §9.1) :
une voix A/T/B tient une syllabe (« _ ») pendant que le soprano tient LA MÊME
syllabe, alors que cette syllabe est faible (mot grammatical, préfixe ou
terminaison non accentués). Chez Bach la voix grave chante alors syllabique et
garde son mélisme pour la syllabe accentuée suivante (corpus étalon NBA).

Ne fait que signaler : chaque cas se tranche contre la NBA / le scan.

Usage : python3 detecter_melisme_recopie.py [fichier_notes.ily ...]
        (sans argument : tout le corpus -> rapports/melisme_recopie.txt)
"""
import re
import sys
from fractions import Fraction
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from conform_voice import extract_var, tokenize_events, lyric_tokens_with_hyphens
from derive_atb import group_by_bracket, merge_group

HERE = Path(__file__).resolve().parent
FOLDER = HERE.parent / "Chorals avec paroles - partition ouverte - notes et layout séparés"
REPORT = HERE / "rapports" / "melisme_recopie.txt"

# Mots grammaticaux non accentués (articles, pronoms, prépositions, conjonctions,
# auxiliaires/modaux brefs). ponytail: liste courte, à enrichir au fil des cas.
FAIBLES = set("""
der die das den dem des ein eine einen einem einer eines
ich du er es wir ihr sie mich dich sich uns euch mir dir ihm ihn ihnen
mein dein sein meine deine seine unser euer
in im an am auf aus bei mit nach von vom vor zu zum zur für um durch über unter ohne bis
und oder aber denn dass daß wenn als wie so da doch nicht nur auch noch schon
ist bin bist sind war hat hab habe hast kann will soll muss mag
""".split())
PREFIXES = {"be", "ge", "ver", "er", "zer", "ent", "emp"}
SUFFIXES = {"e", "en", "er", "ern", "el", "es", "et", "te", "ten", "ter", "tet", "ben", "gen", "nen", "ne", "de", "den"}


def slots(music):
    """Lyric slots (beam_events of derive_atb) with their onset time."""
    raw = tokenize_events(music)
    t = Fraction(0)
    for e in raw:
        e["on"] = t
        t += e["dur"]
    merged = []
    for g in group_by_bracket(raw):
        if merged and merged[-1][-1]["is_tie"] and not g[0]["is_rest"]:
            merged[-1] = merged[-1] + g
        else:
            merged.append(list(g))
    return [merge_group(g) if len(g) > 1 else dict(g[0]) for g in merged if not g[0]["is_rest"]]


def syllables(lyrics):
    """Per slot: (syllable index, syllable text, is_hold, word, position in word)."""
    toks, hyph, _ = lyric_tokens_with_hyphens(lyrics)
    out, k, word, pos = [], -1, [], 0
    cur_word = []
    words = []  # syllables of each word, to know first/last syllable
    for tok, h in zip(toks, hyph):
        if tok == "_":
            out.append((k, None, True))
            continue
        k += 1
        cur_word.append(k)
        out.append((k, tok, False))
        if not h:
            words.append(cur_word)
            cur_word = []
    if cur_word:
        words.append(cur_word)
    where = {}
    for w in words:
        for i, s in enumerate(w):
            where[s] = (i, len(w))
    return out, where


def clean(text):
    return re.sub(r"[^\wäöüßÄÖÜ]", "", text).lower()


def faible(text, pos, n):
    t = clean(text)
    if n == 1:
        return t in FAIBLES
    if pos == 0:
        return t in PREFIXES
    return t in SUFFIXES and pos == n - 1


def detect(path):
    text = path.read_text(encoding="utf-8")
    music, lyr = {}, {}
    for v in ("soprano", "alto", "tenor", "bass"):
        try:
            music[v] = slots(extract_var(text, v + "Music"))
            lyr[v] = syllables(extract_var(text, v + "Lyrics"))
        except Exception:
            return []
    partial = Fraction(0)
    m = re.search(r"\\partial\s+(\d+)(\.?)", extract_var(text, "sopranoMusic"))
    if m:
        partial = Fraction(1, int(m.group(1))) * (Fraction(3, 2) if m.group(2) else 1)

    # soprano : syllabe en cours à chaque instant
    s_sl, (s_syl, _) = music["soprano"], lyr["soprano"]
    n = min(len(s_sl), len(s_syl))
    s_seg = [(s_sl[i]["on"], s_sl[i]["on"] + s_sl[i]["dur"], s_syl[i][0]) for i in range(n)]

    def s_syllable_at(t):
        for a, b, k in s_seg:
            if a <= t < b:
                return k, a < t  # (syllabe, tenue commencée avant t)
        return None, False

    found = []
    for v in ("alto", "tenor", "bass"):
        sl, (syl, where) = music[v], lyr[v]
        texts = {k: s for k, s, hold in syl if not hold}
        for i in range(min(len(sl), len(syl))):
            k, _, hold = syl[i]
            if not hold or k < 0:
                continue
            t = sl[i]["on"]
            sk, held = s_syllable_at(t)
            s_hold = held or (sk is not None and any(
                s_sl[j]["on"] == t and s_syl[j][2] for j in range(n)))
            if sk != k or not s_hold:
                continue
            pos, nw = where.get(k, (0, 1))
            if not faible(texts.get(k, ""), pos, nw):
                continue
            mes = int((t - partial) // 1) + 1 if t >= partial else 0
            found.append((v, mes, texts.get(k, "?")))
    return found


def main(files):
    lines, total = [], 0
    for f in files:
        hits = detect(f)
        if not hits:
            continue
        total += len(hits)
        uniq = sorted(set(hits), key=lambda h: (h[0], h[1]))
        lines.append(f"{f.name}\n" + "\n".join(f"  {v:5} m.{m:<3} « {s} »" for v, m, s in uniq))
    out = f"{total} tenue(s) suspecte(s) dans {len(lines)} fichier(s)\n\n" + "\n".join(lines)
    return out


if __name__ == "__main__":
    assert faible("die", 0, 1) and faible("be", 0, 3) and faible("ben", 1, 2)
    assert not faible("Glanz", 0, 1) and not faible("blei", 0, 2)
    if len(sys.argv) > 1:
        print(main([Path(a) for a in sys.argv[1:]]))
    else:
        rep = main(sorted(FOLDER.glob("*_notes.ily")))
        REPORT.write_text(rep, encoding="utf-8")
        print(rep.splitlines()[0], "->", REPORT)
