\version "2.24.4"

\header {
  title = "Als der gütige Gott vollenden wollt' sein Wort"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 264"
  tagline = ##f
}

\paper {
  top-margin = 12
  bottom-margin = 12
  ragged-last-bottom = ##f
}

global = {
  \key g \major
  \time 4/4
  \autoBeamOff
}

sopranoMusic = \relative c' {
  \global
  \partial 4 d g a b a g2\fermata r4
  a b c b a g2\fermata r4
  b d d c b a2\fermata r4
  b g c b a g2 \melisma a4 \fermata \melismaEnd
  a b c b a g2.\fermata \bar "|."
}

altoMusic = \relative c' {
  \global
  \partial 4 b4 e8 g4( fis8) g8[ fis16 e] fis4 d2\fermata r4
  fis g g8[ a] a[ g] g[ fis] d2\fermata r4
  g g g4 g8[ fis] g4 | g4( fis4) \fermata r
  fis4 | fis8[ e] g[ a] a[ g] g[ fis]
  g4. fis16[ e] fis4 \fermata
  fis g g g4. fis8 d2.\fermata
}

tenorMusic = \relative g {
  \global
  \partial 4 g4  b d d d8[ c] b2\fermata r4
  d d e d4. d16[ c] b2\fermata r4
  d d b c d d2\fermata r4
  b b e8[ d] d4. d16[ c] b8[ \melisma a b cis] d4 \fermata \melismaEnd
  d d c!8[ e] d4 d8.[ c16] b2.\fermata
}

bassMusic = \relative g {
  \global
  \partial 4 g4  e d g d g,2\fermata r4
  d' g c, d d, g2\fermata r4
  g4 b g a b8[ c] d2\fermata r4
  dis e4. fis8 g4 d! e2 \melisma d4 \fermata \melismaEnd
  d g e8[ c] d4 d, g2.\fermata
}

words = \lyricmode {
  \set stanza = #"1. "
  Als der gü -- ti -- ge Gott
  voll -- en -- den wollt' sein Wort,
  sandt er sein' En -- gel schnell,
  dess Na -- me Ga -- bri -- el, __
  in's ga -- li -- lä -- isch Land.
}

\score {
  \new ChoirStaff <<
    \new Staff = "sopranos" <<
      \set Staff.instrumentName = "Soprano"
      \new Voice = "sopranos" { \global \sopranoMusic }
    >>
    \new Lyrics \lyricsto "sopranos" \words
    \new Staff = "altos" <<
      \set Staff.instrumentName = "Alto"
      \new Voice = "altos" { \global \altoMusic }
    >>
    \new Staff = "tenors" <<
      \set Staff.instrumentName = "Ténor"
      \new Voice = "tenors" { \global \clef "treble_8" \tenorMusic }
    >>
    \new Lyrics \lyricsto "tenors" \words
    \new Staff = "basses" <<
      \set Staff.instrumentName = "Basse"
      \new Voice = "basses" { \clef "bass" \global \bassMusic }
    >>
  >>
  \layout {}
  \midi { \tempo 4 = 85 }
}
