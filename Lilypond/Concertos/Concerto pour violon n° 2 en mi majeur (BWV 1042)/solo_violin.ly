\header {
    \include "header.ly"
    subtitle =	"for violin and strings (Solo Violin)"
    filename = "solo_violin.ly"
}
\include "solo_violin_1.ly"
\include "solo_violin_2.ly"
\include "solo_violin_3.ly"
\include "common-defs.ly"
\version "2.24.0"
\score {
     \context Voice = SoloViolin {
        \key e \major \timeB
        \soloViolinB
    }
    \header {
        piece = \pieceB
        opus = ""
    }
}
\score {
     \context Voice = SoloViolin {
	\set Staff.midiInstrument = \violinMidiInstrument
        \key e \major  \timeB
        \soloViolinBMidi
    }
    \midi {
      \tempo 4 = 110
    }
}
\score {
     \context Voice = SoloViolin {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeC
        \soloViolinC
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
     \context Voice = SoloViolin {
        \set Staff.midiInstrument = \violinMidiInstrument
	\key e \major \timeD
        \soloViolinD
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
