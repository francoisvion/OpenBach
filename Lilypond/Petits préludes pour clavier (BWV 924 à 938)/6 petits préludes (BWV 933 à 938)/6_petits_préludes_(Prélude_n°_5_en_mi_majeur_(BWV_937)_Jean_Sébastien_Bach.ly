\version "2.25.80"

\paper {
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

#(set-global-staff-size 19)

\header {
  title = "Prélude n° 5 en mi majeur"
  subtitle = "6 petits préludes"
  opus = "BWV 937"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}

sopranoOne = \relative b' {
  \repeat volta 2 {
    r8 b8 [e b] cis [a fis b]
    e,8 [fis16 gis] a8 [gis] fis [b a gis]
    fis16 [b ais b] dis, [b' ais b] e, [b' cis b] ais [gis fis e]
    dis16 [b' ais b] gis [b fis b] e, [b' dis, b'] cis, [b' b, b']
    ais8 cis [fis cis] dis [bis gis fis']
    e16 [a gis a] fis [a gis a] dis, [a' b a] gis [fis e dis]
    e8 b [e b] cis [a fis b]
    e,8 [fis16 gis] a8 [gis] fis [b a gis]
    fis8 [e16 fis] gis8 [fis] e [e'] dis16 [cis dis e]
    fis16 [e gis fis] e [dis cis-\prall b] b2
  }
  \repeat volta 2 {
    r16 fis16 [e fis] dis [fis b gis] a [fis e fis] dis [fis a fis]
    gis8 [fis16 gis] e8 [b'] gis [b e, gis]
    a8 [cis] a'4~ a16 [b, a b] gis'4~
    gis8 [cis, fis cis] d [b gis eis']
    fis16 [cis b cis] a [cis fis dis] e [cis b cis] ais [cis e cis]
    dis8 [cis16 dis] b8 [fis'] dis [fis b, dis]
    e16 [b a b] gis [b d b] cis [a gis a] fis [a cis a]
    b16 [gis fis gis] fis [gis b gis] a [fis e fis] dis [fis a fis]
    gis8 [fis16 gis] a16 [gis fis e] cis'8 [dis-\turn] e4~
    e4 dis4 e2
  }
}
	 
sopranoTwo = \relative fis' {
  \repeat volta 2 {
    s1*9
    s2 r16 fis16 [dis b~] b4
  }
  \repeat volta 2 {
    s1*8
    s2. e'8 [b]
    cis8 [a] fis [b] gis2
  }
}

soprano = << \sopranoOne \\ \sopranoTwo>>

bass = \relative e {
  \repeat volta 2 {
    e16 [e' dis e] gis, [e' dis e] a, [e' fis e] dis [cis b a]
    gis16 [e' dis e] cis [e b e] a, [e' gis, e'] fis, [e' e, e']
    dis8 fis, [b fis] gis [e cis fis]
    b,8 [cis16 dis] e8 [dis] cis [fis e dis]
    cis16 [fis e fis] dis [fis e fis] bis, [fis' gis fis] e [dis cis bis]
    cis8 e [a e] fis [dis b a']
    gis16 [e dis e] cis [e dis e] a, [e' fis e] dis [cis b a]
    gis16 [e' dis e] cis [e b e] a, [e' gis, e'] fis, [e' e, e']
    b16 [dis cis dis] e [b fis' b,] gis' [b, ais' b,] b'8 [gis]
    dis8 [b fis' fis,] b4 b,
  }
  \repeat volta 2 {
    b'8 [fis' b fis] dis [fis b, dis]
    e16 [b' a b] gis [b e cis] d [b a b] gis [b d b]
    cis16 [a gis a] gis [a cis a] b [gis fis gis] eis [gis b gis]
    a16 [fis eis fis] d [fis eis fis] b, [fis' e fis] cis [cis' b cis]
    a8 cis8 [fis cis] ais [cis fis, ais]
    b16 [fis e fis] dis [fis b gis] a [fis e fis] dis [fis a fis]
    gis8 b8 [e gis,] a [cis dis fis,]
    gis8 [b cis e,] fis [a b dis,]
    e16 [b' e dis] cis [b a gis] a [gis fis a] gis [e' dis e]
    a,16 [e' dis e] b8 [b,] e16 [e, gis b] e4
  }
}

\score {
  \context PianoStaff <<
    \set PianoStaff.instrumentName = "Clavier"
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "upper" {\clef "treble" \key e \major \time 4/4 \soprano}
    \new Staff = "lower"  {\clef "bass" \key e \major \time 4/4 \bass}
  >>
  \layout{}
  \midi {}
}

