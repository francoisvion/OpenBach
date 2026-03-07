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
    instrument = "Basso Continuo (Beziffert)"
}


\score {
    \new Staff <<
	\mvtIorgLH
	\mvtIfigs
    >>

    \header {
	piece = \mvtIpiece
    }
}


% %{
\score {
    \new StaffGroup <<
	\new Staff = mvtIIalto \with { \staffSize #-3 } <<
	    \set Staff.instrumentName = \markup{\bold{\fontsize #3 Alto}}
	    \set Staff.shortInstrumentName = \markup{\bold{\fontsize #3 A.}}

	    \new Voice = mvtIIalto {
		\clefAlto \mvtIIalto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtIIalto"
		\override LyricText #'font-size = #-1
	    } {
		\lyricsto mvtIIalto { \mvtIIlyrics }
	    }
	>>
	\new Staff <<
	    \set Staff.instrumentName = \markup{\center-column{
						"Basso" "Continuo"}}
	    \set Staff.shortInstrumentName = "B.C."

	    \mvtIIbc
	    \mvtIIfigs
	>>
    >>

    \header {
	piece = \mvtIIpiece
	breakbefore = ##t
    }

    \layout {
	indent = #15
	short-indent = #4
    }
}
% %}


\score {
    \new Staff <<
	\keepWithTag ORGAN { \mvtIIIorgLH }
	\mvtIIIfigs
    >>

    \header {
	piece = \mvtIIIpiece
	breakbefore = ##t
    }
}


% %{
\score {
    \new StaffGroup <<
	\new Staff = mvtIValto \with { \staffSize #-3 } <<
	    \set Staff.instrumentName = \markup{\bold{\fontsize #3 Alto}}
	    \set Staff.shortInstrumentName = \markup{\bold{\fontsize #3 A.}}

	    \new Voice = mvtIValto {
		\clefAlto \mvtIValto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtIValto"
		\override LyricText #'font-size = #-1
	    } {
		\lyricsto mvtIValto { \mvtIVlyrics }
	    }
	>>
	\new Staff <<
	    \set Staff.instrumentName = \markup{\center-column{
						"Basso" "Continuo"}}
	    \set Staff.shortInstrumentName = "B.C."

	    \mvtIVbc
	    \mvtIVfigs
	>>
    >>

    \header {
	piece = \mvtIVpiece
    }

    \layout {
	indent = #15
	short-indent = #4
    }
}
% %}


\score {
    \new Staff <<
	\mvtVorgLH
	\mvtVfigs
    >>

    \header {
	piece = \mvtVpiece
	breakbefore = ##t
    }
}


% %{
\score {
    \new StaffGroup <<
	\new Staff = mvtVIalto \with { \staffSize #-3 } <<
	    \set Staff.instrumentName = \markup{\bold{\fontsize #3 Alto}}
	    \set Staff.shortInstrumentName = \markup{\bold{\fontsize #3 A.}}

	    \new Voice = mvtVIalto {
		\clefAlto \mvtVIalto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtVIalto"
		\override LyricText #'font-size = #-1
	    } {
		\lyricsto mvtVIalto { \mvtVIlyrics }
	    }
	>>
	\new Staff <<
	    \set Staff.instrumentName = \markup{\center-column{
						"Basso" "Continuo"}}
	    \set Staff.shortInstrumentName = "B.C."

	    \mvtVIbc
	    \mvtVIfigs
	>>
    >>

    \header {
	piece = \mvtVIpiece
	% breakbefore = ##t
    }

    \layout {
	indent = #15
	short-indent = #4
    }
}
% %}


\score {
    \new Staff = mvtVIIbc <<
	\new Voice = mvtVIIbc { \mvtVIIbc }
    >>

    \header {
	piece = \mvtVIIpiece
    }
}
