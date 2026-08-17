\version "2.24.4"
\paper {
    line-width = 18.0\cm
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}
#(set-global-staff-size 19)
\header {
  title = "1. Canon simplex"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 canons "
  instrument = "Guitare"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}
     voiceOne =  \relative c'' {
       \set Staff.instrumentName = "Guitare   "
       \set Staff.midiInstrument = "acoustic guitar (nylon)"
       \override NoteHead.color = #red
       r4^\markup { Soggetto } g4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 r4 |
	r2 |
	r2 |
	r2 |
	r4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
	g,2 \bar "|."
     }
     voiceTwo =  \relative c' {
	     \override NoteHead.color = #blue
       s2 |
       s2 |
       s2 |
       s2 |
       s4 g,4 |
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
       g2  \bar "|."
     }
       gitarre = << \voiceOne \\ \voiceTwo >>
     \score {
        <<
	     \new Voice  { \clef "treble_8" \time 2/4 \key g \major \gitarre }
        >>
        \layout { }
        \midi { }
     }
