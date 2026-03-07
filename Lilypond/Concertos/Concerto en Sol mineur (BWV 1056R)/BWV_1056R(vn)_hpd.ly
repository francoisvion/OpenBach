\version "2.18.0"
\language "nederlands"

\include "parenthesized_dynamics.ly"

first_pg_no = 1
instrument = "Harpsichord"

\include "BWV_1056R(vn)_header_w_hpd.ly"
\include "BWV_1056R_paper_parts.ly"

scoreAGlobal = {
  \key g \minor
  \numericTimeSignature
  \time 2/4
  %   \tempo "1."
  \override TupletBracket.bracket-visibility = ##f
  \tupletSpan 8
}

\include "scoreARight.ly"
\include "scoreABc.ly"
\include "scoreALeftOssia.ly"

scoreAHarpsichordPart = \new PianoStaff \with {
  instrumentName = ""
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } \keepWithTag #'vn_conc \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } { \clef bass \scoreABc }
>>

scoreALeftOssiaPart = \new Staff \with{
  fontSize = #-2
  \override StaffSymbol.staff-space = #(magstep -2)
  \override StaffSymbol.thickness = #(magstep -2)
  firstClef = ##f
} { \clef bass \scoreALeftOssia }

\score {
  <<
    \scoreAHarpsichordPart
    \scoreALeftOssiaPart
  >>
  \layout {
    \context {
      \Staff\RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
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

\include "scoreBRight.ly"
\include "scoreBBc.ly"

scoreBHarpsichordPart = \new PianoStaff \with {
  instrumentName = ""
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } \scoreBRight
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } { \clef bass \scoreBBc }
>>

\score {
  \scoreBHarpsichordPart
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

\include "scoreCRight.ly"
\include "scoreCBc.ly"

scoreCHarpsichordPart = \new PianoStaff \with {
  instrumentName = ""
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } \keepWithTag #'vn_conc \scoreCRight
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } \keepWithTag #'vn_conc { \clef bass \scoreCBc }
>>

\score {
  \scoreCHarpsichordPart
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

\include "scoreDRight.ly"
\include "scoreDBc.ly"

scoreDHarpsichordPart = \new PianoStaff \with {
  instrumentName = ""
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } \scoreDRight
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } { \clef bass \scoreDBc }
>>

\score {
  \scoreDHarpsichordPart
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

\paper {
  #(set-paper-size "a4")
  %   #(layout-set-staff-size 16)
  first-page-number = 2
  top-margin = 10
  bottom-margin = 10
  left-margin = 15
  right-margin = 10
}