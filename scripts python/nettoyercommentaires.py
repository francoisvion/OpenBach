import json
import os
import re
import shutil
import subprocess
import tempfile

CACHE_FILENAME = ".lilypond_cleaner_cache.json"


def verifier_presence_lilypond() -> bool:
    return shutil.which("lilypond") is not None


def charger_cache(dossier: str) -> dict:
    chemin_cache = os.path.join(dossier, CACHE_FILENAME)
    if os.path.exists(chemin_cache):
        try:
            with open(chemin_cache, "r", encoding="utf-8") as f:
                return json.load(f)
        except Exception:
            return {}
    return {}


def sauvegarder_cache(dossier: str, cache: dict):
    chemin_cache = os.path.join(dossier, CACHE_FILENAME)
    try:
        with open(chemin_cache, "w", encoding="utf-8") as f:
            json.dump(cache, f, ensure_ascii=False, indent=2)
    except Exception:
        pass


def nettoyer_commentaires_lilypond(contenu: str) -> str:
    contenu = re.sub(r"%\{.*?%\}", "", contenu, flags=re.DOTALL)

    lignes_nettoyees = []
    for ligne in contenu.splitlines():
        dans_chaine = False
        indice_commentaire = -1

        for i, char in enumerate(ligne):
            if char == '"' and (i == 0 or ligne[i - 1] != "\\"):
                dans_chaine = not dans_chaine
            elif char == "%" and not dans_chaine:
                indice_commentaire = i
                break

        if indice_commentaire != -1:
            ligne = ligne[:indice_commentaire]

        if ligne.strip():
            lignes_nettoyees.append(ligne.rstrip())

    return "\n".join(lignes_nettoyees) + "\n"


def verifier_compilation(
    chemin_fichier: str, timeout_sec: int = 15
) -> tuple[bool, str]:
    """Tente de compiler avec un délai d'expiration (timeout) pour éviter les blocages."""
    dossier_parent = os.path.dirname(os.path.abspath(chemin_fichier))

    with tempfile.TemporaryDirectory() as temp_dir:
        try:
            resultat = subprocess.run(
                [
                    "lilypond",
                    "--output=" + temp_dir,
                    f"-I{dossier_parent}",
                    "-dpreview",
                    chemin_fichier,
                ],
                cwd=dossier_parent,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True,
                encoding="utf-8",
                errors="replace",
                timeout=timeout_sec,  # Coupe LilyPond si la compilation prend trop de temps
                check=False,
            )
            return (resultat.returncode == 0), resultat.stderr
        except subprocess.TimeoutExpired:
            return (
                False,
                f"TIMEOUT : La compilation a dépassé {timeout_sec} secondes.",
            )


def traiter_dossier_lilypond():
    if not verifier_presence_lilypond():
        print(
            "❌ ERREUR : La commande 'lilypond' est introuvable sur votre système."
        )
        return

    print("✓ LilyPond détecté avec succès.\n")

    dossier = input("Entrez le chemin du dossier à traiter : ").strip().strip('"\'')

    if not os.path.exists(dossier):
        print(f"❌ Erreur : Le dossier '{dossier}' n'existe pas.")
        return

    cache = charger_cache(dossier)
    if cache:
        print(
            f"ℹ️ Reprise détectée : {len(cache)} fichier(s) déjà traité(s) dans le journal."
        )

    succes_count = 0
    echecs_count = 0
    ignores_count = 0

    print("\nTraitement et vérification en cours...\n")

    try:
        for racine, _, fichiers in os.walk(dossier):
            for fichier in fichiers:
                if fichier.endswith(".ly"):
                    chemin_complet = os.path.join(racine, fichier)
                    chemin_relatif = os.path.relpath(chemin_complet, dossier)

                    # Si le fichier a déjà été traité lors d'une session précédente
                    if chemin_relatif in cache:
                        ignores_count += 1
                        continue

                    try:
                        with open(chemin_complet, "r", encoding="utf-8") as f:
                            contenu_original = f.read()

                        contenu_nettoye = nettoyer_commentaires_lilypond(
                            contenu_original
                        )

                        if contenu_original == contenu_nettoye:
                            print(f"  ➖ Déjà propre : {fichier}")
                            cache[chemin_relatif] = "DEJA_PROPRE"
                            sauvegarder_cache(dossier, cache)
                            continue

                        # Écriture temporaire du nettoyage
                        with open(chemin_complet, "w", encoding="utf-8") as f:
                            f.write(contenu_nettoye)

                        # Test de compilation avec 15s max de délai
                        est_valide, erreur_log = verifier_compilation(
                            chemin_complet, timeout_sec=15
                        )

                        if est_valide:
                            print(f"  ✓ Nettoyé et validé : {fichier}")
                            cache[chemin_relatif] = "SUCCES"
                            succes_count += 1
                        else:
                            # Restauration
                            with open(
                                chemin_complet, "w", encoding="utf-8"
                            ) as f:
                                f.write(contenu_original)
                            print(
                                f"  ⚠️ Échec/Timeout. RESTAURÉ : {fichier}"
                            )
                            cache[chemin_relatif] = "ECHEC"
                            echecs_count += 1

                        sauvegarder_cache(dossier, cache)

                    except Exception as e:
                        print(f"  ❌ Erreur imprévue sur {fichier} : {e}")

    except KeyboardInterrupt:
        print(
            "\n\n🛑 Interruption par l'utilisateur. Votre progression a été enregistrée."
        )

    print(f"\n--- Bilan ---")
    if ignores_count > 0:
        print(f"⏩ Fichiers ignorés (déjà traités) : {ignores_count}")
    print(f"✓ Fichiers nettoyés et validés : {succes_count}")
    if echecs_count > 0:
        print(f"⚠️ Fichiers restaurés suite à une erreur/timeout : {echecs_count}")


if __name__ == "__main__":
    traiter_dossier_lilypond()