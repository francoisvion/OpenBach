\include "Cantate_Am_Abend_aber_desselbigen_Sabbats_(BWV_42)_sinf.ly"

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
    ragged-last-bottom = ##f}

#(set-global-staff-size 14)

\header {
  title = "Am Abend aber desselbigen Sabbats"
  subtitle = "Cantate"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 42"
  tagline = ##f
}
\score {
    \new StaffGroup <<
	\new GrandStaff <<
	    \new Staff <<
		\commonScore

		\sinfObI

		% \sinfBreaks

		\set Staff.instrumentName = "I."
		\set Staff.shortInstrumentName = "I."
	    >>
	    \new Staff <<
		\sinfObII

		\set Staff.instrumentName = "II."
		\set Staff.shortInstrumentName = "II."
	    >>

	    \set GrandStaff.instrumentName = "Hautbois"
	    \set GrandStaff.shortInstrumentName = "Htb."
	>>
	\new Staff <<
	    \sinfFg

	    \set Staff.instrumentName = "Basson."
	    \set Staff.shortInstrumentName = "Bsn."
	>>
	\new GrandStaff <<
	    \new Staff <<
		\sinfVlnI

		\set Staff.instrumentName = "I"
		\set Staff.shortInstrumentName = "I"
	    >>
	    \new Staff <<
		\sinfVlnII

		\set Staff.instrumentName = "II"
		\set Staff.shortInstrumentName = "II"
	    >>

	    \set GrandStaff.instrumentName = "Violon"
	    \set GrandStaff.shortInstrumentName = "Vln"
	>>
	\new Staff <<
	    \sinfVla

	    \set Staff.instrumentName = "Alto."
	    \set Staff.shortInstrumentName = "Alt."
	>>
	\new Staff <<
	    \sinfBasso

	    \set Staff.instrumentName = \markup{\center-column{ "Orgue et" "Continuo" }}
	    \set Staff.shortInstrumentName = "B.C."
	>>
    >>

    \header {
	piece = \markup{\larger\larger\bold{SINFONIE}}
    }
}

\score {
    <<
	\sinfObI
	\sinfObII
	\sinfFg
	\sinfVlnI
	\sinfVlnII
	\sinfVla
	\sinfBasso
    >>

    \midi{ }
}
