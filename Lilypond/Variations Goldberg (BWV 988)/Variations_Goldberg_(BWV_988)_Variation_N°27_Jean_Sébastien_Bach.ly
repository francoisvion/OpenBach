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
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}

soprano =   \relative a' {
    \repeat volta 2 { 

        R1*6/8 | % 1
        a8 [ b16 cis d e ] fis [ e d e fis8 ] | % 2
        g,8 r8 r8 e'8 r8 r8 | % 3
        fis,8 [ g16 a b c ] d [ e d c d8 ] | % 4
        d8 r8 r8 g,8 r8 r8 | % 5
        c16 [ d c b a g ] fis [ a c e d c ] | % 6
        b16 [ c b a g fis ] e [ g b d c b ] | % 7
        a8 [ b8 ^\turn c8 ] d,8 d'4 ~ | % 8
        d16 [ fis e d cis b ] cis [ d e cis d e ] | % 9
        a,2. ~ _\prallmordent | % 10
        a16 [ a g fis e d ] cis [ d e d e cis ] | % 11
        fis8 r8 r8 b,8 r8 r8 | % 12
        b'16 [ c b a g fis ] e [ g b d cis b ] | % 13
        a16 [ b a g fis e ] dis [ fis a c b a ] | % 14
        g8 [ a8 ^\turn b8 ~ ] b8 [ a8 g8 ~ ] | % 15
        g16 [ fis e d e cis ] d4. % 16
    } %end of repeated section
  
    \repeat volta 2 { 
		a''8 [ g16 fis e d ] c [ d e d c a' ] | % 17
        b,8 r8 r8 g'8 r8 r8 | % 18
        c16 [ d c b a g ] a [ b a g fis e ] | % 19
        dis8 [ e8 ^\turn fis8 ] b,4. ~ | % 20
        b16 [ a b d c b ] c [ f c a f a ] | % 21
        dis,16 [ e  fis  a  g fis ] g8 [ g8. \prallprall fis32 g32 ] | % 22
        a16 [ b c b a8 ] a4. ^\turn ~| % 23
        a16 [ fis g a b c ] d [ c b a gis fis ] | % 24
        e16 [ gis a b c d ] e [ d c d e8 ] | % 25
        a,8 r8 r8 fis'8 r8 r8 | % 26
        b,8 [ c16 d e fis ] g [ a g fis g e ] | % 27
        c'16 [ b a g fis e ] d4. ~ | % 28
        d16 [ c d e fis g ] a [ e c a b c ] | % 29
        fis,16 [ g a b c a ] b [ d g8 ] r8 | % 30
        r8 e8 [ d8 ] c8 [ d16 c b a ] | % 31
        b16 [ d b g a fis ] g4. _\mordent % 32
        \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\mark \markup { \musicglyph #"scripts.ufermata" }
    } 
}

bass = \relative g {
   \repeat volta 2 { 
    g8 [ a16 b c d ] e [ d c d e8 ] | % 1
        fis,8 r8 r8 d'8 r8 r8 | % 2
        e,8 [ fis16 g a b ] c [ d c b c8 ] | % 3
        c8 r8 r8 fis,8 r8 r8 | % 4
        b16 [ c b a g fis ] e [ g b d c b ] | % 5
        a16 [ b a g fis e ] d [ fis a c b a ] | % 6
        g8 [ a8 ^\turn b8 ] c,8 c'4 ~ | % 7
        c16 [ e d c b a ] b [ c d b c d ] | % 8
        g,2. ~ _\prallmordent | % 9
        g16 [ g fis e d cis ] b [ cis d cis d b ] | % 10
        e8 r8 r8 a,8 r8 r8 | % 11
        a'16 [ b a g fis e ] d [ fis a c b a ] | % 12
        g16 [ a g fis e d ] cis [ e g b a g ] | % 13
        fis8 g8 ^\turn a8 ~ a8 g8 fis8 ~ | % 14
        fis16 [ e  d  cis  d  b ] cis4  ~ \prallprall cis16 [ b32 cis32 ] | % 15
        d8 [ fis,8 a8 ] d,4. % 16
    } %end of repeated section
  
    \repeat volta 2 { 
        R1*3/4 \clef "treble" | % 17
        g''8 [ fis16 e d c ] b [ c d c b g' ] | % 18
        a,8 r8 r8 fis'8 r8 r8 | % 19
        b16 [ c b a g fis ] g [ a g fis e d ] \clef "bass" | % 20
        c8 [ d8 ^\turn e8 ] a,4. ~ | % 21
        a16 [ g a c b a ] b [ e b g e g ] | % 22
        cis,16 [ dis e g fis e ] fis8 [ fis8. _\prallprall e32 fis32] | % 23
        g16 [ a b a g8 ] gis4. ^\turn ~| % 24
        gis16 [ e fis gis a b ] c [ b a g fis e ] | % 25
        d16 [ fis g a b c ] d [ c b c d8 ] | % 26
        g,8 r8 r8 \clef "treble" e'8 r8 r8  | % 27
        a,8 [ b16 c d e ] fis [ g fis e fis d ]  | % 28
        b'16 [ a g fis e d ] c4. ~ | % 29
        c16 [ b c d e fis ] g [ d b g a b ] | % 30
        e,16 [ fis g a b g ] a [ c fis8 ] r8 | % 31
        r8 d8 [ c8 ] b8 [ c16 b a g ] % 32
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
