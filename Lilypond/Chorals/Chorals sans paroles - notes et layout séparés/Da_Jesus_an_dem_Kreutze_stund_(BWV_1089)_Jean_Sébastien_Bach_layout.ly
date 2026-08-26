\version "2.27.1"



\include "Da_Jesus_an_dem_Kreutze_stund_(BWV_1089)_Jean_Sébastien_Bach_notes.ily"
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
  title = "Da Jesus an dem Kreutze stund"
  opus = "BWV 1089"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  copyright = "© 2026 — OpenBach"
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" \relative c' {
          \voiceOne
          \partial 4 b'4
          c b a b8 [c]
          d4 c b\fermata c
          d b c8 [b] a4
          a8 [g] f4 e\fermata d
          e e8 [f] g4 g
          e fis g\fermata b
          c b a g
          a8 [g] f4 e\fermata d
          e8 [f] g4 a a 
          g f e\fermata \fine 
        }
        
        \new Voice = "alto" \relative c' {
          \voiceTwo
          \partial 4 gis'~
          gis8 a4 gis8 a4 gis8 [a]~
          a [gis] a4~a8 [gis]\fermata a4
          a g! g4. f8
          e4. d8 cis4\fermata a8 [b]
          c!4 c d d~
          d8 [c]~c16 [b c8] b4\fermata d
          e8 [f] g [e] c [d] e4
          e4. d8 cis4\fermata a8 [b]
          c!4. e8 f4 f~
          f8 [e]~e16 [d c8] b4\fermata
          
         
          \fine
        }
      >>
    }
    
         
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          \partial 4 e'4
          e~e8. [d16] c4 f8 [e]
          d4 e e\fermata e
          d d c4. d8
          a4 a a\fermata f
          g a g8 [a] b4
          g8 a4 d,8 d4\fermata g
          g g a8 [b] c4
          a4 a a\fermata f
          g c c c
          c8. [bes16] a8 [b16 a] gis4\fermata \fine
        }
        
        \new Voice = "bass" \relative c {
          \voiceTwo
          \partial 4 e4
          e2 f8 [e] d [c]
          b4 a e'\fermata a8 [g]
          f [d] g [f] e4 f
          cis d a\fermata d
          c!8 [b] a4 b g
          c d g,\fermata g'8 [f]
          e [d] e [c] f4 c8 [b]
          cis [a] d4 a\fermata d
          c!8 [d] e [c] f, [g] a [bes]
          c4 d e\fermata \fine
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