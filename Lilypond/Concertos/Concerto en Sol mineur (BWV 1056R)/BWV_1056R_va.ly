\version "2.18.0"
\language "nederlands"

\include "parenthesized_dynamics.ly"

first_pg_no = 1
instrument = "Viola"

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

\include "scoreAViola.ly"

scoreAViolaPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} { \clef alto \scoreAViola }

\score {
  \scoreAViolaPart
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

\include "scoreBViola.ly"

scoreBViolaPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} { \clef alto \scoreBViola }

\score {
  \scoreBViolaPart
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

\include "scoreCViola.ly"

scoreCViolaPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} { \clef alto \scoreCViola }

\score {
  \scoreCViolaPart
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

\include "scoreDViola.ly"

scoreDViolaPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} { \clef alto \scoreDViola }

\score {
  \scoreDViolaPart
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
