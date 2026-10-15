#!/usr/bin/env python3
"""
Validateur du corpus de chorals (sans référence extérieure).

Contrôles :
  1. Loi 0 — mêmes mots, dans le même ordre, dans les 4 voix (comparés au soprano,
     couplet par couplet). Attrape traits d'union manquants (« las sen » pour
     « lassen »), mots en double, coquilles propres à une voix.
  2. Mots rares — mot présent une seule fois dans tout le corpus : coquille possible
     commune aux 4 voix (« duch »). Liste à relire, pas une erreur certaine.
  3. Syntaxe des paroles — « __ » collé (« den__ »), « __ -- », « -- -- »,
     « -- » ou « __ » en début de texte.
  4. (option --compiler) Avertissements de LilyPond à la compilation.

Usage : python3 valider_chorals.py [--compiler] [BWV_x ...]
        -> rapports/validation.txt (sans argument BWV : tout le corpus)
"""
import collections
import re
import subprocess
import sys
import tempfile
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from conform_voice import extract_var, lyric_tokens_with_hyphens

HERE = Path(__file__).resolve().parent
FOLDER = HERE.parent / "Chorals avec paroles - partition ouverte - notes et layout séparés"
REPORT = HERE / "rapports" / "validation.txt"
LILYPOND = (Path.home() / "Library/Application Support/frescobaldi/frescobaldi/"
            "lilypond-binaries/lilypond-2.27.3/bin/lilypond")
VOIX = ("soprano", "alto", "tenor", "bass")
# Écarts de mots voulus (Loi 0) : texte répété ou variante propre à une voix.
EXCEPTIONS_LOI0 = {
    "BWV_121_6": "répétition « in Ewigkeit » au ténor — conforme à la NBA",
    "BWV_64_2": "Kyrieleis (S) / Kyrie eleis (A T B), selon le nombre de notes — à confirmer NBA",
    "BWV_24_6": "répétition dans les voix graves — à confirmer NBA",
    "BWV_76_7_14": "répétitions dans les voix graves — à confirmer NBA",
    "BWV_227_7": "répétitions (motet Jesu, meine Freude) — à confirmer NBA",
}
COUPLETS = ("", "One", "Two", "Three", "Four", "Five", "Six")


def mots(corps):
    """Suite des mots d'un texte : syllabes recollées le long des « -- »."""
    toks, hyph, _ = lyric_tokens_with_hyphens(corps)
    out, cur, lie = [], "", False   # lie : un « -- » depuis la dernière syllabe (même après des « _ »)
    for t, h in zip(toks, hyph):
        if t == "_":
            lie = lie or h
            continue
        if cur and not lie:
            out.append(cur)
            cur = ""
        parts = t.strip('"').split()  # syllabe entre guillemets « "zu er" » : plusieurs mots sur une note
        for x in parts[:-1]:
            out.append(cur + x)
            cur = ""
        cur += parts[-1] if parts else ""
        lie = h
    if cur:
        out.append(cur)
    return out


def norm(m):
    return re.sub(r"[^\wäöüßÄÖÜ'’]", "", m).lower()


def diff_mots(ref, autre):
    """Premier endroit où les suites diffèrent (contexte de 3 mots)."""
    i = 0
    while i < min(len(ref), len(autre)) and norm(ref[i]) == norm(autre[i]):
        i += 1
    if i == len(ref) == len(autre):
        return None
    return " ".join(ref[max(0, i - 2):i + 3]), " ".join(autre[max(0, i - 2):i + 3])


SYNTAXE = [
    (re.compile(r"\S__(?=\s|$)"), "« __ » collé au mot"),
    (re.compile(r"__\s+--"), "« __ » suivi de « -- »"),
    (re.compile(r"--\s+--"), "« -- » doublé"),
    (re.compile(r"__(?:\s+_)*\s+--"), "« __ » à l'intérieur d'un mot (convention : « -- _ _ »)"),
    (re.compile(r"(?<=\s)-(?=\s)"), "tiret simple « - » (imprimé sous la note ; « -- _ » attendu)"),
    (re.compile(r"(?<=[^\s_\-\"{}])\s+_(?=\s)"), "« _ » isolé après une syllabe (« __ _ » ou « -- _ » attendu)"),
    (re.compile(r"\\lyricmode\s*\{\s*(?:\\set[^\n]*\n\s*)*(--|__)"), "texte commençant par « -- » ou « __ »"),
]


