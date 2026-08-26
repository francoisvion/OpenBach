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
  title = "Christus, der uns selig macht"
  subtitle = "tiré du choral : O hilf, Christe, Gottes Sohn"
  opus = "BWV 1084"
  poet = "Auteur : Michael Weisse (c. 1488-1534)"
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
          d'4 d d d
          c bes8 [a] a2\fermata
          bes4 c d d 
          c bes8 [a] a2\fermata
          g4 a bes8 [a] g4
          g8 [f] es4 d2\fermata
          f4 f g g 
          f es d2\fermata
          g4 fis g a
          bes a g2\fermata
          bes4 c d d 
          c bes a2\fermata
          g4 a bes g
          g8 [f] es4 d2\fermata
          f4 f g g
          f es d2~
          d1\fermata \fine 
        }
        
        \new Voice = "alto" \relative c' {
          \voiceTwo
          a'4 bes a g
          g8 [c,16 d] es8 [es] d2\fermata
          d4 es f8 [d] b [d]
          a'4 g fis2\fermata
          d4 d d8 [c] bes [g]
          d'4 c d2\fermata
          d4 d d8 [c] c4
          c8 [f] a4 g2\fermata
          g4 c, d e
          d8 [e] fis4 g2\fermata
          f4 g8 [f] f [es] d4
          g g fis2\fermata
          d4 d d es
          c8 [d] es [f] g2\fermata
          f4 es d c
          d c c bes
          a1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O hilf, Chris -- te, Got -- tes Sohn
      durch dein bit -- ter Lei - den,
      daß wir dir stets un -- ter -- tan,
      all Un -- tu -- gend mei - den,
      dei -- nen Tod und sein Ur -- sach
      frucht -- bar -- lich be -- den - ken,
      da -- für, wie -- wohl arm und schwach,
      dir Dank -- op -- fer schen - ken. __
     }
     
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          fis'4 g d d
          g,8 [a16 bes] c8 [es] a,2\fermata
          g4 g d'8 [b] g4
          a bes8 [e,] a2\fermata
          bes4 a g8 [fis] g4
          g4 g8 [a] b2\fermata
          bes!4 bes bes8 [aes] g4
          aes4 a d2\fermata
          g,4 a d,8 [d'] c4
          bes8 [g] d'4 g,2\fermata
          d'4 c bes8 [c] d4
          g,8 [a] bes [c] d2\fermata
          d4 a g8 [a] bes4
          c8 [g] g4 g2\fermata
          bes!4 c d g,
          aes8 [d,] es [c'] a!4 g
          fis1\fermata \fine
        }
        
        \new Voice = "bass" \relative c {
          \voiceTwo
          d'4 bes fis g
          es c d2\fermata
          g4 es b8 [d] f4
          fis g8 [cis,] d2\fermata
          g4 d g,8 [a] bes4
          b c g2\fermata 
          d'4 bes es e
          f fis g2\fermata
          es4 a, bes c
          d8 [c] d4 es2\fermata
          d4 es8 [f] bes,4 b
          c g d'2\fermata
          bes'4 fis g es
          a,8 [b] c4 g2\fermata
          d'4 c b c~
          c8 [b] c4 fis, g
          d'1\fermata \fine
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