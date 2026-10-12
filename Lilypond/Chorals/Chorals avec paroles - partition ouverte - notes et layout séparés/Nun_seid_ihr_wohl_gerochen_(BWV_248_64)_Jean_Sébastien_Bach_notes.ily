sopranoMusic = {
  \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
  \repeat volta 2 {
    \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }  \bar "'" fis'4
    b' a' g' fis'
    e'2 fis'4 \bar "'" \once s4^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
    \bar "" s2. \bar "'" cis''4
    d'' d'' cis''8. [d''32 e''] cis''4
    b'\bar "'" \once s^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } }
  s \bar "'" d''
  cis'' a' b' cis''
  d''2 d''4 \bar "'" \once \textLengthOn s^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }  \bar "'"
  r a' b' a'
  g' g'8 [fis'] fis'4 \bar "'" \once s^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar ""
  s2. \bar "'" d''4
  cis'' e'' d'' cis''
  b'2 cis''4 \bar "'" \once s^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar ""
  s2. \bar "'" fis'4
  g' fis' e' a'
  fis'1 \bar "'"
  \once \textLengthOn s1^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \fine
}

altoMusic = {
  \repeat volta 2 { 
    s2. d'4
    d'8 [e'] fis'4 b8 [cis'] d'4
    d' cis' d' s
    s2. ais'4
    b' b' b' ais'
    fis' s }
  s b'
  a' a'8 [g'16 fis'] g'4 g'8 [e']
  d'4. b'8 a'4 s
  r a'8 [fis'] g'4 fis'
  fis'8 [e'] e'4 cis' s
  s2. b'4
  a'4. e'8 fis'4. e'8
  fis' [d'] e'4 e' s
  s2. fis'4
  b8 [e'] d'4 d'8 [cis'16 b] cis'4
  d'1 
  s1 \fine
}

tenorMusic = {
  \repeat volta 2 { 
    s2. a4
    b8 [cis'] d'4 g a
    b8 [g e a] a4 s
    s2. fis'4
    fis' d'8 [fis'] g' [e'] fis' [cis']
    d'4 s }
  s e'
  e' d' d' e'8 [cis']
  fis'4. b8 fis'4 s
  r d' d' d'
  b b8 [ais] ais4 s
  s2. e'4
  e'4. b8 a4. a8
  a [b] gis4 a s
  s2. d'4
  d'8 [cis'16 b] a4 a a
  a1
  s1 \fine
}

bassMusic = {
  \repeat volta 2 { 
    s2. d4
    g fis b a
    g a d s
    s2. fis4
    b8 [fis] g [d] e [cis] fis4
    b, s }
  s a8 [gis]
  a [g] fis [d] g [fis] e [a]
  b [a b g] d4 s
  r fis8 [d] g4 d8 [b,]
  e4 e fis s
  s2. gis8 [e]
  a4. gis8 fis4. cis8
  d [b,] e4 a, s
  s2. d4
  e fis8 [g] a [g] a [a,]
  d1
  s1 \fine
}

sopranoLyricsOne = \lyricmode {
  \set stanza = 1
  Nun seid ihr wohl ge -- ro -- chen
  an eu -- rer Fein -- de Schar,
  Tod, Teu -- fel, Sünd und Höl -- le
  sind ganz und gar ge -- schwächt;
  bei Gott hat sei -- ne Stel -- le
  das mensch -- li -- che Ge -- schlecht.
}

sopranoLyricsTwo = \lyricmode {
  \set stanza = 2
  denn Chris -- tus hat zer -- bro -- chen,
  was euch zu -- wi -- der war.
}

altoLyricsOne = \lyricmode {
  \set stanza = 1
  Nun seid ihr wohl ge -- ro -- _ chen,
  an eu -- rer Fein -- de Schar,
  Tod, Teu -- fel, Sünd und Höl -- _ le
  sind ganz und gar ge -- schwächt;
  bei Gott hat sei -- ne Stel -- _ le
  das mensch -- li -- che Ge -- schlecht.
}

altoLyricsTwo = \lyricmode {
  \set stanza = 2
  denn Chris -- tus hat zer -- bro -- _ chen,
  was euch zu -- wi -- der war.
}

tenorLyricsOne = \lyricmode {
  \set stanza = 1
  Nun seid ihr wohl ge -- ro -- chen,
  an eu -- rer Fein -- de Schar,
  Tod, Teu -- fel, Sünd und Höl -- _ le
  sind ganz und gar ge -- schwächt;
  bei Gott hat sei -- ne Stel -- _ le
  das mensch -- li -- che Ge -- schlecht.
}

tenorLyricsTwo = \lyricmode {
  \set stanza = 2
  denn Chris -- tus hat zer -- bro -- chen,
  was euch zu -- wi -- der war.
}

bassLyricsOne = \lyricmode {
  \set stanza = 1
  Nun seid ihr wohl ge -- ro -- _ chen,
  an eu -- rer Fein -- de Schar,
  Tod, Teu -- fel, Sünd und Höl -- le
  sind ganz und gar ge -- schwächt;
  bei Gott hat sei -- ne Stel -- _ le
  das mensch -- li -- che Ge -- schlecht.
}

bassLyricsTwo = \lyricmode {
  \set stanza = 2
  denn Chris -- tus hat zer -- bro -- _ chen,
  was euch zu -- wi -- der war.
}
