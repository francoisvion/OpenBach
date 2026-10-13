# Corpus étalon — texte A/T/B contre la partition de Bach

But : vérifier la découpe du texte des voix **alto, ténor, basse** de 5 chorals contre
la partition d'origine (texte sous chaque voix), pour valider ou corriger
`../regles_prosodie_textunterlegung.md` sur des choix de Bach lui-même.

Choix : les 5 chorals du groupe « œuvre » (`../sources_reference_ATB.csv`) aux voix
A/T/B les plus riches en mélismes, un par type d'œuvre.

## Sources

- **BGA** (Bach-Gesellschaft, XIXᵉ s.) : domaine public, clefs d'ut.
- **NBA** (Neue Bach-Ausgabe, Bärenreiter) : clefs modernes, édition critique —
  référence la plus sûre quand les deux divergent.

IMSLP bloque le téléchargement automatique : ouvrir le lien, accepter l'avertissement,
télécharger. Ranger les PDF dans `sources/`.

| # | Choral | Notre rendu | BGA | NBA | Où chercher |
|---|---|---|---|---|---|
| 1 | BWV 121/6 *Lob, Ehr und Dank sei dir gesagt* | [rendus/BWV_121_6.pdf](rendus/BWV_121_6.pdf) | [BWV0121.pdf](https://imslp.org/wiki/File:BWV0121.pdf) (BGA 26) | [NBA I/3.1](https://imslp.org/wiki/File:PMLP149893-bachNBAI,3.1christumwirsollenlobenschonBWV121.pdf) | dernier mouvement, dernières pages |
| 2 | BWV 175/7 *Komm, Heiliger Geist, Herre Gott (II)* | [rendus/BWV_175_7.pdf](rendus/BWV_175_7.pdf) | [BWV0175.pdf](https://imslp.org/wiki/File:BWV0175.pdf) (BGA 35) | [NBA I/14](https://imslp.org/wiki/File:PMLP150079-bachNBAI,14errufetseinenschafenmitnamenBWV175.pdf) | dernier mouvement, dernières pages |
| 3 | BWV 226/2 *Komm, Heiliger Geist, Herre Gott (I)* | [rendus/BWV_226_2.pdf](rendus/BWV_226_2.pdf) | [Bach_-_BGA_-_BWV_226.pdf](https://imslp.org/wiki/File:Bach_-_BGA_-_BWV_226.pdf) (BGA 39, voix seules) | [NBA III/1](https://imslp.org/wiki/File:PMLP152209-bachNBAIII,1dergeisthilftunserschwachheitaufBWV226.pdf) | choral final du motet |
| 4 | BWV 248/46 *Dein Glanz all Finsternis verzehrt* | [rendus/BWV_248_46.pdf](rendus/BWV_248_46.pdf) | [Bach-BWV0248FSpt5.pdf](https://imslp.org/wiki/File:Bach-BWV0248FSpt5.pdf) (BGA 5, partie V) | [NBA II/6 partie V](https://imslp.org/wiki/File:PMLP6314-bachNBAII,6weihnachts-oratoriumBWV248V.ehreseidir,gottgesungen.pdf) | n° 46 (partie V) |
| 5 | BWV 244/32 *Mir hat die Welt trüglich gericht* | [rendus/BWV_244_32.pdf](rendus/BWV_244_32.pdf) | [Bach_StMatt2.pdf](https://imslp.org/wiki/File:Bach_StMatt2.pdf) (BGA 4, 2ᵉ partie) | [NBA II/5 2ᵉ partie](https://imslp.org/wiki/File:PMLP3301-bachNBAII,5matthaeus-passionBWV244zweiterteil.pdf) | n° 32 NBA = **n° 38 BGA** |

## Relevé des écarts

Comparer **uniquement la position des syllabes** (sur quelle note commence chaque
syllabe, où sont les mélismes) — pas l'orthographe, qui a changé depuis le XIXᵉ s.

Pour chaque écart : choral, voix, mesure, notre découpe, celle de Bach, puis verdict :
- **erreur de notre fichier** → correction directe ;
- **règle fausse ou incomplète** → correction de `regles_prosodie_textunterlegung.md` ;
- **choix éditorial BGA ≠ NBA** → noter, suivre la NBA.

| Choral | Voix | Mes. | Notre découpe | Bach (NBA/BGA) | Verdict |
|---|---|---|---|---|---|
| 121/6 | S | 11-12 | « bis in __ in E- » (*in* chanté deux fois) | « bis __ in E- » : *bis* tient sol-la + ré lié | erreur de notre fichier |
| 121/6 | T | 1-2 | *Dank* prolongé sur sol-la, *sei* sur si | *Dank* sur la blanche seule, *sei* sur sol-la (mélisme jusqu'au si) | erreur de notre fichier |
| 121/6 | T | 4-5 | *born* sur la noire pointée + si croche, *von* sur do#-ré | *born* sur la noire pointée seule, *von* dès le si croche | erreur de notre fichier |
| 121/6 | T | 13-14 | *wig* sur do# (3ᵉ temps), *keit* sur fa# | *wig* sur fa# (4ᵉ temps), *keit,* sur le si croche suivant | erreur de notre fichier |
| 121/6 | B | 4-5 | *von* sur le 4ᵉ temps de m. 4 | *born* tient tout le trait, *von* au 1ᵉʳ temps de m. 5 | erreur de notre fichier |
| 121/6 | B | notes | notre basse = ligne du **continuo** (mi grave en levée, fa# grave m. 3, fin fa#–fa# grave) | basse **vocale** à l'octave supérieure par endroits, finit sur une ronde (ré) | **notes** : notre source (= Riemenschneider/music21) donne le continuo, pas la basse chantée |
