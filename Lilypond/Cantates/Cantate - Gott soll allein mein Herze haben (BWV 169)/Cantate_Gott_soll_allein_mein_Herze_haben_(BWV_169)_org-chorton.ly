\version "2.27.1"

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_1._Sinfonie.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_3._Air_avec_orgue_obligé.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_5._Air.ly"
\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_7._Choral.ly"

#(set-global-staff-size 18)

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
    instrument = "Orgue au ton de chœur"
}

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_title.ly"

TRANSPOSE = d

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_org-common.ly"
