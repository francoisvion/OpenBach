\version "2.27.1"



\include "So_gehst_du_nun,_mein_Jesu,_hin_(BWV_500a)_Jean_Sébastien_Bach_notes.ily"
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
  title = "So gehst du nun, mein Jesu, hin"
  subtitle = \markup{"tiré de la Passion selon saint Marc "\small "(parodie musicale)"}
  opus = "BWV 500a"
  poet = "Auteur : Friedrich Nachtenhöfer (1624-1685)"
  composer = "Jean Sébastien Bach (1685-1750)"
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
          \repeat volta 2 {
          \partial 4 d'4
          d d c c
          d bes a\fermata a
          bes c d es8 [d]
          c4. bes8 bes4\fermata } c
          c c d\fermata d
          d d es\fermata d
          c bes a bes
          a4. g8 g4\fermata c
          c c d\fermata d
          d d es\fermata d
          c bes a bes
          a4. g8 g4\fermata \fine 
        }
        
        \new Voice = "alto" \relative c' {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 g'4
          a b c8 [bes] a [g]
          fis4 g d\fermata d
          d f! f g
          g f f\fermata } g
          f f f\fermata fis
          g g g\fermata d
          g g a g8 [f]         
          e4 d d\fermata e
          f c' b\fermata a
          g8 [a] bes4 c\fermata a
          g8 [fis] g [a] d,4 d
          e d d\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" \versoOneLyrics
     
    \new Lyrics \lyricsto "soprano" \sopranoVersoOneLyrics
     
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
       \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          \repeat volta 2 {
          \partial 4 bes'8 [a]
          d4 d, g fis8 [g]
          a4 e a f'!
          bes, f bes bes
          c8 [d] es4 d\fermata } c
          f,8 [c'] f [es] d4\fermata c
          bes8 [a] g4 c\fermata a
          es' g, d'8 [c] bes [g]
          a [bes] c4 bes\fermata c
          c g'8 [f] d4\fermata d
          d8 [c] d4 c\fermata d
          g, e' a, g8 [d]
          a' [bes] c4 b\fermata \fine
        }
        \new Voice = "bass" \relative c {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 g'4
          fis f e es
          d cis d\fermata d
          g a bes8 [a] g [f]
          e4 f bes,\fermata } e
          f8 [es!] d [c] bes4\fermata d
          g8 [f] es [d] c4\fermata d
          es e fis g
          cis, d g,\fermata bes'
          a aes g c
          bes b a\fermata b
          c cis d8 [c] bes [g]
          cis,4 d g,\fermata \fine
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