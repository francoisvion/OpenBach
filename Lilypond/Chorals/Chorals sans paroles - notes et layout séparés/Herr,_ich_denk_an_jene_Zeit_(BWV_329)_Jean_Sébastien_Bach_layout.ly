\version "2.27.1"

\include "Herr,_ich_denk_an_jene_Zeit_(BWV_329)_Jean_Sébastien_Bach_notes.ily"
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
 title = "Herr, ich denk an jene Zeit"
 poet = "Auteur : Georg Mylius (1613-1640)"
  opus = "BWV 329"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key ees \major
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
      \key ees \major
      \time 4/4
      \set Timing.beatStructure = #'(2 2)
      <<
        \new Voice = "tenor" \tenorMusic
        \new Voice = "bass" \bassMusic
      >>
    }
  >>
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}
\midi {}
