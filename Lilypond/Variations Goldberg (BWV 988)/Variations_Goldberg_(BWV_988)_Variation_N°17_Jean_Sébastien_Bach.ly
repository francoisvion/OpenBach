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
  piece = "Variation N°17, à 2 claviers"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
adjBeamOne = \once \override Beam.positions = #'( -0.6 . -0.9 )
adjBeamTwo = \once \override Beam.positions = #'( 0.4 . 2.8 )
adjTieOne = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTwo = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
soprano =   \relative b' {
    \repeat volta 2 {
        b16 [ d fis a ] g8. [ c,16 ] b [ a g b ] |
        a16 [ cis e g ] fis8. [ b,16 ] a [ g fis a ] \noBreak |
        g16 [ b d fis ] e8. [ a,16 ] g [ fis e g ] |
        fis16 [ e fis e ] fis [ a d cis ] d [ fis a c, ] |
        b16 [ g' a, fis' ] g, [ e' f, d' ] e, [ c' d, b' ] |
        c16 [ e, b' d, ] a' [ c, g' b, ] fis'! [ a, e' g, ] \clef "bass" |
        a16 [ fis' g, e' ] fis, [ d' e, c' ] d, [ b' c, a' ] |
        b,16 [ a b a ] b [ d g fis ] g8 r8 \clef "treble" |
        d''16 [ b' c, a' ] b, [ g' a, fis' ] g, [ e' fis, d' ] |
        e,16 [ d' cis b ] cis [ e a8 ] a8 \downmordent r8 |
        b,16 [ g' a, fis' ] g,^[ e' fis, d' ] e, [ cis' d, b' ] |
        cis,16 [ b' a gis ] a [ cis e8 ] \adjTieTwo e4 \prallmordent ~  |
        e16 [ d e cis ] d [ b c a ] b [ g a fis ] |
        g16 [ e' fis, d' ] e, [ cis' \grace d32 cis16 ( b )] \grace cis32 b16 [ ( a ) b  g' ] |
        g8. [ fis32 e ] fis16 [ d b g ] a [ fis g e' ] |
        fis,16 [ e fis e ] fis [ a d cis ] d8 r8 |
    }
    \repeat volta 2 {
        a'16 [ fis g e ] fis [ d e c! ] d [ b c a ] |
        b16 [ g a fis ] g [ e fis dis ] e [ c d b ] \clef "bass" |
        c16 [ a b gis ] a [ fis g e ] f [ dis e cis ] |
        dis16_[ cis dis cis ] \adjTieTwo dis4 ~ dis16 [ fis b a ] \clef "treble" |
        g16 [ b a c ] b [ dis cis e ] dis [ fis e g ] |
        fis16 [ a g b ] a [ c b d ] c [ e dis fis ] |
        e16 [ g fis a ] g [ b a c ] b [ g a fis ] |
        g16 [ e fis dis ] e [ c b a ] g [ fis e8 ~ ] |
        e16_[ e' b d ] c [ b a c ] b [ d c e ] |
        d16 [ b a c ] b_[ a gis b ] a [ c b d ] |
        c16 [ a g! b ] a [ fis' g e ] fis [ d e c' ] |
        \adjTieTwo c8 ~ [ c32 b a g ] fis16 [ g a fis ] \grace e8 \adjTieTwo d4 ~ |
        d16 [ b c a ] b [ g' a, f' ] g, [ e' f, d' ] |
        e,8 r32 g32 [ a b ] c16 [ a b g ] a [ fis g e  ] |
        fis16 [ e'  d8 ~ ] d32 [ e fis g fis e d c ] b16 [ g'16 a,16 fis'16 ] |
        g,16 [ fis g fis ] g [ b d fis ] g8 r8 |
    }
}
bass = \relative g, {
	\repeat volta 2 {
        g16 [ b a c ] b [ d c e ] d [ fis e g ] |
        fis16 [ a g b ] a [ \clef "treble" cis b d ] cis [ e d fis ] |
        e16 [ g fis a ] g_[ b a cis ] b [ d cis e ] |
        d16 [ cis d cis ] d2 ( |
        d16 ) [ b c a ] b [ g a f ] g [ e f d ] \clef "bass" |
        \adjBeamOne e16 [ c d b ] c [ a b g ] a [ fis! g e ] |
        fis16 [ d e c ] d [ b c a ] b [ g a fis ] |
        g16 [ fis g fis ] g4 ~ g16_[ d' g fis ] \clef "treble"  |
        \adjBeamTwo g16 [ b d fis ] g8. [ a16 ] b [ cis d b ] |
        cis16_[ b a g ] fis [ e dis cis ] \clef "bass" b [ a g fis ] |
        e16 [ g b dis ] \clef "treble" e8. [ fis16 ] g [ a b g ] |
        a16 [ d, cis b ] cis [ e a b ] cis [ e g b, ] |
        a16 [ fis' g, e' ] fis, [ d' e, c' ] d, [ b' c, a' ] \clef "bass" |
        b,16 [ g' a, fis' ] g, [ e' fis, d' ] e, [ cis' d, b' ] |
        cis,16 [ a' b, g' ] a, [ fis' g, e' ] fis, [ d' e, cis'! ] |
        d16 [ cis d cis ] d [ a fis a ] d,8 r8 |
    }
    \repeat volta 2 {
        d16 [ fis a cis ] d8. [ e16 ] fis [ g a fis ] |
        g16 [ b, c d ] g,8. [ fis'16 ] g [ a b gis ] |
        a16 [ c, d e ] a,8. [ gis'16 ] a [ b c ais ] |
        b16 [ ais b ais ] b [ fis g a ] b,8 [ \clef "treble" dis'8 ] |
        e16 [ g fis a ] g [ fis e g ] fis [ dis e cis ] \clef "bass" |
        dis16 [ cis b d ] c [ a b gis ] a [ g fis a ] |
        g16 [ e fis dis ] e [ dis cis e ] dis [ e fis dis ] |
        e16 [ g, a b ] e, [ fis g a ] b [ c d b ] |
        c16 [ e d f ] e [ g fis a ] gis [ b a c ] \clef "treble" |
        b16 [ d c e ] d [ f e gis ] fis [ a gis b ] |
        a16 [ c b d ] c_[ a b g ] a [ fis g e ] |
        fis16 [ d e cis ] d [ b' c, a' ] b, [ g' a, fis' ] |
        b,8 r32 d32 [ e fis ] g16 [ e f d ] e [ c d b ] \clef "bass" |
        g16 [ e f d ] e [ c' d, b' ] c, [ a' b, g' ] |
        a,16 [ g' fis c ] b [ d g b ] d [ b c a ] |
        b16 [ a b a ] b [ g d b ] g8 r8 |
    }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 105 }
}
