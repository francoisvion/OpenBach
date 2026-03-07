\version "2.18.0"

\include "bach-169-1.ly"
\include "bach-169-2.ly"
\include "bach-169-3.ly"
\include "bach-169-4.ly"
\include "bach-169-5.ly"
\include "bach-169-6.ly"
\include "bach-169-7.ly"

% #(set-global-staff-size 17)

\include "title.ly"
\include "bach-paged-title.ly"

\paper {
    % page-breaking = #ly:page-turn-breaking
}

\header {
    instrument = "Oboe d'Amore II"
}


\score {
    \new Staff <<
	\mvtIobII
    >>

    \header {
	piece = \mvtIpiece
    }
}

% \markup\null
% \pageBreak
\markup\Tacet{\mvtIIpiece}
\markup\Tacet{\mvtIIIpiece}
\markup\Tacet{\mvtIVpiece}
\markup\Tacet{\mvtVpiece}
\markup\Tacet{\mvtVIpiece}

\score {
    \transpose a c' \new Staff <<
	\mvtVIIsopr
    >>

    \header {
	piece = \mvtVIIpiece
    }
}
