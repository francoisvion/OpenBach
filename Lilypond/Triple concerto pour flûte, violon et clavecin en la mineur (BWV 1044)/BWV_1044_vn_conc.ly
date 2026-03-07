\version "2.22.0"
\language "nederlands"
\include "parenthesized_dynamics.ily"
\include "bracketed_dynamics.ily"
\include "decorateSlur.ily"
\include "shiftTempoLeft.ily"
\include "bracketify.ily"

instrument = "Violino concertato"

\include "BWV_1044_header.ily"

first_pg_no = ""

\include "BWV_1044+894_paper_parts.ily"

\include "footnotes.ily"
\include "scoreAGlobal.ily"
\include "scoreAViolinConc.ily"

scoreAViolinConcPart = \new Staff \with {
  midiInstrument = "violin"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 2/1)
}
\new Voice {\scoreAGlobal \keepWithTag #'parts \scoreAViolinConc}

\score {
  \scoreAViolinConcPart
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

scoreBGlobal = {
  \key c \major
  \numericTimeSignature
  \time 6/8
  \tempo "Adagio ma non tanto e dolce"
  \set Score.markFormatter = #format-mark-box-alphabet
}

\include "scoreBViolinConc.ily"

scoreBViolinConcPart = \new Staff \with {
  midiInstrument = "violin"
}
\new Voice {\scoreBGlobal \scoreBViolinConc}

\score {
  \scoreBViolinConcPart
  \header {
    piece = \pieceB
  }
  \layout {
    indent = 0 \cm
  }
  \midi {
    \tempo  8=76
  }
}

\pageBreak

\include "scoreCGlobal.ily"

\include "scoreCViolinConc.ily"
\include "scoreCRhOneHpdI.ily"

\addQuote "scoreCRhOneHpdI" {\scoreCGlobal \scoreCRhOneHpdI}

scoreCViolinConcPart = \new Staff \with {
  midiInstrument = "violin"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 3/1)
}
\new Voice {\scoreCGlobal \keepWithTag #'(parts shiftTempoLeft) \scoreCViolinConc}

\score {
  \scoreCViolinConcPart
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