\version "2.24.4"
\paper {
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "Variations Goldberg"
  subtitle = "Air avec 30 variations"
  piece = "Variation N°27, Canon à la neuvième à 1 clavier"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
soprano =   \relative a' {
    \repeat volta 2 {
        R1*6/8 |
        a8 [ b16 cis d e ] fis [ e d e fis8 ] |
        g,8 r8 r8 e'8 r8 r8 |
        fis,8 [ g16 a b c ] d [ e d c d8 ] |
        d8 r8 r8 g,8 r8 r8 |
        c16 [ d c b a g ] fis [ a c e d c ] |
        b16 [ c b a g fis ] e [ g b d c b ] |
        a8 [ b8 ^\turn c8 ] d,8 d'4 ~ |
        d16 [ fis e d cis b ] cis [ d e cis d e ] |
        a,2. ~ _\prallmordent |
        a16 [ a g fis e d ] cis [ d e d e cis ] |
        fis8 r8 r8 b,8 r8 r8 |
        b'16 [ c b a g fis ] e [ g b d cis b ] |
        a16 [ b a g fis e ] dis [ fis a c b a ] |
        g8 [ a8 ^\turn b8 ~ ] b8 [ a8 g8 ~ ] |
        g16 [ fis e d e cis ] d4.
    }
    \repeat volta 2 {
		a''8 [ g16 fis e d ] c [ d e d c a' ] |
        b,8 r8 r8 g'8 r8 r8 |
        c16 [ d c b a g ] a [ b a g fis e ] |
        dis8 [ e8 ^\turn fis8 ] b,4. ~ |
        b16 [ a b d c b ] c [ f c a f a ] |
        dis,16 [ e  fis  a  g fis ] g8 [ g8. \prallprall fis32 g32 ] |
        a16 [ b c b a8 ] a4. ^\turn ~|
        a16 [ fis g a b c ] d [ c b a gis fis ] |
        e16 [ gis a b c d ] e [ d c d e8 ] |
        a,8 r8 r8 fis'8 r8 r8 |
        b,8 [ c16 d e fis ] g [ a g fis g e ] |
        c'16 [ b a g fis e ] d4. ~ |
        d16 [ c d e fis g ] a [ e c a b c ] |
        fis,16 [ g a b c a ] b [ d g8 ] r8 |
        r8 e8 [ d8 ] c8 [ d16 c b a ] |
        b16 [ d b g a fis ] g4. _\mordent
        \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\mark \markup { \musicglyph #"scripts.ufermata" }
    }
}
bass = \relative g {
   \repeat volta 2 {
    g8 [ a16 b c d ] e [ d c d e8 ] |
        fis,8 r8 r8 d'8 r8 r8 |
        e,8 [ fis16 g a b ] c [ d c b c8 ] |
        c8 r8 r8 fis,8 r8 r8 |
        b16 [ c b a g fis ] e [ g b d c b ] |
        a16 [ b a g fis e ] d [ fis a c b a ] |
        g8 [ a8 ^\turn b8 ] c,8 c'4 ~ |
        c16 [ e d c b a ] b [ c d b c d ] |
        g,2. ~ _\prallmordent |
        g16 [ g fis e d cis ] b [ cis d cis d b ] |
        e8 r8 r8 a,8 r8 r8 |
        a'16 [ b a g fis e ] d [ fis a c b a ] |
        g16 [ a g fis e d ] cis [ e g b a g ] |
        fis8 g8 ^\turn a8 ~ a8 g8 fis8 ~ |
        fis16 [ e  d  cis  d  b ] cis4  ~ \prallprall cis16 [ b32 cis32 ] |
        d8 [ fis,8 a8 ] d,4.
    }
    \repeat volta 2 {
        R1*3/4 \clef "treble" |
        g''8 [ fis16 e d c ] b [ c d c b g' ] |
        a,8 r8 r8 fis'8 r8 r8 |
        b16 [ c b a g fis ] g [ a g fis e d ] \clef "bass" |
        c8 [ d8 ^\turn e8 ] a,4. ~ |
        a16 [ g a c b a ] b [ e b g e g ] |
        cis,16 [ dis e g fis e ] fis8 [ fis8. _\prallprall e32 fis32] |
        g16 [ a b a g8 ] gis4. ^\turn ~|
        gis16 [ e fis gis a b ] c [ b a g fis e ] |
        d16 [ fis g a b c ] d [ c b c d8 ] |
        g,8 r8 r8 \clef "treble" e'8 r8 r8  |
        a,8 [ b16 c d e ] fis [ g fis e fis d ]  |
        b'16 [ a g fis e d ] c4. ~ |
        c16 [ b c d e fis ] g [ d b g a b ] |
        e,16 [ fis g a b g ] a [ c fis8 ] r8 |
        r8 d8 [ c8 ] b8 [ c16 b a g ]
        \override Staff.RehearsalMark #'direction = #DOWN
	\mark \markup { \musicglyph #"scripts.dfermata" }
    }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble \key g \major \time 6/8 \soprano  }
        \context Staff = "lower" \with { \consists "Mark_engraver" } { \clef bass \key g \major \time 6/8 \bass }
    >>
    \layout{  }
    \midi { }
}
