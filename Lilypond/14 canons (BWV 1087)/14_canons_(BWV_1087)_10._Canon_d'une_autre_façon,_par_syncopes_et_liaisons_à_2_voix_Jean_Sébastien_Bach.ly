\version "2.24.4"
\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}
#(set-global-staff-size 19)
\header {
  title = \markup { \center-column \string-lines
     "10. Canon d'une autre façon,
     par syncopes et liaisons à 2 voix"}
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
    violinOne = \new Voice { \relative b'{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r4 r8 b8 ~ |
       b8 a4 g8 ~ |
       g16 [ fis g a ] b [ d c b ]  |
       a16 [ g fis e ] d [ c b a ]  |
       g16 [ a b8 ] r8 b'8 ~ |
       b8 a4 g8 ~ |
       g16 [ fis g a ] b [ d c b ]  |
       a16 [ g fis e ] d [ c b a ]  |
       g16 [ a b8 ] r8 b'8 ~ |
       b8 a4 g8 ~ |
       g16 [ fis g a ] b [ d c b ]  |
       a16 [ g fis e ] d [ c b a ]  |
       g16 [ a b8 ] r8 b'8 ~ |
       b8 a4 g8 ~ |
       g16 [ fis g a ] b [ d c b ]  |
       a16 [ g fis e ] d [ c b a ]  |
       g16 [ a ] b4. \bar "|." }}
     violinTwo = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r2 |
       r2 |
       r4 d4 |
       e4 fis |
       g4 b |
       a4 g |
       d'4 d, |
       e4 fis |
       g4 b |
       a4 g |
       d'4 d, |
       e4 fis |
       g4 b |
       a4 g |
       d'4 d, |
       e4 fis |
     	g2  \bar "|." }}
     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
        r4 g4 |
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
	g,4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
	g,2 \bar "|." }}
     cello = \new Voice { \relative g {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r2 |
       r2 |
       r4 r8 g,8 ~ |
       g8 a4 b8 ~ |
       b16 [ c b a ] g [ e fis g ]  |
       a16 [ b c d ] e [ fis g a ] |
       b16 [ a g8 ] r8 g,8 ~ |
       g8 a4 b8 ~ |
       b16 [ c b a ] g [ e fis g ]  |
       a16 [ b c d ] e [ fis g a ] |
       b16 [ a g8 ] r8 g,8 ~ |
       g8 a4 b8 ~ |
       b16 [ c b a ] g [ e fis g ]  |
       a16 [ b c d ] e [ fis g a ] |
       b16 [ a g8 ] r8 g,8 ~ |
       g8 a4 b8 ~ |
       b16 [ c b a ] g4 \bar "|."}}
     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
