\version "2.18.0"
\language "nederlands"

\include "parenthesized_dynamics.ly"

first_pg_no = 1
instrument = "Oboe concertino"

\include "BWV_1056R(ob)_header.ly"
\include "BWV_1056R_paper_parts.ly"

scoreAGlobal = {
  \key g \minor
  \numericTimeSignature
  \time 2/4
  %   \tempo "1."
  \override TupletBracket.bracket-visibility = ##f
  \tupletSpan 8
  \compressFullBarRests
}

\include "scoreAViolinConc.ly"

scoreAViolinConcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \keepWithTag #'ob_conc \scoreAViolinConc

\score {
  \scoreAViolinConcPart
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

\include "scoreBViolinConc.ly"

scoreBViolinConcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \scoreBViolinConc

\score {
  \scoreBViolinConcPart
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

\markup \null

scoreCGlobal = {
  \key g \minor
  \numericTimeSignature
  \time 3/8
  \tempo "Presto"
  \compressFullBarRests
}

\include "scoreCViolinConc.ly"

scoreCViolinConcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \keepWithTag #'ob_conc \scoreCViolinConc

\score {
  \scoreCViolinConcPart
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

\include "scoreDViolinConc.ly"

scoreDViolinConcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \keepWithTag #'ob_conc \scoreDViolinConc

\score {
  \scoreDViolinConcPart
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
