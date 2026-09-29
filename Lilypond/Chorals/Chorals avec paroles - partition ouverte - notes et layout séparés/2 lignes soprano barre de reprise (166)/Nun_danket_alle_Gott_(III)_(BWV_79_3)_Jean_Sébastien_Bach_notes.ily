sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \repeat volta 2 {
  r2  d''
  d'' d''
  e'' e''
  d''1
  \bar "'" \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r2 b'
  c'' b'
  a' b'
  a'1
  g' }
  \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r2 a'
  a' a'
  b' b'
  a' r2 \bar "'" \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r2 a'
  b'4
  cis'' d''2
  d'' cis''
  d''1
  \bar "'" \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r2 d''
  e'' d''
  c'' b'
  c''1
  \bar "'" \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r2 b'
  a' b'
  a' a'
  g'1
  \bar "'" \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \fine
}

altoMusic = {
  \repeat volta 2 {
  r2 g'2
  g' b'
  c'' c''
  b'1
  s1
  r2 g'
  a' g'
  fis' g'
  g' fis'
  d'1 }
  s1
  r2 fis'
  fis' fis'
  g' g'
  a' r2
  s1
  r2 a'
  g'
  a'
  a' a'
  a'1
  s1
  r2 b'
  c'' b'
  g' g'
  g'1
  s1
  r2 g'
  fis' g'
  g' fis'
  d'1
  \bar "'" s1 \fine
}

tenorMusic = {
  \repeat volta 2 {
  r2 b2
  b4 d' g'2
  g' g'
  g'1
  s1
  r2 d'
  d' d'
  d' d'
  d'2. a4
  b1 }
  s1
  r2 d'
  d' d'
  d' d'4 e'
  fis'2 r2 s1
  r2 d'2
  d'4
  e' fis'2
  fis' e'
  fis'1
  s1
  r2 g'
  g' f'
  e' d'
  e'1
  s1
  r2 d'
  d' d'
  d' d'
  b1
  \bar "'" s1 \fine
}

bassMusic = {
  \repeat volta 2 { 
  r2 g2
  g g
  c' c
  g1
  s1
  r2 g
  fis g
  d4 c b, g,
  d1
  g, }
  s1
  r2 d
  d d
  g g,
  d r2
  s1
  r2 fis2
  g
  fis4 g
  a2 a,
  d1
  s1
  r2 g
  c d
  e4 f g2
  c1
  s1
  r2 g
  d' g
  d d
  g1
  \bar "'" s1 \fine
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
  Nun dan -- ket al -- le Gott
  mit Her -- zen, Mund und Hän -- den,
  der uns von Mut -- ter -- leib
  und Kin -- _ des -- bei -- nen an
  un -- zäh -- lig viel zu -- gut
  und noch it -- zund ge -- tan!
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
  der gro -- ße Din -- ge tut
  an uns und al -- len En -- den,
}

altoLyricsOne = \lyricmode {\set stanza = 1
  Nun dan -- ket al -- le Gott
  mit Her -- zen, Mund und Hän -- _ den,
  der uns von Mut -- ter -- leib
  und Kin -- des -- bei -- nen an
  un -- zäh -- lig viel zu -- gut
  und noch it -- zund ge -- tan!
}

altoLyricsTwo = \lyricmode {\set stanza = 2
  der gro -- ße Din -- ge tut
  an uns und al -- len En -- _ den,
}

tenorLyricsOne = \lyricmode {\set stanza = 1
  Nun dan -- _ ket al -- le Gott
  mit Her -- zen, Mund und Hän -- _ den,
  der uns von Mut -- ter -- _ leib
  und Kin -- _ des -- bei -- nen an
  un -- zäh -- lig viel zu -- gut
  und noch it -- zund ge -- tan!
}

tenorLyricsTwo = \lyricmode {\set stanza = 2
  der gro -- _ ße Din -- ge tut
  an uns und al -- len En -- _ den,
}

bassLyricsOne = \lyricmode {\set stanza = 1
  Nun dan -- ket al -- le Gott
  mit Her -- zen, Mund __ _ und __ _ Hän -- den,
  der uns von Mut -- ter -- leib
  und Kin -- des -- _ bei -- nen an
  un -- zäh -- lig viel __ _ zu -- gut
  und noch it -- zund ge -- tan!
}

bassLyricsTwo = \lyricmode {\set stanza = 2
  der gro -- ße Din -- ge tut
  an uns und al -- _ len __ _ En -- den,
}
