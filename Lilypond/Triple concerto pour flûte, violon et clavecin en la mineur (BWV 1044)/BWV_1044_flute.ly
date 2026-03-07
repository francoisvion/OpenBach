\version "2.22.0"
\language "nederlands"
\include "parenthesized_dynamics.ily"
\include "bracketed_dynamics.ily"
\include "decorateSlur.ily"
\include "shiftTempoLeft.ily"
\include "bracketify.ily"

instrument = "Flauto traverso"

\include "BWV_1044_header.ily"

first_pg_no = 1

\include "BWV_1044+894_paper_parts.ily"

\include "footnotes.ily"
\include "scoreAGlobal.ily"

\include "scoreAFlute.ily"
\include "scoreAViolinI.ily"

scoreAFlutePart = \new Staff \with {
  midiInstrument = "flute"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 2/1)
}
\new Voice {\scoreAGlobal \keepWithTag #'parts \scoreAFlute}

\addQuote "scoreAViolinI" {\scoreAGlobal \keepWithTag #'parts \scoreAViolinI}

\score {
  \scoreAFlutePart
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

\include "scoreBFlute.ily"

scoreBFlutePart = \new Staff \with {
  midiInstrument = "flute"
}
\new Voice {\scoreBGlobal \scoreBFlute}

\score {
  \scoreBFlutePart
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

\include "scoreCFlute.ily"
\include "scoreCRhOneHpdI.ily"

\addQuote "scoreCRhOneHpdI" {\scoreCGlobal \scoreCRhOneHpdI}

scoreCFlutePart = \new Staff \with {
  midiInstrument = "flute"
  \consists "Page_turn_engraver"
  minimumPageTurnLength = #(ly:make-moment 3/1)
}
\new Voice {\scoreCGlobal \keepWithTag #'(parts shiftTempoLeft)\scoreCFlute}

\score {
  \scoreCFlutePart
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