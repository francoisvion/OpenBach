\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Violin 1)"
    filename = "violin1.ly"
}
\include "violin1_1.ly"
\include "violin1_2.ly"
\include "violin1_3.ly"
\version "2.24.0"
\score {
     \context Voice = ViolinI {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 4/4
        \violinBB
    }
    \header {
	piece = "Vivace"
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 100
    }
}
\score {
     \context Voice =ViolinI {
        \set Staff.midiInstrument = "violin"
        \key f \major
        \time 12/8
        \violinBC
    }
    \header {
	piece = "Largo ma non tanto"
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 48
    }
}
\score {
     \context Voice = ViolinI {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 3/4
        \violinBD
    }
    \header {
	piece = "Allegro"
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 110
    }
}
