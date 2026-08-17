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
        piece = "3. Canon motu recto e contrario "
        composer = "Jean Sébastien Bach (1685-1750)"
        opus = "BWV 1087"
        tagline = ""
}
     voiceOne =  \relative c' {
       \set Staff.instrumentName = "Guitare   "
       \set Staff.midiInstrument = "acoustic guitar (nylon)"
       \override NoteHead.color = #red
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
       g2 \bar "|."
     }
     voiceTwo =  \relative c' {
	     \override NoteHead.color = #blue
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
