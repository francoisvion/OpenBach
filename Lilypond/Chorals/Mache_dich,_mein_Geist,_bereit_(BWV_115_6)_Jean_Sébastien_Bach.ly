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
 title = "Mache dich, mein Geist, bereit"
 subtitle = "tiré de la cantate : Mache dich, mein Geist, bereit"
 poet = "Auteur : Johann Burchard Freystein (1671-1718)"
  opus = "BWV 115/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          b'4 c'' d'' d''
          g' a' b'2\fermata
          e''4 fis'' g'' b'
          a'2 g'\fermata }
          d''4 a' b'2\fermata
          e''4. d''8 cis''2\fermata
          d''4 a' b'8 [cis''] d''4
          d'' cis'' d''2\fermata
          e''4 fis'' g'' b'
          a'2 g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          g'4 g' a'8 [g'] fis'4
          g' g'8 [fis'] g'2\fermata
          g'4 a' g'8 [fis'] g'4
          g' fis' d'2\fermata }
          a'8 [g'] fis' [a'] g'2\fermata
          e'4 e' e'2\fermata
          a'4 a'4. g'8 fis'4
          e'2 fis'\fermata
          a'4 a' g' g'
          g' fis' d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Drum so lasst uns im -- mer -- dar
      wa -- chen, fle -- hen, be -- ten,
      denn di Zeit
      ist nicht weit,
      da uns Gott wird rich - ten
      und die Welt ver -- nich -- ten.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      weil die Angst, Not und Ge -- fahr
      im -- mer nä -- her tre -- ten;
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          d'4 e' a b
          b e'8 [d'] d'2\fermata
          c'4 c' d' d'
          e' d'8 [c'] b2\fermata }
          d'4 d' d'2\fermata
          b8 [a] gis [b] a2\fermata
          d'8 [e'] fis'4 fis'8 [e'] d' [cis']
          b4 a a2\fermata
          c'4 d' d' d'
          e' d'8 [c'] b2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          g8 [fis] e [g] fis [e] d [fis]
          e [d] c [d] g,2\fermata
          c8 [b,] a, [c] b, [a,] g, [b,]
          c [a,] d4 g,2\fermata }
          fis8 [e] d [fis] g2\fermata
          gis8 [fis] e [gis] a2\fermata
          fis8 [e] d [fis] g [a] b [a]
          g [e] a4 d2\fermata
          a,8 [b,] c [a,] b, [c] d [b,]
          c [a,] d4 g,2\fermata \fine
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
