\include "bach-75-8.ly"

#(set-global-staff-size 18)

% \include "paged-title.ly"
\include "title.ly"

\paper {
    two-sided = ##t
    indent = 0
    % page-breaking = #ly:page-turn-breaking
    page-count = 1
}

\header {
    instr = "Viola"
}


% %{

\score {
    \new Staff <<
	\mvtVIIIvla
    >>

    \header {
	piece = \markup{\bold{8. SINFONIA.}}
    }
}
