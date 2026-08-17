\version "2.27.1"

#(set-global-staff-size 18)


\score {
    \transpose \TRANSPOSE c \new PianoStaff <<
	\new Staff = "mvtIorgRH" {
	    \mvtIorgRH
	}
	\new Staff = "mvtIorgLH" {
	    \mvtIorgLH
	}
    >>

    \header {
	piece = \mvtIpiece
    }
}

\score {
    \transpose \TRANSPOSE c <<
	\new Staff = "mvtIIIalto" \with { 
	    \staffSize #-3 
	    instrumentName = "Alto"
	    shortInstrumentName = "Alt."
	} {
	    \new Voice = "mvtIIIalto" {
		\clefAlto \mvtIIIalto
	    }
	}
	\new Lyrics \with {
	    alignBelowContext = "mvtIIIalto"
	    \override LyricText.font-size = #-1
	} {
	    \lyricsto "mvtIIIalto" { \mvtIIIlyrics }
	}

	\new PianoStaff <<
	    \new Staff = "mvtIIIorgRH" {
		\mvtIIIorgRH
	    }
	    \new Staff = "mvtIIIorgLH" {
		\keepWithTag ORGAN { \mvtIIIorgLH }
	    }
	>>
    >>

    \header {
	piece = \mvtIIIpiece
	% breakbefore = ##t
    }

    \layout {
	indent = #8
	% short-indent = #2
	\context {
	    \Staff \RemoveEmptyStaves
	}
    }
}

\score {
    \transpose \TRANSPOSE c \new PianoStaff <<
	\new Staff = "mvtVorgRH" {
	    \keepWithTag CANTATA \mvtVorgRH
	}
	\new Staff = "mvtVorgLH" {
	    \mvtVorgLH
	}
    >>

    \header {
	piece = \mvtVpiece
    }
}

\score {
    \transpose \TRANSPOSE c \new StaffGroup <<
	\new Staff = "mvtVIIfem" <<
	    {
		\mvtVIIsopr
	    } \\ {
		\mvtVIIalto
	    }
	>>
	\new Staff = "mvtVIImale" <<
	    {
		\mvtVIItenor
	    } \\ {
		\mvtVIIbc
	    }
        >>
    >>

    \header {
	piece = \mvtVIIpiece
	breakbefore = ##t
    }
}