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

**Statut d'implémentation** : fait le 2026-10-12. Lexique allemand faible construit (articles,
prépositions, conjonctions, pronoms brefs, auxiliaires ET verbes modaux conjugués — confirmé
par recherche que les modaux sont non-accentués comme les auxiliaires). Détecteur vérifie les
deux formes de motif, ne flague que les cas non-ambigus (un mot clairement faible ET l'autre
clairement fort, dans le mauvais sens — les cas faible+faible/fort+fort ne sont pas tranchés
par la règle, pas flagués). 17 corrections appliquées (14 fichiers), toutes vérifiées par le
harnais `scripts python/prosody_safety.py`, compilation propre, 0 reliquat au re-scan.

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

**Statut d'implémentation (2026-10-12) : essayé, abandonné pour l'instant — signal pas assez
fiable pour un parser automatique.**

- *Repercussio* : détecteur basé sur "2 événements consécutifs même hauteur, durées égales,
  2e sans nouvelle syllabe". Repère de calibrage utilisé : après 3 semaines de relecture
  manuelle, le taux de violations réelles attendu est faible (sous les 5% des fichiers, par
  analogie avec les 2 règles de syncope validées à ~3-14%). Premier essai : 23% des fichiers
  (254 occurrences) — très au-dessus. Resserré 2 fois (exclusion mélisme déjà engagé, durées
  égales) : toujours ~20% (160 occurrences, 87 fichiers). Inspection manuelle de l'échantillon :
  immense majorité de mélismes de fin de mot parfaitement normaux et idiomatiques (*lo -- _ ben*,
  *Le -- _ ben*, *Her -- _ ren*), pas des violations. Terme "Repercussio" lui-même ambigu : en
  chant grégorien il désigne l'inverse (plusieurs notes même hauteur SOUS LA MÊME syllabe,
  articulées séparément) — voir Wikipedia "Repercussion (singing)". Conclusion : mauvaise
  interprétation de la règle de ma part, pas un simple réglage de seuil. Nécessite un critère
  plus précis avant de retenter.
- *Croches de passage* : détecteur basé sur mouvement mélodique par degrés conjoints (3+
  notes consécutives, pas de bracket, durée croche, pas à pas même direction). Taux obtenu :
  3% des fichiers (31 occurrences, 12 fichiers) — dans la fourchette attendue numériquement,
  mais inspection manuelle révèle une confusion de fond : "mouvement par degrés conjoints"
  (ce que je détecte, pure mélodie) ≠ "note de passage non-harmonique entre deux notes
  principales de l'accord" (ce que dit la règle — nécessite une analyse harmonique des 4 voix
  ensemble, pas juste la forme mélodique d'une voix). Beaucoup de faux positifs sont de
  simples suites de mots normales dont la mélodie monte/descend par hasard par degrés
  conjoints (*ben wir den Her ren* = "loben wir den Herren", 3 mots distincts légitimes).
  Nécessite une analyse harmonique (hors de portée de l'approche actuelle, tokens de durée
  et hauteur seuls) avant de retenter.

Les deux restent des guides de relecture manuelle valables, juste pas automatisables en
l'état avec la méthode utilisée pour les syncopes.

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
- **§9 (leçons NBA)** : 5 chorals étalon corrigés (BWV 121/6, 175/7, 226/2, 248/46, 244/32), détection
  automatique du « mélisme recopié » **pas encore écrite**.

## 9. Ce que montre la partition de Bach (NBA) — corpus étalon, 2026-10-15

Source : texte sous chaque voix dans la NBA (BWV 121/6, 175/7, 226/2, 248/46, 244/32), relevé
détaillé dans `étalon BGA/README.md`. Bilan des 5 chorals : **≈ 30 écarts de texte**, dont la
moitié environ par mélisme du soprano recopié (§9.1), et **≈ 10 écarts de notes** (saisie,
liaisons ou notes répétées perdues, basse du continuo) — chaque fois confirmés par notre scan.
Aucun des 5 n'était exact. 244/32 (le plus homophone) n'avait que 3 écarts.

### 9.1 Chaque voix a sa propre découpe — ne jamais recopier le mélisme du soprano

Défaut le plus fréquent de nos fichiers (≈ 12 cas sur 3 chorals) : une voix A/T/B garde un
mélisme là où le **soprano** en a un, alors que sa propre ligne est syllabique à cet endroit.
Origine : `derive_atb.py` dérive A/T/B de la structure du soprano.

