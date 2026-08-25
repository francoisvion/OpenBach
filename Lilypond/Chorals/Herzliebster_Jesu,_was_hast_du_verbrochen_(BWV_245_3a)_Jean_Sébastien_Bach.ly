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
 title = "Herzliebster Jesu, was hast du verbrochen"
 subtitle = "tiré de la Passion selon saint Jean"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 245/3a"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          g' g' fis'\fermata d'
          g' a' bes' bes'
          c'' bes' a'\fermata a'
          bes' c'' d'' bes'4
          ees'' ees'' d'' des''8 [c'']
          c''2 bes'4\fermata bes'
          a' g' f' d'
          f'4 f' g' f'
          ees'2 d'4\fermata d''
          c'' bes'8 [a'] a'2
          g'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          ees'8 [d'] c'4 d'\fermata a
          d' fis'4 g' g'
          a' g' fis'\fermata fis'
          g' a' bes' f'!
          g' bes'4 bes' bes'
          bes' a' f'\fermata g'
          ees' e'  d' a
          d'8 [ees'!] f'4 ees' d'
          d' c' bes\fermata bes'
          a' g' g' fis'
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O gro -- ße Lieb,
      o Lieb ohn al -- le Ma - ße,
      die dich ge -- bracht auf die -- se Mar -- ter -- stra -- ße
      Ich leb -- te mit der Welt in Lust und Freu -- den,
      Und du mußt lei -- den.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes4
          bes a8 [g] a4 fis
          g c' d' d'
          ees' d' d'\fermata d'
          d' ees' f' d'
          bes4 bes f' g'
          f'4. ees'8 d'4\fermata d'
          c' bes a f
          bes bes bes a
          bes c' f\fermata f'
          ees' d' e' d'8 [c']
          bes2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          c ees d\fermata c
          bes, a, g, g
          fis g d\fermata d
          g c' bes aes
          g ges f e
          f2 bes,4\fermata g,
          c cis d4 d8 [c]
          bes, [c] d [bes,] ees4 f 
          g4 a bes\fermata bes
          fis g4 cis d
          g,2.\fermata \fine
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
