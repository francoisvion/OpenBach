\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "So wahr ich lebe, spricht dein Gott"
  opus = "BWV 102/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          g' ees' f' g'8 [f']
          ees'4 d' c'\fermata g'
          g' f' bes' g'8 [f']
          ees'4 f' g'\fermata
          g'8 [a']
          bes'4 c''8 [d''] ees''4 d''
          c'' b' c''\fermata c''
          d'' c'' bes' a'
          g' a' g'\fermata
          c''
          bes' a' bes'8 [aes'] g'4
          g' f' ees'\fermata g'
          aes' g'8 [f'] ees'4 f'
          ees' d' c'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  ees'4
          d' c' c'8 [d'] ees' [d']
          c'4 b g\fermata ees'
          ees' d'8 [ees'] f'4 ees'8 [d']
          c' [b] c' [d'] b4\fermata
          ees'
          d' ees'8 [f'] g'4 f'
          ees'8 [f'] g'4 g'\fermata f'
          f' fis' g' g'8 [fis']
          g'4 fis' d'\fermata
          f'
          f' ees' d' ees'8 [d']
          c'4 d' bes\fermata c'
          f' ees'8 [d'] c'4 d'8 [c']
          b [c'] c' [b] g4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Va -- ter un -- ser im Him -- mel -- reich, der du uns al -- le hei -- ssest gleich Brü -- der sein und dich ru -- fen an, und willst das Be -- ten von uns ha'n, gib, dass nicht bet' al -- lein der Mund, hilf, dass es geh' aus Her -- zens Grund.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          g g c' c'8 [aes]
          g4 g8 [f] ees4\fermata c'
          bes bes bes bes
          c' aes d\fermata
          c'
          bes aes g a8 [b]
          c'4 d' ees'\fermata a
          bes c' d' ees'8 [d']
          d' [c'] c' [b] b4\fermata
          a
          bes c' f ees
          ees bes8 [aes] g4\fermata c'
          c' b c'8 [bes] aes4
          g g8 [f] e4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  c4
          b, c aes ees8 [f]
          g4 g, c\fermata c'
          g8 [aes] bes4 d ees
          aes aes, g,\fermata
          c
          g f ees f8 [g]
          aes4 g c\fermata f
          bes a g c8 [d]
          ees4 d g,\fermata
          f8 [ees]
          d4 c bes, c8 [bes,]
          aes,4 bes, ees\fermata e
          f g aes8 [g] f4
          g g, c\fermata \fine
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
