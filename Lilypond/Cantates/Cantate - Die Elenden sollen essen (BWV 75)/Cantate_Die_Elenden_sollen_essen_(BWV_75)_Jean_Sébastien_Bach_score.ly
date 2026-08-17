\include "Cantate_Die_Elenden_sollen_essen_(BWV_75)_Jean_Sébastien_Bach_notes.ly"
\paper {
    system-separator-markup = \markup {
        \center-align
        \vcenter \combine
        \beam #4.0 #0.5 #0.96
        \raise #1.4 \beam #4.0 #0.5 #0.96
    }
    two-sided = ##t
     indent = 12
     short-indent = 8
    ragged-last-bottom = ##f
}
\include "title.ly"
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
	    \mvtVIIItromba
	    \set Staff.instrumentName = \markup{\center-column{ "Trompette"
								"en Sol" }}
	    \set Staff.shortInstrumentName =  \markup{"Tr/Sol"}
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
		\set GrandStaff.instrumentName = "Violon"
		\set GrandStaff.shortInstrumentName = "Vln."
	    >>
	    \new Staff <<
		\mvtVIIIvla
		\set Staff.instrumentName = "Alto."
		\set Staff.shortInstrumentName = "Alt."
	    >>
	    \new Staff <<
		\mvtVIIIbasso
		\set Staff.instrumentName = "Continuo"
		\set Staff.shortInstrumentName = "B.C."
	    >>
	 >>
    >>
    \header {
	piece = "8. SINFONIE"
    }
}
