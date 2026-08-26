import hashlib
import os
import re
from collections import defaultdict


def normaliser_contenu_lilypond(contenu: str) -> str:
    """Nettoie les commentaires et normalise les espaces pour comparer

    uniquement la substance musicale/structurelle du fichier.
    """
    # 1. Supprime les commentaires multilignes %{ ... %}
    contenu = re.sub(r"%\{.*?%\}", "", contenu, flags=re.DOTALL)

    # 2. Supprime les commentaires simples % ...
    lignes_nettoyees = []
    for ligne in contenu.splitlines():
        dans_chaine = False
        indice_com = -1
        for i, char in enumerate(ligne):
            if char == '"' and (i == 0 or ligne[i - 1] != "\\"):
                dans_chaine = not dans_chaine
            elif char == "%" and not dans_chaine:
                indice_com = i
                break
        if indice_com != -1:
            ligne = ligne[:indice_com]
        if ligne.strip():
            lignes_nettoyees.append(ligne.strip())

    # 3. Normalise tous les espaces consécutifs en un seul espace
    texte_nettoye = " ".join(lignes_nettoyees)
    return texte_nettoye


def calculer_empreinte(contenu: str) -> str:
    """Calcule le hash SHA-256 du texte normalisé."""
    return hashlib.sha256(contenu.encode("utf-8")).hexdigest()


def rechercher_doublons():
    dossier = input("Entrez le chemin du dossier à analyser : ").strip().strip('"\'')

    if not os.path.exists(dossier):
        print(f"❌ Erreur : Le dossier '{dossier}' n'existe pas.")
        return

    print("\n🔍 Analyse du dossier et recherche des doublons...\n")

    # Dictionnaire : hash -> liste des chemins de fichiers
    empreintes = defaultdict(list)
    total_fichiers = 0

    for racine, _, fichiers in os.walk(dossier):
        for fichier in fichiers:
            if fichier.endswith((".ly", ".ily")):
                chemin_complet = os.path.join(racine, fichier)
                total_fichiers += 1

                try:
                    with open(chemin_complet, "r", encoding="utf-8", errors="ignore") as f:
                        contenu = f.read()

                    contenu_norm = normaliser_contenu_lilypond(contenu)
                    
                    # Ignore les fichiers vides ou sans code significatif
                    if not contenu_norm:
                        continue

                    hash_valeur = calculer_empreinte(contenu_norm)
                    empreintes[hash_valeur].append(chemin_complet)

                except Exception as e:
                    print(f"⚠️ Impossible de lire {chemin_complet} : {e}")

    # Filtrage des groupes ayant plus d'un fichier (les vrais doublons)
    groupes_doublons = [fichiers for fichiers in empreintes.values() if len(fichiers) > 1]

    # --- AFFICHAGE DU RAPPORT ---
    print("=" * 60)
    print(f" Bilan : {total_fichiers} fichier(s) LilyPond scanné(s)")
    print(f" Nombre de groupes de doublons détectés : {len(groupes_doublons)}")
    print("=" * 60 + "\n")

    if not groupes_doublons:
        print("✨ Aucun doublon de contenu trouvé !")
        return

    for i, groupe in enumerate(groupes_doublons, start=1):
        print(f"📁 Groupe de doublons #{i} ({len(groupe)} fichiers identiques) :")
        for chemin in groupe:
            # Affiche le chemin relatif pour plus de lisibilité
            chemin_relatif = os.path.relpath(chemin, dossier)
            print(f"   • {chemin_relatif}")
        print("-" * 60)


if __name__ == "__main__":
    rechercher_doublons()