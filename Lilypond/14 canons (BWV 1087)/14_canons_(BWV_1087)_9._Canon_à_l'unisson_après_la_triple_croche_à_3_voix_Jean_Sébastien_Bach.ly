\version "2.24.4"

\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

#(set-global-staff-size 19)

\header {
  title = "9. Canon à l'unisson après la triple croche à 3 voix"
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
       g16 [ b d g ] d [ b g d' ] | % 1
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 2
       d16 [ a fis d ] g [ b d g,] | % 3
       e' [ c a c ] fis, [ a d32 c b a ]  | % 4
        g16 [ b d g ] d [ b g d' ] | % 5
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 6
       d16 [ a fis d ] g [ b d g,] | % 7
       e' [ c a c ] fis, [ a d32 c b a ]  | % 8
       g16 [ b d g ] d [ b g d' ] | % 9
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 10
       d16 [ a fis d ] g [ b d g,] | % 11
       e' [ c a c ] fis, [ a d32 c b a ]  | % 12
       g16 [ b d g ] d [ b g d' ] | % 13
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 14
       d16 [ a fis d ] g [ b d g,] | % 15
       e' [ c a c ] fis, [ a d32 c b a ]  | % 16
       g4 s4  \bar "|." }}

     violinTwo = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r16 g16 [ b d ] g [ d  b g ] | % 1
       d'16 [ d, fis a ] cis, [ e  g cis ]   | % 2
       r16 d16 [ a fis ] d [ g b d ] | % 3
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 4
       b32 [ a g16 b d ] g [ d b g ] | % 5
      d'16 [ d, fis a ] cis, [ e  g cis ]   | % 6
       r16 d16 [ a fis ] d [ g b d ] | % 7
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 8
       b32 [ a g16 b d ] g [ d b g ] | % 9
      d'16 [ d, fis a ] cis, [ e  g cis ]   | % 10
       r16 d16 [ a fis ] d [ g b d ] | % 11
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 12
       b32 [ a g16 b d ] g [ d b g ] | % 13
       d'16 [ d, fis a ] cis, [ e  g cis ]   | % 14
       r16 d16 [ a fis ] d [ g b d ] | % 15
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 16
       b32 [ a ] g8. s4  \bar "|." }}
 

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
	g,4 g'4 | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,4 s4 \bar "|." }}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }