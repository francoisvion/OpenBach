\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Violin 2)"
    filename = "violin2.ly"
}
\version "2.24.0"
\include "violin2_1.ly"
\include "violin2_2.ly"
\include "violin2_3.ly"
\include "common-defs.ly"
\score {
     \context Voice = ViolinII {
        \key e \major \timeB
        \violinCB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}
\score {
     \context Voice = ViolinII {
	\set Staff.midiInstrument = \violinMidiInstrument
        \key e \major  \timeB
        \violinCBMidi
    }
    \midi {
      \tempo 4 = 110
    }
}
\score {
     \context Voice = ViolinII {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeC
        \violinCC
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
     \context Voice = ViolinII {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeD
        \violinCD
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
