\version "2.24.4"
\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}
#(set-global-staff-size 19)
\header {
  title = "5. Canon duplex à 4 voix"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 Canons "
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ""
}
global= {
       \time 2/4
       \key g \major
     }
    violinOne = \new Voice { \relative g'{
       \set Staff.instrumentName = "Violine 1"
       \set Staff.midiInstrument = "violin"
       r8 g16 [ fis ] g [ a b c ] |
       d16 [ a fis d ] e [ fis g a ] |
       b8 [ fis ] g4 ~  |
       g16 [ a32 b c16 b ] a16 [ g b a ] |
       g16 [a g fis ] g [ a b c ]  |
       d16 [ a fis d ] e [ fis g a ]  |
       b8 [ fis ] g4 ~  |
       g16 [ a32 b c16 b ] a16 [ g b a ] |
       g16 [a g fis ] g [ a b c ]   |
       d16 [ a fis d ] e [ fis g a ]  |
       b8 [ fis ] g4 ~ |
       g16 [ a32 b c16 b ] a16 [ g b a ] |
       g2 \bar "|." }}
     violinTwo = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 2"
       \set Staff.midiInstrument = "violin"
       r2 |
       r2 |
       r8 d16 [ e ] d [ c b a ]  |
       g16 [ c e g ] fis [ e d c ] |
       b8 [ e ] d4 ~ |
       d16 [ c32 b a16 b ] c [ d b c ] |
       d16 [ c d e ] d [ c b a ]  |
       g16 [ c e g ] fis [ e d c ] |
       b8 [ e ] d4 ~ |
       d16 [ c32 b a16 b ] c [ d b c ] |
       d16 [ c d e ] d [ c b a ]  |
       g16 [ c e g ] fis [ e d c ] |
       b2  \bar "|." }}
     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
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
     cello = \new Voice { \relative d {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r2 |
       r2 |
       r4 d4 |
       e4 fis |
       g4 b |
       a4 g |
       d'4 d,4 |
       e4 fis |
       g4 b |
       a4 g |
       d'4 d,4 |
       e4 fis |
       g2  \bar "|."}}
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
