\version "2.24.0"
\include "Air_tiré_de_la_suite_orchestrale_n°_3_notes.ly"
\paper {
  ragged-last-bottom = ##f
}
\book {
   \score {
      \context Staff {
         \set Staff.midiInstrument = "viola"
         \set Staff.instrumentName = "Alto"
         \clef "alto"
         <<
            {\viola}
            {\global}
         >>
      }
      \layout{}
  \midi {
    \tempo 4 = 30
    }
  }
}
