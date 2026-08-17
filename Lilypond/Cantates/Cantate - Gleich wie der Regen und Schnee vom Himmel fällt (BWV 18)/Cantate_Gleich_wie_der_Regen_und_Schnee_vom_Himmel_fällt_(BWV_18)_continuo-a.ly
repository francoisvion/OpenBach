\version "2.27.1"

transpLeipzig = d
useRecorders = yes

\include "Cantate_Gleich_wie_der_Regen_und_Schnee_vom_Himmel_fällt_(BWV_18)_1._Sinfonie.ly"

#(set-global-staff-size 20)

\include "Cantate_Gleich_wie_der_Regen_und_Schnee_vom_Himmel_fällt_(BWV_18)_title.ly"

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
 }
    }
  }

\layout {
  \context {
    \Score
    \compressEmptyMeasures
  }
}

\header {
    instrument = "Continuo"
}

\score {
    \transpose c \transpLeipzig \new Staff <<
	\mvtIbasso
    >>

    \header {
	piece = \markup{{1. Sinfonie en la mineur (version originale de Weimar)}}
    }

    \layout {
    }
}