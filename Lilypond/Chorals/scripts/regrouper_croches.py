#!/usr/bin/env python3
"""
Reprend les groupements manuels de croches (barres de ligature ecrites a la main
avec [ ]) dans les chorals OpenBach : quand un groupe de 4 ou 6 croches non
pointees est ligature d'un bloc, le re-decoupe en groupes de 2, conformement a
la convention du projet "note1 [note2]".

Ne touche jamais a un groupe :
  - deja groupe par 2 (rien a faire),
  - dont une des notes a une duree explicite differente de 8 (croche pointee,
    double-croche, etc. -- ornements, tourne, etc.),
  - dont la duree n'a pas pu etre determinee avec certitude (recherche en
    arriere jusqu'au debut du bloc { ... } sans trouver de duree explicite,
    ou traversee d'une commande rythmique comme \\times/\\tuplet/\\partial/\\time),
  - dont le nombre de notes n'est ni 4 ni 6 (2 notes = deja bon, 3/5/7... =
    cas irregulier, on ne touche pas).

Ces cas laisses intacts correspondent typiquement aux regroupements volontaires
lies au texte chante (une syllabe par groupe de notes), qu'il ne faut jamais
modifier.

Les fichiers corriges sont ecrits dans un nouveau dossier a cote du/des
fichier(s) source(s) : "{nom du dossier ou fichier}_croches_regroupees".

Usage : lancer le script sans argument, il demande le chemin (fichier .ly/.ily
ou dossier contenant de tels fichiers) en prompt.
"""

import os
import re
import sys

BEAM_RE = re.compile(r'([^\s\[\]]+)\s*\[([^\[\]]*)\](\S*)')

# commands that may appear between notes without affecting rhythm/duration
# inheritance (safe to skip over while scanning backward for a duration)
HARMLESS_COMMANDS = None  # anything not in UNSAFE_COMMANDS is treated as harmless

UNSAFE_COMMANDS = {
    r'\times', r'\tuplet', r'\partial', r'\time', r'\relative', r'\transpose',
    r'\repeat', r'\alternative',
}

STRUCTURAL_TOKENS = {'{', '}', '<<', '>>', '|'}


def token_duration(token):
    """Return (digits, dots) if token has an explicit duration, else None."""
    m = re.search(r'(\d+)(\.*)', token)
    return (m.group(1), m.group(2)) if m else None


def find_effective_duration(full_text, before_index):
    """Scan backward from before_index (exclusive) through whitespace-separated
    tokens to find the most recently stated explicit duration. Returns
    (digits, dots) or None if it cannot be determined safely."""
    before = full_text[:before_index]
    for m in reversed(list(re.finditer(r'\S+', before))):
        core = m.group(0).strip('[]')
        if not core:
            continue
        if core in STRUCTURAL_TOKENS:
            return None
        if core.startswith('\\'):
            cmd = core.split('{')[0]
            if cmd in UNSAFE_COMMANDS:
                return None
            continue
        dur = token_duration(core)
        if dur:
            return dur
    return None


def strip_brackets(token):
    return token.replace('[', '').replace(']', '')


def process_beam_match(m, full_text):
    """Given a regex match for a bracketed beam span, return a replacement
    string, or None if this span must be left untouched."""
    note0_raw = m.group(1)
    inner_raw = m.group(2)
    trailing = m.group(3)

    note0 = strip_brackets(note0_raw)
    inner_tokens_raw = inner_raw.split()
    if not inner_tokens_raw:
        return None
    inner_tokens = [strip_brackets(t) for t in inner_tokens_raw]

    total_notes = 1 + len(inner_tokens)
    if total_notes not in (4, 6):
        return None  # already fine (2), or an irregular count we won't touch

    all_tokens = [note0] + inner_tokens

    # every token must resolve, unambiguously, to an un-dotted eighth note.
    # tokens without an explicit duration inherit it from the previous note
    # in the beam; only the very first one may need to look further back.
    current_dur = None
    for i, tok in enumerate(all_tokens):
        dur = token_duration(tok)
        if dur is None:
            dur = current_dur if i > 0 else find_effective_duration(full_text, m.start())
        if dur is None:
            return None  # could not determine safely -- leave untouched
        digits, dots = dur
        if digits != '8' or dots:
            return None  # not a plain croche group -- leave untouched
        current_dur = dur

    # regroup into pairs: first of each pair bare, second wrapped in [ ]
    parts = []
    for i in range(0, total_notes, 2):
        a = all_tokens[i]
        b = all_tokens[i + 1]
        parts.append(f"{a} [{b}]")
    return " ".join(parts) + trailing


def regroup_croches(content):
    result = []
    pos = 0
    n_changed = 0
    for m in BEAM_RE.finditer(content):
        replacement = process_beam_match(m, content)
        if replacement is None:
            continue
        result.append(content[pos:m.start()])
        result.append(replacement)
        pos = m.end()
        n_changed += 1
    result.append(content[pos:])
    return "".join(result), n_changed


def process_file(src_path, out_dir):
    with open(src_path, encoding='utf-8') as f:
        content = f.read()

    new_content, n_changed = regroup_croches(content)

    out_path = os.path.join(out_dir, os.path.basename(src_path))
    with open(out_path, 'w', encoding='utf-8') as f:
        f.write(new_content)

    print(f"OK  {os.path.basename(src_path)}  ->  {out_path}  "
          f"[{n_changed} groupe(s) re-decoupe(s)]")


def main():
    target = input("Chemin d'un fichier .ly/.ily ou d'un dossier : ").strip().strip('"')
    if not target:
        print("Aucun chemin fourni.")
        sys.exit(1)

    def is_candidate(fn):
        return fn.endswith('.ly') or fn.endswith('.ily')

    if os.path.isdir(target):
        ly_files = sorted(
            os.path.join(target, fn) for fn in os.listdir(target)
            if is_candidate(fn)
        )
        if not ly_files:
            print("Aucun fichier .ly/.ily trouve dans ce dossier.")
            sys.exit(1)
        base_name = os.path.basename(os.path.normpath(target))
        out_dir = os.path.join(os.path.dirname(os.path.normpath(target)),
                                f"{base_name}_croches_regroupees")
    elif os.path.isfile(target):
        ly_files = [target]
        base_name = os.path.splitext(os.path.basename(target))[0]
        out_dir = os.path.join(os.path.dirname(target), f"{base_name}_croches_regroupees")
    else:
        print(f"Chemin introuvable : {target}")
        sys.exit(1)

    os.makedirs(out_dir, exist_ok=True)

    ok, fail = 0, []
    for path in ly_files:
        try:
            process_file(path, out_dir)
            ok += 1
        except Exception as e:
            fail.append((path, str(e)))
            print(f"ECHEC {os.path.basename(path)} :: {e}")

    print(f"\n{ok} fichier(s) traite(s), {len(fail)} echec(s).")
    print(f"Fichiers corriges dans : {out_dir}")


if __name__ == '__main__':
    main()
