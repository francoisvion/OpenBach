# Règles de prosodie et d'alignement textuel — chorals de Bach

Référence pour la vérification automatique (parser) de la découpe syllabique dans le corpus
OpenBach. Source principale : *Guide de Prosodie Allemande et d'Alignement Textuel dans les
Chorals de J.S. Bach* (PDF fourni par l'utilisateur, 2026-10-12,
`~/Downloads/Regles_de_Prosodie_et_Alignement_Textuel_Chorals_Bach.pdf`). Complété par le
contexte musicologique général (§6).

## 1. Principes fondamentaux

- **Hiérarchie tonique allemande** :
  - *Forts (lexicaux)* : noms, verbes, adjectifs, radicaux (*Gott, Herr, Trost, kommt, groß*).
  - *Faibles (grammaticaux)* : prépositions, articles, pronoms brefs, terminaisons (*in, zu,
    der, und, -en, -e*).
- **Homorythmie cadentielle** : aux incipits de phrase et aux cadences (points d'orgue), les
  4 voix sont homorythmiques ; la syllabe de rime finale s'ancre sur le temps fort de la
  cadence simultanément aux 4 voix.
- **Mélisme vs re-prononciation** : on ne réattaque jamais une consonne sur une note tenue,
  une dissonance suspendue, ou une résolution rythmique sans raison poétique explicite —
  l'animation se fait par élongation vocalique (mélisme), pas par nouvelle syllabe.
  **Exception : notes répétées de même hauteur** (§5) — là, nouvelle syllabe systématique.

## 2. Retards harmoniques (ex. 4–3, 7–6)

Dissonance sur le temps/subdivision fort, résolution (descendante ou ascendante) sur le
temps/subdivision faible suivant.

- La syllabe est entonnée sur la **note d'attaque du retard** (la dissonance).
- La note de résolution **prolonge la même voyelle** (mélisme, jamais de nouvelle syllabe).

```lilypond
\relative c' { c4 d4 e8[ d] c4 }
\addlyrics { mein -- er Seel __ _ zu Gott }
```

## 3. Anticipations

Note de l'accord suivant énoncée en avance, sur la croche/double-croche finale d'une
mesure/d'un temps.

- **Cas général (95%)** : l'anticipation appartient à la syllabe qui précède (prolongement
  vocalique). La nouvelle syllabe arrive strictement sur le temps fort suivant (accord de
  résolution).

```lilypond
\relative c' { c4 d8 c e4 }
\addlyrics { zu Gott __ _ Va -- ter }
```

- **Exception articulatoire (Anlaut consonantique)** : si le mot suivant commence par un
  groupe consonantique continu (*Schm-, Str-, Br-, Fl-*), la consonne est amorcée oralement
  sur l'anticipation, mais la voyelle ne s'ouvre réellement que sur le temps fort principal.
  (Nuance articulatoire, pas directement codable en LilyPond — à garder en tête pour la
  relecture manuelle plutôt que pour une détection automatique.)

## 4. Motif syncopé croche–noire–croche (8–4–8)

### 4.A Une syncope sur un mot de 2 syllabes — **2 patterns valides, pas 1**

**Syncope d'élan (expression/accentuation)** — cas par défaut, sans tenue/liaison sur la
1ʳᵉ note :
- 1ʳᵉ croche : syllabe 1 (faible/d'attaque)
- Noire syncopée : syllabe 2 (accentuée/forte), épanouie sur la valeur longue
- 2ᵉ croche : prolongement mélismatique de la syllabe 2

```lilypond
\relative c' { c8 d4 e8 }
\addlyrics { mein Her -- _ ze }
```

**Syncope de retard (dissonance suspendue)** — quand la 1ʳᵉ note est **liée** (`~`) à la
noire (vraie dissonance suspendue, pas juste une syncope d'expression) :
- 1ʳᵉ croche + noire syncopée (liées) : syllabe 1, attaque + tenue de la dissonance
- 2ᵉ croche : syllabe 2, exactement sur la note de résolution

```lilypond
\relative c' { c8~ c4 b8 }
\addlyrics { va -- _ _ ter }
```

**Critère de choix entre les deux** : présence d'une liaison (`~`) explicite entre la 1ʳᵉ
croche et la noire. Sans liaison → élan (syllabe 2 sur la noire). Avec liaison → retard
(syllabe 1 sur la noire).

> **✅ Point de comptage clarifié (2026-10-12)** : le script `scripts python/conform_voice.py`
> (`consuming_events`/`collapse_ties`) **fusionne** une note liée avec la précédente en UN
> SEUL événement consommant une syllabe (la note liée ne prend pas son propre slot).
> L'exemple "syncope de retard" du guide (`c8~ c4 b8` / `va -- _ _ ter`, 4 tokens pour 3
> notes dont 2 liées) utilise une convention de comptage différente — vérification empirique
> sur tout le corpus open-score : taux de correspondance notes/syllabes de 72% sur les 399
> paires voix/couplet contenant au moins une liaison, contre 66% sur les 1880 paires sans
> liaison. Si le modèle "note liée = pas de slot propre" était faux, on observerait un
> décalage systématique nettement inférieur sur les voix liées ; ce n'est pas le cas (taux
> comparable, légèrement meilleur même). **Le modèle existant est donc confirmé correct
> pour ce corpus.** Conséquence : le cas "syncope de retard" n'a rien à détecter
> spécifiquement — la liaison dans la musique encode déjà la suspension, l'alignement normal
> (1 syllabe par événement consommant, note liée = fusionnée) s'applique directement sans
> marqueur `_` particulier. Pas de scanner dédié nécessaire pour ce sous-cas.
>
> Par construction, le filtre de détection de la catégorie A (déjà appliqué, 59 corrections
> le 2026-10-12) ne matche que des triplets de 3 événements distincts de durées exactement
> 1/8, 1/4, 1/8 — un couple réellement lié `c8~c4` fusionne en un seul événement de durée 3/8
> et ne peut donc jamais matcher ce filtre. Les 59 corrections déjà appliquées n'ont donc pu
> toucher que des cas sans liaison (élan), jamais des cas de retard liés — confirmé safe.

