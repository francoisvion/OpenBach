\version "2.18.0"
\language "nederlands"

\include "parenthesized_dynamics.ly"

first_pg_no = 1
instrument = "Violino II"

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

\include "scoreAViolinII.ly"

scoreAViolinIIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreAViolinII

\score {
  \scoreAViolinIIPart
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

\include "scoreBViolinII.ly"

scoreBViolinIIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreBViolinII

\score {
  \scoreBViolinIIPart
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

\include "scoreCViolinII.ly"

scoreCViolinIIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreCViolinII

\score {
  \scoreCViolinIIPart
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

\include "scoreDViolinII.ly"

scoreDViolinIIPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreDViolinII

\score {
  \scoreDViolinIIPart
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
