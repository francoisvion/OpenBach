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
  title = \markup{\concat{"Ach Gott und Herr" \small " (v. 4)"}}
  subtitle = "tiré de la cantate : Ich elender Mensch, wer wird mich erlösen"
  poet = "Auteur : Martin Rutilius (1551-1618)"
  opus = "BWV 48/3"
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
          a' g' f'\fermata f'
          g' a' bes'\fermata c''
          bes' a' g' a'8 [bes']
          g'2 f'4\fermata bes'
          a' bes' c''\fermata c''
          d''8 [c''] bes'4 c''\fermata f'
          g' a' bes'8 [c''] d''4
          c'' bes' c''2
          bes'1
          bes'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          f' e' c'\fermata c'
          f' fis' g'\fermata a'
          g' f' c' c'
          c'2 c'4\fermata d'
          ees' f' f'\fermata f'
          f'8 [ees'] des'4 c'\fermata f'
          f' e' d'4. g'8
          a'4 bes'2 aes'4~
          aes' ges'2 f'8 [ees']
          f'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Solls ja so sein, dass Straf und Pein
      auf Sün -- de fol -- gen mü -- ßen,
      so fahr hier fort
      und scho -- ne dort,
      und laß mich hier wohl bü - - - ßen.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          c' c'8 [bes] a4\fermata a
          bes ees' d'\fermata d'
          d' d' e' f'
          f'8 [e'16 d'] e'4 a\fermata f
          c' d' a\fermata a
          aes g ees'\fermata ees'
          d' g' f' f'
          ees' d' g' f'~
          f'2 ees'~
          ees'4 d'8 [c'] d'4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,4
          f c f,\fermata ees
          des c g\fermata fis
          g d'8 [c'] bes [a] g [f]
          c'4 c f\fermata d
          c bes, f\fermata f
          bes, ees aes,\fermata a,
          b, cis d4. e8
          fis4 g8 [f] e4 f8 [ees]
          d4 ees8 [f] ges [aes] bes4
          bes,2.\fermata \fine
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
