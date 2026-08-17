\version "2.24.4"
\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}
#(set-global-staff-size 18)
\header {
  title = "13. Canon triplex à 6 voix"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 canons"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}
global= {
       \time 4/4
       \key g \major
     }
    violinOne = \new Voice { \relative g{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       g2 a4 c |
       b2 a |
       g2 a4 c |
       b2 a |
       g2 a4 c |
       b2 a |
       r4 d2 e4 |
       fis4 g r8 e8 d8 [ c ] |
       b8 [ c ] d2 e4 |
       fis4 g r8 e8 d8 [ c ] |
       b8 [ c ] d2 e4 |
       fis4 g r8 e8 d8 [ c ] |
       b8 [ c ] d2 e4 |
       fis4 g r8 e8 d8 [ c ] |
       b8 [ c ] d2 e4 |
       fis4 g r8 e8 d8 [ c ] |
       b1 \bar "|." }}
	       violinTwo = \new Voice { \relative g{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       g2 a4 c |
       b2 a |
       g2 a4 c |
       b2 a |
       g2 a4 c |
       b2 a |
       g2 a4 c |
       b2 a |
       g2 a4 c |
       g2 a |
       g1 \bar "|." }}
     violinThree = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 3"
       \set Staff.midiInstrument = "violin"
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       d2 c4 a |
       b2 c |
       d2 c4 a4 |
       b2 c |
       d2 c4 a4 |
        b2 c |
       d2 c4 a4 |
       b2 c |
       d2 c4 a4 |
       b2 c |
       d2 c4 a4 |
       b2 c |
       d2 c4 a4 |
       b1 \bar "|." }}
    violinFour = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 4"
       \set Staff.midiInstrument = "violin"
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r1 |
       r4 g2 fis4  |
       e4 d r8 fis8 g [ a ] |
       b8 [ a ] g2 fis4 |
       e4 d r8 fis8 g [ a ] |
       b8 [ a ] g2 fis4 |
       e4 d r8 fis8 g [ a ] |
       b8 [ a ] g2 fis4 |
       g1 \bar "|." }}
     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
        r4 g4 fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
        g,4 g' fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
       g,4 g' fis e |
       d4 b c d |
	   g,1 \bar "|." }}
     cello = \new Voice { \relative d {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r1 |
       r1 |
       r1 |
       r4 d4 e fis |
       g4 b a g |
       d'4 d, e fis |
       g4 b a g |
       d'4 d, e fis |
       g4 b a g |
       d'4 d, e fis |
       g4 b a g |
       d'4 d, e fis |
       g4 b a g |
       d'4 d, e fis |
       g4 b a g |
       d'4 d, e fis |
       g4 b a g |
       d'4 d, e fis |
       g4 b a g |
       d'4 d, e fis |
       g4 b a g |
       d'4 d, e fis |
       g1 \bar "|." }}
     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
		   \new Staff << \global \violinThree >>
		   \new Staff << \global \violinFour >>
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
