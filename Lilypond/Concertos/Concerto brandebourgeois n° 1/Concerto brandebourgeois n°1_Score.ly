\version "2.24.0"
\include "definitions.ly"
\include "notes.ly"
#(set-global-staff-size 14)

\score {
	\new StaffGroup \keepWithTag #'score \music
	\layout {}
	\midi {\tempo 4 = 90
	}
}