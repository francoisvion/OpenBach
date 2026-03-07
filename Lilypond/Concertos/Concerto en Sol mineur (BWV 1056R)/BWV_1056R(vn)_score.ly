\version "2.18.2"
\language "nederlands"

\include "parenthesized_dynamics.ly"

first_pg_no = 1
instrument = ""

\include "BWV_1056R(vn)_header.ly"
\include "BWV_1056R_paper_scores.ly"

scoreAGlobal = {
  \key g \minor
  \numericTimeSignature
  \time 2/4
  %   \tempo "1."
  \override TupletBracket.bracket-visibility = ##f
  \tupletSpan 8
}

\include "scoreAViolinConc.ly"
\include "scoreAViolinI.ly"
\include "scoreAViolinII.ly"
\include "scoreAViola.ly"
\include "scoreARight.ly"
\include "scoreABc.ly"

scoreAViolinConcPart = \new Staff \with {
  instrumentName = "Violino concertino"
  midiInstrument = "violin"
} \keepWithTag #'vn_conc \scoreAViolinConc

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violino I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violino II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAViolaPart = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
} { \clef alto \scoreAViola }

scoreABcPart = \new Staff \with {
  instrumentName = "Continuo"
  midiInstrument = "cello"
} \removeWithTag #' hpd { \clef bass \scoreABc }

\score {
  <<
    \scoreAViolinConcPart
    \new StaffGroup <<
      \scoreAViolinIPart
      \scoreAViolinIIPart
      \scoreAViolaPart
      \scoreABcPart
    >>
  >>
  \layout {
    indent = 3 \cm
  }
  \header {
    piece = \markup { \hspace #20 \fontsize #2 \bold "1." }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60/4)
    }
  }
}

\pageBreak

scoreBGlobal = {
  \key bes \major
  \time 4/4
  \tempo "Adagio"
}

\include "scoreBViolinConc.ly"
\include "scoreBViolinI.ly"
\include "scoreBViolinII.ly"
\include "scoreBViola.ly"
\include "scoreBRight.ly"
\include "scoreBBc.ly"

scoreBViolinConcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreBViolinConc

scoreBViolinIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreBViolinI

scoreBViolinIIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreBViolinII

scoreBViolaPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "viola"
} { \clef alto \scoreBViola }

scoreBBcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "cello"
} { \clef bass \scoreBBc }

\score {
  <<
    \scoreBViolinConcPart
    \new StaffGroup <<
      \scoreBViolinIPart
      \scoreBViolinIIPart
      \scoreBViolaPart
      \scoreBBcPart
    >>
  >>
  \layout {
    indent = 0 \cm
  }
  \header {
    piece = \markup { \fontsize #2 \bold "2." }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 40/4)
    }
  }
}

% \pageBreak

scoreCGlobal = {
  \key g \minor
  \numericTimeSignature
  \time 3/8
  \tempo "Presto"
}

\include "scoreCViolinConc.ly"
\include "scoreCViolinI.ly"
\include "scoreCViolinII.ly"
\include "scoreCViola.ly"
\include "scoreCRight.ly"
\include "scoreCBc.ly"

scoreCViolinConcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \keepWithTag #'vn_conc \scoreCViolinConc

scoreCViolinIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreCViolinI

scoreCViolinIIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreCViolinII

scoreCViolaPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "viola"
} { \clef alto \scoreCViola }

scoreCBcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "cello"
} \keepWithTag #'vn_conc { \clef bass \scoreCBc }

\score {
  <<
    \scoreCViolinConcPart
    \new StaffGroup <<
      \scoreCViolinIPart
      \scoreCViolinIIPart
      \scoreCViolaPart
      \scoreCBcPart
    >>
  >>
  \layout {
    indent = 0 \cm
  }
  \header {
    piece = \markup { \fontsize #2 \bold "3." }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 160/8)
    }
  }
}

\pageBreak

scoreDGlobal = {
  \key bes \major
  \time 4/4
  \tempo "Adagio"
  \override TupletBracket.bracket-visibility = ##f
  \tupletSpan 8
}

\include "scoreDViolinConc.ly"
\include "scoreDViolinI.ly"
\include "scoreDViolinII.ly"
\include "scoreDViola.ly"
\include "scoreDRight.ly"
\include "scoreDBc.ly"

scoreDViolinConcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \keepWithTag #'vn_conc \scoreDViolinConc

scoreDViolinIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreDViolinI

scoreDViolinIIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreDViolinII

scoreDViolaPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "viola"
} { \clef alto \scoreDViola }

scoreDBcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "cello"
} { \clef bass \scoreDBc }

\score {
  <<
    \scoreDViolinConcPart
    \new StaffGroup <<
      \scoreDViolinIPart
      \scoreDViolinIIPart
      \scoreDViolaPart
      \scoreDBcPart
    >>
  >>
  \header {
    piece = \markup { \fontsize #2 \bold "Appendix" }
  }
  \layout {
    indent = 0 \cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 40/4)
    }
  }
}