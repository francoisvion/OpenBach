sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } s4 \bar "'" \repeat volta 2 { g'4
  g'2
  fis'4 e'2 d'4
  g'2 a'4 b'2
  b'4 b'2
  b'4 b' c'' a'
  g'8 [a'] a'2 g' }
  \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r r
  g' g'2 b'4
  a'2 b'4 g'
  fis'2 e'
  e'4 a' g' fis'
  g' fis' e' d'2
  \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r r
  d' g'2 g'4
  a' b' c'' b'
  a' b' g'2
  \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r r g'
  c''2 c''4 b'
  a' b' a'2
  \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r r a'
  b'2 b'4 c''2
  c''4 d''2.
  g'2 \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r2. r4
  r b' a'4. g'8
  fis'4 g' e'2
  d' \bar "'" r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r
  r d' g'2
  fis'4 e'2 d'4
  a' b'2 a'
  b'4 c'' b'
  a' g'8 [a'] b'4 a'
  g'2 \fine
}

altoMusic = {
  s1 s4 \repeat volta 2 { d'4
  d'4. e'8
  d'4 d'8 [c' b c'] d'4
  d'8 [c'16 b] e'8 [g'] fis'4 g'2
  g'8 [a'] g'4. fis'8
  g' [d'] e'2 fis'4
  g'16 [fis' g' e'] fis'4. d'8 d'2 }
  r4 r2
  e'8 [d'] e'2 e'4
  e' dis'8 [e'] fis'4 e'2
  dis'4 e'2
  e'4 e'8 [d' e' cis'] d'4~
  d' d' d'8 cis' a2
  r4 r2
  b4 b8 [g' fis' e'] d'4
  e' fis' g' fis'
  e' fis' e'2
  r4 r2 e'4
  e'2 e'4 d'
  c' f'8 [e'] e'2
  r4 r2 dis'8 [e']
  fis'4 e' e' e'2
  e'4 d'8 [e'] f'2
  e' r4
  r2. r2
  dis'8 [e'] fis'2.
  e'8 fis' gis'4 ais'
  b'2 r4 r2
  d'8 [fis'] e'2
  d'4 d' c' b8 [c']
  d'4. e'16 [fis'] e'8 [d'16 cis'] d'2
  d'4 g'2.
  g'8 [fis'] g'4 fis'
  d'2 \fine
}