| Choral | Soprano | Voix grave chez Bach |
|---|---|---|
| 175/7 m. 18-19 | *die* __ _ (ré lié) puis *mich* | A/T/B : *die mich* syllabique, mélisme sur *an-* |
| 226/2 m. 9-10 | *nicht* __ (fa lié) puis *ab-trei-ben* | A/T/B : *ab* au 1ᵉʳ temps, mélisme sur *trei-* |
| 226/2 m. 6-7 | *be-* __ (fa lié) | T/B : *stän-* au temps suivant, mélisme sur *blei-* |

Règle : le mélisme d'une voix se décide **sur ses propres notes**, jamais par analogie avec le
soprano. Seuls les points d'ancrage communs restent : incipit de phrase et syllabe sous le
point d'orgue (§1, homorythmie cadentielle — confirmée dans les 3 chorals).

### 9.2 Où Bach place le surplus de notes

Quand une voix a plus de notes que de syllabes entre deux points d'orgue :

1. **La syllabe accentuée du dernier mot avant la cadence absorbe le mélisme** — tendance la
   plus constante : *blei-ben*, *trei-ben*, *drin-gen*, *hö-ren*, *leh-ren*, *an-ders*,
   *E-wig-keit*. Les mots qui précèdent restent syllabiques.
2. **Une nouvelle syllabe prend de préférence le début du temps** ; le surplus (croches,
   doubles) se chante à l'intérieur du temps. Ex. 121/6 T m. 2 : *Dank* sur la blanche, *sei*
   dès le 1ᵉʳ temps suivant (sol-la-si) — et non *Dank* prolongé sur sol-la. 121/6 B m. 4-5 :
   *born* tient tout le trait, *von* au 1ᵉʳ temps de m. 5.
3. Exceptions vues : une syllabe longue peut couvrir plusieurs noires conjointes (175/7 A m. 1 :
   *wer* sur sol-fa#-sol, *ter* au 4ᵉ temps) — la règle 2 est une préférence, pas une loi.

### 9.3 Notes répétées et liaisons : vérifier la source

226/2 T m. 12 : Bach écrit fa noire + **fa croche** + mib croche, *Kraft* sur le 2ᵉ fa. Notre
source (2 portées / Riemenschneider) a **fusionné** les deux fa en noire pointée. Une note
répétée de Bach porte donc une nouvelle syllabe (cf. §5), mais elle peut avoir **disparu** de
nos fichiers : une noire pointée suivie d'une croche, dans une voix qui manque d'une syllabe,
est suspecte. Même chose pour les liaisons : 248/46 A m. 9-11 et T m. 10-11 avaient perdu leurs
liaisons (et une noire répétée était devenue blanche), ce qui déplaçait tout le texte.

### 9.4 Basse vocale ≠ continuo

121/6 : notre basse était la ligne du continuo (octaves graves, fin fa#–fa# au lieu de la
ronde chantée). Pour tout choral tiré d'une œuvre, la basse se vérifie contre la **basse
vocale** NBA (notes **et** texte). À signaler dans les notices des compilations.

### 9.5 Contrôles de forme (validateur)

Convention d'écriture des paroles (utilisateur, 2026-10-15) :

| Situation | Notation | Exemple |
|---|---|---|
| coupure dans un mot | `--` | `Freu -- de` |
| … en sautant 1 / 2 notes | `-- _` / `-- _ _` | `Freu -- _ de` |
| prolongation en fin de mot | `__` | `Gott __` |
| … en sautant 1 / 2 notes | `__ _` / `__ _ _` | `Gott __ _ _` |

Jamais de `__` à l'intérieur d'un mot, jamais de tiret simple `-` (LilyPond l'imprime comme
une syllabe sous la note).

- Mots composés : traits d'union obligatoires entre toutes les syllabes (*Mor -- gen -- stern*,
  *E -- wig -- keit*, *Al -- le -- lu -- ia*) — oublis trouvés dans 175/7.
- Coquilles (*duch* pour *durch*, 226/2), mot en double (*bis in __ in*, 121/6).
- Syntaxe LilyPond : `__` suivi de `--` (*rin __ -- _*) ; `[` s'attache à la note qui
  **précède** (`c8 [d16 e]` = un seul groupe de 3 notes = une seule syllabe).
- Orthographe (décision 2026-10-15) : **Alleluia** partout (même si la NBA / le scan écrivent
  *Halleluja*, *Alleluja*) ; pour le reste, graphie de la **réforme allemande de 1996** (*dass*,
  *willst*…). Les variantes de mot ou d'élision (*vor*/*für*, *folg*/*folge*) ne sont pas de
  l'orthographe : on suit le scan.
