\version "2.24.0"
\include "Air_tiré_de_la_suite_orchestrale_n°_3_notes.ly"
#(set-global-staff-size 16)
\paper {
  ragged-last-bottom = ##f
}
\score {
  \new StaffGroup <<
    \new Staff {
      \set Staff.midiInstrument = "violin"
      \set Staff.instrumentName = "Violon I"
      \clef "violin"
      << \global \violinone >>
    }
    \new Staff {
      \set Staff.midiInstrument = "violin"
      \set Staff.instrumentName = "Violon II"
      \clef "violin"
      << \global \violintwo >>
    }
    \new Staff {
      \set Staff.midiInstrument = "viola"
      \set Staff.instrumentName = "Alto"
      \clef "alto"
      << \global \viola >>
    }
    \new Staff {
      \set Staff.midiInstrument = "cello"
      \set Staff.instrumentName = "Continuo"
      \clef "bass"
      << \global \continuo >>
    }
  >>
  \layout{}
  \midi {
    \tempo 4 = 30
  }
}
