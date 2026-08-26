#!/usr/bin/env python3
"""
Supprime les paroles (\\new Lyrics \\lyricsto "..." { ... }) d'un fichier LilyPond
(chorals OpenBach) ou de tous les fichiers .ly d'un dossier, et enregistre le
résultat dans un nouveau fichier {nom}_sans_paroles.ly (à côté du fichier source).

Usage : lancer le script sans argument, il demande le chemin (fichier .ly ou
dossier contenant des .ly) en prompt.
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


LYRICS_RE = r'\\new Lyrics\s+\\lyricsto\s+"([a-zA-Z0-9]+)"\s*\{'


def find_lyrics_blocks(content):
    blocks = []
    for m in re.finditer(LYRICS_RE, content):
        open_idx = m.end() - 1
        close_idx = find_matching_brace(content, open_idx)
        blocks.append({'start': m.start(), 'end': close_idx + 1})
    return blocks


def remove_lyrics(content):
    blocks = find_lyrics_blocks(content)
    if not blocks:
        return content, 0
    blocks.sort(key=lambda b: b['start'], reverse=True)
    for b in blocks:
        # also eat a single trailing newline/blank-line left behind, and any
        # leading blank line right before the block, to avoid piling up gaps
        start = b['start']
        end = b['end']
        # consume one following newline
        if end < len(content) and content[end] == '\n':
            end += 1
        content = content[:start] + content[end:]
    return content, len(blocks)


def process_file(src_path):
    with open(src_path, encoding='utf-8') as f:
        content = f.read()

    new_content, n_removed = remove_lyrics(content)

    basename = os.path.splitext(os.path.basename(src_path))[0]
    out_path = os.path.join(os.path.dirname(src_path), f"{basename}_sans_paroles.ly")
    with open(out_path, 'w', encoding='utf-8') as f:
        f.write(new_content)

    print(f"OK  {os.path.basename(src_path)}  ->  {os.path.basename(out_path)}  "
          f"[{n_removed} bloc(s) de paroles supprimé(s)]")


def main():
    target = input("Chemin d'un fichier .ly ou d'un dossier contenant des .ly : ").strip().strip('"')
    if not target:
        print("Aucun chemin fourni.")
        sys.exit(1)

    if os.path.isdir(target):
        ly_files = sorted(
            os.path.join(target, fn) for fn in os.listdir(target)
            if fn.endswith('.ly') and not fn.endswith('_sans_paroles.ly')
        )
        if not ly_files:
            print("Aucun fichier .ly trouvé dans ce dossier.")
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
