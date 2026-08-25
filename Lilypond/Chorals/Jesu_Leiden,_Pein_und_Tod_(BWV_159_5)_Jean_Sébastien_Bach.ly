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
 title = "Jesu Leiden, Pein und Tod"
 subtitle = "tiré de la cantate : Sehet, wir gehn hinauf gen Jerusalem"
 poet = "Auteur : Paul Stockmann (1603-1636)"
  opus = "BWV 159/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key ees \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 f' ees' f'
          g' aes' bes'2\fermata
          c''4 bes' aes' g'8 [f']
          f'2 ees'\fermata
          g'4 bes' aes' g'
          f' ees' d'2\fermata
          ees'4 f' g' g'
          aes'2 g'\fermata
          g'4 aes' bes' aes'
          g' f' g'2\fermata
          f'4 f' g'8 [a'] bes'4
          bes' a' bes'2\fermata
          bes'4 g' c'' bes'
          aes' g' f'2\fermata
          g'8 [aes'] bes'4 aes' g'8 [f']
          f'2 ees'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          ees'4 d'4. c'4 bes8
          bes4 ees'8 [des'] ees'2\fermata
          ees'8 aes'4 g' f'8 ees'4~
          ees' d' bes2\fermata
          ees'4 f' ees'8 [f'] g' [ees']
          d'4 c' b2\fermata
          c'4 d' ees' ees'~
          ees'8 d'16 [ees'] f'8 [d'] ees'2\fermata
          ees'4 ees' e' f'
          des'8 [c'] c' [d'] e'2\fermata
          c'4 c'8 [d'] ees'4 des'8 [ees']
          f'2 f'\fermata
          f'4 ees'8 [f'] g'4 g'
          ees'8 [f'] bes [c'] d'2\fermata
          d'4. bes8 ees' [f'] g' [c']
          d' [ees'16 c'] d'4 bes2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Je -- su, dei -- ne Pas -- si -- on
      ist mir lau -- ter Freu -- de,
      dei -- ne Wun -- den, Kron und Hohn
      mei -- nes Her -- zens Wei -- de;
      mei -- ne Seel auf Ro -- sen geht,
      wenn ich dran ge -- den - ke,
      in dem Him -- mel ei -- ne Stätt
      mir des -- we -- gen schen -- ke!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes4 bes8 [aes] g4 f
          ees8 [ees'] aes4 des'2\fermata
          c'4 d' ees'8 [d'] ees' [c']
          bes4. aes8 g2\fermata
          bes4 bes c'8 [d'] ees' [c']
          aes [g] g4 g2\fermata
          g4 bes bes bes
          c'8 [aes] f [bes] bes2\fermata
          c'4 c' bes c'
          bes aes g2\fermata
          aes8 [bes] c' [bes] bes4. c'8
          des'4 c' d'2\fermata
          bes4 bes ees' d'8 [bes]
          c' [d'] ees'4 bes2\fermata
          bes8 [aes] g [f] ees [d] ees4
          bes4. aes8 g2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          ees4 bes, c d
          ees f g2\fermata
          aes4 bes c' bes8 [aes]
          bes4 bes, ees2\fermata
          ees8 [d] d [c] c2~
          c8 b, c [ees] g2\fermata
          c8 [c'] bes [aes] g [f] ees [d]
          c [f] d [bes,] ees2\fermata
          c4 bes,8 [aes,] g, g4 f8~
          f e f4 c2\fermata
          f8 [g] aes4 g ges
          f8 [ees] f4 bes,2\fermata
          d8 [bes,] ees4~ ees8 c g4~
          g8 f g [aes] bes2\fermata
          ees4. d8 c4 bes,8 [aes,]
          bes,2 ees,\fermata \fine
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
