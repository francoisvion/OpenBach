\version "2.22.0"
\language "nederlands"
\include "parenthesized_dynamics.ily"
\include "bracketed_dynamics.ily"
\include "decorateSlur.ily"
\include "shiftTempoLeft.ily"
\include "bracketify.ily"

instrument = "Violino II"

\include "BWV_1044_header.ily"

first_pg_no = 1

\include "BWV_1044+894_paper_parts.ily"

\include "footnotes.ily"
\include "scoreAGlobal.ily"

\include "scoreAViolinII.ily"
\include "scoreAViolinI.ily"

\addQuote "scoreAViolinI" {\scoreAGlobal \scoreAViolinI}

scoreAViolinIIPart = \new Staff \with {
  midiInstrument = "violin"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 2/1)
}
\new Voice {\scoreAGlobal \keepWithTag #'parts \scoreAViolinII}

\score {
  \scoreAViolinIIPart
  \header {
    piece = \pieceA
  }
  \layout {
    indent = 0 \cm
  }
  \midi {
    \tempo 4=70
  }
}

\pageBreak

\markup {
  \column {
    " "
    \line {\fontsize #2 \bold "2." \fontsize #0 \bold "Adagio ma non tanto e dolce (tacet)"}
    " "
  }
}

\include "scoreCGlobal.ily"

\include "scoreCViolinII.ily"
\include "scoreCViola.ily"
\include "scoreCRhOneHpdI.ily"

\addQuote "scoreCViola" {\scoreCGlobal \scoreCViola}
\addQuote "scoreCRhOneHpdI" {\scoreCGlobal \scoreCRhOneHpdI}

scoreCViolinIIPart = \new Staff \with {
  midiInstrument = "violin"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 3/1)
}
\new Voice {\scoreCGlobal \keepWithTag #'(parts shiftTempoLeft) \scoreCViolinII}

\score {
  \scoreCViolinIIPart
  \header {
    piece = \pieceC
  }
  \layout {
    indent = 0 \cm
  }
  \midi {
    \tempo 4=152
  }
}