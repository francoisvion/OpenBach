\version "2.18.0"
\language "nederlands"

\include "parenthesized_dynamics.ly"

first_pg_no = 1
instrument = "Continuo"

\include "BWV_1056R(vn)_header.ly"
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

\include "scoreABc.ly"

scoreABcPart = \new Staff \with {
    instrumentName = ""
    midiInstrument = "cello"
  } \removeWithTag #' hpd { \clef bass \scoreABc }

\score {
  \scoreABcPart
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

\include "scoreBBc.ly"

scoreBBcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "cello"
} { \clef bass \scoreBBc }

\score {
  \scoreBBcPart
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

\include "scoreCBc.ly"

scoreCBcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "cello"
} \keepWithTag #'vn_conc { \clef bass \scoreCBc }

\score {
  \scoreCBcPart
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

\include "scoreDBc.ly"

scoreDBcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "cello"
} { \clef bass \scoreDBc }

\score {
  \scoreDBcPart
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
