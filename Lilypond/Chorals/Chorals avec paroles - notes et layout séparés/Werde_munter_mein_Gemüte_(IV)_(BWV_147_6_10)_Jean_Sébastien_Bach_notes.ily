sopranoMusic = {
  \voiceOne
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \repeat volta 2 {
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  b'2 c''4
  d''2 d''4
  c''2 b'4 
  a' a' r R2.
  b'2 c''4
  d''2
  b'4 a'8 [b'16 c''] b'4 a'
  g'2 r4 } a'2
  b'4 c''2
  c''4 b'4. c''16 [d''] b'4
  c'' c'' r \bar "'"
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  c''2
  d''4 e''2
  e''4 d''4. e''16 [f''] d''4
  c'' c'' r \bar "'"
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  b'2
  c''4 d''2
  d''4 c'' b'2
  a' r4 \bar "'"
  \once \textLengthOn R2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  b'2
  c''4 d''2
  b'4 a'8 [b'16 c''] a'2
  g'2. \bar "'"
  s2. \fine
}

altoMusic = {
  \voiceTwo
  \repeat volta 2 {
  s2.
  g'2 g'4 a'
  g' fis' g' d'2
  d'4 d' r
  R2.
  g'2
  g'4 g' d'
  e' e' fis'8 [e'] fis'4
  d'2 r4 } fis'2
  gis'4 a'2
  a'4 a'2 gis'4
  a' a' r
  s2.
  a'2
  g'4 g' c''
  g' f' a' g'
  g' g' r
  s2.
  g'2
  g'4 g'2
  g'4 g'8 [fis'] g'2
  fis' r4
  R2.
  g'2
  g'4 g' d'
  e' e' fis'8 [e'] fis'4
  d'2.
  s2. \fine
}

tenorMusic = {
  \voiceOne
  \repeat volta 2 {
  s2.
  d'2 e'4 a2
  b4 b a
  g fis a r
  R2.
  d'2
  e'4 d' b
  b c'8 [a] d' [b] c'4
  b2 r4 } d'2
  d'4 e'2
  f'4 f' d' e'
  c' c' r
  s2.
  e'2
  d'4 c'2
  c'4 a2 b4
  e' e' r
  s2.
  d'2
  e'4 d' b
  b c' d' e'
  a2 r4
  R2.
  d'2
  e'4 d' b
  b c'8 [a] d' [b] c'4
  b2.
  s2. \fine
}

bassMusic = {
  \voiceTwo
  \repeat volta 2 {
  s2.
  g4 fis e fis
  e d e fis
  g d d r
  R2.
  g4
  fis e b b,
  e c d d
  g,2 r4 } d
  c b, a, a8 [g]
  f [e] d4 b, e
  a, a, r
  s2.
  a2
  b4 c' a
  e f d g
  c c r
  s2.
  g2
  e4 b e'
  e a, b, c
  d2 r4
  R2.
  g4
  fis e b b,
  e c d2
  g,2.
  s2. \fine
}

sopranoLyricsOne = \lyricmode {
\set stanza = 1
  \tweak X-offset #-5.0 "6. Wohl" mir, dass ich Je -- sum ha -- be,
  O wie fe -- ste halt ich __ _ ihn,
  Je -- sum hab ich, der __ _ mich lie -- bet
  und sich mir zu ei -- _ gen gi -- bet;
  ach drum lass ich Je -- sum nicht,
  wenn mir gleich mein Her -- ze bricht.
}

sopranoLyricsTwo = \lyricmode {
\set stanza = 2
  dass er mir mein Her -- ze la -- be,
  wenn ich krank und trau -- rig __ _ bin.
}

sopranoLyricsThree = \lyricmode {
\set stanza = 3
  \tweak X-offset #-4.5 "16. Je" -- sus blei -- bet mei -- ne Freu -- de,
  mei -- nes Her -- zens Trost und __ _ Saft,
  mei -- ner Au -- gen Lust __ _ und Son -- ne,
  mei -- ner See -- le Schatz __ _ und Won -- ne;
  da -- rum lass ich Je -- sum nicht
  aus dem Her -- zen und Ge -- sicht.
}

sopranoLyricsFour = \lyricmode {
\set stanza = 4
  Je -- sus weh -- ret al -- lem Lei -- de,
  er ist mei -- nes Le -- bens __ _ Kraft,
}
