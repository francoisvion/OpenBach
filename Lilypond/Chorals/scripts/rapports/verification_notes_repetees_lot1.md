# Notes répétées dont la 2e ne porte que « _ » — groupe 1 (2026-10-16)

Feuille : https://claude.ai/artifact/7Mcy9JFqDHMosbQmMubutj. Détecteur : `scripts/notes_repetees.py`.
Groupe 1 = le scan écrit une seule note longue (ou liée) là où nous répétons la note.
Correction : note longue dans la mesure, liaison `~` par-dessus la barre ; le « _ » de la
2e note retiré dans tous les couplets. Décisions de l'utilisateur, une par choral.

| Choral | Voix | Mes. | Correction | Commit |
|---|---|---|---|---|
| 10/7 | A | 21 | note longue | f5ee8b42 |
| 111/6 | S | 4 | note longue | 819fc45b |
| 197/5 | B | 2 | note longue | afcd3510 |
| 266 | T | 3-4 | `e' b b~ \| b` (une seule liaison ; pas de fusion b b) | 0da8a82e |
| 282 | S, A | 8 | note longue | b9cc528f |
| 283 | T | 4 | note longue | c0daa695 |
| 295 | T | 15-16 | `a a~ \| a` | ddc834ad |
| 348 | T | 4, 9, 18 | trois liaisons par-dessus la barre | df27e1c2 |
| 368 | A | 3-4 | `f'2.~ f'\fermata` | 7d682f6b |
| 405 | T | 11 | `a2 a\fermata` | 27834355 |
| 412 | A | 15 | `d'2 d'4\fermata` | b61292f2 |
| 42/7 | A | 25-26 | `cis'4~ cis'2.` | 1995289f |
| 83/5 | T | 2-3 | `c'~ c'8 [b]` | 5e63f3cb |
| 363 | T | 11 | inchangé : extrait du scan décalé, scan identique | — |
| 426 | T | 15 | inchangé : scan = nos notes (liaison comprise) | — |

À revoir : 42/7 basse m25-26 (même cas sur la2, écarts d'octave OMR) ; 405 basse m11 (rythme ≠ scan).

Outil corrigé au passage (ac4d419f) : `tokenize_events` perdait le point d'une durée héritée
(`f'2. f'` comptait 2 temps au lieu de 3), ce qui décalait les instants calculés ensuite.
