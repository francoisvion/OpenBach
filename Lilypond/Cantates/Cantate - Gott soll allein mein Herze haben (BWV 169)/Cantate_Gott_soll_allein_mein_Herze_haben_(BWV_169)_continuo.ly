\version "2.27.1"

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_1._Sinfonie.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_2._Air.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_3._Air_avec_orgue_obligé.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_4._Récitatif.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_5._Air.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_6._Récitatif.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_7._Choral.ly"

#(set-global-staff-size 18)

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_title.ly"

\paper {
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
    \fill-line {
        \null
        \fromproperty #'header:opus
      }}
    }
  }
  
\header {
    instrument = "Continuo"
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

\score {
    \new StaffGroup <<
	\new Staff = mvtIIalto \with { \staffSize #-3 } <<
	    \set Staff.instrumentName = \markup{-{\fontsize #3 Alto}}
	    \set Staff.shortInstrumentName = \markup{{\fontsize #3 A.}}

	    \new Voice = mvtIIalto {
		\clefAlto \mvtIIalto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtIIalto"
		\override LyricText.font-size = #-1
	    } {
		\lyricsto mvtIIalto { \mvtIIlyrics }
	    }
	>>
	\new Staff <<
	    \set Staff.instrumentName = \markup{\center-column{
						"Continuo"}}
	    \set Staff.shortInstrumentName = "Cont."

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
    }
}

\score {
    \new StaffGroup <<
	\new Staff = mvtIValto \with { \staffSize #-3 } <<
	    \set Staff.instrumentName = \markup{{\fontsize #3 Alto}}
	    \set Staff.shortInstrumentName = \markup{{\fontsize #3 Alt.}}

	    \new Voice = mvtIValto {
		\clefAlto \mvtIValto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtIValto"
		\override LyricText.font-size = #-1
	    } {
		\lyricsto mvtIValto { \mvtIVlyrics }
	    }
	>>
	\new Staff <<
	    \set Staff.instrumentName = \markup{{Continuo}}
	    \set Staff.shortInstrumentName = "Cont."

	    \mvtIVbc
	    \mvtIVfigs
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

\score {
    \new Staff <<
	\mvtVorgLH
	\mvtVfigs
    >>

    \header {
	piece = \mvtVpiece
    }
}

\score {
    \new StaffGroup <<
	\new Staff = mvtVIalto \with { \staffSize #-3 } <<
	    \set Staff.instrumentName = \markup{{\fontsize #3 Alto}}
	    \set Staff.shortInstrumentName = \markup{{\fontsize #3 Alt.}}

	    \new Voice = mvtVIalto {
		\clefAlto \mvtVIalto
	    }
	    \new Lyrics \with {
		alignBelowContext = "mvtVIalto"
		\override LyricText.font-size = #-1
	    } {
		\lyricsto mvtVIalto { \mvtVIlyrics }
	    }
	>>
	\new Staff <<
	    \set Staff.instrumentName = \markup{{Continuo}}
	    \set Staff.shortInstrumentName = "Cont."

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
