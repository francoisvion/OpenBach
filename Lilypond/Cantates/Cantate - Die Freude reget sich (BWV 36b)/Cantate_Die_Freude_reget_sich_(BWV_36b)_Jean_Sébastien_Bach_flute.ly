\version "2.27.1"

#(ly:set-option 'relative-includes #t)

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
      }      }
    }
  }

\header {
  instrument = "Flûte"
}

\include "Cantate_Die_Freude_reget_sich_(BWV_36b)_Jean_Sébastien_Bach_header.ly"

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_1._Chœur_Jean_Sébastien_Bach.ily"
\bookpart {
  \header {
    piece = \pieceName
  }
  \score {
    \new Staff {
      \compressEmptyMeasures
      \fluteMusic
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_5._Air_Jean_Sébastien_Bach.ily"
\bookpart {
  \header {
    piece = \pieceName
  }
  \score {
    \new Staff {
      \compressEmptyMeasures
      \fluteMusic
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_6._Récitatif_Jean_Sébastien_Bach.ily"
\bookpart {
  \header {
    piece = \pieceName
  }
  \score {
    \new Staff {
      \compressEmptyMeasures
      \fluteMusic
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_7._Air_Jean_Sébastien_Bach.ily"
\bookpart {
  \header {
    piece = \pieceName
  }
  \score {
    \new Staff {
      \compressEmptyMeasures
      \fluteMusic
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_8._Chœur_Jean_Sébastien_Bach.ily"
\bookpart {
  \paper {
    system-count = #17
  }
  \header {
    piece = \pieceName
  }
  \score {
    \new Staff {
      \compressEmptyMeasures
      \fluteMusic
    }
  }
}