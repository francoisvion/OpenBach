\header {
    \include "header.ly"
    subtitle = "for two violins and strings (Score)"
    filename = "score.ly"
}
\version "2.24.0"
\include "solo_violin1_1.ly"
\include "solo_violin2_1.ly"
\include "violin1_1.ly"
\include "violin2_1.ly"
\include "viola_1.ly"
\include "continuo_1.ly"
\include "solo_violin1_2.ly"
\include "solo_violin2_2.ly"
\include "violin1_2.ly"
\include "violin2_2.ly"
\include "viola_2.ly"
\include "continuo_2.ly"
\include "solo_violin1_3.ly"
\include "solo_violin2_3.ly"
\include "violin1_3.ly"
\include "violin2_3.ly"
\include "viola_3.ly"
\include "continuo_3.ly"
\score {
    \context StaffGroup = "fullscore"  <<
	\context Voice = SoloViolinI {
	    \set Staff.midiInstrument = "violin"
	    \key d \minor
	    \time 4/4
	    \soloViolinBB
	}
	\context Voice = SoloViolinII {
	    \set Staff.midiInstrument = "violin"
    	    \key d \minor
	    \time 4/4
    	    \soloViolinCB
	}
	\context Voice = ViolinI {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key d \minor
	    \time 4/4
    	    \violinBB
	}
	\context Voice = ViolinII {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key d \minor
	    \time 4/4
    	    \violinCB
	}
	\context Voice = Viola {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key d \minor
	    \time 4/4
	    \clef "alto"
    	    \violaB
	}
	\context Voice = Continuo {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key d \minor
	    \time 4/4
	    \clef "bass"
    	    \continuoB
	}
    >>
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
    \context StaffGroup = "fullscore"  <<
	\context Voice = SoloViolinI {
	    \set Staff.midiInstrument = "violin"
	    \key f \major
	    \time 12/8
	    \soloViolinBC
	}
	\context Voice = SoloViolinII {
	    \set Staff.midiInstrument = "violin"
    	    \key f \major
	    \time 12/8
    	    \soloViolinCC
	}
	\context Voice = ViolinI {
	    \set Staff.midiInstrument = "harpsichord"
	    \key f \major
	    \time 12/8
	    \violinBC
	}
	\context Voice = ViolinII {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key f \major
	    \time 12/8
    	    \violinCC
	}
	\context Voice = Viola {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key f \major
	    \time 12/8
	    \clef "alto"
    	    \violaC
	}
	\context Voice = Continuo {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key f \major
	    \time 12/8
	    \clef "bass"
    	    \continuoC
	}
    >>
    \header {
	piece = "Largo ma non tanto" opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 48
    }
}
\score {
    \context StaffGroup = "fullscore"  <<
	\context Voice = SoloViolinI {
	    \set Staff.midiInstrument = "violin"
	    \key d \minor
	    \time 3/4
	    \soloViolinBD
	}
	\context Voice = SoloViolinII {
	    \set Staff.midiInstrument = "violin"
    	    \key d \minor
	    \time 3/4
    	    \soloViolinCD
	}
	\context Voice = ViolinI {
	    \set Staff.midiInstrument = "harpsichord"
	    \key d \minor
	    \time 3/4
	    \violinBD
	}
	\context Voice = ViolinII {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key d \minor
	    \time 3/4
    	    \violinCD
	}
	\context Voice = Viola {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key d \minor
	    \time 3/4
	    \clef "alto"
    	    \violaD
	}
	\context Voice = Continuo {
	    \set Staff.midiInstrument = "harpsichord"
    	    \key d \minor
	    \time 3/4
	    \clef "bass"
    	    \continuoD
	}
    >>
    \header {
	piece = "Allegro"
        opus = ""
    }
    \layout {}
    \midi {
      \tempo 4 = 110
    }
}
