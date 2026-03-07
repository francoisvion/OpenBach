\version "2.22.0"
\language "nederlands"
\include "parenthesized_dynamics.ily"
\include "bracketed_dynamics.ily"
\include "decorateSlur.ily"
\include "shiftTempoLeft.ily"
\include "bracketify.ily"

instrument = "Viola"

\include "BWV_1044_header.ily"

first_pg_no = 1

\include "BWV_1044+894_paper_parts.ily"

\include "footnotes.ily"
\include "scoreAGlobal.ily"

\include "scoreAViola.ily"

\include "scoreAViolinI.ily"
\addQuote "scoreAViolinI" {\scoreAGlobal \scoreAViolinI}

scoreAViolaPart = \new Staff \with {
  midiInstrument = "viola"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 2/1)
}
\new Voice {\scoreAGlobal \clef alto \keepWithTag #'parts \scoreAViola}

\score {
  \scoreAViolaPart
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

\include "scoreCViola.ily"
\include "scoreCRhOneHpdI.ily"

\addQuote "scoreCRhOneHpdI" {\scoreCGlobal \scoreCRhOneHpdI}

scoreCViolaPart = \new Staff \with {
  midiInstrument = "viola"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 3/1)
}
\new Voice {\scoreCGlobal \clef alto \keepWithTag #'(parts shiftTempoLeft) \scoreCViola}

\score {
  \scoreCViolaPart
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