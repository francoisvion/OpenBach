\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Violin 1)"
    filename = "violin1.ly"
}
\version "2.24.0"
\include "violin1_1.ly"
\include "violin1_2.ly"
\include "violin1_3.ly"
\include "common-defs.ly"
\score {
     \context Voice = ViolinI {
        \key e \major \timeB
        \violinBB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}
\score {
     \context Voice = ViolinI {
	\set Staff.midiInstrument = \violinMidiInstrument
        \key e \major \timeB
        \violinBBMidi
    }
    \midi {
      \tempo 4 = 110
    }
}
\score {
     \context Voice = ViolinI {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeC
        \violinBC
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
     \context Voice = ViolinI {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeD
        \violinBD
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
