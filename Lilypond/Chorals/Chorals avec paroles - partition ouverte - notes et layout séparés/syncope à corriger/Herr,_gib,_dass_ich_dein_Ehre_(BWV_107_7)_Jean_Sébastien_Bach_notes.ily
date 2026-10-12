sopranoMusic = {
  \repeat volta 2 {
    \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
    \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
    \bar "'" r4.  fis'
    b' cis''
    d'' e''
    cis'' b'8 [a' b']
    a'4. ais'
    b' b'
    cis''~ cis''8. [b'16] ais'8
    fis'4.~ fis'4 } r8 \bar "'"
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4. fis''4.
  fis'' e''
  d'' cis'' 
  d''~ d''4 r8 \bar "'"
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "'"
  r4. cis''4.
  d'' e''
  fis'' fis''
  fis''4 e''8 d'' [cis'' d'']
  cis''4. cis''
  d''~ d''4 c''8
  b'4. b'
  cis'' b'8 [a' b']
  a'4. g'
  fis' b' b'
  ais' b'2.~
  b'4. r \bar "'"
  \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }\fine
}

altoMusic = {
  \repeat volta 2 {
    s2. r4.  d'
    fis' fis'
    fis' b'
    a' gis'8 [fis' gis'] fis'4.
    fis' fis'4 e'8 b'4.
    b'4 a'8 gis'4 fis'8
    fis'4.~ fis'4 }
  r8 s2. r4. a'
  a' g'
  g'4 b'8 a'4.
  a'~a'4 r8
  s2.
  r4. a'
  a'4 fis'8 g'4 a'8 a'4.
  b' b'2.
  a'4. a'
  a'~ a'4 fis'8 g'4.
  g' gis'~ gis'4
  eis'8 fis'4. e'
  e' d'4 g'8 fis'4
  e'8 d'4 e'8 dis'2.
  R2.
  s2. \fine
}

tenorMusic = {
  \repeat volta 2 {
    s2. r4.  b
    b ais
    b b
    e'4 fis'8 eis'4. cis'
    cis' b d'
    cis'4 fis'8 eis'4 cis'8
    cis'4.~ cis'4 } r8
  s2.
  r4. d'4.
  b~ b4 cis'8
  d'4 g'8 fis'4 e'8
  fis'4.~fis'4 r8
  s2.
  r4. e'4.
  fis' e' d'
  d' d'4 b8 e'4.
  e' e'
  d'~ d'4 d'8 d'4.
  d' cis'2.
  cis'4. cis'
  cis' fis4 b8 b4
  g8 fis4. fis2.
  R2.
  s2. \fine
}

bassMusic = {
  \repeat volta 2 {
    s2. r4.  b
    d fis
    b, gis
    a cis' fis
    fis g gis
    a4 fis8 cis'4 cis8
    fis4.~ fis4 }
  r8
  s2.
  r4. d
  g~ g4 a8
  b4 g8 a4 a,8
  d4.~ d4 r8
  s2.
  r4. a
  fis cis d
  b, gis~ gis4
  e8 a4. a4 g8
  fis4.~ fis4 d8 g4.
  g4 fis8 eis4.~ eis4
  cis8 fis4. cis
  ais, d4 b,8 g4
  e8 fis4. b,2.
  R2.
  s2. \fine
}

sopranoLyricsOne = \lyricmode {\set stanza = 1
   Herr, gib, dass ich dein Eh -- _ re ja all mein Le -- ben lang __
   O Va -- ter, Sohn und Geist, __
   der du aus lau -- ter Gna -- _ _ den ab -- wen -- dest Not und Scha -- _ den, sei im -- mer -- dar ge -- preist! __
}

sopranoLyricsTwo = \lyricmode {\set stanza = 2
   von Her -- zen -- grund ver -- meh -- _ re, dir sa -- ge Lob __ und Dank! __
}

altoLyricsOne = \lyricmode {\set stanza = 1
   Herr, gib, dass ich dein Eh -- _ re ja all __ _ mein Le -- _ _ ben lang __
   O Va -- ter, Sohn __ _ und Geist, __
   der du __ _ aus __ _ lau -- ter Gna -- den ab -- wen -- dest Not und Scha -- _ den, sei im -- mer -- _ dar __ _ ge -- _ preist!
}

altoLyricsTwo = \lyricmode {\set stanza = 2
   von Her -- zen -- grund ver -- meh -- _ re, dir sa -- _ ge Lob __ _ _ und Dank! __
}

tenorLyricsOne = \lyricmode {\set stanza = 1
   Herr, gib, dass ich dein Eh -- _ _ re ja all mein Le -- _ _ ben lang __
   O Va -- ter, Sohn __ _ und __ _ Geist, __
   der du aus lau -- ter Gna -- _ _ den ab -- wen -- dest Not und Scha -- den, sei im -- mer -- _ dar __ _ ge -- preist!
}

tenorLyricsTwo = \lyricmode {\set stanza = 2
   von Her -- zen -- grund ver -- meh -- _ _ re, dir sa -- ge Lob __ _ _ und Dank! __
}

bassLyricsOne = \lyricmode {\set stanza = 1
   Herr, gib, dass ich dein Eh -- _ re ja all mein Le -- _ _ ben lang __
   O Va -- ter, Sohn __ _ und __ _ Geist, __
   der du aus lau -- ter Gna -- _ den ab -- _ wen -- dest Not und __ _ Scha -- _ den, sei im -- mer -- _ dar __ _ ge -- preist!
}

bassLyricsTwo = \lyricmode {\set stanza = 2
   von Her -- zen -- grund ver -- meh -- _ re, dir sa -- ge Lob __ _ _ und Dank! __
}
