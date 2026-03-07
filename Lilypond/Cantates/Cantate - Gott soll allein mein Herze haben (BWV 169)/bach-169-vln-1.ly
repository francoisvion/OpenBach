\version "2.18.0"

\include "bach-169-1.ly"
\include "bach-169-2.ly"
\include "bach-169-3.ly"
\include "bach-169-4.ly"
\include "bach-169-5.ly"
\include "bach-169-6.ly"
\include "bach-169-7.ly"

% #(set-global-staff-size 18)

\include "title.ly"
\include "bach-paged-title.ly"

\paper {
    % page-breaking = #ly:page-turn-breaking
    page-count = 4
    % ragged-last-bottom = ##f
}

\header {
    instrument = "Violino I"
}


\score {
    \new Staff <<
	\stretchHorizontalSpacing #-0.5
	\keepWithTag CANTATA \mvtIvlnI
    >>

    \header {
	piece = \mvtIpiece
    }
}

\markup\null\pageBreak
\markup\Tacet{\concat{ \mvtIIpiece . } \concat{ \mvtIIIpiece . } \mvtIVpiece}
% \markup\Tacet{\mvtIIpiece}
% \markup\Tacet{\mvtIIIpiece}
% \markup\Tacet{\mvtIVpiece}

\score {
    \new Staff <<
	% \stretchHorizontalSpacing #-0.5
	\mvtVvlnI
    >>

    \header {
	piece = \mvtVpiece
    }
}

\markup\Tacet{\mvtVIpiece}

\score {
    \new Staff <<
	\mvtVIIsopr
    >>

    \header {
	piece = \mvtVIIpiece
    }
}
