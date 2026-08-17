\header {
    \include "header.ly"
    subtitle =	"for two violins and strings (Viola)"
    filename = "viola.ly"
}
\include "viola_1.ly"
\include "viola_2.ly"
\include "viola_3.ly"
\version "2.24.0"
\score {
     \context Voice = Viola {
        \set Staff.midiInstrument = "viola"
        \key d \minor
        \time 4/4
	\clef "alto"
        \violaB
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
     \context Voice = Viola {
        \set Staff.midiInstrument = "viola"
        \key f \major
        \time 12/8
	\clef "alto"
        \violaC
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
     \context Voice = Viola {
        \set Staff.midiInstrument = "viola"
        \key d \minor
        \time 3/4
	\clef "alto"
        \violaD
    }
    \header {
	piece = "Allegro" opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 110
    }
}
