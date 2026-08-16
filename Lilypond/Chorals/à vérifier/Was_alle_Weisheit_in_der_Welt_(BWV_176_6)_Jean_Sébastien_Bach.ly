\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Was alle Weisheit in der Welt"
  opus = "BWV 176/6"
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
          \partial 4  f'8 [g']
          aes'4 bes' c'' bes'
          ees'' d''8 [c''] c''4\fermata bes'
          ees'' d'' c'' bes'
          aes' g' f'\fermata
          f'8 [g']
          aes'4 bes' c'' bes'
          ees'' d''8 [c''] c''4\fermata bes'
          ees'' d'' c'' bes'
          aes' g' f'\fermata
          f'
          bes' bes' g' c''
          c'' b' c''\fermata c''
          f'' f'' g''8 [f''] ees''4
          f''8 [ees''] d''4 c''\fermata
          d''
          ees'' d'' c'' bes'
          c''8 [bes'] aes'4 g'\fermata f'8 [g']
          aes'4 bes' c''8 [bes'] aes'4
          bes'8 [aes'] g'4 f'\fermata
          f''
          f'' f'' g'' f''
          ees'' d'' c''\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          c'8 [d'] ees'4 ees'8 [f'] g'4
          g' g' g'\fermata g'
          g' g' aes'8 [g'] f'4
          c'8 f'4 e'8 c'4\fermata
          c'
          f' g' aes' g'
          c'' b' g'\fermata g'
          g'8 [c''] c'' [bes'] bes' [aes'] g' [e']
          f'4 e' c'\fermata
          c'
          f' ees'8 [d'] ees' [f'] g'4
          g' g' g'\fermata g'
          c'' bes' bes' c''8 [bes']
          aes'4 d'8 [ees'16 f'] ees'4\fermata
          g'
          g' f' ees'8 [f'] g'4
          c' f' e'\fermata c'
          f' g' g'8 [e'] f'4
          g'8 [f'] e'4 c'\fermata
          c''
          bes' bes' bes' c''8 [f']
          g'4. f'8 e'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Christ, un -- ser Herr, zum Jor -- dan kam nach sei -- nes Va -- ters Wil -- len, von Sankt Jo -- hann's die Teu -- fe nahm, sein Werk und Amt zu 'rfül -- len; da wollt' er stif -- ten uns ein Bad, zu wasch -- en uns von Sün -- den, er -- säu -- fen auch den bit -- tern Tod durch sein selbs Blut und Wun -- den. Es galt ein neu -- es Le -- ben.
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
          aes g aes ees'8 [d']
          c'4 b ees'\fermata d'
          c' d'8 [e'] f'4 f8 [g]
          aes [bes] c'4 aes\fermata
          aes8 [g]
          f [aes] des'4 ees' ees'8 [f']
          g'4 g' ees'\fermata d'
          c' f8 [g] aes4 bes
          c' bes8 [aes] aes4\fermata
          aes8 [g]
          f4 bes bes ees'
          d'8 [c'] d'4 ees'\fermata ees'
          ees' d' ees'8 [d'] c'4
          d'8 [c'] b4 g\fermata
          b
          c'8 [bes] aes [bes] c' [d'] e' [f']
          g'4 c' c'\fermata aes8 [g]
          f [aes] des'4 c' des'
          des' g8 [aes16 bes] aes4\fermata
          f
          d'8 [ees'] f' [d'] ees' [d'] c'4
          c' b g\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,4
          f ees aes g8 [f]
          ees [f] g4 c\fermata g
          c' bes aes d8 [e]
          f4 c f,\fermata
          f8 [ees]
          des [c] bes,4 aes, ees8 [d]
          c4 g c'\fermata g
          c d8 [e] f4 des
          c8 [bes,] c4 f,\fermata
          f8 [ees]
          d [c] bes,4 ees d8 [c]
          g4 g, c\fermata c'8 [bes]
          a4 bes ees aes8 [g]
          f4 g c\fermata
          g
          c f8 [g] aes4 g8 [f]
          e4 f c\fermata f8 [ees]
          des [c] bes,4 aes, des8 [c]
          bes,4 c f,\fermata
          a
          bes8 [c'] d' [bes] ees4 aes
          g8 [f] g [g,] c4\fermata \fine
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
