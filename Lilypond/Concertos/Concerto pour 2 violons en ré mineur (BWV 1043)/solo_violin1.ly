\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Solo Violin 1)"
    filename = "solo_violin1.ly"
}
\include "solo_violin1_1.ly"
\include "solo_violin1_2.ly"
\include "solo_violin1_3.ly"
\version "2.24.0"
\score {
     \context Voice = SoloViolinI {
	\set Staff.midiInstrument = "violin"
        \key d \minor
        \time 4/4
        \soloViolinBB
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
     \context Voice = SoloViolinI {
        \set Staff.midiInstrument = "violin"
        \key f \major
        \time 12/8
        \soloViolinBC
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
     \context Voice = SoloViolinI {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 3/4
        \soloViolinBD
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
