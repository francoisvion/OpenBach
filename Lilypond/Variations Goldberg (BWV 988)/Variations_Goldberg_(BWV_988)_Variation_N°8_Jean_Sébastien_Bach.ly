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
  piece = "Variation N°8, à 2 claviers"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
padFerm = \override Voice.Script.padding = #1
adjBeamOne = \once \override Beam.positions = #'( 1.4 . 0.2 )
adjBeamTwo = \once \override Beam.positions = #'( 0.2 . 0.2 )
soprano= \relative d' {
    \repeat volta 2 {
    \stemUp
    d16 [ g b a ] g [ b d c ] b [ d g ] r |
    d,16 [ fis a g ] fis [ a c b ] a [ d fis ] r |
    b,,16 [ e g fis ] e [ g b a ] g [ cis e ] r |
    a,,16 [ d fis e ] d [ fis a g ] fis [ a d8^~ ] |
    d16 [ b g a ] b [ g d e ] f [ d b ] r |
    e'16 [ c a b ] c [ a e fis ] g [ e c ] r |
    \stemNeutral
    a''16 [ fis d e ] fis^[ d a b ] c^[ a fis c' ] |
    b16 [ g d fis ] g [ d b c ] \adjBeamOne d [ b g a ] |
    \adjBeamTwo \stemUp b8 [ \stemDown b''16 a ] \stemNeutral g [ fis e d ] cis [ e d e ] |
    a,8 [ a'16 g ] fis [ e d cis ] b [ d cis d ] |
    g,8 [ g'16 fis ] e [ d cis b ] a [ cis b d ] |
    cis16^[ e a, b ] cis [ a e fis ] g [ e cis e ] |
    d8 [ fis a d ] r16 c16 [ a fis ] |
    g8 [ b d g ] r16 g16 [ fis g ] |
    a,8 [ cis e g ] r16 g16 [ a cis, ] |
    d16 [ fis a cis ] d [ cis32 b32 a32 g32 fis32 e32 ] d4  |
    }
    \repeat volta 2 {
     a16 [ d fis e ] d [ fis a g ] fis [ a c ] r |
    d,,16 [ g b a ] g^[ b d c ] b^[ d f ] r |
    e16^[ c a b ] c [ a fis g ] a [ fis dis e ] \clef "bass" |
    fis16 [ dis b cis ] dis [ b fis g ] a [ fis dis fis ] \clef "treble" |
    g16 [ b e dis ] e [ g b a ] g [ b e ] r16 |
    e,16_[ a c b ] a [ c e d ] c [ e a ] r16 |
    r16 c,16 [ b fis' ] g [ dis e g, ] fis [ e' dis a' ] |
    g16 \prallprall [ fis e8 ] r16 a,16 [ g fis ] \grace fis8( e4) ~ |
    e8 [ e'16 d ] c [ b a g ] fis^[ ais cis e ] |
    d16 [ fis, d' c ] b [ a gis fis ] e [ gis b d ] |
    c16 [ e, c' b ] a [ c e d ] c [ e a g ] |
    fis16 [ a c b ] a [ g fis e ] d [ fis a c ] |
    b16 [ d g, a ] b [ g d e ] f [ d b d ] |
    e16 [ g c, d ] e [ c a b ] c [ a e g ] |
    fis16 [ a d, e ] fis^[ d \clef "bass" a b ] c [ a fis a ] |
    b16 [ d g, a ] b [ g b d ] \padFerm g4^\fermata |
    }
}
bass = \relative g {
	\repeat volta 2 {
    g8_[ d b g ] r16 g'16 [ fis e ] |
    fis8 [ d a fis ] r16 fis'16 [ e d ]  |
    e8 [ b g e ] r16 e'16 [ d cis ] |
    d8 [ a fis d ] r16 c'16 [ b a ] |
    b8 [ d g b ] r16 g16 [ f g ] |
    c,8 [ e a c ] r16 a16 [ g a ] |
    d,8 [ fis a d ] r16 d,16 [ c d ] |
    g,8 [ g' b, d ] g, r8 \clef "treble" |
    g'16 [ b d c ] b [d g fis ] e [g b ] r16 |
    fis,16 [a cis b ] a [ cis fis e] d [ fis a ]  r16 \clef "bass" |
    e,16 [ g b a ] g [ b e d ] \clef "treble" cis [ e g fis ]  |
    e16_[ g cis b ] a [ cis e d ] cis [ e a g] |
    fis16 [ a d, e ] fis [d a b ] c_[ a fis a ] |
    b16_[ d  g, a ] b [ g e fis ] g [ e b d] \clef "bass" |
    cis16 [ e a, b ] cis [a e fis ] g [ e cis e ] |
    fis16 [a d, e ] fis [ d fis a ] d4 |
    }
    \repeat volta 2 {
    d8 [ a fis d ] r16 c'16 [ b a ] |
    g8_[ d b g ] r16 f'16 [ e d ] |
    c16 [ e a g ] fis [ a c b ] a [ c! dis c ] \clef "treble"  |
    b16 [ dis fis e ] dis [ fis a g ] fis [ a c a ] |
    b16 [ g e fis ] g [ e b dis ]e [ b g b ]  \clef "bass" |
    c16 [ a e gis ] a [ e c d ] e [ c a c ] |
    dis,8 [ dis' e c a b ] |
    e,8 [ g b e ] r16 d16 [ c b ] |
    c16 [ e g f ] e [ g c b ] ais [ cis fis ] r16 |
    b,,16 [ d fis e ] d [ fis b a ] gis [ b e ] r16 |
    a,,16 [ c e d ] c [ a c e ] a [ c fis, g ] |
    a16 [ fis d e ] fis [ d a b ] c [ a fis d ] |
    g8 [ b d f ] r16 f16 [ e d ] |
    c8 [ e g c ] r16 c16 [ b c ] |
    d,8 [ fis a c ] \clef "treble" r16 c16 [ d fis, ] |
    g16 [ b d fis ] g [ fis32 e32 d32 c32 b32 a32 ] \padFerm g4_\fermata |
    }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 95 }
}
