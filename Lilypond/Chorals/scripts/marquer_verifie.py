#!/usr/bin/env python3
"""
Pose l'étiquette verte macOS (Finder) sur les fichiers d'un choral vérifié
et conforme (notes + layout), en conservant les étiquettes existantes.

Usage : python3 marquer_verifie.py BWV_121_6 [BWV_175_7 ...]
"""
import plistlib
import subprocess
import sys
from pathlib import Path

FOLDER = (Path(__file__).resolve().parent.parent
          / "Chorals avec paroles - partition ouverte - notes et layout séparés")
ATTR = "com.apple.metadata:_kMDItemUserTags"
VERT = "Vert\n2"  # nom affiché + code couleur Finder (2 = vert)


def tags(path):
    r = subprocess.run(["xattr", "-px", ATTR, str(path)], capture_output=True, text=True)
    if r.returncode:
        return []
    return plistlib.loads(bytes.fromhex(r.stdout.replace("\n", "").replace(" ", "")))


def marquer(path):
    t = tags(path)
    if any(x.split("\n")[0] in ("Vert", "Green") for x in t):
        return False
    data = plistlib.dumps(t + [VERT], fmt=plistlib.FMT_BINARY).hex()
    subprocess.run(["xattr", "-wx", ATTR, data, str(path)], check=True)
    return True


def main(ids):
    for bwv in ids:
        files = sorted(FOLDER.glob(f"*({bwv})*"))
        if not files:
            sys.exit(f"Aucun fichier pour {bwv}")
        for f in files:
            print(("vert  " if marquer(f) else "déjà  ") + f.name)


if __name__ == "__main__":
    main(sys.argv[1:])
