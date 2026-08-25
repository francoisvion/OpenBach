\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Gott, dich loben alle wir (I)"
 poet = "Auteur : Paul Eber (1511-1569)"
  opus = "BWV 326"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  bes'4
          bes'2 a'4
          g'2 f'4
          bes' c''2
          d''\fermata d''4
          d''2 d''4
          c''2 d''4
          ees'' d''2
          c''\fermata
          \partial 4  bes'4
          c''2 d''4
          c''2 bes'4
          g' a'2
          bes'\fermata f''4
          d''2 bes'4
          c''2 ees''4
          d'' c''2
          bes'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          g'2 f'4
          ees'2 d'4
          d' g' f'
          f'2\fermata a'4
          g'2 g'4
          g' f' f'
          f' f'2
          f'\fermata
          \partial 4  g'4
          f'2 f'8 [bes']
          g'4 f'8 [ees'] d'4
          g' g' fis'
          g'2\fermata f'4
          f'2 g'4
          f'2 f'4
          f' g' f'8 [ees']
          d'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herr Gott, dich lo -- ben al -- le wir und sol -- len bil -- lig dan -- ken dir für dein Ge -- schöpf der En -- gel schon, die um dich schweb'n in dei -- nem Thron.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          d'2 d'4
          bes2 bes4
          bes2 a4
          bes2\fermata a4
          bes2 bes4
          bes a bes
          c' bes2
          a\fermata
          \partial 4  d'4
          c'2 bes4
          bes a bes
          bes8 [d'] ees'4 d'
          d'2\fermata c'4
          d'2 d'4
          a2 a4
          bes2 a4
          f2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes,8 [a,]
          g, [a, bes, c d bes,]
          ees [f g a bes a]
          g [f ees d ees f]
          bes,2\fermata fis,4
          g,8 [d g f ees d]
          ees [c f ees d c]
          bes, [a, bes, c d ees]
          f2\fermata
          \partial 4  g4
          a8 [f g a bes g]
          ees [d ees f g d]
          ees [bes, c a, d d,]
          g,2\fermata a4
          bes8 [c' bes a g f]
          ees [g f ees d c]
          bes, [d ees c f f,]
          bes,2\fermata \fine
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
