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
  piece = "Variation N°24, Canon à l'octave à 1 clavier"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
sopranoOne =   \relative g' {
    \repeat volta 2 {
    	\stemUp
        g4 fis8 g4 a8 b [ d cis ] |
        d4 a8 d4 e8 \grace e16 fis16 [ g fis e d8 ] |
        \stemDown g8 [ b a ] b [ g fis ] g4. ( |
        \stemUp g8 ) [ fis e ] fis [ g a ] d,4. ( |
        d8 ) [ g fis ] g [ b a ] b [ d16 c b a ] |
        b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ a16 g fis e ] |
        d8 r8 r8 g8 r8 r8 fis8 r8 r8 |
        g8 r8 r8 c,8 r8 r8 b8 r8 r8 |
	R1*9/8 |
	R1*9/8 |
        r8 b'8 [ a ] g [ a fis ] e16 [ d cis8 d ] |
        \grace d8 cis4. ~ cis8 [ d e ] a, [ b cis ] |
        d4 fis8 g4 a8 b,4.~ |
        b8 [ a g ] a2. ~ |
        a8 [ d cis ] d16 [ e fis8 e ] fis [ a16 g fis e ] |
        fis8 [ g16 fis e d ] e8 [ fis16 e d cis ] d4. |
    }
    \repeat volta 2 {
	R1*9/8 |
	R1*9/8 |
	\override NoteColumn #'ignore-collision = ##t
        a'2.  ~ ^\downprall a4. ~ |
        a8  [ g fis ] g [ b a ] b4 dis,8 |
        e8 [ g16 fis e d ] c8 [ e16 d c b ] a8 [ c16 b a g ] |
        fis4 e'8  dis  [e \turn  fis ] b,4. ~ |
        b8 [ dis e ] ~ e16 [ d c b c8 ] ~  c16 [ b a g a8 ~ ] |
        a8 [ fis g  ] b4. \prallmordent ~ b8  [ c d ] |
        e8 [ gis, b ] a4. ~  a8  [ b c ] |
        d8 [ fis, a ] d,4 fis8 b4. ~ |
        b4 dis,8 e [ fis g ] fis [ g a ] |
        \mergeDifferentlyDottedOn d,4. d4. d4._~ |
        d8 [ g fis ] g [ a b ] c [ d16 c b a ] |
        b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ b16 a g fis ] |
        g8 b8\rest b8\rest d,8 b'8\rest b8\rest fis8 b8\rest b8\rest |
        g8 b8\rest b8\rest c,8 b'8\rest b8\rest b,4. |
    }
}
sopranoTwo =   \relative g {
  \repeat volta 2 {
  	\stemDown
        R1*9/8 |
	R1*9/8 |
	\change Staff = "lower" \stemUp
        g4 fis8 g4 a8 b d cis |
        d4 a8 d4 \change Staff = "upper" \stemDown e8 \stemUp \grace e16 \stemDown fis16 [ g fis e d8] |
        g8 [ b a ] b [ g fis ] g4. ( |
        g8 ) [ fis e ] fis [ g a ] d,4. ~ |
        d8 [ g fis ] g [ b a ] b [ d16 c b a ] |
        b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ a16 g fis e ] |
        d8 [ b' a ] g [ a fis ] e16 [ d cis8 d ] |
        \stemUp \grace d8 \stemDown cis4. ( cis8 ) [ d e ] \change Staff = "lower" \stemUp a, [ b cis ] |
        d4 \change Staff = "upper" \stemDown fis8 g4 a8 \change Staff = "lower" \stemUp b,4.^~ |
        b8 [ a gis ] a2.^~ |
        a8 [ \change Staff = "upper" \stemDown d cis ] d16 [ e fis8 e ] fis [ g16 fis e d ] |
        fis8 [ g16  fis  e  d ] e8 [ fis16  e  d  cis ] d8 [ e16 d cis \change Staff = "lower" \stemUp b ] |
        a8 c8\rest d8\rest \change Staff = "upper" \stemDown d8 r8 r8 cis8 r8 r8 |
        d8 r8 r8 g8 r8 r8 fis4. |
    }
    \repeat volta 2 {
	a2.^\downprall ~ a4. ~ |
        a8 [ g fis ] g [ b a ] b4 \change Staff = "upper" \stemUp dis,8 |
        e8 [ g16 fis e d ] c8 [ e16 d c b ] a8 [ c16 b a g ] |
        fis4 \change Staff = "upper" \stemDown e'8 dis [ \once \override Script #'outside-staff-priority = ##f \once \override Script #'extra-offset = #'(0.0 . -3.3 ) e^\turn fis ] \change Staff = "lower" \stemUp b,4.^~ |
        \once \override Beam #'damping = #+inf.0
        b8 [ \change Staff = "upper" \stemDown dis e ]  ~ \once \override Beam #'damping = #+inf.0 e16 [ d \change Staff = "lower" \stemUp c b c8^( ] c16 ) [ b a g a8^~ ] |
        a8 [ fis g ] d'4.\rest \change Staff = "upper" r4. |
	R1*9/8 |
	R1*9/8 |
	R1*9/8 |
        r4. \stemDown b4. ( b8 ) [ c d ] |
        e8 [ \change Staff = "lower" \stemUp gis, b ] a4.^~ a8 [ b c ] |
        \stemDown \change Staff = "upper" d8 [ \change Staff = "lower" \stemUp fis, a ] d,4 fis8 b4.^~ |
        b4 dis,8 e [ fis g ] fis [ g a ] |
        d,4. d4. d4.^~ |
        d8 [ g fis ] g [ a b ] c [ d16 c b a ] |
        b8 [ c16 b a g ] a8 [ b16 a g fis ] g4. |
    }
}
soprano = << \sopranoOne \\ \sopranoTwo>>
bass = \relative g {
	\repeat volta 2 {
	\stemDown
        g4. r8 r8 fis8 g4 e8 |
        fis4. r8 r8 a8 d,4 fis8 |
        e2._( e4_) a8 |
        d,4. r4. r8 r8 c'8 |
        b4. r8 r8 d8 g,4 b8 |
        e4 r8 r8 r8 a,8 b [ a b ] |
        c8 [ b a ] b [ d c ] d4 d,8 |
        g4 \stemUp g,8 g4 \stemDown g'8 g [ fis16 e d c ] |
        \stemUp b8 [ g a ] b [ c d ] g,4 \stemDown g'8 ( |
        g8 ) [ fis e ] a4 g8 fis [ g a ] |
        b4._~ b4 a8 g4 e8 |
        a,4 r8 r8 r8 g'8 fis4 e8 |
        fis4 a8 b4 cis8 d4 d,8 |
        g4 \stemUp b,8 \stemDown cis d e fis e fis |
        g8 fis e fis a g a4 \stemUp a,8 \stemDown |
        d4 \stemUp d,8 d4 \stemDown d'8 d4. |
    }
    \repeat volta 2 {
   |
        d8 [ fis a ] d [ e16 d c b ] c8 [ d16 c b a ] |
        b4. ( b8 ) [ c d ] g, [ a b ] |
        c8 r8 r8 a8 r8 r8 fis8 r8 r8 |
        \mergeDifferentlyDottedOn
        dis4 fis8 b4._~  b8 [ g a ] |
        g8 r8 r8 e8 r8 r8 c8 r8 r8 |
        a4 ais8 b [ c'16 b a g ] a8 [ b16 a g fis ] |
        g8 [ a16 g fis e ] c'8 [ dis, e ] b [ e dis ] |
        e4. \prallmordent ~ e8 [ g b ] e4 d8 |
        c4. ~ c8 [ b c ] fis, [ g a ] |
        b8 [ d, fis ] b, [ c d ] g, [ a b ] |
        c4. c4. c4._~ |
        c8 [ d16 c b a ] b8 [ c d ] g, [ a b ] |
        e,8 r8 r8 e'8 r8 r8 a,8 r8 r8 |
        g8 [ a b ] c [ b a ] b [ g a ] |
        b4._~ b8 [ a g ] d'4 d,8 |
        g4 \stemUp g,8 g4 \stemDown g'8 g4. |
    }
}
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 9/8 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 9/8 \bass }
    >>
    \layout{  }
    \midi { }
}
