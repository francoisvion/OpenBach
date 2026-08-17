\version "2.27.1"

\include "definitions.ly"

\include "notes.ly"

#(set-global-staff-size 20)

\score {
	\keepWithTag #'TenoreGermanPart \music
	\layout {}
	\midi {\tempo 4 = 60
	}
}
