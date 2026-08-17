#(ly:set-option 'relative-includes #t)

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
  
#(set-global-staff-size 18)

\header {
  instrument = "Violon solo" 
  scoretype = \violinSoloName
}
scoreFile = "violinIScore.ily"

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_7._Air_Jean_Sébastien_Bach.ily"
\bookpart {
  \singleInstScore \layoutStaffSize \pieceName
                   << \violinMusic \violinMarks \globalMarksBreaks >>
}
