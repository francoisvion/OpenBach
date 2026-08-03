\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Es spricht der Unweisen Mund wohl"
  opus = "BWV 308"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          bes' a'8 [g'] f'4 bes'
          c'' d'' bes'\fermata f'
          bes' c'' d'' ees''
          c''8 [bes'] c''4 bes'\fermata \bar "|."
          \partial 4  bes'
          g' a' bes'8 [a'] g'4
          f' e' f'\fermata f'
          bes' c'' d'' ees''
           d'' c'' d''\fermata c''
          d'' ees'' f''8 [ees''] d''4
          c''8 [bes'] c''4 bes'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          f' ees' d' d'
          ees' f' ees'\fermata c'
          f' f' f' g'
          f'2 f'4\fermata \bar "|."
          \partial 4  f'
          e' f'2 e'8 [d']
          c'4 c' c'\fermata c'
          f'8 [g'] a'4 bes' c''~
          c''8 bes'4 a'8 bes'4\fermata f'
          f' g' a' f'
          f'2 f'4\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Es spricht der Un -- wei -- sen Mund wohl: Den rech -- ten Gott wir mei -- nen, doch ist ihr Herz Un -- glau -- bens voll, mit Tat sie ihn ver -- nei -- nen, ihr We -- sen ist ver -- der -- bet zwar, vor Gott.
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
          d' c'4. bes8 bes4~
          bes8 [a bes aes] g4\fermata a
          bes ees' d'8 [c'] bes4~
          bes8 [a16 g] a4 d'\fermata \bar "|."
          \partial 4  d'
          c' c' d' g8 [a16 bes]
          c'8 [bes16 a] g8 [a16 bes] a4\fermata a
          bes ees' f' g'8 [f']
          f'4 f' f'\fermata f'8 [ees']
          d' [c'] bes4 c'4. bes8~
          bes [a16 g] a4 d'\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,4
          bes, c d g
          f bes, ees\fermata ees
          d a, bes, ees
          f2 bes,4\fermata \bar "|."
          \partial 4  bes,~
          bes, a, g, c8 [bes,]
          a, [bes,] c4 f,\fermata f8 [ees]
          d [ees d c] bes, [bes]~ bes [a]
          bes4 f bes,\fermata a
          bes8 [a] g4 f bes
          f2 bes,4\fermata \bar "|."
        }
      >>
    }
  >>
}

\paper {
  indent = 10
  page-count = 1
}
\layout {}
\midi {}
