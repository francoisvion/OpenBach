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
 title = "Christus, der ist mein Leben"
 poet = "Geneva 1609"
  opus = "BWV 281"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  copyright = "© 2026 — OpenBach"
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    \relative c' {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4 f4
          a g a bes 
          c2 a4\fermata d
          c bes a g 
          a2\fermata r4 c
          d e f e 
          d2 c4\fermata a
          bes a g g 
          f2.\fermata \fine
      }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 c4
          f g f f 
          e8 [f] g [e] f4\fermata f
          f4. e8 f4. e8
          f2\fermata r4 a
          a8 [g] g [c16 bes] a4 a
          a g g\fermata f
          f8 [e] f4 f e
          c2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Chris -- tus, der ist mein Le -- ben
      und Ster -- ben mein Ge -- winn;
      dem thu' ich mich er -- ge -- ben,
      mit Freud' fahr' ich da -- hin.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    \relative c {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 a'4
          c c c d
          g, c c\fermata bes
          c d8 [bes] c4 c
          c2\fermata r4 f
          f e e8 [d] c4
          c b e\fermata c
          bes c d c8. [bes16]
          a2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 f,4
          f' e es d
          c8 [d] e! [c] f4\fermata bes,
          a g f8 [a] c4
          f,2\fermata r4 f'
          b, c d8 [f] a [g]
          f [d] g4 c,\fermata f,
          g a bes c
          f,2.\fermata \fine
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
