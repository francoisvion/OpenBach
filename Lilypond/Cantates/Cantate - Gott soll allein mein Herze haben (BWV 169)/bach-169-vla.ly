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
    page-count = #4
}

\header {
    instrument = "Viola"
}


\score {
    \new Staff <<
	\keepWithTag CANTATA \mvtIvla
    >>

    \header {
	piece = \mvtIpiece
    }
}

\markup\Tacet{\mvtIIpiece}
\markup\Tacet{\mvtIIIpiece}
\markup\Tacet{\mvtIVpiece}

\score {
    \new Staff <<
	\mvtVvla
    >>

    \header {
	piece = \mvtVpiece
        breakbefore = ##t
    }
}

\markup\Tacet{\mvtVIpiece}

\score {
    \new Staff <<
	\clef alto \mvtVIIalto
    >>

    \header {
	piece = \mvtVIIpiece
    }
}
