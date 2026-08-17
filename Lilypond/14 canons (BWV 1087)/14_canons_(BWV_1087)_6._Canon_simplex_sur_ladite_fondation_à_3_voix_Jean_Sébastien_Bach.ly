\version "2.24.4"
\paper {
     ragged-bottom = ##t
    ragged-last-bottom = ##t
}
#(set-global-staff-size 19)
\header {
  title = "6. Canon simplex sur ladite fondation à 3 voix"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 Canons "
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}
global= {
       \time 2/4
       \key g \major
     }
    violinOne = \new Voice { \relative e'{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r16 e16 [ d c ] b8 [ bes ] |
       a8 [ d ] cis [ c ]  |
       b4 r16 d16 [ e f ]  |
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] |
       g16 [ e'16 d c ] b8 [ bes ]  |
       a8 [ d ] cis [ c ]  |
       b4 r16 d16 [ e f ]  |
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] |
       g16 [ e'16 d c ] b8 [ bes ]  |
       a8 [ d ] cis [ c ]  |
       b4 r16 d16 [ e f ]  |
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] |
       g2 \bar "|." }}
     violinTwo = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r2 |
       r2 |
       r16 d16 [ e fis ] g8 [ gis ] |
       a8 [ e ] f [ fis ] |
       g4 r16 e16 [ d cis ]  |
       d16 [ fis a8 ] ~ a16 [ g32 fis g 16 a ] |
       b16 [ d, e fis ] g8 [ gis ] |
       a8 [ e ] f [ fis ] |
       g4 r16 e16 [ d cis ]  |
       d16 [ fis a8 ] ~ a16 [ g32 fis g 16 a ] |
       b16 [ d, e fis ] g8 [ gis ] |
       a8 [ e ] f [ fis ]  |
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
