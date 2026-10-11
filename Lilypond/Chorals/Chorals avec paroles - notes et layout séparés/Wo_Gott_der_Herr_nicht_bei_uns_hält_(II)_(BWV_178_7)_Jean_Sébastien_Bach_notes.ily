sopranoMusic = {
  \voiceOne
\repeat volta 2 {
  \partial 4 c''4
  c''8 [b'] a' [b'] c'' [d''] e''4
  d'' d'' c''\fermata c''
  b' a'8 [b'] c''4 d''
  b'2 a'4\fermata }
  d''4 e'' e'' b'8 [c''] d''4
  c'' c'' b'\fermata c''
  d'' a'8 [b'] c''4 b'
  a' a' g'\fermata c''
  b' a'8 [b'] c''4 d''8 [c'']
  b'2 a'4\fermata \fine
}

altoMusic = {
  \voiceTwo
\repeat volta 2 {
  \partial 4 a'4
  g' f' g' g'
  a' g' g'\fermata a'
  gis' a' a' a'
  a' gis' e'\fermata }
  g'4 g' g' d'8 [e'] f'4
  e' e' e'\fermata e'
  d'8 [e'] f'4 e' d'
  e' fis' d'\fermata e'
  d'8 [e'] fis' [e'] e'4 a'8 [g']
  f'4 e'8 [d'] cis'4\fermata \fine
}

tenorMusic = {
  \voiceOne
\repeat volta 2 {
  \partial 4 e'4
  e'8 [d'] c' [d'] e' [b] c'4
  c' b e'\fermata e'
  e'8 [d'] c' [b] a4 f'
  e'4. d'8 c'4\fermata }
  b4 c' g8 [a] b4 b
  b a gis\fermata a
  a d' g8 [a] b [d']
  c' [b] a4 b\fermata g8 [a]
  b [cis'] d'4 c'8 [b] a4
  a4. gis8 e4\fermata \fine
}

bassMusic = {
  \voiceTwo
\repeat volta 2 {
  \partial 4 a4
  e f e8 [d] c4
  f g c\fermata a,
  e f2 e8 d
  e2 a,4\fermata }
  g4 c8 [d] e [f] g4 gis
  a c8 [d] e4\fermata a8 [g]
  f [e] d4 e8 [fis] g4
  c d g,\fermata e8 [fis]
  g4 fis8 [gis] a [g] f [e]
  d4 e a,\fermata \fine
}

sopranoLyricsOne = \lyricmode {
\set stanza = 1
  \tweak X-offset #-4.5 "1. Die" Feind sind all in dei -- ner Hand,
  da -- zu all ihr Ge -- dan -- ken;
  Ver -- nunft wi -- der den Glau -- ben ficht,
  aufs künft -- ge will sie trau -- en nicht,
  da du wirst sel -- ber trö -- sten.
}

sopranoLyricsTwo = \lyricmode {
\set stanza = 2
  ihr An -- schläg sind dir Herr, be -- kannt,
  hilf nur dass wir nicht wan -- ken.
  in rech -- ter Lieb des Glau -- bens dein,
  bis an das End be -- stän -- dig sein.
  Die Welt lass im -- mer mur -- ren.
}

sopranoLyricsThree = \lyricmode {
\set stanza = 3
  \tweak X-offset #-4.5 "2. Den" Him -- mel und auch die Er -- den
  hast du, Herr Gott, ge -- grün -- det;
}

sopranoLyricsFour = \lyricmode {
\set stanza = 4
  dein Licht lass uns hel -- le wer -- den,
  das Herz uns werd ent -- zün -- det
}
