\version "2.11.46"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "14 Canons "
        subtitle = "sur les huit premières notes fondamentales de l'Aria des Variations Goldberg"
        piece = "3. Canon motu recto e contrario "
        composer = "Jean Sébastien Bach (1685-1750)"
        opus = "BWV 1087"
        tagline = ""
}

     voiceOne =  \relative c' {
       \set Staff.instrumentName = "Guitare   "
       \set Staff.midiInstrument = "acoustic guitar (nylon)"
       \override NoteHead #'color = #red
       r2 | % 1
       r2 | % 2
       r4 d4 | % 3
       e4 fis | % 4
       g4 b | % 5
       a4 g | % 6
       d'4 d,4 | % 7
       e4 fis | % 8
       g4 b | % 9
       a4 g | % 10
       d'4 d,4 | % 11
       e4 fis | % 12
       g2 \bar "|." 
     }
 

     voiceTwo =  \relative c' {
	     \override NoteHead #'color = #blue
         r4 g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g'4 | % 5
	fis4 e | % 6
	d4 b | % 7
	c4 d | % 8
	g,4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,2 \bar "|." 
     }

       gitarre = << \voiceOne \\ \voiceTwo >>
       
     \score {
        <<
	     \new Voice  { \clef "treble_8" \time 2/4 \key g \major \gitarre }
        >>
        \layout { }
        \midi { }
     }