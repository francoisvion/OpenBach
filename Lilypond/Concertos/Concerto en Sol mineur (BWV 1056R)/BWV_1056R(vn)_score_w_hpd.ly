\version "2.18.2"
\language "nederlands"

\include "parenthesized_dynamics.ly"

first_pg_no = 1
instrument = ""

\include "BWV_1056R(vn)_header_w_hpd.ly"
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
\include "scoreALeftOssia.ly"

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

scoreAHarpsichordPart = \new PianoStaff \with {
  instrumentName = "Continuo"
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
    \tiny
  } \keepWithTag #'vn_conc \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "cello"
  } { \clef bass \scoreABc }
>>

scoreALeftOssiaPart = \new Staff \with{
  fontSize = #-2
  \override StaffSymbol.staff-space = #(magstep -2)
  \override StaffSymbol.thickness = #(magstep -2)
  firstClef = ##f
  \RemoveEmptyStaves
  \override VerticalAxisGroup.remove-first = ##t
} { \clef bass \scoreALeftOssia }

\score {
  <<
    \scoreAViolinConcPart
    \new StaffGroup <<
      \scoreAViolinIPart
      \scoreAViolinIIPart
      \scoreAViolaPart
      \scoreAHarpsichordPart
      \scoreALeftOssiaPart
    >>
  >>
  \layout {
    indent = 3 \cm
  }
  \header {
    piece = \pieceA
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

scoreBHarpsichordPart = \new PianoStaff \with {
  instrumentName = ""
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
    \tiny
  } \scoreBRight
  \new Staff = "left" \with {
    midiInstrument = "cello"
  } { \clef bass \scoreBBc }
>>

\score {
  <<
    \scoreBViolinConcPart
    \new StaffGroup <<
      \scoreBViolinIPart
      \scoreBViolinIIPart
      \scoreBViolaPart
      \scoreBHarpsichordPart
    >>
  >>
  \layout {
    indent = 0 \cm
  }
  \header {
    piece = \pieceB
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
\include "scoreCViolinConcOssia.ly"
\include "scoreCViolinI.ly"
\include "scoreCViolinII.ly"
\include "scoreCViola.ly"
\include "scoreCRight.ly"
\include "scoreCBc.ly"

scoreCViolinConcPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \keepWithTag #'vn_conc \scoreCViolinConc

scoreCViolinConcOssiaPart = \new Staff \with{
  fontSize = #-2
  \override StaffSymbol.staff-space = #(magstep -2)
  \override StaffSymbol.thickness = #(magstep -2)
  firstClef = ##f
  \RemoveEmptyStaves
  \override VerticalAxisGroup.remove-first = ##t
} \keepWithTag #'vn_conc \scoreCViolinConcOssia

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

scoreCHarpsichordPart = \new PianoStaff \with {
  instrumentName = ""
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
    \tiny
  } \keepWithTag #'vn_conc \scoreCRight
  \new Staff = "left" \with {
    midiInstrument = "cello"
  } \keepWithTag #'vn_conc { \clef bass \scoreCBc }
>>

\score {
  <<
    \scoreCViolinConcPart
    \scoreCViolinConcOssiaPart
    \new StaffGroup <<
      \scoreCViolinIPart
      \scoreCViolinIIPart
      \scoreCViolaPart
      \scoreCHarpsichordPart
    >>
  >>
  \layout {
    indent = 0 \cm
  }
  \header {
    piece = \pieceC
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

scoreDHarpsichordPart = \new PianoStaff \with {
  instrumentName = ""
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
    \tiny
  } \scoreDRight
  \new Staff = "left" \with {
    midiInstrument = "cello"
  } { \clef bass \scoreDBc }
>>

\score {
  <<
    \scoreDViolinConcPart
    \new StaffGroup <<
      \scoreDViolinIPart
      \scoreDViolinIIPart
      \scoreDViolaPart
      \scoreDHarpsichordPart
    >>
  >>
  \header {
    piece = \pieceD
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