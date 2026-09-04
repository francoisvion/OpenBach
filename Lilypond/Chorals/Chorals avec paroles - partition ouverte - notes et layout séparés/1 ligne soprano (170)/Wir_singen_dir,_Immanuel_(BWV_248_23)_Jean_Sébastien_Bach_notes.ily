sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \partial 4.  g''4.
  fis'' e'' fis'' d''
  e'' fis'' g'' \bar "'" r 
  \once \textLengthOn R1.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r4. \bar "'" g''4. g'' d''
  d''4 c''8 b'4 c''8 d''4. c''
  b' \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2.
  r2. r4. \bar "'" b'
  e'' e'' d''4 e''8 fis''4.
  g''4 fis''8 e''4. d'' \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  R1. 
  r4. \bar "'" g'' fis'' e''
  d'' e''4 d''8 c''4 b'8 a'4.
  g' \bar "'" r^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2.
  R1.\fermata \fine
}

altoMusic = {
  \partial 4.  b'4.
  a' b'4 a'8 a'4. g'
  g'4 c''8 b'4 a'8 b'4. \bar "'" r 
  R1.
  r4. \bar "'" b'4. b' b'
  a' g' a'4 e'8 e'8. [g'16 fis'8]
  g'4. r r2.
  r2. r4. \bar "'" g'
  g' g'4 a'8 b'4 a'8 a'4 b'8
  b'4 a'8 b'4 a'8 a'4. r
  R1.
  r4. \bar "'" b' c''4 b'8 b'4 a'8
  a'4 g'8 g'4. g' g'4 fis'8
  d'4. \bar "'" r r2.
  R1.\fermata \fine
}

tenorMusic = {
  \partial 4.  d'4.
  d' d'4 cis'8 d'4 c'8 c'4 b8
  b4 a8 d'4. d' \bar "'" r 
  R1.
  r4. \bar "'" d'4. e' fis'4 g'8
  d'4. d'4 e'8 a4 b8 c'8. [e'16 dis'8]
  e'4. r r2.
  r2. r4. \bar "'" e'
  e'4 d'8 c'4. b4 cis'8 d'4.
  g4 d'8 d'4 cis'8 fis'4. r
  R1. 
  r4. \bar "'" e' e'4 d'8 d'4 c'8
  c'4 b8 c'4 b8 c'4 d'8 e'4 d'8
  b4. \bar "'" r r2.
  R1.\fermata \fine
}

bassMusic = {
  \partial 4.  g4.
  d' g4 a8 d4. g
  c d g, \bar "'" r
  R1.
  r4. \bar "'" g4 fis8 e4. b
  fis g4 e8 fis4 gis8 a4.
  e r r2.
  r2. r4. \bar "'" e4 d8
  c4 d8 e4 c8 g4. fis4 b8
  e4 fis8 g4 a8 d4. r
  R1.
  r4. e4 g8 a4 b8 g4 a8
  fis4 g8 c4 d8 e4 d8 c4 d8
  g,4. \bar "'" r r2.
  R1.\fermata \fine
}

sopranoLyrics = \lyricmode {
  Wir sin -- gen dir in dei -- nem Heer
  aus al -- ler Kraft, __ _ Lob, __ _ Preis und Ehr,
  dass du, o lang __ _ ge -- wünsch - ter Gast,
  dich nun -- mehr ein -- ge - stel - let hast.
}

altoLyrics = \lyricmode {
      Wir sin -- gen dir in dei -- nem Heer aus _ al -- ler Kraft, _ Lob, _ _ Preis und Ehr, dass du, o lang __ _ ge - wünsch - ter _ Gast, dich nun -- mehr ein -- ge _ stel _ _ _ _ _
    }

tenorLyrics = \lyricmode {
      Wir sin -- gen dir in _ dei -- nem Heer _ aus al -- ler Kraft, _ Lob, __ _ Preis und _ Ehr, dass du, o lang ge - wünsch - ter Gast, dich _ nun -- mehr ein -- ge stel _ _ _ _ _ _ _ _ _ _
    }

bassLyrics = \lyricmode {
      Wir sin -- gen dir in dei -- nem Heer aus al - ler Kraft, _ Lob, _ _ _ Preis und Ehr, dass du, o lang _ __ ge - wünsch - ter _ Gast, dich nun -- mehr ein -- ge _ stel _ _ _ _ _ _ _ _
    }
