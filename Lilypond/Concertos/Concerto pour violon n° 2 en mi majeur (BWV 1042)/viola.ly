\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Viola)"
    filename = "viola.ly"
}
\include "viola_1.ly"
\include "viola_2.ly"
\include "viola_3.ly"
\include "common-defs.ly"
\version "2.24.0"
\score {
     \context Voice = Viola {
        \key e \major \timeB \clef "alto"
        \violaB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}
\score {
     \context Voice = Viola {
	\set Staff.midiInstrument = \violaMidiInstrument
        \key e \major \timeB \clef "alto"
        \violaBMidi
    }
    \midi {
      \tempo 4 = 110
    }
}
\score {
     \context Voice = Viola {
        \set Staff.midiInstrument = \violaMidiInstrument
	\key e \major \timeC \clef "alto"
        \violaC
    }
    \header {
        piece = \pieceC
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 50
    }
}
\score {
     \context Voice = Viola {
        \set Staff.midiInstrument = \violaMidiInstrument
	\key e \major \timeD \clef "alto"
        \violaD
    }
    \header {
        piece = \pieceD
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 120
    }
}
