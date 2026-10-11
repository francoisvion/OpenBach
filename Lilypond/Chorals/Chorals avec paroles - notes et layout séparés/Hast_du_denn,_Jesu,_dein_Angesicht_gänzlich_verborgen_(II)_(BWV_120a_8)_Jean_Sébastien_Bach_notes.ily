sopranoMusic = {
  \voiceOne
\repeat volta 2 {
  d''4 d'' a'' fis''4.
  e''8 d''4 cis''4. b'8
  a'4 d'' e'' fis''8 [g'']
  e''2 d''4\fermata }
  fis''4. e''8 fis''4 g''2.\fermata
  fis''4. g''8
  a''4 a''4. g''8 fis''4
  e''2.\fermata a'4
  b' cis'' d'' e''
  fis''8. [g''16] e''2 d''4\fermata \fine
}

altoMusic = {
  \voiceTwo
\repeat volta 2 {
  a'4 a' a' a'4.
  a'8 gis'4 e' a'
  a' a' cis'' a'
  a' g' fis'\fermata }
  a'4. a'8 dis'4 b'2.\fermata
  b'4. b'8
  e'4 d' a' a'
  a'2.\fermata e'4
  e' e' a' a'
  a' a'2 fis'4\fermata \fine
}

tenorMusic = {
  \voiceOne
\repeat volta 2 {
  fis'4 fis' e' d'4.
  a8 d'4 a' a
  e' d' g d'
  e' cis' a\fermata }
  fis'4. fis'8 fis' [dis'] e'2.\fermata
  fis'4. d'8
  cis' [b] a4 cis' d'
  cis'2.\fermata cis'4
  e' a a a
  a8 [d'] d'4 cis' a\fermata \fine
}

bassMusic = {
  \voiceTwo
\repeat volta 2 {
  d4 d' cis' d'4.
  cis'8 b4 a a,
  g fis e d
  a a, d\fermata }
  d fis b e2.\fermata
  b4 a
  g fis4. e8 d4
  a,2.\fermata a4
  g8 [fis] g [e] fis4 cis
  d a a, d\fermata \fine
}

sopranoLyricsOne = \lyricmode {
\set stanza = 1
  \tweak X-offset #-4.0 "1. Lo" -- be den Her -- ren, der dei -- nen Stand sicht -- bar ge -- seg -- net,
  Den -- ke da -- ran,
  was der All -- mäch -- ti -- ge kann,
  der dir mit Lie -- be be -- geg -- net.
}

sopranoLyricsTwo = \lyricmode {
\set stanza = 2
  der aus dem Him -- mel mit Strö -- men der Lie -- be ge -- reg -- net.
}

sopranoLyricsThree = \lyricmode {
\set stanza = 3
  \tweak X-offset #-4.0 "2. Lo" -- be den Her -- ren, was in mir ist, lo -- be den Na -- men.
  Er ist dein Licht,
  See -- le, ver -- giss es ja nicht;
  Lo -- ben dir, schlie -- ße mit __ A -- men.
}

sopranoLyricsFour = \lyricmode {
\set stanza = 4
  Al -- les, was O -- dem hat, lo -- be mit A -- bra -- hams Sa -- men.
}
