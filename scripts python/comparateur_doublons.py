import os
import re
import difflib

def nettoyer_chemin(chemin):
    # Enlève les guillemets simples ou doubles aux extrémités générés par le terminal
    chemin = chemin.strip("'\" ")
    # Supprime les antislashs d'échappement devant les espaces, parenthèses, apostrophes...
    chemin = re.sub(r'\\(.)', r'\1', chemin)
    return chemin

def analyser_fichier_lilypond(chemin_fichier):
    with open(chemin_fichier, 'r', encoding='utf-8', errors='ignore') as f:
        contenu = f.read()
    
    stats = {
        'chemin': chemin_fichier,
        'nom': os.path.basename(chemin_fichier),
        'taille': len(contenu),
        'version': "Inconnue",
        'a_italiano': False,
        'nb_notes': len(re.findall(r'[a-gA-G](?:is|as|es|isisfad|b|nd)?[\d\s\W]', contenu)),
        'syntaxe_obsolete': len(re.findall(r"#'", contenu)), 
        'score_blocs': len(re.findall(r'\\score', contenu))
    }
    
    version_match = re.search(r'\\version\s+"([^"]+)"', contenu)
    if version_match:
        stats['version'] = version_match.group(1)
        
    if "italiano" in contenu:
        stats['a_italiano'] = True
        
    return stats, contenu

def evaluer_et_classer(list_chemins):
    analyses = []
    for cp in list_chemins:
        stats, contenu = analyser_fichier_lilypond(cp)
        analyses.append({'stats': stats, 'contenu': contenu, 'score': 0, 'bonus': []})
        
    # --- Attribution des points de qualité ---
    
    # 1. Tri par version de LilyPond (Plus c'est récent, mieux c'est)
    # On extrait les versions uniques présentes pour les classer
    versions = sorted(list(set(a['stats']['version'] for a in analyses if a['stats']['version'] != "Inconnue")))
    for idx, v in enumerate(versions):
        for a in analyses:
            if a['stats']['version'] == v:
                points = (idx + 1) * 2
                a['score'] += points
                a['bonus'].append(f"+{points} version récente ({v})")

    # 2. Bonus Langue 'italiano' (Standard OpenBach)
    for a in analyses:
        if a['stats']['a_italiano']:
            a['score'] += 2
            a['bonus'].append("+2 inclut 'italiano'")

    # 3. Pénalité pour les vieilles syntaxes #'property
    # Moins il y en a, plus le fichier est propre
    min_obsolete = min(a['stats']['syntaxe_obsolete'] for a in analyses)
    for a in analyses:
        if a['stats']['syntaxe_obsolete'] == min_obsolete:
            a['score'] += 3
            a['bonus'].append("+3 syntaxe moderne (Zéro ou minimum d'obsolescences)")
        elif a['stats']['syntaxe_obsolete'] > 0:
            a['bonus'].append(f"Pénalité : {a['stats']['syntaxe_obsolete']} syntaxes obsolètes")

    # 4. Complétude de la musique (Basé sur le nombre de notes estimé)
    max_notes = max(a['stats']['nb_notes'] for a in analyses)
    for a in analyses:
        # Si un fichier a beaucoup moins de notes, il est probablement incomplet
        if a['stats']['nb_notes'] >= max_notes - 15:
            a['score'] += 4
            a['bonus'].append(f"+4 musique complète ({a['stats']['nb_notes']} notes)")
        else:
            a['bonus'].append(f"Attention : Manque potentiellement de la musique ({a['stats']['nb_notes']} notes)")

    # --- Tri final par Score décroissant ---
    analyses.sort(key=lambda x: x['score'], reverse=True)
    
    # --- Affichage des Résultats ---
    print("\n" + "="*60)
    print("🏆 TABLEAU DES SCORES DES DOUBLONS (Du meilleur au moins bon) 🏆")
    print("="*60)
    
    for i, a in enumerate(analyses):
        medaille = "🥇" if i == 0 else "🥈" if i == 1 else "🥉" if i == 2 else "📄"
        print(f"\n{medaille} Rang {i+1} : {a['stats']['nom']} -> SCORE: {a['score']} points")
        print("   Détails de l'analyse :")
        for b in a['bonus']:
            print(f"     {b}")
            
    print("\n" + "="*60)
    print(f"👉 RECOMMANDATION : Gardez en priorité le fichier 1 : {analyses[0]['stats']['nom']}")
    print("="*60)

    # Mode Diff optionnel si l'utilisateur veut inspecter les deux meilleurs
    if len(analyses) >= 2:
        choix = input("\nVoulez-vous comparer le texte des deux meilleurs fichiers (Rang 1 vs Rang 2) ? (o/n) : ")
        if choix.lower() == 'o':
            diff = difflib.unified_diff(
                analyses[0]['contenu'].splitlines(), analyses[1]['contenu'].splitlines(),
                fromfile=analyses[0]['stats']['nom'], tofile=analyses[1]['stats']['nom'], lineterm=''
            )
            print("\n--- Différences textuelles (Rang 1 vs Rang 2) ---")
            for line in diff:
                print(line)

if __name__ == "__main__":
    print("--- BIENVENUE DANS LE COMPARATEUR MULTI-DOUBLONS LILYPOND ---")
    print("Entrez les fichiers les uns après les autres.")
    print("Quand vous avez fini de glisser tous vos doublons, tapez 'FIN' ou 'fin' pour lancer l'analyse.\n")
    
    chemins_valides = []
    compteur = 1
    
    while True:
        saisie = input(f"Glissez le doublon n°{compteur} (ou tapez 'FIN') : ")
        if saisie.strip().upper() == 'FIN':
            if len(chemins_valides) < 2:
                print("❌ Il vous faut au moins 2 fichiers pour faire une comparaison ! Continuez.")
                continue
            else:
                break
                
        chemin_nettoye = nettoyer_chemin(saisie)
        if os.path.exists(chemin_nettoye):
            if chemin_nettoye not in chemins_valides:
                chemins_valides.append(chemin_nettoye)
                print(f"✅ Fichier ajouté avec succès : {os.path.basename(chemin_nettoye)}")
                compteur += 1
            else:
                print("⚠️ Ce fichier a déjà été ajouté.")
        else:
            print(f"❌ Fichier introuvable. Vérifiez le lien.")
            
    try:
        evaluer_et_classer(chemins_valides)
    except Exception as e:
        print(f"❌ Une erreur est survenue lors de l'analyse générale : {e}")