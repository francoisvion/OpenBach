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
  title = \markup{\concat{"Wo soll ich fliehen hin" \small " (v. 11)"}}
  subtitle = "tiré de la cantate : Wo soll ich fliehen hin?"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 5/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          g' a' bes' c''
          d''2.\fermata d''4
          d'' c'' bes' c''
          a'2.\fermata a'4
          bes' c'' d'' d''
          c''2 d''4\fermata d''
          bes' c'' d'' d''
          c''2 bes'4\fermata d''
          f'' d'' d'' d''
          c''2 c''4\fermata c''
          d'' c'' bes' c''
          a'2 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          ees' e'8 [fis'] g'4 g'
          fis'2.\fermata fis'4
          g' g'8 [fis'] g'4 a'
          fis'2.\fermata fis'4
          g' a' bes' bes'
          bes' a'8 [g'] a'4\fermata fis'
          d' c' f' g'
          g' f'8 [ees'] d'4\fermata f'
          f' f'8 [g'] a'4 g'
          g'8 [f'] g' [e'] f'4\fermata f'8 [ees']
          d'4 e'8 [fis'] g'4 g'
          g' fis' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Führ, Herr, mein Herz und Sinn
      durch dei -- nen Geist da -- hin,
      daß ich mög al -- les mei -- den,
      was mich und dich kann schei -- den,
      und ich an dei -- nem Lei -- be
      ein Glied -- maß e -- wig blei -- be.     
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes4
          c' c' d' ees'
          a2.\fermata a4
          bes c' d' ees'
          d'2.\fermata d'4
          d' ees' f' f'
          g' f'8 [ees'] d'4\fermata a
          bes f'8 [ees'] d' [c'] bes4
          bes a f\fermata bes
          c' d' d'8 [c'] bes4
          bes8 [a] bes [g] a4\fermata a
          bes a g8 [bes] ees'4
          d'8 [c'16 bes] c'4 b\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          c'8 [bes] a4 g8 [f] ees4
          d2.\fermata c4
          bes, a, g, c
          d2.\fermata
          d4
          g f8 [ees] d [c] bes,4
          ees f fis\fermata d
          g a bes8 [a] g [f]
          ees4 f bes,\fermata
          bes
          a bes fis g8 [f]
          e4 c f\fermata f
          bes, c8 [d] ees4 d8 [c]
          d2 g,4\fermata \fine
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
