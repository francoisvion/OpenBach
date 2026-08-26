#!/bin/bash

# Demande le chemin du dossier à l'utilisateur
echo -n "Entrez le chemin du dossier à inspecter : "
read target_dir

# Nettoie les guillemets ou espaces superflus (gestion du glisser-déposer sur Mac)
target_dir="${target_dir%\"}"
target_dir="${target_dir#\"}"
target_dir="${target_dir%\'}"
target_dir="${target_dir#\'}"
target_dir="${target_dir%/}"

# Vérifie si le dossier existe
if [ ! -d "$target_dir" ]; then
    echo "Erreur : Le dossier spécifié n'existe pas."
    exit 1
fi

echo -e "\nDébut de la mise à jour des fichiers vers la version 2.27.1..."
echo "-----------------------------------------------------------------"

# Recherche récursive et application de convert-ly
# Le -print0 couplé à read -d $'\0' permet de gérer proprement les espaces dans les noms de dossiers/fichiers
find "$target_dir" -type f -name "*.ly" -print0 | while read -r -d $'\0' file; do
    echo "Mise à niveau de : $(basename "$file")"
    
    # -e : modifie le fichier sur place (in-place)
    # --to=2.27.1 : force la conversion vers la version cible
    convert-ly -e --to=2.27.1 "$file"
    
    echo "-----------------------------------------------------------------"
done

echo -e "\nToutes les conversions sont terminées !"