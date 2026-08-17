\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Solo Violin 2)"
    filename = "solo_violin2.ly"
}
\include "solo_violin2_1.ly"
\include "solo_violin2_2.ly"
\include "solo_violin2_3.ly"
\version "2.24.0"
\score {
     \context Voice = SoloViolinII {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 4/4
        \soloViolinCB
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
     \context Voice = SoloViolinII {
        \set Staff.midiInstrument = "violin"
        \key f \major
        \time 12/8
        \soloViolinCC
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
     \context Voice = SoloViolinII {
        \set Staff.midiInstrument = "violin"
        \key d \minor
        \time 3/4
        \soloViolinCD
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
