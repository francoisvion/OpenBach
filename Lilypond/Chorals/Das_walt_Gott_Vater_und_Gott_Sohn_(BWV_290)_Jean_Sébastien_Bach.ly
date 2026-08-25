\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Das walt Gott Vater und Gott Sohn"
 poet = "Martin Behm"
  opus = "BWV 290"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  f'4
          a' c'' c'' a'
          f' g' a'\fermata f'
          c'' c'' d'' e''
          f''8 [e''] d''4 c''\fermata
          \partial 4  c''
          a' c'' d'' c''
          bes' a' g'\fermata c''
          a'8 [bes'] c''4 bes' a'8 [g']
          f'4 g' f'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  c'4
          f' f' e' e'~
          e'8 [d'] c'4 c'\fermata c'
          f' g' a'8 [b'] c''4
          c''4. b'8 g'4\fermata
          \partial 4  g'
          g'8 [f'16 e'] f'4 f' f'
          g'8 [c'] c' f'4 e'8\fermata g'4
          f' f' f' e'
          d'16 [e'] f'4 e'8 c'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Das walt' Gott Va -- ter und Gott Sohn, Gott heil' -- ger Geist in's Him -- mels Thron. Man dankt dir, eh' die Sonn' auf -- geht; wann's Licht an -- bricht, man vor dir steht.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          c' c' g a
          a g f\fermata a
          a c' f' e'
          a' d'8 [g'16 f'] e'4\fermata
          \partial 4  c'
          c' c'4. bes4 a8
          g4 a8. [bes16] c'4\fermata c'
          c' c' d' c'8 [bes]
          a [g16 f] c'8. [bes16] a4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f4
          f a,8 [bes,] c4 cis
          d e f\fermata f
          f4. e8 d4 a8 [g]
          f4 g c\fermata
          \partial 4  e
          f a,8 [f,] bes,4 f~
          f8 [e] f4 c\fermata e
          f a, bes, c
          d c f\fermata \fine
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
