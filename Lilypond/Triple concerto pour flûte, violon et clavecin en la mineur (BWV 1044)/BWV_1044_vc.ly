\version "2.22.0"
\language "nederlands"
\include "parenthesized_dynamics.ily"
\include "bracketed_dynamics.ily"
\include "decorateSlur.ily"
\include "shiftTempoLeft.ily"

instrument = "Violoncello e Violone"

\include "BWV_1044_header.ily"

first_pg_no = 1

\include "BWV_1044+894_paper_parts.ily"

\include "footnotes.ily"
\include "scoreAGlobal.ily"

\include "scoreACello.ily"

scoreACelloPart = \new Staff \with {
  midiInstrument = "cello"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 2/1)
}
\new Voice {\scoreAGlobal \clef bass \keepWithTag #'parts \scoreACello}

\score {
  \scoreACelloPart
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

\include "scoreCCello.ily"
\include "scoreCRhOneHpdI.ily"

\addQuote "scoreCRhOneHpdI" {\scoreCGlobal \scoreCRhOneHpdI}

scoreCCelloPart = \new Staff \with {
  midiInstrument = "cello"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 3/1)
}
\new Voice {\scoreCGlobal \clef bass \keepWithTag #'(parts shiftTempoLeft) \scoreCCello}

\score {
  \scoreCCelloPart
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