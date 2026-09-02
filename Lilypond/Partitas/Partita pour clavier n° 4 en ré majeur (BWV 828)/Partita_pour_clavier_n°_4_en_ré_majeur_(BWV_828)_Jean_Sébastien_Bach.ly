\version "2.27.1"

\language "deutsch"

\include "Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_1. Ouverture_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_2. Allemande_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_3. Courante_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_4. Aria_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_5. Sarabande_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_6. Menuet_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_7. Gigue_Jean_Sébastien_Bach.ly"

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

#(set-global-staff-size 18.5)

\header {
  title = "Partita IV"
  opus = "BWV 828"
  composer = "Jean-Sébastien Bach (1685-1750)"
  copyright = ""
  tagline = ##f
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      \with {
        \consists "Span_arpeggio_engraver"
      } {
        \set Staff.connectArpeggios = ##t
        \rightA
      }
      \new Staff = left {
        \leftA
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 36 2)
    }
  }
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      \with { \consists "Span_arpeggio_engraver" }
      {
        \set Staff.connectArpeggios = ##t
        \rightB
      }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      {
        \leftB
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 64 4)
    }
  }
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightC }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      { \leftC }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
    }
  }
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightD }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      {
        \leftD
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
    }
  }
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightE }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      {
        \leftE
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 50 4)
    }
  }
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightF }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      {
        \leftF
        \pageBreak
      }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "harpsichord"
    <<
      \new Staff = right
      { \rightG }
      \new Staff = left
      \with { \consists "Mark_engraver" }
      { \leftG }
    >>
  }

  \layout{
    indent = 0.8\cm
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
    }
  }
}