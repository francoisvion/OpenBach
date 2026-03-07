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
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r1 | % 4
       r1 | % 5
       r1 | % 6
       g2 a4 c | % 7
       b2 a | % 8
       g2 a4 c | % 9
       b2 a | % 10
       g2 a4 c | % 11
       b2 a | % 12
       r4 d2 e4 | % 13
       fis4 g r8 e8 d8 [ c ] | % 14
       b8 [ c ] d2 e4 | % 15
       fis4 g r8 e8 d8 [ c ] | % 16
       b8 [ c ] d2 e4 | % 17
       fis4 g r8 e8 d8 [ c ] | % 18
       b8 [ c ] d2 e4 | % 19
       fis4 g r8 e8 d8 [ c ] | % 20
       b8 [ c ] d2 e4 | % 21
       fis4 g r8 e8 d8 [ c ] | % 22
       b1 \bar "|." }}

	       violinTwo = \new Voice { \relative g{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r1 | % 4
       r1 | % 5
       r1 | % 6
       r1 | % 7
       r1 | % 8
       r1 | % 9
       r1 | % 10
       r1 | % 11
       r1 | % 12
       g2 a4 c | % 13
       b2 a | % 14
       g2 a4 c | % 15
       b2 a | % 16
       g2 a4 c | % 17
       b2 a | % 18
       g2 a4 c | % 19
       b2 a | % 20
       g2 a4 c | % 21
       g2 a | % 22
       g1 \bar "|." }}

     violinThree = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 3"
       \set Staff.midiInstrument = "violin"
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r1 | % 4
       r1 | % 5
       r1 | % 6
       r1 | % 7
       r1 | % 8
       r1 | % 9
       d2 c4 a | % 10
       b2 c | % 11
       d2 c4 a4 | % 12
       b2 c | % 11
       d2 c4 a4 | % 12
        b2 c | % 11
       d2 c4 a4 | % 12
       b2 c | % 11
       d2 c4 a4 | % 12
       b2 c | % 11
       d2 c4 a4 | % 12
       b2 c | % 11
       d2 c4 a4 | % 12
       b1 \bar "|." }}
 
    violinFour = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 4"
       \set Staff.midiInstrument = "violin"
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r1 | % 4
       r1 | % 5
       r1 | % 6
       r1 | % 7
       r1 | % 8
       r1 | % 9
       r1 | % 10
       r1 | % 11
       r1 | % 12
       r1 | % 13
       r1 | % 14
       r1 | % 15
       r4 g2 fis4  | % 16
       e4 d r8 fis8 g [ a ] | % 17
       b8 [ a ] g2 fis4 | % 18
       e4 d r8 fis8 g [ a ] | % 19
       b8 [ a ] g2 fis4 | % 20
       e4 d r8 fis8 g [ a ] | % 21
       b8 [ a ] g2 fis4 | % 22
       g1 \bar "|." }}

     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
        r4 g4 fis e | % 1
       d4 b c d | % 2
       g,4 g' fis e | % 3
       d4 b c d | % 4
       g,4 g' fis e | % 5
       d4 b c d | % 6
       g,4 g' fis e | % 7
       d4 b c d | % 8
       g,4 g' fis e | % 9
       d4 b c d | % 10
       g,4 g' fis e | % 11
       d4 b c d | % 12
       g,4 g' fis e | % 13
       d4 b c d | % 14
        g,4 g' fis e | % 15
       d4 b c d | % 16
       g,4 g' fis e | % 17
       d4 b c d | % 18
       g,4 g' fis e | % 19
       d4 b c d | % 20
       g,4 g' fis e | % 21
       d4 b c d | % 22 
	   g,1 \bar "|." }}

     cello = \new Voice { \relative d {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r1 | % 1
       r1 | % 2
       r1 | % 3
       r4 d4 e fis | % 4
       g4 b a g | % 5
       d'4 d, e fis | % 6
       g4 b a g | % 7
       d'4 d, e fis | % 8
       g4 b a g | % 9
       d'4 d, e fis | % 10
       g4 b a g | % 11
       d'4 d, e fis | % 12
       g4 b a g | % 13
       d'4 d, e fis | % 14
       g4 b a g | % 15
       d'4 d, e fis | % 16
       g4 b a g | % 17
       d'4 d, e fis | % 18
       g4 b a g | % 19
       d'4 d, e fis | % 20
       g4 b a g | % 21
       d'4 d, e fis | % 22
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