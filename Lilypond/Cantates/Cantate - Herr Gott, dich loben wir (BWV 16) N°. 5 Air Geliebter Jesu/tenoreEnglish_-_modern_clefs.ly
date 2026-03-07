\version "2.24.4"

\include "definitions.ly"

\include "notes.ly"

#(set-global-staff-size 17)

\score {
	\keepWithTag #'TenoreEnglishTPart \music
	\layout {}
	\midi {\tempo 4 = 60
	}
}
