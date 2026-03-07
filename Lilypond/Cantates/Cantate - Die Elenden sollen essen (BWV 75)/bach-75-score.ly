\include "bach-75-8.ly"

\paper {
    system-separator-markup = \markup {
        \center-align
        \vcenter \combine
        \beam #4.0 #0.5 #0.96
        \raise #1.4 \beam #4.0 #0.5 #0.96
    }
    % system-separator-markup = \slashSeparator
    two-sided = ##t
    indent = 12
    short-indent = 8
    ragged-last-bottom = ##f
}


\include "paged-title.ly"
% \include "title.ly"

\markup\null
\pageBreak


#(set-global-staff-size 14)


mvtVIIIbreaks = {
    s1*3^"Breaks left in"
    \break
    s1*4
    \break
    s1*4
    \break
    s1*4
    \pageBreak

    s1*3
    \break
    s1*3
    \break
    s1*3
    \break
    s1*3
    \pageBreak

    s1*3
    \break
    s1*3
    \break
    s1*3
    \break
    s1*3
    \pageBreak

    s1*3
    \break
    s1*3
    \break
    s1*3
    \break
    s1*5
    \bar "|."
}


\score {
    <<
	\new Staff <<
	    \commonScore

	    % \mvtVIIIbreaks

	    \mvtVIIItromba

	    \set Staff.instrumentName = \markup{\center-column{ "Tromba"
								"in G" }}
	    \set Staff.shortInstrumentName =  \markup{"Tr/G"}
	>>
	\new StaffGroup <<
	    \new GrandStaff <<
		\new Staff <<
		    \mvtVIIIvlnI

		    \set Staff.instrumentName = "I"
		    \set Staff.shortInstrumentName = "I"
		>>
		\new Staff <<
		    \mvtVIIIvlnII

		    \set Staff.instrumentName = "II"
		    \set Staff.shortInstrumentName = "II"
		>>

		\set GrandStaff.instrumentName = "Violino"
		\set GrandStaff.shortInstrumentName = "Vln"
	    >>
	    \new Staff <<
		\mvtVIIIvla

		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla."
	    >>
	    \new Staff <<
		\mvtVIIIbasso

		\set Staff.instrumentName = \markup{Continuo}
		\set Staff.shortInstrumentName = "B.C."
	    >>
	 >>
    >>

    \header {
	piece = \markup{\bold{8. SINFONIA.}}
    }
}
