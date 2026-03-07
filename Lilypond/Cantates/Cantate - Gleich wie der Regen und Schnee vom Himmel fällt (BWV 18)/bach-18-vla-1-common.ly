\version "2.18.0"

\include "bach-18-1.ly"

% #(set-global-staff-size 17)

\include "bach-18-title.ly"
\include "bach-paged-title.ly"

\paper {
    two-sided = ##t
    indent = 0
    % page-breaking = #ly:page-turn-breaking
    ragged-last-bottom = ##f
}

\header {
    instrument = "Viola I"
}


% %{

\score {
    \transpose c \transpLeipzig \new Staff <<
	\clef alto \keepWithTag #'NOREC \mvtIvlaI
    >>

    \header {
	piece = \mvtIpiece
    }

    \layout {
    }
}
