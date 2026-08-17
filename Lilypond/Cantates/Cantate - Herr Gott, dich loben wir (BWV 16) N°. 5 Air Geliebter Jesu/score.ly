\version "2.25.33"

\include "definitions.ly"

\include "notes.ly"

#(set-global-staff-size 18)

\score {
	\keepWithTag #'score \music
	\layout {}
	\midi {\tempo 4 = 60
	}
}