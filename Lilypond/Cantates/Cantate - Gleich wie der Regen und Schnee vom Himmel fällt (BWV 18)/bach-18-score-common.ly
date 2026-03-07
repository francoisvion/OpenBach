\version "2.18.0"

\include "common-grand-score.ly"

\include "bach-18-1.ly"

\include "bach-18-title.ly"
\include "bach-paged-title.ly"

\paper {
    indent = 16
    short-indent = 8
    ragged-last-bottom = ##f
    % system-system-spacing = #'((basic-distance . 4) (minimum-distance . 4) (padding . 1) (stretchability . 60))
    % % system-system-spacing #'basic-distance = #25
    % system-system-spacing #'minimum-distance = #15
    % page-count = 9
}

\markup\null
\pageBreak


#(set-global-staff-size 14)


mvtIbreaks = {
    s1.*5^"Breaks left in"
    \break
    s1.*5
    \pageBreak

    s1.*4
    \break
    s1.*5
    \pageBreak

    s1.*5
    \break
    s1.*4
    \pageBreak

    s1.*5
    \break
    s1.*5
    \pageBreak

    s1.*4
    \break
    s1.*4
    \pageBreak

    s1.*4
    \break
    s1.*5
    \pageBreak

    s1.*4
    \break
    s1.*4
    \pageBreak

    s1.*4
    \break
    s1.*5
    \bar "|."
}


\score {
    \transpose c \transpLeipzig
    \new StaffGroup <<
        % \new Dynamics { \mvtIbreaks }
	\ifDefinedThen useRecorders \new GrandStaff = mvtIrec <<
	    \new Staff = staffA <<
                \clef french \keepWithTag #'REC \transpose c c' \mvtIvlaI

		\set Staff.instrumentName = "I"
		\set Staff.shortInstrumentName = "I"

	    >>
	    \new Staff = staffB <<
                \clef french \keepWithTag #'REC \transpose c c' \mvtIvlaII

		\set Staff.instrumentName = "II"
		\set Staff.shortInstrumentName = "II"
	    >>

	    \set GrandStaff.instrumentName = "Flauto"
	    \set GrandStaff.shortInstrumentName = "Fl"
	>>
	\new GrandStaff = mvtIvla <<
	    \new Staff = staffC <<
		\clef alto \keepWithTag #'NOREC \mvtIvlaI

		\set Staff.instrumentName = "I"
		\set Staff.shortInstrumentName = "I"
	    >>
	    \new Staff = staffD <<
		\clef alto \keepWithTag #'NOREC \mvtIvlaII

		\set Staff.instrumentName = "II"
		\set Staff.shortInstrumentName = "II"
	    >>
	    \new Staff = staffE <<
		\clef tenor \mvtIvlaIII

		\set Staff.instrumentName = "III"
		\set Staff.shortInstrumentName = "III"
	    >>
	    \new Staff = staffF <<
		\clef tenor \mvtIvlaIV

		\set Staff.instrumentName = "IV"
		\set Staff.shortInstrumentName = "IV"
	    >>

	    \set GrandStaff.instrumentName = "Viola"
	    \set GrandStaff.shortInstrumentName = "Vla"
	>>
        \new Staff = staffG <<
            \mvtIfag

	    \set Staff.instrumentName = "Fagotto"
	    \set Staff.shortInstrumentName = "Fg."
        >>
        \new Staff = staffH <<
            \mvtIvc

	    \set Staff.instrumentName = "Violoncello"
	    \set Staff.shortInstrumentName = "Vc."
        >>
        \new Staff = staffI <<
            \mvtIbasso

	    \set Staff.instrumentName = "Continuo"
	    \set Staff.shortInstrumentName = "B.C."
        >>
        
    >>

    \header {
	piece = \mvtIpiece
    }

}

\score {
    <<
	\transposition c' \clef french \keepWithTag #'REC \mvtIvlaI
	\transposition c' \clef french \keepWithTag #'REC \mvtIvlaII
	\clef alto \keepWithTag #'NOREC \mvtIvlaI
	\clef alto \keepWithTag #'NOREC \mvtIvlaII
	\mvtIvlaIII
	\mvtIvlaIV
	\mvtIfag
	\mvtIvc
	\mvtIbasso
    >>

    \midi{ } 
}
