\version "2.27.1"



\include "Ach_bleib_bei_uns,_Herr_Jesu_Christ_(BWV_253)_Jean_Sébastien_Bach_notes.ily"
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
  title = "Ach bleib bei uns, Herr Jesu Christ"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 253"   
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" \sopranoMusic
        
        \new Voice = "alto" \altoMusic
      >>
    }
        \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" \tenorMusic
        
        \new Voice = "bass" \bassMusic
      >>
    }
  >>} 
 
\paper { }
\layout {
  \context {
    \RemoveEmptyStaves
    \override VerticalAxisGroup.remove-first = ##t
  }
 }
 
