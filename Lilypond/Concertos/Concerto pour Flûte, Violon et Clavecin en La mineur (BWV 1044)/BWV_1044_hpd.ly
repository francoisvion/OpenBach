\version "2.22.0"
\language "nederlands"
\include "parenthesized_dynamics.ily"
\include "bracketed_dynamics.ily"
\include "decorateSlur.ily"
\include "bracketify.ily"

instrument = "Cembalo concertato"

\include "BWV_1044_header.ily"

% first_pg_no = ""

\include "BWV_1044+894_paper_parts.ily"

\include "scoreAGlobal.ily"
\include "footnotes.ily"

\include "scoreARhOneHpdI.ily"
\include "scoreARhTwoHpdI.ily"
\include "scoreALhOneHpdI.ily"
\include "scoreALhTwoHpdI.ily"
\include "scoreABcFigures.ily"

scoreAHarpsichordIPart = \new PianoStaff
<<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  }
  <<
    \new Voice = "rightOne" {\scoreAGlobal \keepWithTag #'parts \scoreARhOneHpdI}
    \new Voice = "rightTwo" {\scoreAGlobal \scoreARhTwoHpdI}
  >>
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  }
  <<
    \clef bass
    \new Voice = "leftOne" {\scoreAGlobal \keepWithTag #'parts \scoreALhOneHpdI}
    \new Voice = "leftTwo" {\scoreAGlobal \keepWithTag #'parts \scoreALhTwoHpdI}
  >>
  \new FiguredBass {\scoreAGlobal \scoreABcFigures}
>>

\score {
  \scoreAHarpsichordIPart
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

\include "scoreBRhHpd.ily"
\include "scoreBLhHpd.ily"

scoreBHarpsichordPart = \new PianoStaff
<<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } {\scoreBGlobal \scoreBRhHpd}
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } { \scoreBGlobal \clef bass \scoreBLhHpd }
>>

\score {
  \scoreBHarpsichordPart
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

\include "scoreCRhOneHpdI.ily"
\include "scoreCRhTwoHpdI.ily"
\include "scoreCLhOneHpdI.ily"
\include "scoreCLhTwoHpdI.ily"
\include "scoreCBcFigures.ily"

scoreCHarpsichordIPart = \new PianoStaff
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
  \scoreCHarpsichordIPart
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