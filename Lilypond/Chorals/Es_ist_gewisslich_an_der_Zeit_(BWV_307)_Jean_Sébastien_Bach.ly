\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm % Pas d'indentation pour un instrument solo/clavier
  
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
 title = "Es ist gewisslich an der Zeit"
 poet = "Auteur : Bartholomäus Ringwaldt (1532-1599)*"
  opus = "BWV 307"
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
          \partial 4  bes'4
          bes'8 [c''] d''4 c'' bes'
          c'' c'' d''\fermata bes'8 [c'']
          d''4 ees'' f''8 [ees''] d''4
          c''2 bes'4\fermata \fine
          \partial 4  d''
          d'' c'' bes' a'
          bes'8 [c''] d''4 c''\fermata c''
          bes' a' bes' f'
           bes' c'' d''\fermata bes'8 [c'']
          d''4 ees'' f''8 [ees''] d''4
          c''2 bes'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'8 [ees']
          f'4 bes' a' g'
          g' f' f'\fermata f'
          bes' bes' c'' bes'
          bes' a' f'\fermata \fine
          \partial 4  f'
          f' f'8 [ees'] d' [g' g' fis']
          g' [a'] bes'4 a'\fermata a'
          a'8 [g' g' fis'] g'4 d'
          d' g' fis'\fermata d'
          g' g' f' f'
          g' f'8 [ees'] d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Es ist ge -- wiss -- lich an der Zeit, dass Got -- tes Sohn wird kom -- men Dann wird das La -- chen wer -- den teu'r, wenn Al -- les wird ver -- gehn in Feu'r, wie Pe -- trus da -- von zeu -- get.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'8 [c']
          bes4 f' f'8 [ees'] d'4
          c'8 [bes bes a] bes4\fermata d'8 [ees']
          f'4 g' f' f'
          g' f'8 [ees'] d'4\fermata \fine
          \partial 4  bes
          bes a bes c'
          d'8 [ees'] f'4 f'\fermata d'
          d' d' d' d'8 [c']
          bes [a] g4 a\fermata g8 [a]
          bes4 bes bes bes
          bes a f\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,8 [c]
          d4 c8 [bes,] f4 g8 [f]
          ees4 f bes,\fermata bes,
          bes a8 [g] a4 bes
          ees f bes,\fermata \fine
          \partial 4  bes,8 [c]
          d [ees] f4 g a
          g d8 [ees] f4\fermata fis
          g d g8 [a bes a]
          g [f] ees4 d\fermata g,
          g f8 [ees] d [c] bes,4
          ees f bes,\fermata \fine
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
