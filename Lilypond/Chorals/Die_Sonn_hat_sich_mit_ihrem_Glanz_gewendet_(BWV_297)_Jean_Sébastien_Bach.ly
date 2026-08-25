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
 title = "Die Sonn hat sich mit ihrem Glanz gewendet"
 poet = "Auteur : Joshua Stegmann (1588-1632)"
  opus = "BWV 297"
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
          \partial 4  d'4
          f' g' a'\fermata d''
          c''4. b'8 a' [b'] c''4
          b'2 a'4\fermata
          \partial 4  d''
          d'' d'' cis''\fermata e''
          d'' a' bes' a'8 [g']
          g'2 f'4\fermata f'
          e' e' d'\fermata
          \partial 4  a'
          c'' c'' g'8 [a'] bes'4
          a'\fermata a' c'' d''
          a'\fermata c'' a' g'8 [f']
          e'4. d'8 d'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a4
          d'4. e'8 f'4\fermata a'
          a' gis' a'8 [gis'] a'4
          a'8 [gis'16 fis'] gis'4 e'\fermata
          \partial 4  a'
          a'8 [g'] b'4 a'\fermata a'8 [g']
          f'4 f' g' f'
          f'8 [e'16 d'] e'4 c'\fermata d'
          d' cis' a\fermata
          \partial 4 f'~
          f'8 [e'] f'4 e' f'8 [g']
          f'4\fermata f' f' f'
          f'\fermata g'4. f'16 [e'] d'4
          d' cis' a2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Die Sonn' hat sich mit ih -- rem Glanz ge -- wen -- det und, was sie soll, auf die -- sen Tag woll en -- det; die dun -- kle Nacht dringt al -- lent -- hal -- ben zu, bringt Men -- schen, Vieh und al -- le Welt zur Ruh'.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  f4
          a bes d'\fermata f'
          e' e'8. [d'16] c'8 [d' e' f']
          b e'4 d'8 cis'4\fermata
          \partial 4  d'
          d'8 [e'] f'4 e'\fermata a
          a d'~ d'8 [c'] c'4
          d'8 [bes] g [c'16 bes] a4\fermata bes
          bes a8 [g] f4\fermata
          \partial 4 d'
          c' c' c'8 [a] d' [c']
          c'4\fermata d' c'~ c'8 [bes]
          c'4\fermata c' c' bes~
          bes8 [g] e [a16 g] fis2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          d g, d,\fermata d
          a e f c8 [d]
          e4 e, a,\fermata
          \partial 4  f
          bes a8 [gis] a4\fermata cis
          d8 [e] f4~ f8 [e] f4
          bes, c f,\fermata bes,
          g, a, d,\fermata
          \partial 4 d
          a,8 [g, a, bes,] c4 d8 [e]
          f4\fermata d a, bes,
          f,\fermata e, d, bes,
          g, a, d,2\fermata \fine
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
