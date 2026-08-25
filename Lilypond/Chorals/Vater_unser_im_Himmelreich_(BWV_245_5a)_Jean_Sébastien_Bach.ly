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
  title = "Vater unser im Himmelreich (1ère version)"
  subtitle = "tiré de la Passion selon saint Jean"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 245/5a"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a' f' g' a'
          f' e' d'\fermata a'
          a' g' c'' a'
          f' g' a'\fermata a'8 [b']
          c''4 d''8 [e''] f''4 e''
          d'' cis'' d''\fermata d''
          e'' d'' c'' b'
          a' gis' a'\fermata d''
          c'' b' c'' a'
          a' g' f'\fermata a'
          bes' a'8 [g'] f'4 g'
          f' e' d'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          e' d' cis' d'8 [e']
          f'4 cis' a4\fermata f'
          e' d' e' f'
          f' e'8 [d'] e'4\fermata e'
          a' g' f' g'
          f'8 [e'] e'4 f'\fermata f'
          e' b' e' e'8 [d']
          c' [d'] e'4 e'\fermata g'
          g' f' g' f'
          f' e' c'\fermata d'
          d' e' d' d'
          d' cis' a\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Dein Will ge -- scheh, Herr Gott, zu -- gleich
      auf Er -- den wie im Him -- mel -- reich.
      Gib uns Ge -- duld in Lei -- dens -- zeit,
      Ge -- hor -- sam sein in Lieb und Leid;
      wehr und steur al -- lem Fleisch und Blut,
      das wi -- der dei -- nen Wil -- len tut!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          a a g d'
          d' a f\fermata d'
          a bes c' c'
          d'8 [cis'] d'4 cis'\fermata c'
          c'8 [a] b [cis'] d' [c'] bes4
          b a a\fermata b
          b8 a4 gis8 a4 gis
          a4 b c'\fermata b
          c' d' e' d'
          d'8 [c'] bes!4 a\fermata a
          g8 [f] e4 a g8 [a]
          b4 e8 [f16 g] fis4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          cis d e f8 [g]
          a4 a, d\fermata d
          c! bes, a,8 [c] f4
          bes bes a\fermata a8 [g]
          f4. e8 d4 g
          gis a d\fermata g
          c b, a, e
          f4 e a,\fermata g8 [f]
          e4 d c d8 [c]
          bes,!4 c f\fermata fis
          g cis d8 [c] bes, [a,]
          gis,4 a, d\fermata \fine
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
