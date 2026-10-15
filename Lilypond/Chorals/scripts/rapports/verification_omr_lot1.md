# Vérification à l'œil — lot 1 (2026-10-15)

10 écarts « différent » / « absent chez nous » pris parmi les chorals à 1 seul écart
prioritaire (`comparaison_scans.txt`). Mesures numérotées dans l'ordre (levée = 0).
Rien n'est corrigé : à valider par l'utilisateur, notes vérifiées sur le scan.

| Choral | Voix | Mes. / temps | Nous | Scan | Verdict |
|---|---|---|---|---|---|
| 125/6 | A | 4 / 4 | fa#4 | mi4 | **erreur probable chez nous** |
| 155/5 | B | 7 / 1,5 | sol2 | fa2 | **erreur probable chez nous** |
| 166/6 | B | 3 / 1 | ré2 | ré3 | **octave fausse chez nous** |
| 245/28 | B | 13 / 4 | do#4 | do#3 | **octave fausse chez nous** |
| 253 | S | 8 / 1 | si4 | sol#4 | **erreur probable chez nous** (ligne sol#-la-si-do#) |
| 254 | S | 3 / 4 | la3 | do4 | **erreur probable chez nous** |
| 197/10 | B | 2 / 4 | fa#2 | fa#3 (OMR) | octave ? — zoom pas encore regardé |
| 245/26 | B | 14 / 1 | mib2 | mib3 (OMR) | octave ? — zoom pas encore regardé |
| 197/5 | T | 2 / 1,5 | si3 | la3 (OMR) | à regarder |
| 164/6 | A | 9 / 1 | mib-do croches | mib noire (OMR) | **nous avons raison** (do à ligne supplémentaire manqué par l'OMR) |

Constats :
- Sur 7 cas regardés, 6 erreurs probables chez nous, 1 erreur d'OMR : les écarts isolés sont
  un bon filon.
- Les basses une octave trop bas (166/6, 245/28 et sans doute 197/10, 245/26) rappellent la
  basse du continuo de 121/6 : à corriger vers la basse vocale (grosses notes du scan).
- Outils : `scratchpad` → recadrage d'une mesure via les coordonnées du `.omr` Audiveris
  (`stack left/right`, lignes de portée) ; à intégrer à `comparer_scans.py` pour la feuille
  de relecture.

Suite (prochaine fenêtre) : feuille de relecture visuelle de ces cas (scan / nous), puis
lots suivants ; relancer Audiveris (délai plus long) sur les 11 scans non lus ; examiner
les 39 « structure inattendue » (scans à 3 portées, voix nommées autrement).
