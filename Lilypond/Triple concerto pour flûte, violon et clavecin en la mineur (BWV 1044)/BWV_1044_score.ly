\version "2.22.0"
\language "nederlands"
\include "parenthesized_dynamics.ily"
\include "bracketed_dynamics.ily"
\include "decorateSlur.ily"
\include "shiftTempoLeft.ily"
\include "bracketify.ily"

instrument = ""

\include "BWV_1044_header.ily"

first_pg_no = 1

\include "BWV_1044+894_paper_scores.ily"

\include "footnotes.ily"
\include "scoreAGlobal.ily"

\include "scoreAFlute.ily"
\include "scoreAViolinConc.ily"
\include "scoreAViolinI.ily"
\include "scoreAViolinII.ily"
\include "scoreAViola.ily"
\include "scoreACello.ily"

\include "scoreARhOneHpdI.ily"
\include "scoreARhTwoHpdI.ily"
\include "scoreALhOneHpdI.ily"
\include "scoreALhTwoHpdI.ily"
\include "scoreABcFigures.ily"

% \addQuote "scoreAViolinI" {\scoreAGlobal \scoreAViolinI}

scoreAFlutePart = \new Staff \with {
  instrumentName = "Flauto traverso"
  midiInstrument = "flute"
}
\new Voice {\scoreAGlobal \keepWithTag #'score \scoreAFlute}

scoreAViolinConcPart = \new Staff \with {
  instrumentName = "Violino concertato"
  midiInstrument = "violin"
}
\new Voice {\scoreAGlobal \keepWithTag #'score \scoreAViolinConc}

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violino I"
  midiInstrument = "violin"
}
\new Voice {\scoreAGlobal \keepWithTag #'score \scoreAViolinI}

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violino II"
  midiInstrument = "violin"
}
\new Voice {\scoreAGlobal \keepWithTag #'score \scoreAViolinII}

scoreAViolaPart = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
}
\new Voice {\scoreAGlobal \clef alto \keepWithTag #'score \scoreAViola }

scoreACelloPart = \new Staff \with {
  instrumentName = \markup { \center-column {"Violoncello" "e Violone"} }
  midiInstrument = "cello"
}
\new Voice {\scoreAGlobal \clef bass \keepWithTag #'score \scoreACello}

scoreAHarpsichordIPart = \new PianoStaff \with {
  instrumentName = \markup {\center-column {Cembalo concertato}}
}
<<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  }
  <<
    \new Voice = "rightOne" {\scoreAGlobal \keepWithTag #'score \scoreARhOneHpdI}
    \new Voice = "rightTwo" {\scoreAGlobal \scoreARhTwoHpdI}
  >>
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  }
  <<
    \clef bass
    \new Voice = "leftOne" {\scoreAGlobal \keepWithTag #'score \scoreALhOneHpdI}
    \new Voice = "leftTwo" {\scoreAGlobal \keepWithTag #'score \scoreALhTwoHpdI}
  >>
  \new FiguredBass {\scoreAGlobal \scoreABcFigures}
>>

\score {
  <<
    \scoreAFlutePart
    \scoreAViolinConcPart
    \new StaffGroup <<
      \scoreAViolinIPart
      \scoreAViolinIIPart
      \scoreAViolaPart
      \scoreACelloPart
    >>
    \scoreAHarpsichordIPart
  >>
  \header {
    piece = \pieceA
  }
  \layout {
    indent = 3 \cm
  }
  \midi {
    \tempo 4=70
  }
}

\pageBreak

\include "scoreBGlobal.ily"

\include "scoreBFlute.ily"
\include "scoreBViolinConc.ily"

\include "scoreBRhHpd.ily"
\include "scoreBLhHpd.ily"

scoreBFlutePart = \new Staff \with {
  instrumentName = "Flauto traverso"
  midiInstrument = "flute"
}
\new Voice {\scoreBGlobal \scoreBFlute}

scoreBViolinConcPart = \new Staff \with {
  instrumentName = "Violino concertato"
  midiInstrument = "violin"
}
\new Voice {\scoreBGlobal \scoreBViolinConc}

scoreBHarpsichordPart = \new PianoStaff \with {
  instrumentName = \markup {\center-column {Cembalo concertato}}
}
<<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } {\scoreBGlobal \scoreBRhHpd}
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } {\scoreBGlobal \clef bass \scoreBLhHpd }
>>

\score {
  <<
    \scoreBFlutePart
    \scoreBViolinConcPart
    \scoreBHarpsichordPart
  >>
  \header {
    piece = \pieceB
  }
  \layout {
    indent = 3 \cm
  }
  \midi {
    \tempo  8=76
  }
}

\pageBreak

\include "scoreCGlobal.ily"

\include "scoreCFlute.ily"
\include "scoreCViolinConc.ily"

\include "scoreCViolinI.ily"
\include "scoreCViola.ily"
\include "scoreCViolinII.ily"
\include "scoreCViola.ily"
\include "scoreCCello.ily"

\include "scoreCRhOneHpdI.ily"
\include "scoreCRhTwoHpdI.ily"
\include "scoreCLhOneHpdI.ily"
\include "scoreCLhTwoHpdI.ily"
\include "scoreCBcFigures.ily"

% \addQuote "scoreCRhOneHpdI" {\scoreCGlobal \scoreCRhOneHpdI}
% \addQuote "scoreCViola" {\scoreCGlobal \scoreCViola}

scoreCFlutePart = \new Staff \with {
  instrumentName = "Flauto traverso"
  midiInstrument = "flute"
}
\new Voice {\scoreCGlobal \removeWithTag #'(shiftTempoLeft) \keepWithTag #'score \scoreCFlute}

scoreCViolinConcPart = \new Staff \with {
  instrumentName = "Violino concertato"
  midiInstrument = "violin"
}
\new Voice {\scoreCGlobal \removeWithTag #'(shiftTempoLeft) \keepWithTag #'score \scoreCViolinConc}

scoreCViolinIPart = \new Staff \with {
  instrumentName = "Violino I"
  midiInstrument = "violin"
}
\new Voice {\scoreCGlobal \removeWithTag #'(shiftTempoLeft) \keepWithTag #'score \scoreCViolinI}

scoreCViolinIIPart = \new Staff \with {
  instrumentName = "Violino II"
  midiInstrument = "violin"
}
\new Voice {\scoreCGlobal \removeWithTag #'(shiftTempoLeft) \keepWithTag #'score \scoreCViolinII}

scoreCViolaPart = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "violin"
}
\new Voice {\scoreCGlobal \clef alto \removeWithTag #'(shiftTempoLeft) \keepWithTag #'score \scoreCViola }

scoreCCelloPart = \new Staff \with {
  \consists "Merge_rests_engraver"
  instrumentName = \markup { \center-column {"Violoncello" "e Violone"} }
  midiInstrument = "cello"
}
\new Voice {\scoreCGlobal \clef bass \removeWithTag #'(shiftTempoLeft) \keepWithTag #'score \scoreCCello }

scoreCHarpsichordIPart = \new PianoStaff \with {
  instrumentName = \markup {\center-column {Cembalo concertato}}
}
<<
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  }
  <<
    \new Voice = "rightOne" {\scoreCGlobal \scoreCRhOneHpdI}
    \new Voice = "rightTwo" {\scoreCGlobal \scoreCRhTwoHpdI}
  >>
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  }
  <<
    \clef bass
    \new Voice = "leftOne" {\scoreCGlobal \scoreCLhOneHpdI}
    \new Voice = "leftTwo" {\scoreCGlobal \scoreCLhTwoHpdI}
  >>
  \new FiguredBass {\scoreCGlobal \scoreCBcFigures}
>>

\score {
  <<
    \scoreCFlutePart
    \scoreCViolinConcPart
    \new StaffGroup <<
      \scoreCViolinIPart
      \scoreCViolinIIPart
      \scoreCViolaPart
      \scoreCCelloPart
    >>
    \scoreCHarpsichordIPart
  >>
  \header {
    piece = \pieceC
  }
  \layout {
    indent = 3 \cm
  }
  \midi {
    \tempo 4=152
  }
}