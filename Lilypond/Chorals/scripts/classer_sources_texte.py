#!/usr/bin/env python3
"""
Classe chaque choral du corpus selon l'existence d'une reference pour la
decoupe du texte des voix A/T/B :

  - "oeuvre"  : choral tire d'une cantate, motet, passion, oratorio ou des
                Trauungschorale (BWV <= 252). Bach l'a ecrit en partition
                ouverte avec texte sous chaque voix -> reference BGA (IMSLP,
                domaine public) ou NBA/Carus.
  - "isole"   : BWV 253-438 (recueils C.P.E. Bach/Kirnberger) et autres sans
                source autographe vocale -> pas de reference A/T/B, regles de
                prosodie seules.

Pour chaque oeuvre, recupere la page IMSLP via l'API de recherche (cache JSON
local pour ne pas re-interroger IMSLP).

Sortie : ../sources_reference_ATB.csv
Usage  : python3 classer_sources_texte.py
"""
import csv
import json
import re
import time
import urllib.parse
import urllib.request
from pathlib import Path

HERE = Path(__file__).resolve().parent
CHORALS_DIR = HERE.parent
FOLDER = CHORALS_DIR / "Chorals avec paroles - partition ouverte - notes et layout séparés"
OUT = CHORALS_DIR / "sources_reference_ATB.csv"
CACHE = HERE / "rapports" / "imslp_cache.json"

BWV_RE = re.compile(r"\(BW[VW]_([0-9]+)([a-z]?)((?:_[0-9]+[a-z]?)*)\)")

GRANDES_OEUVRES = {
    232: "messe",
    243: "magnificat",
    244: "passion",
    245: "passion",
    248: "oratorio",
    249: "oratorio",
}


def categorie(num):
    if num <= 224:
        return "cantate"
    if num <= 231:
        return "motet"
    if num in GRANDES_OEUVRES:
        return GRANDES_OEUVRES[num]
    if num <= 252:
        return "trauungschoral"
    return "isole"


def imslp_page(work, cache):
    """Titre de la page IMSLP de l'oeuvre 'BWV <work>' (ex. '48', '244b')."""
    if work in cache:
        return cache[work]
    query = f'"BWV {work}" Bach, Johann Sebastian'
    url = ("https://imslp.org/api.php?action=query&list=search&format=json"
           "&srlimit=50&srsearch=" + urllib.parse.quote(query))
    req = urllib.request.Request(url, headers={"User-Agent": "OpenBach/1.0"})
    with urllib.request.urlopen(req, timeout=30) as r:
        hits = [h["title"] for h in json.load(r)["query"]["search"]]
    # Page de l'oeuvre : "<titre>, BWV 48 (Bach, Johann Sebastian)". Jamais
    # "BWV 48a" quand on cherche 48, ni une page-liste "Cantatas, BWV 41-50".
    w = re.escape(work)
    exact = re.compile(rf", BWV {w}\s*\(Bach, Johann Sebastian\)$")
    loose = re.compile(rf"^(?!Cantatas,).*BWV {w}(?![0-9a-z-])[^(]*\(Bach, Johann Sebastian\)$")
    title = (next((t for t in hits if exact.search(t)), "")
             or next((t for t in hits if loose.search(t)), ""))
    cache[work] = title
    time.sleep(0.5)
    return title


def main():
    cache = json.loads(CACHE.read_text(encoding="utf-8")) if CACHE.exists() else {}
    rows = []
    for f in sorted(FOLDER.glob("*_notes.ily")):
        m = BWV_RE.search(f.name)
        if not m:
            rows.append([f.name, "", "", "", "inconnu", "non", ""])
            continue
        num, suffix, mvts = int(m.group(1)), m.group(2), m.group(3)
        work = f"{num}{suffix}"
        cat = categorie(num)
        lien = ""
        if cat != "isole":
            if num in (250, 251, 252):
                work_q = "250-252"
            else:
                work_q = work
            title = imslp_page(work_q, cache)
            if title:
                lien = "https://imslp.org/wiki/" + urllib.parse.quote(title.replace(" ", "_"))
        rows.append([
            f.name, f"BWV {work}", mvts.strip("_").replace("_", "/"), cat,
            "oeuvre" if cat != "isole" else "isole",
            "oui" if cat != "isole" else "non", lien,
        ])
    CACHE.parent.mkdir(exist_ok=True)
    CACHE.write_text(json.dumps(cache, ensure_ascii=False, indent=1), encoding="utf-8")

    with OUT.open("w", newline="", encoding="utf-8") as fh:
        w = csv.writer(fh)
        w.writerow(["fichier", "oeuvre", "mouvement", "categorie", "groupe",
                    "reference_ATB", "imslp"])
        w.writerows(rows)

    n_ref = sum(r[5] == "oui" for r in rows)
    sans_lien = [r[1] for r in rows if r[5] == "oui" and not r[6]]
    print(f"{len(rows)} chorals : {n_ref} avec reference A/T/B, {len(rows) - n_ref} sans.")
    if sans_lien:
        print("Page IMSLP non trouvee :", ", ".join(sorted(set(sans_lien))))
    print(f"-> {OUT}")


if __name__ == "__main__":
    assert categorie(48) == "cantate" and categorie(227) == "motet"
    assert categorie(244) == "passion" and categorie(251) == "trauungschoral"
    assert categorie(253) == "isole" and categorie(1122) == "isole"
    main()