def valider(f, texte):
    pb = []
    for suf in COUPLETS:
        corps = {}
        for v in VOIX:
            c = extract_var(texte, f"{v}Lyrics{suf}")
            if c is not None:
                corps[v] = c
        if "soprano" not in corps:
            continue
        ref = mots(corps["soprano"])
        bwv = re.search(r"\((BWV[^)]+)\)", f.name)
        if bwv and bwv.group(1) in EXCEPTIONS_LOI0:
            continue
        for v in VOIX[1:]:
            if v in corps:
                d = diff_mots(ref, mots(corps[v]))
                if d:
                    pb.append(f"  [loi 0] {v}{suf or ''} : soprano « {d[0]} » / {v} « {d[1]} »")
    for rx, msg in SYNTAXE:
        for m in rx.finditer(texte):
            ligne = texte.count("\n", 0, m.start()) + 1
            pb.append(f"  [syntaxe] l.{ligne} {msg} : « {texte[max(0, m.start() - 15):m.end() + 5].strip()} »")
    return pb


def compiler(f):
    layout = Path(str(f).replace("_notes.ily", "_layout.ly"))
    if not layout.exists():
        return []
    with tempfile.TemporaryDirectory() as tmp:
        p = subprocess.run([str(LILYPOND), "-dno-print-pages", "-o", str(Path(tmp) / "x"), str(layout)],
                           cwd=FOLDER, capture_output=True, text=True)
    return [f"  [lilypond] {l.split(':', 3)[-1].strip()}" for l in p.stderr.splitlines()
            if re.search(r"(warning|error|avertissement|erreur)", l, re.I) and "mtime" not in l]


def main(fichiers, avec_compil):
    blocs, compte = [], collections.Counter()
    vocab = collections.Counter()
    textes = {f: f.read_text(encoding="utf-8") for f in fichiers}
    for f, t in textes.items():
        for v in VOIX:
            for suf in COUPLETS:
                c = extract_var(t, f"{v}Lyrics{suf}")
                if c is not None:
                    vocab.update(norm(m) for m in mots(c))
    for f, t in textes.items():
        pb = valider(f, t) + (compiler(f) if avec_compil else [])
        for p in pb:
            compte[re.search(r"\[([^\]]+)\]", p).group(1)] += 1
        if pb:
            blocs.append(f"{f.name}\n" + "\n".join(pb))
    # mots rares : une seule occurrence (dans une seule voix) sur tout le corpus
    rares = sorted(m for m, n in vocab.items() if n == 1 and len(m) > 2)
    entete = (f"{len(fichiers)} chorals, {len(blocs)} avec problème(s) — "
              + ", ".join(f"{k} : {n}" for k, n in sorted(compte.items())) + "\n")
    entete += "Exceptions Loi 0 acceptées : " + "; ".join(f"{k} ({v})" for k, v in EXCEPTIONS_LOI0.items()) + "\n"
    return (entete + "\n" + "\n\n".join(blocs)
            + f"\n\nMots rares (1 seule occurrence dans le corpus, à relire) : {len(rares)}\n"
            + ", ".join(rares) + "\n")


if __name__ == "__main__":
    assert mots("las -- sen _ dich __ _ nicht") == ["lassen", "dich", "nicht"]
    assert mots("auf -- er -- stan __ _ -- _ den, und") == ["auferstanden,", "und"]
    assert diff_mots(["a", "b"], ["a", "b"]) is None
    args = [a for a in sys.argv[1:] if a != "--compiler"]
    fichiers = (sorted(f for a in args for f in FOLDER.glob(f"*({a})*_notes.ily")) if args
                else sorted(FOLDER.glob("*_notes.ily")))
    rapport = main(fichiers, "--compiler" in sys.argv)
    if args:
        print(rapport)
    else:
        REPORT.write_text(rapport, encoding="utf-8")
        print(rapport.splitlines()[0], "->", REPORT)
