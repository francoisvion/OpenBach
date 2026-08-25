\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm % Marge pour la mention SATB
  
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

\header {
  title = "titre"
  subtitle = "tire de "
  opus = "BWV xxx"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  copyright = "© 2026 — OpenBach"
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" \relative c' {
          \voiceOne
          c'4
          \fine 
        }
        \new Voice = "alto" \relative c' {
          \voiceTwo
          c'4
          \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      
     }
     
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          c4
          \fine
        }
        \new Voice = "bass" \relative c {
          \voiceTwo
          c4
          \fine
        }
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