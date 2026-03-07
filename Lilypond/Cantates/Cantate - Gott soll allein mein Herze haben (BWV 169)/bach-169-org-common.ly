\version "2.18.0"

% #(set-global-staff-size 17)


\score {
    \transpose \TRANSPOSE c \new PianoStaff <<
	\new Staff = mvtIorgRH <<
	    \mvtIorgRH
	>>
	\new Staff = mvtIorgLH <<
	    \mvtIorgLH
	>>
    >>

    \header {
	piece = \mvtIpiece
    }
}


% \pageBreak
% \blankPage


%{
\score {
    \transpose \TRANSPOSE c \new StaffGroup <<
	\new Staff = mvtIIalto \with { \staffSize #-3 } <<
	    \new Voice = mvtIIalto {
		\clefAlto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtIIalto"
		\override LyricText #'font-size = #-1
	    } {
		\lyricsto mvtIIalto { \mvtIIlyrics }
	    }

	    \set Staff.instrumentName = \markup{\bold{Alto}}
	    \set Staff.shortInstrumentName = \markup{\bold{A.}}
	>>
	\new Staff <<
	    \mvtIIbc

	    \set Staff.instrumentName = \markup{\center-column{
						"Basso" "Continuo"}}
	    \set Staff.shortInstrumentName = "B.C."
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
%}

\markup\null\pageBreak
\markup\Tacet{\mvtIIpiece}


\score {
    \transpose \TRANSPOSE c <<
	\new Staff = mvtIIIalto \with { \staffSize #-3 } <<
	    \new Voice = mvtIIIalto {
		\clefAlto \mvtIIIalto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtIIIalto"
		\override LyricText #'font-size = #-1
	    } {
		\lyricsto mvtIIIalto { \mvtIIIlyrics }
	    }

	    \set Staff.instrumentName = \markup{\bold{Alto}}
	    % \set Staff.shortInstrumentName = \markup{\bold{A.}}
	>>
	\new PianoStaff <<
	    \new Staff = mvtIIIorgRH <<
		\mvtIIIorgRH
	    >>
	    \new Staff = mvtIIIorgLH <<
		\keepWithTag ORGAN { \mvtIIIorgLH }
	    >>
	>>
    >>

    \header {
	piece = \mvtIIIpiece
	% breakbefore = ##t
    }

    \layout {
	indent = #8
	% short-indent = #2
	\context {
	    \Staff \RemoveEmptyStaves
	}
    }
}


\markup\null\pageBreak
\markup\Tacet{\mvtIVpiece}

%{
\score {
    \transpose \TRANSPOSE c \new StaffGroup <<
	\new Staff = mvtIValto \with { \staffSize #-3 } <<
	    \new Voice = mvtIValto {
		\clefAlto \mvtIValto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtIValto"
		\override LyricText #'font-size = #-1
	    } {
		\lyricsto mvtIValto { \mvtIVlyrics }
	    }

	    \set Staff.instrumentName = \markup{\bold{Alto}}
	    \set Staff.shortInstrumentName = \markup{\bold{A.}}
	>>
	\new Staff = mvtIVbc <<
	    \mvtIVbc

	    \set Staff.instrumentName = \markup{\center-column{
						"Basso" "Continuo"}}
	    \set Staff.shortInstrumentName = "B.C."
	>>
    >>

    \header {
	piece = \mvtIVpiece
	breakbefore = ##t
    }

    \layout {
	indent = #15
	short-indent = #4
    }
}
%}


\score {
    \transpose \TRANSPOSE c \new PianoStaff <<
	\new Staff = mvtVorgRH <<
	    \keepWithTag CANTATA \mvtVorgRH
	>>
	\new Staff = mvtVorgLH <<
	    \mvtVorgLH
	>>
    >>

    \header {
	piece = \mvtVpiece
	% breakbefore = ##t
    }
}


%{
\score {
    \transpose \TRANSPOSE c \new StaffGroup <<
	\new Staff = mvtVIalto \with { \staffSize #-3 } <<
	    \new Voice = mvtVIalto {
		\clefAlto \mvtVIalto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtVIalto"
		\override LyricText #'font-size = #-1
	    } {
		\lyricsto mvtVIalto { \mvtVIlyrics }
	    }

	    \set Staff.instrumentName = \markup{\bold{Alto}}
	    \set Staff.shortInstrumentName = \markup{\bold{A.}}
	>>
	\new Staff <<
	    \mvtVIbc

	    \set Staff.instrumentName = \markup{\center-column{
						"Basso" "Continuo"}}
	    \set Staff.shortInstrumentName = "B.C."
	>>
    >>

    \header {
	piece = \mvtVIpiece
	breakbefore = ##t
    }

    \layout {
	indent = #15
	short-indent = #4
    }
}
%}

\markup\Tacet{\mvtVIpiece}


\score {
    \transpose \TRANSPOSE c \new StaffGroup <<
	\new Staff = mvtVIIfem <<
	    {
		\mvtVIIsopr
	    } \\ {
		\mvtVIIalto
	    }
	>>
	\new Staff = mvtVIImale <<
	    {
		\mvtVIItenor
	    } \\ {
		\mvtVIIbc
	    }
        >>
    >>

    \header {
	piece = \mvtVIIpiece
	breakbefore = ##t
    }
}
