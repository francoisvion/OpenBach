\version "2.11.46"

\paper {
    page-top-space = #0.0
    %indent = 0.0
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
	     \override NoteHead #'color = #red
	     s2 | % 1
	     s2 | % 2
	     s2 | % 3
	     s2 | % 4
	     r4 d'4 | % 5
	     g,4 a | % 6
	     b4 g | % 7
	     fis4 e | % 8
	     d4 d' | % 9 
	     g,4 a | % 10
	     b4 g | % 11
	     fis4 e | % 12
	     d4 d' | % 13 
	     g,4 a | % 14
	     b4 g | % 15
	     fis4 e | % 16
	     d2 \bar "|." 
     }

    voiceTwo =  \relative c {
	    \override NoteHead #'color = #blue
	    r4 d4 | % 1
	    e4 fis | % 2
	    g4 b | % 3
	    a4 g | % 4
	    d'4 r4 | % 5
	    r2 | % 6
	    r2 | % 7
	    r2 | % 8
	    r4 d,4 | % 9
	    e4 fis | % 10
	    g4 b | % 11
	    a4 g | % 12
	    d'4 d, | % 13
	    e4 fis | % 14
	    g4 b | % 15
	    a4 g | % 16
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