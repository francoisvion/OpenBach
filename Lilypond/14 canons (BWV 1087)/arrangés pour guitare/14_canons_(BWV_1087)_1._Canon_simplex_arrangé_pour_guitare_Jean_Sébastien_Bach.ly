\version "2.24.4"

\paper {
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
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
       r4^\markup { Soggetto } g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 r4 | % 5
	r2 | % 6
	r2 | % 7
	r2 | % 8
	r4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,4 g'4 | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,2 \bar "|." 
     }

     voiceTwo =  \relative c' {
	     \override NoteHead.color = #blue
       s2 | % 1
       s2 | % 2
       s2 | % 3
       s2 | % 4
       s4 g,4 | % 5 
       d'4 c | % 6
       b4 d | % 7
       e4 fis | % 8
       g4 g,4 | % 9
       d'4 c | % 10
       b4 d | % 11
       e4 fis | % 12
       g4 g,4 | % 13
       d'4 c | % 14
       b4 d | % 15
       e4 fis | % 16
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