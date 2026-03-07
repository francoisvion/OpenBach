\version "2.24.4"

\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
  title = "7. Canon simplex sur ladite fondation à 3 voix"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 canons"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}

global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r4 r16 g16 [ fis e ] | % 1
       d16 [ b c d ] g,4 ~ | % 2
       g16 [ fis g a ] g4 ~ | % 3
       g16 [ b' a g ] fis [ d e fis ] | % 4
       b,8 [ c ] d16 [ g fis e ] | % 5
      d16 [ b c d ] g,4 ~ | % 6
       g16 [ fis g a ] g4 ~ | % 7
       g16 [ b' a g ] fis [ d e fis ] | % 8
       b,8 [ c ] d16 [ g fis e ] | % 9
      d16 [ b c d ] g,4 ~ | % 10
       g16 [ fis g a ] g4 ~ | % 11
       g16 [ b' a g ] fis [ d e fis ] | % 12
       b,8 [ c ] d16 [ g fis e ] | % 13
      d16 [ b c d ] g,4 ~ | % 14
       g16 [ fis g a ] g4 ~ | % 15
       g16 [ b' a g ] fis [ d e fis ] | % 16
       b,2 \bar "|." }}

     violinTwo = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r16 d16 [ e fis ] g [ b a g ] | % 1
       d'4 ~ d16 [ e d cis ]  | % 2
       d4 ~ d16 [ b, c d ] | % 3
       e16 [ g fis e ] b'8 [ a ]| % 4
       g16 [ d e fis ] g [ b a g ] | % 5
       d'4 ~ d16 [ e d cis ]  | % 6
       d4 ~ d16 [ b, c d ] | % 7
       e16 [ g fis e ] b'8 [ a ] | % 8
       g16 [ d e fis ] g [ b a g ] | % 9
       d'4 ~ d16 [ e d cis ]  | % 10
       d4 ~ d16 [ b, c d ] | % 11
       e16 [ g fis e ] b'8 [ a ]| % 12
       g16 [ d e fis ] g [ b a g ] | % 13
       d'4 ~ d16 [ e d cis ]  | % 14
       d4 ~ d16 [ b, c d ] | % 15
       e16 [ g fis e ] b'8 [ a ] | % 8      
       g2  \bar "|." }}
 

     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
        r4 g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g' | % 5
	fis4 e | % 6
	d4 b | % 7
	c4 d | % 8
	g,4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,4 g' | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,2 \bar "|." }}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }