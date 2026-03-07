\version "2.18.0"

\include "bach-18-common-a.ly"

\include "bach-18-1.ly"

#(set-global-staff-size 19)

\include "bach-18-title.ly"
% \include "bach-paged-title.ly"

\paper {
    two-sided = ##t
    % page-breaking = #ly:page-turn-breaking
    ragged-last-bottom = ##f
    page-count = 2
}

\header {
    instrument = "Flauto I"
}


\score {
    \new Staff <<
	\transpose c \transpLeipzig {
	    \clef french \keepWithTag #'REC \transpose c c' \mvtIvlaI
	}
    >>

    \header {
	piece = \markup{\left-align \bold{SINFONIA}}
    }
}

\score {
    \new Staff <<
	\transpose c \transpLeipzig {
	    \clef violin \keepWithTag #'REC \transpose c c' \mvtIvlaI
	}
    >>

    \header {
	piece = \markup{\bold{SINFONIA}}
	breakbefore = ##t
    }
}
