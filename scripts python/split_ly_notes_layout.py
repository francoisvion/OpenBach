#!/usr/bin/env python3
"""
Sépare un fichier LilyPond (chorals OpenBach) en deux fichiers :
  - {nom}_notes.ily   : uniquement le contenu musical (voix \\new Voice = "..." et
                        paroles \\new Lyrics \\lyricsto "..."), sous forme de variables
  - {nom}_layout.ly    : le reste (\\version, \\paper, \\header, structure \\score,
                        \\layout, \\midi), les voix/paroles étant remplacées par des
                        références (\\sopranoMusic, \\versoOneLyrics, etc.) et un
                        \\include vers le fichier de notes.

Les deux fichiers sont écrits dans un nouveau dossier nommé d'après le fichier
source (sans extension), créé à côté du fichier source.

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


def extract_blocks(content, pattern):
    """
    pattern must have one capture group for the identifier (e.g. voice/lyrics name)
    and must end right before the opening '{' of the block to extract. A second,
    optional capture group may hold a pitch-transform prefix (e.g. "\\relative c'",
    "\\transpose c d") that must be preserved as part of the extracted music.
    Returns a list of dicts: name, prefix, inner (content strictly inside the braces),
    start (index of the whole match incl. header), end (index just after closing '}').
    """
    blocks = []
    for m in re.finditer(pattern, content):
        open_idx = m.end() - 1  # pattern is expected to end with the opening brace
        assert content[open_idx] == '{', f"pattern must end on the opening brace, got {content[open_idx]!r}"
        close_idx = find_matching_brace(content, open_idx)
        prefix = m.group(2).strip() if m.re.groups >= 2 and m.group(2) else ''
        blocks.append({
            'name': m.group(1),
            'prefix': prefix,
            'inner': content[open_idx + 1:close_idx],
            'start': m.start(),
            'end': close_idx + 1,
        })
    return blocks


VOICE_RE = r'\\new Voice\s*=\s*"([a-zA-Z0-9]+)"\s*((?:\\relative\s*[a-zA-Z]*[\',]*\s*|\\transpose\s+\S+\s+\S+\s*)?)\{'

# \new Lyrics may carry a \with {...} context override (e.g. alignAboveContext) placed
# *before* \lyricsto -- it must stay attached to the context declaration in layout.ly,
# it is not part of the lyric text itself.
LYRICS_RE = re.compile(r'\\new Lyrics\s+(?:\\with\s*(\{[^{}]*\})\s*)?\\lyricsto\s+"([a-zA-Z0-9]+)"\s*\{')


def extract_lyrics_blocks(content):
    blocks = []
    for m in LYRICS_RE.finditer(content):
        open_idx = m.end() - 1
        close_idx = find_matching_brace(content, open_idx)
        blocks.append({
            'name': m.group(2),
            'with_clause': m.group(1),
            'inner': content[open_idx + 1:close_idx],
            'start': m.start(),
            'end': close_idx + 1,
        })
    return blocks

VARNAME_SUFFIX = {
    'soprano': 'sopranoMusic',
    'alto': 'altoMusic',
    'tenor': 'tenorMusic',
    'bass': 'bassMusic',
}

STANZA_RE = re.compile(r'\\set\s+stanza\s*=\s*(\d+)')

ORDINAL_WORDS = {1: 'One', 2: 'Two', 3: 'Three', 4: 'Four', 5: 'Five', 6: 'Six'}


def sanitize_identifier_name(name):
    """LilyPond identifiers can't have a digit glued to a letter (e.g. 'soprano1'
    is invalid). Voice IDs like "soprano1"/"soprano2" (divisi) need the trailing
    number spelled out instead."""
    m = re.match(r'^([a-zA-Z]+)(\d+)$', name)
    if not m:
        return name
    base, num = m.groups()
    word = ORDINAL_WORDS.get(int(num), num)
    return base + word


def voice_varname(voice_name, occurrence_index):
    base = VARNAME_SUFFIX.get(voice_name)
    if base is None:
        base = sanitize_identifier_name(voice_name) + 'Music'
    if occurrence_index == 0:
        return base
    word = ORDINAL_WORDS.get(occurrence_index + 1, str(occurrence_index + 1))
    return f"{base}{word}"


def lyrics_varname(voice_name, inner, occurrence_index):
    m = STANZA_RE.search(inner)
    if m:
        n = int(m.group(1))
        word = ORDINAL_WORDS.get(n, str(n))
        return f"verso{word}Lyrics"
    safe_name = sanitize_identifier_name(voice_name)
    if occurrence_index == 0:
        return f"{safe_name}Lyrics"
    word = ORDINAL_WORDS.get(occurrence_index + 1, str(occurrence_index + 1))
    return f"{safe_name}Lyrics{word}"


def split_file(src_path):
    with open(src_path, encoding='utf-8') as f:
        content = f.read()

    basename = os.path.splitext(os.path.basename(src_path))[0]
    out_dir = os.path.join(os.path.dirname(src_path), basename)
    os.makedirs(out_dir, exist_ok=True)

    voice_blocks = extract_blocks(content, VOICE_RE)
    lyrics_blocks = extract_lyrics_blocks(content)

    # assign variable names, counting occurrences per voice name
    seen_voice_counts = {}
    for b in voice_blocks:
        idx = seen_voice_counts.get(b['name'], 0)
        b['varname'] = voice_varname(b['name'], idx)
        seen_voice_counts[b['name']] = idx + 1

    used_varnames = set(b['varname'] for b in voice_blocks)
    seen_lyrics_counts = {}
    for b in lyrics_blocks:
        idx = seen_lyrics_counts.get(b['name'], 0)
        varname = lyrics_varname(b['name'], b['inner'], idx)
        if varname in used_varnames:
            # a different voice already claimed this name (e.g. two voices both
            # tagged \set stanza = 2) -- disambiguate by prefixing the voice name
            safe_name = sanitize_identifier_name(b['name'])
            varname = f"{safe_name}{varname[0].upper()}{varname[1:]}"
        used_varnames.add(varname)
        b['varname'] = varname
        seen_lyrics_counts[b['name']] = idx + 1

    # build notes.ily
    notes_lines = []
    for b in voice_blocks:
        prefix = f"{b['prefix']} " if b['prefix'] else ''
        notes_lines.append(f"{b['varname']} = {prefix}{{{b['inner']}}}\n")
    for b in lyrics_blocks:
        notes_lines.append(f"{b['varname']} = \\lyricmode {{{b['inner']}}}\n")
    notes_content = "\n".join(notes_lines)

    notes_filename = f"{basename}_notes.ily"
    layout_filename = f"{basename}_layout.ly"

    # build layout.ly: replace each block (header+braces) with a reference to its variable,
    # processing from the end of the file backwards so earlier offsets stay valid.
    all_blocks = sorted(voice_blocks + lyrics_blocks, key=lambda b: b['start'], reverse=True)
    layout_content = content
    for b in all_blocks:
        if b in voice_blocks:
            replacement = f'\\new Voice = "{b["name"]}" \\{b["varname"]}'
        else:
            with_part = f'\\with {b["with_clause"]} ' if b.get('with_clause') else ''
            replacement = f'\\new Lyrics {with_part}\\lyricsto "{b["name"]}" \\{b["varname"]}'
        layout_content = layout_content[:b['start']] + replacement + layout_content[b['end']:]

    # insert \include right after the \version line
    m = re.search(r'^\\version\s+"[^"]+"\s*\n', layout_content, re.M)
    include_line = f'\\include "{notes_filename}"\n'
    if m:
        layout_content = layout_content[:m.end()] + '\n' + include_line + layout_content[m.end():]
    else:
        layout_content = include_line + layout_content

    with open(os.path.join(out_dir, notes_filename), 'w', encoding='utf-8') as f:
        f.write(notes_content)
    with open(os.path.join(out_dir, layout_filename), 'w', encoding='utf-8') as f:
        f.write(layout_content)

    print(f"OK  {os.path.basename(src_path)}  ->  {out_dir}/  "
          f"({notes_filename}, {layout_filename})  "
          f"[{len(voice_blocks)} voix, {len(lyrics_blocks)} paroles]")


def main():
    target = input("Chemin d'un fichier .ly ou d'un dossier contenant des .ly : ").strip().strip('"')
    if not target:
        print("Aucun chemin fourni.")
        sys.exit(1)

    if os.path.isdir(target):
        ly_files = sorted(
            os.path.join(target, fn) for fn in os.listdir(target)
            if fn.endswith('.ly')
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
            split_file(path)
            ok += 1
        except Exception as e:
            fail.append((path, str(e)))
            print(f"ÉCHEC {os.path.basename(path)} :: {e}")

    print(f"\n{ok} fichier(s) traité(s), {len(fail)} échec(s).")


if __name__ == '__main__':
    main()
