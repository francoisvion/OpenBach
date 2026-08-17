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
  piece = "Variation N°19, à 1 clavier"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
global = { \key g \major \time 3/8 }
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
adjTieDown = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieUp = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieOne = \shape #'(
                       ((0 . -1.0) (0 . -1.2) (0 . -1.2) (0 . -1.0))
                       ((0 . -1.0) (0 . -1.2) (0 . -1.2) (0 . -1.0))
                       ) Tie
adjTieTwo = \shape #'(
                        ((0 . 0.4) (0 . 0.6) (0 . 0.6) (0 . 0.4))
                        ((0 . 0.4) (0 . 0.6) (0 . 0.6) (0 . 0.4))
                        ) Tie
adjTieTre = \shape #'(
                        ((0 . 1.0) (0 . 1.3) (0 . 1.3) (0 . 1.0))
                        ((0 . 1.0) (0 . 1.3) (0 . 1.3) (0 . 1.0))
                        ) Tie
adjTieQtr = \shape #'((0 . 0.2) (1.0 . 0.5) (-1.0 . 0.5) (0 . 0.2)) Tie
adjBeamOne = \once \override Beam.positions = #'( 5.5 . 4.6 )
adjBeamTwo = \once \override Beam.positions = #'( 4.8 . 3.9 )
adjBeamTre = \once \override Beam.positions = #'( 4.1 . 4.0 )
adjBeamQtr = \once \override Beam.positions = #'( 3.6 . 3.6 )
adjBeamCin = \once \override Beam.positions = #'( 0.3 . 0.3 )
adjBeamSix = \once \override Beam.positions = #'( 5.2 . 4.3 )
adjBeamSev = \once \override Beam.damping = #+inf.0
adjBeamOct = \once \override Beam.positions = #'( 4.6 . 4.5 )
sopranoOne =   \relative d'' {
    \repeat volta 2 {
    \stemUp
	d8 \adjTieUp d4 ~ |
        d8 \adjTieUp d4 ~ |
        d8 [ d cis ] |
        d4 r8 |
        \adjBeamOne g16 [ fis g d b d ] |
        \adjBeamTwo e16 [ d e c a c ] |
        \adjBeamTre d16 [ c d e d c ] |
        \adjBeamQtr b16 [ a b c b a ] |
        g8 g'4 ~ |
        g8 fis4 ~ |
        fis8  [ e d ] |
        cis16 [ d ] \adjTieUp e4 ~ |
        e8 d c! ~ |
        c8 [ b g' ~ ] |
        \adjBeamSix g16 [ e fis d e cis! ] |
        d4. |
    }
    \repeat volta 2 {
        \adjBeamOne fis16 [ e16 fis d a d ] |
        \adjBeamOne g16 [ fis g d b d ] |
        e16 [ dis e g fis e ] |
        \adjBeamOct dis16 [ e fis dis b dis ] |
        e8 \adjTieTwo e4 ~ |
        e8 \adjTieUp e4 ~ |
        e8 [ e dis ] |
        e4 f8\rest |
        r8 e16 [ c a c ] |
        \adjTieQtr d4. ~ \noBreak |
        d8 [ c16 b \adjTieTre c8 ~ ] |
        c8 [ d16 c b a ] |
        \stemDown d16 [ c d b g b ] |
        e16 [ d e c a c ] |
        fis16 [ e fis a d, fis ] |
        g16 [ fis g d b g ] |
    }
}
sopranoTwo =   \relative b' {
  \repeat volta 2 {
  \stemDown
        b16 [ a b g d g ] |
        a16 [ g a fis d fis ] |
        g16 [ fis g b a g ] |
        fis16 [ e fis g a fis ] |
        g8  \adjTieOne g4 ~ |
        g8 \adjTieOne g4 ~ |
        g8 [ g fis ] |
        g4 e8\rest |
        c8\rest r8 d'8 |
        cis4 c8 |
        b8 [ e, gis ] |
        a4 g!8 |
        fis4 a8 |
        d,8 [ g b ] |
        cis8 [ a \adjTieDown g ~ ] |
        g8 fis4  |
    }
    \repeat volta 2 {
        \staffDown \stemUp d8 d4^~ |
        \adjBeamSev d8 b \staffUp \stemDown \adjTieOne g' ~ |
        g8 [ g c ] |
        fis,8 r8 e8\rest |
        b'16  [ a b g e g ] |
        c16 [ b c a fis a ] |
        b16 [ a b c b a ] |
        g16 [ fis g a b g ] |
        e4 r8 |
        r8 d16 [ g b g ] |
        e4. |
        d8 r8 e8\rest |
        \stemUp \staffDown g,8 \adjTieUp g4^~ |
        g8 [ c, c'^~ ] |
        c8 [ a c^~ ] |
        c8 b4 |
    }
}
soprano = << \sopranoOne \\ \sopranoTwo>>
bass = \relative g {
	\repeat volta 2 {
       g8  [ g, g' ] |
        fis8 [ fis, fis' ] |
        e8 [ e, e' ] |
        d8 [ d, c' ] |
        b8 [ b' g ] |
        c8 [ c, c' ] |
        b16 [ a b c d8 ] |
        g,8 [ g,16 d' g a ] |
        b16 [ a b g e g ] |
        a16 [ g a fis d fis ] |
        g16 [ fis g e b e ] |
        g16 [ fis g e cis e ] |
        a16 [ g a fis d fis ] |
        b16 [ a b g e g ] |
        \adjBeamCin a8 [ \stemUp a, \stemNeutral a' ] |
        d16 [ cis d a fis d16 ] |
    }
    \repeat volta 2 {
        d'8  d, c' |
        b8 g b |
        c8 [ b a ] |
        b8 [ a16 g a fis ] |
        g8 [ e g ] |
        \adjBeamCin a8 [ \stemUp a, \stemNeutral a' ] |
        g16 [ fis g a b8 ] |
        e,8 [ e' d ] |
        c16 [ b c a fis a ] |
        b16 [ a b g e g ] |
        a16 [ g a c e, g ] |
        fis16 [ e fis a d, fis ] |
        b,8_[ g b ] |
        c8_[ a c ] |
        d8_[ c d ] |
        g4. |
    }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \global \soprano  }
        \new Staff = "lower" { \clef bass \global \bass }
    >>
    \layout{  }
    \midi { \tempo 8 = 138 }
}
