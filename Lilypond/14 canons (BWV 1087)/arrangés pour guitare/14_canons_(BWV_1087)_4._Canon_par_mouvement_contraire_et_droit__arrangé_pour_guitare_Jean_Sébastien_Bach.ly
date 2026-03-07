\version "2.11.46"

\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

#(set-global-staff-size 19)

\header {
        title = "14 Canons "
        subtitle = "sur les huit premières notes fondamentales de l'Aria des Variations Goldberg"
        piece = "4. Canon motu contrario e recto "
        composer = "Jean Sébastien Bach (1685-1750)"
        opus = "BWV 1087"
        tagline = ""
}

      voiceOne =  \relative c'' {
       \set Staff.instrumentName = "Guitare   "
       \set Staff.midiInstrument = "acoustic guitar (nylon)"
       \override NoteHead #'color = #red       
       r2 | % 1
       r2 | % 2
       r4 g4 | % 3
       fis4 e | % 4
       d4 b | % 5
       c4 d | % 6
       g,4 g'4 | % 7
       fis4 e | % 8
       d4 b | % 9
       c4 d | % 10
       g,2 \bar "|." 
      }

 
      voiceTwo =  \relative c' {
	     \override NoteHead #'color = #blue
       r4 d,4 | % 1
       e4 fis | % 2
       g4 b | % 3
       a4 g | % 4
       d'4 d,4 | % 5
       e4 fis | % 6
       g4 b | % 7
       a4 g | % 8
       d'4 d,4 | % 9
       e4 fis | % 10
       g2 \bar "|."
      }

       gitarre = << \voiceOne \\ \voiceTwo >>
       
     \score {
        <<
	     \new Voice  { \clef "treble_8" \time 2/4 \key g \major \gitarre }
        >>
        \layout { }
        \midi { }
     }