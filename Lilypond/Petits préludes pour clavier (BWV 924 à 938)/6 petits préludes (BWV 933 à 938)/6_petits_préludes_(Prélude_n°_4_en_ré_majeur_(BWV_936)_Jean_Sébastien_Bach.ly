\version "2.25.80"

\paper {
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

#(set-global-staff-size 19)

\header {
  title = "Prélude n° 4 en ré majeur"
  subtitle = "6 petits préludes"
  opus = "BWV 936"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

sopranoOne = \relative a' {
  \repeat volta 2 {
    a4 d~ % 1
    d8 [cis16 d] e8 [g,] % 2
    g8 [fis] r8 d'8 % 3
    fis,8 [e] r8 cis'8 % 4
    e,8 [d] r8 b'8 % 5
    d,8 [cis] r8 a'8 % 6
    b,8 [cis] d4~ % 7
    d8 [cis16 d] e [d cis d] % 8
    e16 [d cis b] a [g fis e] % 9
    fis8 fis'16 [g] a [g fis g] % 10
    a16 [g fis e] d [c b a] % 11
    b16 [d e fis] g [b cis d] % 12
    e16 [g, fis e] fis [e' d cis] % 13
    d16 [fis, gis a] gis [d' cis b] % 14
    cis16 [a b cis] d, [cis' b a] % 15
    gis16 [e fis gis] a [b cis d] % 16
    e4 a~ % 17
    a8 [gis16 a] b8 [d,] % 18
    cis8 [e] d16 [cis b a] % 19
    a2 % 20
  }
  \repeat volta 2 {
    a4 e'~
    e8 [fis16 g] a [g fis e]
    fis2~
    fis2
    g4 fis~
    fis8 [e16 dis] e4~
    e8 [a16 b] a [g fis e]
    e8 dis4 e16 [fis]
    g8 [fis16 g] a [g fis a]
    g16 [fis e g] fis [e dis fis]
    e2~
    e2~
    e8 fis4 e8~
    e8 [dis e g]
    a,16 [g' fis a] g [fis e dis]
    e4. r8
    b'4 s4
    e,2~
    e4 g~
    g8 [fis16 e] fis16 [a g b]
    a16 [c, b a] b [a' g fis]
    g16 [b, cis d] cis [g' fis e]
    fis16 [d e fis] g, [fis' e d]
    cis16 [a b cis] d [e fis g]
    a4 d~
    d8 [cis16 d] e8 [g,]
    fis8 [a] g16 fis e d]
    d2
  }
}

sopranoTwo = \relative f' {
  \repeat volta 2 {
    fis2
    e2~
    e4 d~
    d4 cis~
    cis4 b~
    b4 a~
    a4 gis
    a2~
    a8 s4.
    s2*7
    cis'2
    b2~
    b8 a4 gis8
    r16 e16 [cis8]~cis4
  }
  \repeat volta 2 {
    r2 
    r2 d4 a'~
    a8 [b16 c] d [c b a]
    b4 a
    g4. a16 [b]
    c2~
    c4 b~
    b2~
    b2~
    b8 [b16 c] d [c b d]
    c16 [b a c] b [a gis b]
    a4 g
    fis4 e8 r8
    r4 r8 a,8~
    a16 [g fis a] g8 r8
    s4 d''4~
    d8 [cis16 b] cis [a gis b]
    a2~
    a4 r4
    s2*4
    fis'2
    e2~
    e8 d4 cis8
    r16 a16 [fis8]~fis4
  }
}

soprano = << \sopranoOne \\ \sopranoTwo>>

bass = \relative d {
  \repeat volta 2 {
    d8 [e fis g]
    a8 [b cis a]
    d8 [cis b a]
    g8 [e a g]
    fis8 [b gis e]
    a8 [gis fis e]
    d8 [cis b e]
    a,8 [b cis b]
    a8 [b cis a]
    d8 [e fis e]
    d8 [e fis d]
    g8 [fis e d]
    cis8 [b ais fis]
    b8 [e, e' gis]
    a8 [gis fis d]
    e8 [d cis b]
    a8 [b cis d]
    e8 [fis gis e]
    a8 [cis, d e]
    a,8. [e'16] a4
  }
  \repeat volta 2 {
    a8 [b a g]
    fis8 [e fis a]
    d,8 [e d c]
    b8 [a b d]
    g,8 [g' a b]
    c8 [c, c' b]
    a8 [fis g a]
    b8 [a g fis]
    e8 [e' b dis]
    e8 [g, a fis]
    g8 [e' gis, e']
    a,8 [c d b]
    c16 [b a c] b [a g b]
    a16 [g fis a] g [fis e d]
    c16 [b a c] b4
    e4~ e16 [dis e fis]
    gis8 [b gis e]
    a8 a,4 b8
    cis8 [e cis a]
    d8 d,4 e'8
    fis8 [e dis b]
    e8 [a, a' cis]
    d8 [cis b g]
    a8 [g fis e]
    d8 [e fis g]
    a8 [b cis a]
    d8 [fis, g a]
    d,8. [a'16] d4
  }
}

\score {
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Clavier"
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "upper" {\clef treble \key d \major \time 2/4 \soprano}
    \new Staff = "lower"  {\clef bass \key d \major \time 2/4 \bass}
    >>
    \layout{  }
    \midi { }
}
