#!/usr/bin/env python3
"""
Supprime les paroles d'un fichier LilyPond (chorals OpenBach) ou de tous les
fichiers .ly/.ily d'un dossier, et enregistre le résultat dans un nouveau
fichier {nom}_sans_paroles{extension} (à côté du fichier source).

Gère 3 façons dont les paroles peuvent apparaître dans ce projet :
  1. Fichier "fusionné" (notes + mise en page dans un seul .ly) :
       \\new Lyrics \\lyricsto "soprano" { ... paroles ... }
  2. Fichier "_notes.ily" (issu de split_ly_notes_layout.py) :
       versoOneLyrics = \\lyricmode { ... paroles ... }
  3. Fichier "_layout.ly" correspondant (référence sans accolades) :
       \\new Lyrics \\lyricsto "soprano" \\versoOneLyrics

Usage : lancer le script sans argument, il demande le chemin (fichier .ly/.ily
ou dossier contenant de tels fichiers) en prompt.
"""

import os
import re
import sys


def find_matching_brace(text, open_index):
    """Given the index of an opening '{', return the index of its matching '}'."""
    depth = 0
    i = open_index
    in_string = False
    n = len(text)
    while i < n:
        c = text[i]
        if in_string:
            if c == '\\' and i + 1 < n:
                i += 2
                continue
            if c == '"':
                in_string = False
        else:
            if c == '"':
                in_string = True
            elif c == '{':
                depth += 1
            elif c == '}':
                depth -= 1
                if depth == 0:
                    return i
        i += 1
    raise ValueError("accolade non appariée")


# 1. inline block: \new Lyrics \lyricsto "X" { ... }
INLINE_LYRICS_RE = re.compile(r'\\new Lyrics\s+\\lyricsto\s+"([a-zA-Z0-9]+)"\s*\{')

# 2. variable definition: someName = \lyricmode { ... }
LYRICMODE_VAR_RE = re.compile(r'[a-zA-Z][a-zA-Z0-9]*\s*=\s*\\lyricmode\s*\{')

# 3. bare reference (no braces): \new Lyrics \lyricsto "X" \someName
BARE_REF_RE = re.compile(r'\\new Lyrics\s+\\lyricsto\s+"[a-zA-Z0-9]+"\s+\\[a-zA-Z][a-zA-Z0-9]*[ \t]*\n?')


def find_brace_blocks(content, pattern):
    blocks = []
    for m in pattern.finditer(content):
        open_idx = m.end() - 1
        close_idx = find_matching_brace(content, open_idx)
        blocks.append({'start': m.start(), 'end': close_idx + 1})
    return blocks


def remove_lyrics(content):
    blocks = find_brace_blocks(content, INLINE_LYRICS_RE)
    blocks += find_brace_blocks(content, LYRICMODE_VAR_RE)
    bare_refs = [{'start': m.start(), 'end': m.end()} for m in BARE_REF_RE.finditer(content)]
    blocks += bare_refs

    if not blocks:
        return content, 0

    # remove overlaps/duplicates and sort back-to-front so earlier offsets stay valid
    blocks.sort(key=lambda b: b['start'], reverse=True)
    deduped = []
    last_start = None
    for b in blocks:
        if last_start is not None and b['end'] > last_start:
            continue  # overlapping with an already-scheduled removal, skip
        deduped.append(b)
        last_start = b['start']

    for b in deduped:
        start, end = b['start'], b['end']
        if end < len(content) and content[end] == '\n':
            end += 1
        content = content[:start] + content[end:]
    return content, len(deduped)


def process_file(src_path):
    with open(src_path, encoding='utf-8') as f:
        content = f.read()

    new_content, n_removed = remove_lyrics(content)

    root, ext = os.path.splitext(src_path)
    out_path = f"{root}_sans_paroles{ext}"
    with open(out_path, 'w', encoding='utf-8') as f:
        f.write(new_content)

    print(f"OK  {os.path.basename(src_path)}  ->  {os.path.basename(out_path)}  "
          f"[{n_removed} bloc(s)/référence(s) de paroles supprimé(s)]")


def main():
    target = input("Chemin d'un fichier .ly/.ily ou d'un dossier : ").strip().strip('"')
    if not target:
        print("Aucun chemin fourni.")
        sys.exit(1)

    def is_candidate(fn):
        return (fn.endswith('.ly') or fn.endswith('.ily')) and '_sans_paroles' not in fn

    if os.path.isdir(target):
        ly_files = sorted(
            os.path.join(target, fn) for fn in os.listdir(target)
            if is_candidate(fn)
        )
        if not ly_files:
            print("Aucun fichier .ly/.ily trouvé dans ce dossier.")
            sys.exit(1)
    elif os.path.isfile(target):
        ly_files = [target]
    else:
        print(f"Chemin introuvable : {target}")
        sys.exit(1)

    ok, fail = 0, []
    for path in ly_files:
        try:
            process_file(path)
            ok += 1
        except Exception as e:
            fail.append((path, str(e)))
            print(f"ÉCHEC {os.path.basename(path)} :: {e}")

    print(f"\n{ok} fichier(s) traité(s), {len(fail)} échec(s).")


if __name__ == '__main__':
    main()
