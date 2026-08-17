\version "2.27.1"

transpLeipzig = c

\include "Cantate_Gleich_wie_der_Regen_und_Schnee_vom_Himmel_fällt_(BWV_18)_1._Sinfonie.ly"
\include "Cantate_Gleich_wie_der_Regen_und_Schnee_vom_Himmel_fällt_(BWV_18)_title.ly"

\paper {
  indent = 1.6\cm
  short-indent = 1\cm
  system-separator-markup = \markup {
    \center-align
    \vcenter \combine
    \beam #4.0 #0.5 #0.96
    \raise #1.4 \beam #4.0 #0.5 #0.96
  }
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \bold \fromproperty #'header:title
      }
      \fill-line {
        \large \bold \fromproperty #'header:subtitle
      }
      \vspace #1
      \fill-line {
        \large \bold \fromproperty #'header:instrument
      }
      \vspace #0.5
      \fill-line {
        \null
        \fromproperty #'header:composer
      }
    }
  }
}

mvtIpiece = "1. Sinfonie en sol mineur (version originale de Weimar)"

\layout {
  \context {
    \Score
    \compressEmptyMeasures
  }
}

#(set-global-staff-size 16)


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
    \fine
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

	    \set GrandStaff.instrumentName = "Flûte"
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

	    \set GrandStaff.instrumentName = "Alto"
	    \set GrandStaff.shortInstrumentName = "Alt."
	>>
        \new Staff = staffG <<
            \mvtIfag

	    \set Staff.instrumentName = "Basson"
	    \set Staff.shortInstrumentName = "Bsn."
        >>
        \new Staff = staffH <<
            \mvtIvc

	    \set Staff.instrumentName = "Violoncelle"
	    \set Staff.shortInstrumentName = "Vc."
        >>
        \new Staff = staffI <<
            \mvtIbasso

	    \set Staff.instrumentName = "Continuo"
	    \set Staff.shortInstrumentName = "Cont."
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