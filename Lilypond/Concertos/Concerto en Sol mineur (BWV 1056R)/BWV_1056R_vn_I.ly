\version "2.18.0"
\language "nederlands"

\include "parenthesized_dynamics.ly"

first_pg_no = 1
instrument = "Violino I"

\include "BWV_1056R_header.ly"
\include "BWV_1056R_paper_parts.ly"

scoreAGlobal = {
  \key g \minor
  \numericTimeSignature
  \time 2/4
%   \tempo "1."
  \override TupletBracket.bracket-visibility = ##f
  \tupletSpan 8
  \set Score.skipBars = ##t
}

\include "scoreAViolinI.ly"

scoreAViolinIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreAViolinI

\score {
  \scoreAViolinIPart
  \layout {}
  \header {
    piece = \markup { \hspace #9 \fontsize #2 \bold "1." }
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

\include "scoreBViolinI.ly"

scoreBViolinIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreBViolinI

\score {
  \scoreBViolinIPart
  \layout { }
  \header {
    piece = \markup { \hspace #9 \fontsize #2 \bold "2." }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 40/4)
    }
  }
}

scoreCGlobal = {
  \key g \minor
  \numericTimeSignature
  \time 3/8
  \tempo "Presto"
  \set Score.skipBars = ##t
}

\include "scoreCViolinI.ly"

scoreCViolinIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreCViolinI

\score {
  \scoreCViolinIPart
  \layout { }
  \header {
    piece = \markup { \hspace #9 \fontsize #2 \bold "3." }
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

\include "scoreDViolinI.ly"

scoreDViolinIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreDViolinI

\score {
  \scoreDViolinIPart
  \header {
    piece = \markup { \fontsize #2 \bold "Appendix" }
  }
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 40/4)
    }
  }
}
