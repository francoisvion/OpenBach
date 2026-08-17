\version "2.24.4"
\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}
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
       r4 r16 g16 [ fis e ] |
       d16 [ b c d ] g,4 ~ |
       g16 [ fis g a ] g4 ~ |
       g16 [ b' a g ] fis [ d e fis ] |
       b,8 [ c ] d16 [ g fis e ] |
      d16 [ b c d ] g,4 ~ |
       g16 [ fis g a ] g4 ~ |
       g16 [ b' a g ] fis [ d e fis ] |
       b,8 [ c ] d16 [ g fis e ] |
      d16 [ b c d ] g,4 ~ |
       g16 [ fis g a ] g4 ~ |
       g16 [ b' a g ] fis [ d e fis ] |
       b,8 [ c ] d16 [ g fis e ] |
      d16 [ b c d ] g,4 ~ |
       g16 [ fis g a ] g4 ~ |
       g16 [ b' a g ] fis [ d e fis ] |
       b,2 \bar "|." }}
     violinTwo = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r16 d16 [ e fis ] g [ b a g ] |
       d'4 ~ d16 [ e d cis ]  |
       d4 ~ d16 [ b, c d ] |
       e16 [ g fis e ] b'8 [ a ]|
       g16 [ d e fis ] g [ b a g ] |
       d'4 ~ d16 [ e d cis ]  |
       d4 ~ d16 [ b, c d ] |
       e16 [ g fis e ] b'8 [ a ] |
       g16 [ d e fis ] g [ b a g ] |
       d'4 ~ d16 [ e d cis ]  |
       d4 ~ d16 [ b, c d ] |
       e16 [ g fis e ] b'8 [ a ]|
       g16 [ d e fis ] g [ b a g ] |
       d'4 ~ d16 [ e d cis ]  |
       d4 ~ d16 [ b, c d ] |
       e16 [ g fis e ] b'8 [ a ] |
       g2  \bar "|." }}
     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
        r4 g4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g' |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g' |
	fis4 e |
	d4 b |
	c4 d |
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
