#(ly:set-option 'relative-includes #t)

#(set-global-staff-size 18)

\paper {
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \bold \fromproperty #'header:title
      }
      \fill-line {
        \large \bold \fromproperty #'header:subtitle
      }
      \vspace #1
      \fill-line {
        \large \bold \fromproperty #'header:instrument
      }
      \vspace #0.5
      \fill-line {
        \null
        \fromproperty #'header:composer
      }      }
    }
  }
  
\header { 
  instrument = "Voix" 
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_1._Chœur_Jean_Sébastien_Bach.ily"

keybMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { 
    \fluteName
    \line { \oboeName }
    \line { \violinsName }
    \line { \violaName }
    \line { \continuoName } 
  }
}

\bookpart {

  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \satbchoir \sopranoMusic \sopranoLyrics \altoMusic \altoLyrics
                 \tenorMusic \tenorLyrics \bassMusic \bassLyrics
      \keybStaff \keybMarkup
                 \markup { } << \trebKeybA \globalMarksBreaks \\ \trebKeybB >>
                 { } \markup { } << \bassKeybA \marksBottom \\ \bassKeybB >>
    >>
    \layout {
      incipit-width = 1.0\cm
      indent = 2.2\cm
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_2._Récitatif_Jean_Sébastien_Bach.ily"

\bookpart {
 
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \tenorStaff << \tenorMusic \globalMarksBreaks >> \tenorLyrics
      \continuoStaff \continuoMusic \contFigBass
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
      \context {
        \Staff
        \override StaffSymbol.staff-space = #(magstep 1)
        fontSize = #1
      }
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_3._Air_Jean_Sébastien_Bach.ily"

\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \tenorStaff << \tenorMusic \globalMarksBreaks >> \tenorLyrics
      \keybStaff \markup { }
                 \oboeMarkup \oboeMusic \keybDynamics
                 \continuoMarkup << \continuoMusic \marksTopBottom >>
    >>
    \layout {
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_4._Récitatif_Jean_Sébastien_Bach.ily"

\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \altoStaff << \altoMusic \globalMarksBreaks >> \altoLyrics
      \continuoStaff \continuoMusic \contFigBass
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
      \context {
        \Staff
        \override StaffSymbol.staff-space = #(magstep 1)
        fontSize = #1
      }
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_5._Air_Jean_Sébastien_Bach.ily"

keybMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { 
    \fluteName
    \line { \violinsName }
    \line { \violaName }
    \line { \continuoName } 
  }
}

\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \altoStaff << \altoMusic \globalMarksBreaks >> \altoLyrics
      \keybStaff \keybMarkup
                 \markup { } << \global \trebKeybA \\ \trebKeybB >>
                 \keybDynamics 
                 \markup { } << \global \bassKeybA \\ \bassKeybB >>
    >>
    \layout {
      \context { \Staff \RemoveEmptyStaves }
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_6._Récitatif_Jean_Sébastien_Bach.ily"

\bookpart {
  \paper {
    system-count = #5
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \sopranoStaff << \sopranoMusic \globalMarksBreaks >> \sopranoLyrics
      \continuoStaff \continuoMusic \contFigBass
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
      \context {
        \Staff
        \override StaffSymbol.staff-space = #(magstep 1)
        fontSize = #1
      }
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_7._Air_Jean_Sébastien_Bach.ily"

keybMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { 
    \fluteName
    \line { \violinName } 
  }
}

\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \sopranoStaff << \sopranoMusic \globalMarksBreaks >> \sopranoLyrics
      \keybStaff \keybMarkup
                 \markup { } << \violinMusic \trebleMarks >>
                 \keybDynamics
                 \markup { } << \continuoMusic \globalMarksBreaks \bassMarks >>
    >>
    \layout {
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
      \context {
        \Voice
        \override Script.padding = #0.5
      }
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_8._Chœur_Jean_Sébastien_Bach.ily"

keybMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { 
    \fluteName
    \line { \oboeName }
    \line { \violinsName }
    \line { \violaName }
    \line { \continuoName } 
  }
}

\bookpart {
  \paper {
    min-systems-per-page = #3
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \satbchoir \sopranoMusic \sopranoLyrics \altoMusic \altoLyrics
                 \tenorMusic \tenorLyrics \bassMusic \bassLyrics
      \keybStaff \keybMarkup
                 \markup { } << \global \trebKeybA \\ \trebKeybB >>
                 \keybDynamics
                 \markup { } << \global \bassKeybA \\ \bassKeybB >>
    >>
    \layout {
      incipit-width = 1.0\cm
      indent = 2.2\cm
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
    }
  }
}