\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Mensch, bewein dein Sünde groß"
  opus = "BWV 402"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  g'4
          ees' f' g'8 [f'] ees'4
          g' a' bes'\fermata bes'
          aes' g' f' ees'8 [f']
          g'4 a' bes'\fermata
          \partial 4  c''
          bes' aes' g' aes'
          f'2 ees'4\fermata \bar "|."
          \partial 4 ees''
          ees'' ees'' d'' bes'
          c'' c'' g'\fermata
          \partial 4  ees''
          ees'' ees'' d'' bes'
          c'' c'' bes'\fermata g'8 [aes']
          bes'4 c'' bes' g'
          aes'2 g'4\fermata f'
          g' aes' bes' bes'
           aes' g' f'\fermata bes'
          c'' d'' ees'' d''
          c'' c'' bes'\fermata ees'
          f' g' aes' g'
          f'2 ees'4\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  bes4
          c'4. b16 [c'] d'4. c'16 [d']
          ees'4. d'8 d'4\fermata g'~
          g'8 f'4 ees' d'8 c' [d']
          ees' [d'] ees'4 d'\fermata
          \partial 4  f'
          f'8 [ees'16 d'] ees'8 bes4 ees'16 [d'] ees'4~
          ees'8 [d'16 c'] d'4 bes\fermata \bar "|."
          \partial 4 bes'8 [aes']
          g'4 f' f' ees'
          ees'8 [des'] ees'4 ees'\fermata
          \partial 4 g'
          f' f' f' f'
          g' f'8 [ees'] d'4\fermata ees'8 [f']
          g'4 aes' g' g'~
          g'8 [f'16 ees'] f'8 [d'] ees'4\fermata f'
          ees' ees' f' g'
           c'8 [d'] ees'4. d'8\fermata f'4
          f' f' g'8 [a'] bes'4~
          bes' a' g'\fermata ees'
          d' ees' f'8 [d' bes ees']~
          ees' [d'16 c'] d'4 bes\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      O Mensch, be -- wein' dein' Sün -- de gross, da -- rum Chris -- tus sein's Va -- ters Schooss äu -- ssert und kam auf Er -- den, von ei -- ner Jung -- frau rein und zart für uns er hier ge -- bo -- ren ward, er wollt der Mitt -- ler wer -- den. Den To -- ten er das Le -- ben gab und tat da -- bei all Krank -- heit ab, bis sich die Zeit her -- dran -- ge,
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g4
          aes aes g g
          c'8 [bes] a4 g\fermata d'
          ees'8 [bes] bes4 c'8 [g] g4
          c'8 [bes] c'4 bes\fermata
          \partial 4  aes
          aes8 g4 f8 ees4. bes8
          c' [aes] f [bes] g4\fermata \bar "|."
          \partial 4 g8 [aes]
          bes4 c'4. bes16 [aes] g4
          aes aes bes\fermata
          \partial 4 c'
          c'8 [bes] a4 bes8 [a] bes4~
          bes8 [a16 g] a4 bes\fermata bes
          ees' ees' ees'8 des'4 c'8
          c'4 d'8 [f'] c'4\fermata aes
          bes c' d' d8 [e]
           f4 bes bes\fermata d'
          c' bes4. c'8 d'4
          g d' d'\fermata c'
          bes bes4. f8 g [bes]
          c' [aes] f [bes16 aes] g4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  ees4
          aes8 [g] f4 b, c~
          c fis, g,\fermata g
          c8 [d] ees4 a,8 [b,] c4~
          c f, bes,\fermata
          \partial 4  f8 [ees]
          d [bes, c d] ees [d c bes,]
          aes, [f,] bes,4 ees,\fermata \bar "|."
          \partial 4 ees,8 [f,]
          g,4 a, bes,8 [c] des4
          c8 [bes,] aes,4 ees\fermata
          \partial 4 c8 [bes,]
          a, [g,] f,4 bes,8 [c] d4
          ees f bes,\fermata ees~
          ees8 [des c d] ees4 e
          f b, c\fermata des~
          des c bes,8 [aes,] g,4
           f, g,8 [aes,] bes,4\fermata bes
          a aes g4. f8
          e4 fis g\fermata aes
          aes8 [g f ees] d [bes, ees g,]
          aes,4 bes, ees,\fermata \bar "|."
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