tenorMusic = {
  s1 s4 \repeat volta 2 { b8
  [c'] d' [c' b a]
  b4 b8 [a g fis] g [a]
  b [c'16 d'] g8 [a16 b] c'8 [d'] d'2
  d'8 [fis'] e'4. fis'8
  e' [g'] g4 a4. b8
  b [e'] d'4 c' b2 }
  r4 r r
  b g c' b8 [gis]
  c'2 b4 b
  c' b8 [a] g2
  g4 a a2
  g8 [a] b4. a16 [g] fis2
  r4 r r
  fis g a b
  a2 g8 [a] b4
  e' b b2
  r4 r r e'8 [d']
  c'2 c'4 a8 [gis]
  a4 d' c'2
  r4 r r c'
  fis8 [b] gis4. a8 a2
  a8 [g] a4 d'8 [b]
  g4 g2 r4
  r2. r4
  r fis b8 [cis'] dis'2
  b8 cis'16 [d'] e'8 [e'] d' [cis']
  b2 r4 r
  r b b2
  b8 [a] g2 g4
  a4. g16 [fis] g8 [fis16 e] fis2
  g4 g d'
  e' d'8 [c'] b [g] d' [c']
  b2 \fine
}

bassMusic = {
  s1 s4 \repeat volta 2 { g8
  [a] b [a b c']
  d' [d] e [fis g a] b [b,]
  e [d c b, a, d] g,2
  g8 [fis] e4. dis8
  e [b,] c [b, a, b,] c [d]
  e [c] d [c] d4 g,2 }
  r4 r2
  e8 [b,] c [d e fis] gis [e]
  a [g fis e] dis [b,] e [g a fis b b,]
  e2
  d4 cis8 [b,] cis [a, d fis]
  b [a] g [fis] g [a] d2
  r4 r2
  b,4 e fis g
  cis dis e dis
  cis dis e2
  r4 r2 c'8 [g]
  a4. gis8 a [e] f4.
  c8 d [e] a,2
  r4 r2 fis8 [e]
  dis4 e8 [d] c [b,] a,4
  a e f b,2
  c r4
  r2. r2
  b,8 [cis] dis [e] fis4
  b, e cis fis
  b,2 r4 r2
  g8 [d] e2
  b,4 c2 g4
  fis g2 d
  g8 [f] e4 d
  c b,8. a,16 g, [a, b, c] d8 [d]
  g,2 \fine
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
  Sei Lob und Preis mit Eh -- _ ren Gott Va -- ter, Sohn, __ Hei -- li -- gem Geist!
  Dass wir ihm fest ver -- trau -- _ en, gänz -- lich __ ver -- las -- sen auf ihn,
  von Her -- zen auf __ ihn bau -- _ _ en,
  dass un -- ser Herz, Mut und Sinn
  ihm fes -- tig -- lich an -- han -- gen;
  da -- rauf sin -- gen wir zur Stund:
  A -- men, wir wer -- dens er -- lan -- gen, glaubn wir __ aus Her -- _ zens -- grund.
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
  Der woll in uns ver -- meh -- _ ren, was er uns aus __ Ge -- nad ver -- heißt,
}

altoLyricsOne = \lyricmode {\set stanza = 1
  Sei Lob __ und Preis mit Eh -- _ _ ren Gott Va -- _ ter, Sohn, Hei -- li -- gem __ Geist!
  Dass wir ihm fest __ ver -- trau -- _ en, gänz -- lich ver -- las -- sen auf ihn,
  von Her -- zen auf __ ihn bau -- _ _ en,
  dass un -- ser Herz, Mut und Sinn
  ihm fes -- _ tig -- lich an -- han -- _ gen;
  da -- rauf sin -- gen wir zur Stund:
  A -- men, wir wer -- _ dens er -- _ lan -- gen, glaubn wir aus Her -- zens -- grund.
}

altoLyricsTwo = \lyricmode {\set stanza = 2
  Der woll __ in uns ver -- meh -- _ _ ren, was er __ uns aus Ge -- nad ver -- _ heißt,
}

tenorLyricsOne = \lyricmode {\set stanza = 1
  Sei Lob und Preis mit Eh -- _ _ ren Gott Va -- _ ter, Sohn, __ Hei -- li -- gem __ Geist!
  Dass wir __ ihm fest ver -- trau -- _ _ en, gänz -- lich ver -- las -- sen auf ihn,
  von Her -- _ zen auf ihn bau -- _ _ en,
  dass un -- ser Herz, Mut und Sinn
  ihm fes -- _ tig -- lich an -- han -- _ _ gen;
  da -- rauf __ sin -- gen wir zur Stund:
  A -- men, wir wer -- dens er -- _ lan -- gen, glaubn wir __ _ aus Her -- zens -- grund.
}

tenorLyricsTwo = \lyricmode {\set stanza = 2
  Der woll in uns ver -- meh -- _ _ ren, was er __ uns aus __ Ge -- nad ver -- _ heißt,
}

bassLyricsOne = \lyricmode {\set stanza = 1
  Sei Lob und Preis mit Eh -- ren Gott Va -- _ ter, Sohn, Hei -- li -- gem __ Geist!
  Dass wir ihm fest ver -- trau -- en, gänz -- lich ver -- las -- sen auf ihn,
  von Her -- _ zen auf __ ihn bau -- _ _ en,
  dass un -- _ ser Herz, Mut und Sinn
  ihm fes -- _ tig -- lich __ an -- han -- _ gen;
  da -- rauf sin -- gen wir zur __ Stund:
  A -- men, wir wer -- dens er -- lan -- gen, glaubn wir __ _ aus __ Her -- zens -- grund.
}

bassLyricsTwo = \lyricmode {\set stanza = 2
  Der woll in uns ver -- meh -- ren, was er __ uns aus Ge -- nad ver -- _ heißt,
}
