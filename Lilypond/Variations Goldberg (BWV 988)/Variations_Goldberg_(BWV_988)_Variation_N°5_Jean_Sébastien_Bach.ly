\version "2.24.4"
\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "Variations Goldberg"
  subtitle = "Air avec 30 variations"
  piece = "Variation N°5 à 1 ou bien 2 clavier·s"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
padFerm = \override Voice.Script.padding = #1
adjBeamOne = \once \override Beam.positions = #'( -3.2 . -4.6 )
adjBeamTwo = \once \override Beam.positions = #'( 1.8 . 0.3 )
adjBeamTre = \once \override Beam.positions = #'( 0.2 . 0.2 )
adjBeamQtr = \once \override Beam.positions = #'( 1.2 . -0.2 )
adjBeamCin = \once \override Beam.positions = #'( 2.3 . -2.1 )
adjTieOne = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
hidePP = \tweak #'stencil ##f\pp
hideMF = \tweak #'stencil ##f\mf
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
soprano =   \relative d' {
    \repeat volta 2 {
    r16-\hidePP d16 [ e fis ] g [ fis g a ] b [ a g b ] |
    a16 [ g fis e ] d [ e fis g ] a [ fis e d ] |
    g16 [ fis e d ] cis [ d e fis ] g [ b a g ] |
    fis16 [ e d cis ] d [ a d e ] fis [ d fis a ] |
    d16 [ b a b ] g [ b a b ] d, [ g fis g ] |
    e16 [ g d g ] c, [ g' b, g' ] a, [ g' b, g' ] |
    c,16 [ g' b, g' ] c, [ fis e fis ] d [ fis c fis] |
    b,16 [ g' fis e ] \adjBeamTwo d [ c b a ] g8 r8 |
    b''8-\hideMF r8 g,8 r8 b'4 |
    a8 r8 fis,8 r8 a'4 |
    g16 [ fis e dis ] e [ g d g ] cis, [ g' b, g' ] |
    cis,16 [ g' e g ] a,8 [ g' fis g \turn ] |
    \adjBeamTre a8 [ \stemUp e, fis \stemDown fis' g  a ] |
    \adjBeamTre b8 [ \stemUp fis, e \stemDown g' a  b8 ] \stemNeutral |
    e,8 [ g,8 \clef "bass" a, e' cis a ] |
    fis8 [ \clef "treble" d'8 fis8  a8 ] d4 |
    }
    \repeat volta 2 {
  fis8 r8 d,8 r8 fis'4 \downmordent |
  g8 [ d16 g a8 d,16 a' ] b8 ( [g ] ) |
  e8 [ c a g' ] fis32 [ e dis16 e8 ~ ] |
  e8 [ dis \prall ] r8 \clef "bass" a,8 [ g \prallprall fis ] |
  e8 r8 \clef "treble" e''8 r8 \clef "bass" d,,4 \prallmordent |
  c8 r8 \clef "treble" e''8 r8 \clef "bass" a,,,4 \prallmordent |
  b8 r8 \clef "treble" g''' [ fis e dis ] |
  e8 r8 \clef "bass" \adjTieOne e,,4 ~ e16-\hidePP_[ d c b ] |
  c16^[ e d e ] g^[ e d e ] c' [ a g a] \clef "treble" |
  \adjBeamCin fis'16^[ \staffDown a, g a ] \staffUp g' [ d c d ] b' [ g fis g ] |
  e'16 [ d c d ] fis [ d c d ] g [ d c d ] |
  a'16 [ d, c b ] c_[ b a g ] fis [ a' g fis ] |
  g8[-\hideMF b, ] r8 \clef "bass" f,8 [ e d ] |
  c16 [c' b c ] \clef "treble" d [ c e c ] fis [ c g' c, ]|
  a'16 [ c, b a ] b8[ d' \clef "bass" d,, \clef "treble" c'' ] |
  b16 [ g d g ] b^[ g d' b ] \padFerm g'4^\fermata |
    }
}
bass = \relative g {
	\repeat volta 2 {
    g8-\hideMF r8 \clef "treble" b'8 r8 \clef "bass" g,4 |
    fis8 r8 \clef "treble" a'8 r8 \clef "bass" fis,4 |
    e8 r8 \clef "treble" g'8 r8 \clef "bass" e,4 |
    d8 r8 \clef "treble" fis'8 r8 \clef "bass" d,8 [ c!8 ] |
    b8 r8 \clef "treble" d''8 r8 \clef "bass" b,,4 |
    c8 r8 \clef "treble" e''8 r8 \clef "bass" c,,4 |
    d8 r8 \clef "treble" a''8 r8 \clef "bass" d,,4 |
    g,8 r8 \clef "treble" \adjTieOne b''4 ~ \adjBeamOne b16_[-\hidePP a g fis ] |
    g16 b cis d ] e [ fis e d ] cis_[ b a g ] |
    fis_[ a b cis ] d [ e d cis ] b [ a g fis ] |
    e8 [ fis g b] e4 \prallmordent ~ |
    e8 [ d ] cis16 [e b e ] a, [ e' g, e'] |
    fis,16 [ e' d cis ] d_[ a d, d' ] e,_[ d' fis, d' ] |
    g,16 [ e' d cis ] d_[ b e, d'] fis,_[ d' g, d'] |
    a [ d cis b ] cis [e a, cis ] e, [ g fis e ] |
	fis [a d, fis ] \clef "bass" a, [ d fis, a ] d,4 \clef "treble" |
    }
    \repeat volta 2 {
    r16 d''16 [ c b ] a [ g fis e ] d [ c' b a ] |
    b16 [ g fis e ] \adjBeamQtr d [ c b a ] g [ g' a b ] |
    c16 [ d e d ] c_[ b a g ] a_[ b c a ] |
    b16 [ a b fis ] b, [ cis dis e ] fis [ g a fis] |
    g16 [ b g e ] g [ b g e ] g-\hideMF [ b g e ] |
    a16 [ c a e ] g [ c g e ] fis [ c' fis, e ] |
    g16 [ b g e ] b [ b' a b ] g [ b fis b ] |
    g16 [ e g b ] e^[ b g b ] e,8 r8 \clef "bass" |
	e8 r8 c,8 r8 e'4 |
    d8 r8 b,8 r8 d'4 |
    c8 b a g fis e |
    fis8 [g16 a ] \adjTieOne d,4 ~ d16 [c' b a ] |
    b16[-\hidePP g fis g ] a [ g b g ] c [g d' g, ]  |
    e'8 [ g, ] r8 b8 [ a  g ] |
    fis16[-\hidePP d' e fis ] g [ d b g ] a [ c g' fis ] |
    g8[-\hideMF g, d b ] \padFerm g4_\fermata |
    }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 130 }
}
