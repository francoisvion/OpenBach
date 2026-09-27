sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r2 r4 a'4
  fis' e'8 [d'] a'4 a'
  b'2 r4  b'4
  e' e' a'4. g'8
  fis'4 e' d' r
  R1
  r2 r4 a'4
  b' b' a' g'
  fis'2 r4 e'4
  fis' gis' a' b'8 [cis''16 d'']
  cis''4 b' a' r
  R1
  r2 r4 a'4
  a' a' d'' c''
  b'2 r4 b'4
  b' b' e'' d''
  cis'' r r2
  R1
  r2 r4 a'4
  b' a' b' cis''
  d''2 r4 a'4
  b'8 [a'] g' [fis'] e' [fis'16 g'] e'4
  d'2 r \fine
}

altoMusic = {
  s1
  r2 r4 e'4
  d' a d' d'
  d'2 r4 d'4
  cis' cis'8 [d'] e'4. cis'8
  d'4. cis'8 a4 r
  R1
  r2 r4 fis'4
  g' g'8 [fis'] e' [d'] e'4
  d'2 r4 e'4
  e'8 [cis'] d'4 a' a'
  a' gis' e' r
  R1
  r2 r4 e'4
  fis'8 [e'] fis' [g'] a' [g'] a'4
  g'2 r4 g'4
  gis'8 [fis'] gis' [a'] b' [a'] b'4
  a' r r2
  R1
  r2 r4 fis'4
  g' a' g'8 [fis'] e' [fis']
  fis'2 r4 d'4
  d' d' d'8 [b] cis'4
  a2 r \fine
}

tenorMusic = {
  s1
  r2 r4 cis'4
  a fis8 [g] a [g] a4
  g2 r4 d4
  a g8 [a] cis'4. e'8
  a b4 a8 fis4 r
  R1
  r2 r4 d'4
  d' e' a a
  a2 r4 cis'4
  cis'8 [a] d'4 e' fis'
  e' d'8 [cis'] cis'4 r
  R1
  r2 r4 cis'4
  d' d' a d'
  d'2 r4 d'4
  e' e' b e'
  e' r r2
  R1
  r2 r4 d'4
  d' d' g8 [b] b [ais]
  fis2 r4 a4
  g8 [fis] e [d] a [d] a [g]
  fis2 r \fine
}

bassMusic = {
  s1
  r2 r4 a,4
  d8 [cis] d [e] fis [e] fis [d]
  g2 r4 g4
  a a, a8 [g] fis [e]
  d [b, g, a,] d4 r
  R1
  r2 r4 d4
  g8 [fis] e [d] cis [b,] cis [a,]
  d2 r4 a4
  a, b, cis d
  e2 a,4 r
  R1
  r2 r4 a,4
  d8 [cis] d [e] fis [e] fis [d]
  g2 r4 g8 [fis]
  e [d] e [fis] gis [fis] gis [e]
  a4 r r2
  R1
  r2 r4 d4
  g8 [a] g [fis] e [d] cis [fis]
  b,2 r4 fis4
  g,8 [a,] b, [g,] a, [g,] a,4
  d2 r \fine
}

sopranoLyrics = \lyricmode {
  Dem wir das Hei -- lig jetzt
  mit Freu -- den las -- sen klin -- _ gen
  und mit der En -- gel Schar
  das Hei -- lig, Hei -- lig sin -- _ gen,
  den herz -- lich lobt und preist
  die gan -- ze Chris -- ten -- heit:
  Ge -- lo -- bet sei mein Gott
  In al -- le E -- wig -- keit!
}

altoLyrics = \lyricmode {
  Dem wir das Hei -- lig jetzt
  mit Freu -- den las -- sen klin -- _ gen
  und mit der En -- gel Schar
  das Hei -- lig, Hei -- lig sin -- _ gen,
  den herz -- lich lobt und preist
  die gan -- ze Chris -- ten -- heit:
  Ge -- lo -- bet sei mein Gott
  In al -- le E -- wig -- keit!
}

tenorLyrics = \lyricmode {
  Dem wir das Hei -- lig jetzt
  mit Freu -- den las -- sen klin -- _ _ gen
  und mit der En -- gel Schar
  das Hei -- lig, Hei -- lig sin -- _ gen,
  den herz -- lich lobt und preist
  die gan -- ze Chris -- ten -- heit:
  Ge -- lo -- bet sei mein Gott
  In al -- le E -- wig -- keit!
}

bassLyrics = \lyricmode {
  Dem wir das Hei -- lig jetzt
  mit Freu -- den las -- sen klin -- gen
  und mit der En -- gel Schar
  das Hei -- lig, Hei -- lig sin -- gen,
  den herz -- lich lobt und preist
  die gan -- ze Chris -- ten -- heit:
  Ge -- lo -- bet sei mein Gott
  In al -- le E -- wig -- keit!
}