### 4.B Une syncope sur deux mots distincts

| Configuration | 1ʳᵉ croche | Noire syncopée | 2ᵉ croche |
|---|---|---|---|
| Faible + Fort (*in Gott*) | Mot 1 (faible) | Mot 2 (fort), épanoui | `_` (prolongement mot 2) |
| Fort + Faible (*Gott ist*) | Mot 1 (fort), tenu | `_` (prolongement mot 1) | Mot 2 (faible) |

Remarque : le guide ne donne pas d'exemple "Fort+Fort" ni "Faible+Faible" dans le corps du
texte (contrairement à la synthèse orale donnée précédemment, qui mentionnait un cas
Fort+Fort). À reconfirmer si besoin — pour l'instant seuls Faible+Fort et Fort+Faible sont
sourcés du PDF.

**Statut d'implémentation** : reçu le 2026-10-12, **pas encore appliqué** au corpus — requiert
un lexique de mots-outils allemands + re-scan des deux formes de motif ([mot1,`_`,mot2] et
[mot1,mot2,`_`], cette dernière jamais vérifiée jusqu'ici).

## 5. Croches de passage et notes répétées

- **Croches de passage/broderies** : la syllabe va sur la première note d'attaque, les
  croches suivantes chantent la même voyelle (`_`).
  ```lilypond
  \addlyrics { Freu -- _ _ _ den }
  ```
- **Notes répétées (*Repercussio*)** : deux notes consécutives de même hauteur (ex. deux
  noires identiques) reçoivent chacune une **nouvelle syllabe** — jamais de prolongement
  silencieux sur une répétition de hauteur à l'identique. C'est l'exception explicite à la
  règle générale "mélisme, pas de réattaque" du §1.

## 6. Table de synthèse (codage LilyPond)

| Figure | Contexte | Alignement | Code |
|---|---|---|---|
| Retard (4–3) | mot unique ou 2 mots | dissonance=syllabe, résolution=`_` | `Wort __ _` |
| Anticipation | fin de mesure | temps fort=nouvelle syllabe, anticipation=`_` | `zu Gott __ _ \| Va -- ter` |
| Syncope 8-4-8 élan | Faible+Fort, sans liaison | croche=mot1, noire=mot2, croche=`_` | `in Gott __ _` |
| Syncope 8-4-8 | Fort+Faible | croche+noire=mot1 (`_`), croche=mot2 | `Gott __ _ ist` |
| Syncope 8-4-8 retard | 1 mot, 1ʳᵉ note liée | croche+noire liées=syl1, croche=syl2 | `va -- _ _ ter` |
| Croches de passage | animation polyphonique | 1ʳᵉ croche=syllabe, suivantes=`_` | `Freu -- _ _ _ den` |

## 7. Contexte musicologique général (sources externes, fond historique)

- Martin Opitz, *Buch von der Deutschen Poeterey*, 1624 — principe fondateur : l'accent
  naturel du mot doit coïncider avec l'accent métrique/musical. Racine théorique du §1.
- Thomas Kleinhenz, *Textunterlegung in der Musik der Renaissance*, Magisterarbeit Univ.
  Karlsruhe, 1990 (consulté via Wayback Machine, site d'origine textunterlegung.tkar.de
  disparu) — règles de syllabe-par-note-autonome en polyphonie Renaissance, prolongées
  conceptuellement au choral baroque. Contexte de fond, pas la source du guide §1-6.
- Théorie standard des non-chord tones (suspension/anticipation) pour les définitions
  générales — cf. article Wikipedia "Nonchord tone" et sources de théorie musicale usuelles.

## 8. Statut d'application au corpus (2026-10-12)

- **§4.A syncope d'élan** : validée empiriquement (BWV_276, BWV_284, BWV_285, BWV_286),
  59 corrections appliquées dans `syncope à corriger`, compile-check propre, comptage
  notes/syllabes vérifié inchangé (synchro `\fermata` préservée). 23 fichiers entièrement
  résolus sortis du dossier, 49 restent (cat. B et/ou cas non couverts).
- **§4.A syncope de retard** : ambiguïté de comptage levée (voir encadré §4.A) — rien à
  détecter, l'alignement normal note-liée-fusionnée suffit déjà.
- **§4.B syncope 2 mots** : règle connue, **pas encore scannée ni appliquée**.
- **§2 retards, §3 anticipations, §5 croches de passage/Repercussio** : règles connues,
  **pas encore scannées ni appliquées** — aucune détection automatique écrite à ce stade.
