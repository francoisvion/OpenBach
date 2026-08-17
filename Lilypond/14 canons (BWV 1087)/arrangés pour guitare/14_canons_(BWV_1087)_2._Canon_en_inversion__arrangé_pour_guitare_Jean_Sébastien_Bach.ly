\version "2.24.0"
\paper {
    obsolete-page-top-space = #0.0  top-system-spacing.basic-distance = #(/ obsolete-page-top-space staff-space)
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
        title = "14 Canons "
        subtitle = "sur les huit premières notes fondamentales de l'Aria des Variations Goldberg"
        piece = "2. All' roverscio "
        composer = "Jean Sébastien Bach (1685-1750)"
        opus = "BWV 1087"
        tagline = ""
}
     voiceOne =  \relative c {
	     \set Staff.instrumentName = "Guitare   "
	     \set Staff.midiInstrument = "acoustic guitar (nylon)"
	     \override NoteHead.color = #red
	     s2 |
	     s2 |
	     s2 |
	     s2 |
	     r4 d'4 |
	     g,4 a |
	     b4 g |
	     fis4 e |
	     d4 d' |
	     g,4 a |
	     b4 g |
	     fis4 e |
	     d4 d' |
	     g,4 a |
	     b4 g |
	     fis4 e |
	     d2 \bar "|."
     }
    voiceTwo =  \relative c {
	    \override NoteHead.color = #blue
	    r4 d4 |
	    e4 fis |
	    g4 b |
	    a4 g |
	    d'4 r4 |
	    r2 |
	    r2 |
	    r2 |
	    r4 d,4 |
	    e4 fis |
	    g4 b |
	    a4 g |
	    d'4 d, |
	    e4 fis |
	    g4 b |
	    a4 g |
	    d'2  \bar "|."
    }
       gitarre = << \voiceOne \\ \voiceTwo >>
     \score {
        <<
	     \new Voice  { \clef "treble_8" \time 2/4 \key g \major \gitarre }
        >>
        \layout { }
        \midi { }
     }
