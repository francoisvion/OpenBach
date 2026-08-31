\version "2.27.1"

\include "An_Wasserflüssen_Babylon_(BWV_267)_Jean_Sébastien_Bach_notes.ily"
\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

\header {
 title = "An Wasserflüssen Babylon"
 poet = "Auteur : Wolfgang Dachstein (v.1487-1553)"
  opus = "BWV 267"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      \set Timing.beatStructure = #'(2 2)
      <<
        \new Voice = "soprano" \sopranoMusic
        \new Voice = "alto" \altoMusic
      >>
    }
    
    
    \new Staff \with { instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      \set Timing.beatStructure = #'(2 2)
      <<
        \new Voice = "tenor" \tenorMusic
        \new Voice = "bass" \bassMusic
      >>
    }
  >>
}

\markup {
         \fill-line {
    \column {
      \line {Texte alternatif n° 2}
      \vspace #1
      \line {Ein Lämmlein geht und trägt die Schuld}
      \line {Der Welt und ihrer Kinder;}
      \line {Es geht und büsset in Geduld}
      \line {Die Sünden aller Sünder.}
      \line {Es geht dahin, wird matt und krank,}
    }
    \null
    \column {
      \vspace #2
      \line {Ergibt sich auf die Würgebank,}
      \line {Verzeiht sich aller Freuden;}
      \line {Es nimmet an Schmach, Hohn und Spott,}
      \line {Angst, Wunden, Striemen, Kreuz und Tod,}
      \line {Und spricht: Ich will gern leiden.}
 
    } 
 }
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}
\midi {}
