\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Continuo)"
    filename = "continuo.ly"
}
\include "continuo_1.ly"
\include "continuo_2.ly"
\include "continuo_3.ly"
\include "common-defs.ly"
\version "2.24.0"
\score {
     \context Voice = Continuo {
        \key e \major \timeB \clef "bass"
        \continuoB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}
\score {
     \context Voice = Continuo {
	\set Staff.midiInstrument = \continuoMidiInstrument
        \key e \major \timeB \clef "bass"
        \continuoBMidi
    }
    \midi {
      \tempo 4 = 110
    }
}
\score {
     \context Voice = Continuo {
        \set Staff.midiInstrument = \continuoMidiInstrument
	\key e \major \timeC \clef "bass"
        \continuoC
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
     \context Voice = Continuo {
        \set Staff.midiInstrument = \continuoMidiInstrument
	\key e \major \timeD \clef "bass"
        \continuoD
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
