\version "2.27.1"

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_1._Sinfonie.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_5._Air.ly"
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
      }      }
    }
  }
  
\header {
    instrument = "Alto"
}


\score {
    \new Staff <<
	\keepWithTag CANTATA \mvtIvla
    >>

    \header {
	piece = \mvtIpiece
    }
}

\score {
    \new Staff <<
	\mvtVvla
    >>

    \header {
	piece = \mvtVpiece
        breakbefore = ##t
    }
}

\score {
    \new Staff <<
	\clef alto \mvtVIIalto
    >>

    \header {
	piece = \mvtVIIpiece
    }
}
