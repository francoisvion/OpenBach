\version "2.24.4"
\paper {
  ragged-bottom = ##t
  ragged-last-bottom = ##t
}
#(set-global-staff-size 19)
\header {
  title = "1. Canon simplex"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 canons "
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}
     global= {
       \time 2/4
       \key g \major
     }
     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
       r4^\markup { Sujet } g4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 r4 |
	r2 |
	r2 |
	r2 |
	\break
	r4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
	g,2 \bar "|." }}
     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r2 |
       r2 |
       r2 |
       r2 |
       r4 g,4 |
       d'4 c |
       b4 d |
       e4 fis |
       g4 g,4 |
       d'4 c |
       b4 d |
       e4 fis |
       g4 g,4 |
       d'4 c |
       b4 d |
       e4 fis |
       g2  \bar "|."}}
     \score {
        \new StaffGroup <<
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
