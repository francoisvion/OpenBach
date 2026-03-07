\version "2.25.33"

\include "definitions.ly"

\include "notes.ly"

#(set-global-staff-size 17)

\score {
	\keepWithTag #'TenoreGermanTPart \music
	\layout {}
	\midi {\tempo 4 = 60
	}
}
