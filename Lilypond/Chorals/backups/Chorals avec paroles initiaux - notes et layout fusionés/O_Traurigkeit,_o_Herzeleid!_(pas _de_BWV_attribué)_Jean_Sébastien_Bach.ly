\version "2.27.1"


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
  title = "O Traurigkeit, o Herzeleid!"
  subtitle = \markup{"tiré de la Passion selon saint Marc "\small "(parodie musicale)"}
  opus = "pas de BWV attribué"
  poet = "Auteur : Friedrich von Spee (1591-1635)"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f   
  copyright = "© 2026 — OpenBach"
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" \relative c' {
          \voiceOne
          \partial 4 d'4
          bes g a\fermata fis
          g g fis\fermata d'
          d d es d
          c2 bes \fermata
          a4 bes c d
          c bes a2\fermata
          g4 a bes c
          a2 g4\fermata \fine 
        }
        \new Voice = "alto" \relative c' {
          \voiceTwo
          \partial 4 fis4
          d es a, d
          d cis d fis
          g a g d
          g f d2\fermata
          d4 d f f
          fis g fis2
          g4 fis g g
          e d b4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O Trau -- rig -- keit,
      O Her -- ze -- leid!
      Ist das nicht zu be -- kla -- gen?
      Gott des Va -- ters ei -- nigs Kind
      wird ins Grab ge -- tra -- gen.
     }
     
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          \partial 4 a'4
          bes c fis, a
          g e d a'
          bes d bes bes
          bes a bes2\fermata
          fis4 g a bes
          c d d2\fermata
          d4 c d g,
          g fis g\fermata
          \fine
        }
        
        \new Voice = "bass" \relative c {
          \voiceTwo
          \partial 4 d4
          g es d d
          es a, d d
          g fis g f
          es f bes,2\fermata
          d4 g f bes
          a g d2\fermata
          bes'4 a g es
          c d g,\fermata \fine
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