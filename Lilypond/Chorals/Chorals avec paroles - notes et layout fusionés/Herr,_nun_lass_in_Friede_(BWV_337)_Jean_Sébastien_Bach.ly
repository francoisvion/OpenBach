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
 title = "Herr, nun lass in Friede"
 poet = "Auteur : David Behme (1605-1657)"
  opus = "BWV 337"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      
      <<
        
        \new Voice = "soprano" {
          \voiceOne
           e'4 e' fis' gis'
          a'2 gis'\fermata
          gis'4 gis' a' b'
          c''2 b'\fermata
           c''4 c'' b' b'
          a'2 gis'\fermata
          a'4 a' g' g'
          f'2 e'\fermata
           e''4 e'' d'' d''
          c''2 b'\fermata
          a'4 a' g' g'
          f'2 e'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           b4 c' d' d'
          e' d' e'2\fermata
          e'4 e' e'8 [fis'] gis'4
          a'2 a'4 gis'\fermata
           g'8 [fis'] g' [a'] g'4 f'
          e' fis' e'2\fermata
          c'4 f'8 [e'] d' [c'] d' [e']
          d'2 c'\fermata
          g'4 g' g' g'8 [f']
          e'2 e'\fermata
          c'4 f' f' e'~
          e' d'8 [c'] b2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herr, nun laß in Frie -- de le -- bens -- satt und mü -- de, dei -- nen Die -- ner fah -- ren zu den Him -- mels -- scha -- ren, se -- lig und im Stil -- len, doch nach dei -- nem Wil -- len.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        
        \new Voice = "tenor" {
          \voiceOne
          g4 a8 [gis] a4 b
          c' b8 [a] b2\fermata
          b4 b c' d'
          e'2 e'\fermata
           e'4. d'8 d'4 d'~
          d'8 c'4 b8 b2\fermata
          a8 [g] f4 g d8 [a]
          a4 g g2\fermata
          c'4 c'2 b4~
          b a2 gis4\fermata
          a8 [b] c'4 c' c'8 [bes]
          a [c'] b [a] gis2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           e8 [d] c4~ c8 [d] c [b,]
          a, [g,] f,4 e,2\fermata
          d8 [f] e [d] c [d] c [b,]
          a, [b,] c [d] e2\fermata
           e8 [d] e [fis] g [fis] g [gis]
          a4 dis e2\fermata
          f8 [e] d [c] b, [a,] b, [cis]
          d [c] b, [g,] c2\fermata
          c8 [d] e [f] g [a] b [g]
          a, [b,] c [d] e2\fermata
          f,8 [g,] a, [b,] c [d] e [c]
          d2 e\fermata \fine
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
