\version "2.25.80"

\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

#(set-global-staff-size 19)

\header {
  title = "Prélude n° 6 en mi mineur"
  subtitle = "6 petits préludes"
  opus = "BWV 938"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

soprano = \relative e' {
  \repeat volta 2 {
    r16 e16 [g b g e]
    e'8 [b e]
    dis16 [b dis fis dis b]
    b'8 [fis b]
    g16 [fis e d c b]
    a16 [c e g fis e]
    fis16 [e d c b a]
    g16 [b d f e d]
    e8 [fis-\mordent g]
    d4-\mordent r8
    g8 [fis-\prall g]
    a16 [b c8] r8
    b8 [a-\prall g]
    a8 [c, b]
    g'8 [fis-\prall e]
    fis8 [a, g]
    e'8-\mordent [fis16 e d cis]
    fis8 [g16 fis e d]
    cis16 [e d cis b ais]
  }
  \alternative {
    {b4.\mordent}
    { b4.\mordent}
  }
  \repeat volta 2 {
    r16 dis,16 [fis a fis dis]
    c'8 [b a~]
    a16 [gis b d b gis]
    f'8 [e d~]
    d16 [c b a a'8~]
    a16 [f g a d,8~]
    d16 [b a g g'8~]
    g16 [e f g c,8~]
    c16 [f b, e a, d]
    g,16 [c f, b e, a]
    gis16 [a c b a gis]
    a4-\mordent r8
    r16 e16 [a gis a c]
    fis,16 [c' e, c' d, c']
    b16 [d, g fis g b]
    e,16 [b' d, b' c, b']
    a16 [g fis a e a]
    dis,16 [a' e a fis a]
    g16 [b e dis e fis]
    dis16 [b cis dis e fis]
    g16 [fis g e a e]
    fis16 [c b a g b]
    e16 [d e c fis c]
    d16 [a g fis e g]
    c16 [e, dis e fis g]
    a16 [b c a fis'8~]
    fis16 [b, e g fis dis]
  }
  \alternative {
    {e4.-\mordent} 
    {e4.-\mordent}
  } \fine
}

bass = \relative e {
  \repeat volta 2 {
    e8-\mordent [e,] r8
    r16 e'16 [g b g e]
    b'8-\mordent [b,] r8
    r16 b'16 [dis fis cis b]
    e8 [g e]
    c8 [a c]
    d8 [fis d]
    b8 [g b]
    c16 [b a c g c]
    fis,16 [c' e, c' d, c']
    b16 [c a c g c]
    fis,16 [c' e, c' d, c']
    g16 [b fis b e, b']
    fis16 [b e, b' dis, b']
    e,16 [b' d, b' cis, b']
    d,16 [b' cis, b' b, b']
    cis,16 [b' d, b' e, b']
    d,16 [b' e, b' fis b]
    g8 [e fis]
  }
  \alternative {
    {b,16 [dis fis a g fis]}
    {b,8 [fis' b]} 
  }
  \repeat volta 2 {
    b8-\mordent [b,] r8
    r16 b16 [dis fis dis b]
    e8-\mordent [e,] r8
    r16 e'16 [gis b gis e]
    a16 [a, b c d e]
    f16 [d e f g a]
    b16 [g a b c d]
    e16 [c d e f g] \clef treble
    a8 [g f]
    e8 [d c] \clef bass
    d8 [e e,]
    a16 [f e d c b]
    a8 [b c]
    d8 [e fis]
    g,8 [a b]
    c8 [d e]
    fis,8 [g a]
    b8 [cis dis]
    e8 [c a]
    b8 r16 b'16 [cis dis]
    e8 [d c]
    d8 [fis, e]
    c'8 [b a]
    b8 [d, c]
    a'8 [b16 a g fis]
    e16 [dis e dis cis b]
    e8 [g, b]
  }
  \alternative {
    {e,16 [b' e fis g a]}
    {e,4.}
  } \fine
}

\score {
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Clavier"
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "upper" {\clef "treble" \key g \major \time 3/8 \soprano}
    \new Staff = "lower"  {\clef "bass" \key g \major \time 3/8 \bass}
    >>
    \layout{}
    \midi {}
}