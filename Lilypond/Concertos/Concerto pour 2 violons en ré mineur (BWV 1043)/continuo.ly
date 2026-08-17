\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Continuo)"
    filename = "continuo.ly"
}
\include "continuo_1.ly"
\include "continuo_2.ly"
\include "continuo_3.ly"
\version "2.24.0"
\score {
     \context Voice = Continuo {
        \set Staff.midiInstrument = "cello"
        \key d \minor
        \time 4/4
	\clef "bass"
        \continuoB
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
     \context Voice = Continuo {
        \set Staff.midiInstrument = "cello"
        \key f \major
        \time 12/8
	\clef "bass"
        \continuoC
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
     \context Voice = Continuo {
        \set Staff.midiInstrument = "cello"
        \key d \minor
        \time 3/4
	\clef "bass"
        \continuoD
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
