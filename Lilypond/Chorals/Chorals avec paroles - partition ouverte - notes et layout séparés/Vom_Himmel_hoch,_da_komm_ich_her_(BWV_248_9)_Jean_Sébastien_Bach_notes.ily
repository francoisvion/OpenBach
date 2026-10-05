sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \partial 4  d''4
  cis'' b' cis'' a'
  b' cis'' d'' \bar "'" r
  \once \textLengthOn R1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r4 d'' d'' a'
  a' fis'8 [g'] a'4 g'
  fis' \bar "'" \once \textLengthOn r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2
  r2 r4 \bar "'" fis'4
  b' b' a'8 [b'] cis''4
  d''8 [cis''] b'4 a' \bar "'" r 
  \once \textLengthOn R1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
  r4 \bar "'" d'' cis'' b'
  a' b'8 [a'] g' [fis'] e'4
  d'\fermata \bar "'"
  \once \textLengthOn r4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } r2 \fine
}

altoMusic = {
  \partial 4  a'4
  a'8 [gis'] fis'4 e' fis'8 [e']
  d'4 e' fis' r
  R1 
  r4 fis'8 [g'] a' [g'] fis'4
  e' d' d' e'
  d' r4 r2 
  r2 r4 d'8 [e']
  fis'4 e' e'8 [gis'] a'4
  a'4. gis'8 e'4 r
  R1
  r4 fis'8 [e'] e' [fis'] fis' [e']
  cis' [d'] b [cis'] d'4. cis'8
  a4 r4 r2 \fine
}

tenorMusic = {
  \partial 4  fis'4
  e' d' cis' d'8 [cis']
  b [a] g4 a r
  R1 r4 a4 d' d'
  cis' c'8 [b] a4 a
  a r4 r2
  r2 r4 a4
  a gis a8 [d'] cis' [b]
  a [cis'] fis' [e'] cis'4 r
  R1
  r4 d'8 [b] b [a] a [g]
  a4 g8 [fis] d4 a8 [g]
  fis4 r4 r2 \fine
}

bassMusic = {
  \partial 4  d4
  a4. gis8 a [g] fis4
  g8 [fis] e4 d r
  R1 r4 d8 [e] fis4 fis8 [g]
  a4 a8 [g] fis [e] d [cis]
  d4 r4 r2
  r2 r4 d4
  dis e8 [d] cis [b,] a,4
  fis8 [e] d [e] a,4 r
  R1
  r4 b8 [e] a4 d8 [g]
  g [fis] g [a] b [g] a [a,]
  d4 r4 r2\fine
}

sopranoLyrics = \lyricmode {Ach, mein herz -- lie -- bes Je -- su -- lein,
                            Mach dir ein rein, sanft Bet -- te -- lein,
                            Zu ru -- hen in meins Her -- zens Schrein,
                            dass ich nim -- mer ver -- ge -- sse dein.
}

altoLyrics = \lyricmode {
  Ach, mein herz -- lie -- bes Je -- su -- lein,
  Mach dir ein rein, sanft Bet -- te -- lein,
  Zu ru -- hen in meins Her -- zens Schrein,
  dass ich nim -- mer ver -- ge -- sse dein.
}

tenorLyrics = \lyricmode {
  Ach, mein herz -- lie -- bes Je -- su -- lein,
  Mach dir ein rein, sanft Bet -- te -- lein,
  Zu ru -- hen in meins Her -- zens Schrein,
  dass ich nim -- mer ver -- ge -- sse dein.
}

bassLyrics = \lyricmode {
  Ach, mein herz -- lie -- bes Je -- su -- lein,
  Mach dir ein rein, sanft Bet -- te -- lein,
  Zu ru -- hen in meins Her -- zens Schrein,
  dass ich nim -- mer ver -- ge -- sse dein.
}
