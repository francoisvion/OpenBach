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
 title = "Meinen Jesum laß ich nicht (I)"
 poet = "Auteur : Christian Keymann (1607-1662)"
  opus = "BWV 379"
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
          b'4 b' b' d''
          c'' c'' b'2\fermata
          b'4 b' a' b'
          c'' b' a'2
          g'1\fermata }
          b'4 b' a' a'
          g' g' fis'2\fermata
          e''4 d'' c'' b'
          a' a' g'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          g'4 g'8 [a'] g'4 g'~
          g'8 [fis'16 e'] fis'4 g'2\fermata
          g'4 g'4. fis'8 g'4
          a'4. g'4 fis'16 [e'] fis'4
          d'1\fermata }
          g'4 g' g' fis'~
          fis' e' dis'2\fermata
          e'8 [fis'] g'4. fis'8 g'4~
          g'8 [fis'16 e'] fis'4 d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Mei -- nen Je -- sum laß' ich nicht,
      Je -- sus wird mich auch nicht las -- sen.
      Weiß ge -- wiss und glau -- be fest,
      daß mich Je -- sus auch nicht läßt.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Je -- su hab' ich mich ver -- pflicht't,
      ich will ihn in's Her -- ze fas -- sen.                              
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
          d'4 e'8 [fis'] e'4 d'
          e'8 [c'] a [d'] d'2\fermata
          d'4 d' d' d'
          e'8 [d'] d'4 e'8 [a] d' [c']
          b1\fermata }
          d'4 d' d'4. c'8
          b4 b b2\fermata
          g'8 [a'] d'4 e'8 [c'] d'4
          e'8 [a] d' [c'] b2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          g8 [fis] e [dis] e [d] c [b,]
          a,4 d g,2\fermata
          g,8 [a,] b, [c] d4 g~
          g8 [fis] g [b,] c4 d
          g,1\fermata }
          g,8 [a,] b, [c] d [e] fis [dis]
          e [fis] g [a] b2\fermata
          c8 c'4 b8 a, a4 g8
          c4 d g,2\fermata \fine
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
