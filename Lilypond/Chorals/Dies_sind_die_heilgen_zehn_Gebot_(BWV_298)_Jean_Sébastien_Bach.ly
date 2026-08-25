\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Dies sind die heilgen zehn Gebot"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 298"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          g' g' g' g'
          g'8 [a'] b'4 c''\fermata c''
          d'' d'' c'' g'
          g'8 [a'] b'4 c''\fermata c''
          d'' d'' c'' g'
          a' g' f'\fermata g'
          a' b' c''2\fermata
          bes'8 [a'] g' [a'] bes'4\fermata a'
          g' g' g'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          e' f' e' e'
          d'4. e'16 [f'] e'4\fermata f'8 [g']
          a' [g'] f'4 f'4. e'8
          d'4 g'8 [f'] e'4\fermata f'
          f' f' f' e'
          e'8 [f'] e'4 d'\fermata e'
          f' f'8 [e'] e'2\fermata
          fis'4 g'8 [d'] d'4\fermata f'
          f' e' d'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Dies sind die heil' -- gen zehn Ge -- bot', die uns gab un -- ser Her -- re Gott durch Mo -- se, sei -- nen Die -- ner treu, hoch auf dem Berg Si -- na -- i. Ky -- rie e -- leis'.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          c' d' d' c'
          b8 [a] g4 g\fermata a8 [c']
          f'4 a8 [b] c'4 c'
          b8 [a] g4 g\fermata a
          a d' g c'8 [bes]
          a4 bes8 [a] a4\fermata c'
          c'8 [d'] d'4 c'2\fermata
          d'8 [c' bes a] g4\fermata a
          d'4. c'8 c' [b16 a] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g8 [f]
          e [d c b,] c [d e f]
          g4 g, c\fermata f8 [e]
          d [e f g] a [b] c'4
          g8 [f e d] c4\fermata f8 [e]
          d c4 b,8 c [d e d]
          cis d4 cis8 d4\fermata c8 [b,]
          a, a4 gis8 a2\fermata
          d4 e8 [fis] g4\fermata d8 [c]
          b, [g,] c4 g,2\fermata \fine
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
