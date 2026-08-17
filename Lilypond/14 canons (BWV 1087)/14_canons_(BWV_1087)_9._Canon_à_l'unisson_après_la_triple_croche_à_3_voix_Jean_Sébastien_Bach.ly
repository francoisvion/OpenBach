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
       g16 [ b d g ] d [ b g d' ] |
       d,16 [ fis a cis, ] e [ g cis ] r16  |
       d16 [ a fis d ] g [ b d g,] |
       e' [ c a c ] fis, [ a d32 c b a ]  |
        g16 [ b d g ] d [ b g d' ] |
       d,16 [ fis a cis, ] e [ g cis ] r16  |
       d16 [ a fis d ] g [ b d g,] |
       e' [ c a c ] fis, [ a d32 c b a ]  |
       g16 [ b d g ] d [ b g d' ] |
       d,16 [ fis a cis, ] e [ g cis ] r16  |
       d16 [ a fis d ] g [ b d g,] |
       e' [ c a c ] fis, [ a d32 c b a ]  |
       g16 [ b d g ] d [ b g d' ] |
       d,16 [ fis a cis, ] e [ g cis ] r16  |
       d16 [ a fis d ] g [ b d g,] |
       e' [ c a c ] fis, [ a d32 c b a ]  |
       g4 s4  \bar "|." }}
     violinTwo = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r16 g16 [ b d ] g [ d  b g ] |
       d'16 [ d, fis a ] cis, [ e  g cis ]   |
       r16 d16 [ a fis ] d [ g b d ] |
       g,16 [ e' c a ] c [ fis, a d32 c ]   |
       b32 [ a g16 b d ] g [ d b g ] |
      d'16 [ d, fis a ] cis, [ e  g cis ]   |
       r16 d16 [ a fis ] d [ g b d ] |
       g,16 [ e' c a ] c [ fis, a d32 c ]   |
       b32 [ a g16 b d ] g [ d b g ] |
      d'16 [ d, fis a ] cis, [ e  g cis ]   |
       r16 d16 [ a fis ] d [ g b d ] |
       g,16 [ e' c a ] c [ fis, a d32 c ]   |
       b32 [ a g16 b d ] g [ d b g ] |
       d'16 [ d, fis a ] cis, [ e  g cis ]   |
       r16 d16 [ a fis ] d [ g b d ] |
       g,16 [ e' c a ] c [ fis, a d32 c ]   |
       b32 [ a ] g8. s4  \bar "|." }}
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
	g,4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
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
