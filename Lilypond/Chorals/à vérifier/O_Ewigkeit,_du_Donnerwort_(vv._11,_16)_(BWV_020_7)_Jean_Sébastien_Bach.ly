\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Ewigkeit, du Donnerwort (vv. 11, 16)"
  opus = "BWV 20/7"
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
          \partial 4  f'8 [g']
          a'4 bes' c'' c''
          d'' e'' f''\fermata f'8 [g']
          a'4 bes' c'' c''
          bes' a' g'\fermata a'
          f' f' bes' a'
          g'2 f'4\fermata f'8 [g']
          a'4 bes' c'' c''
          d'' e'' f''\fermata f'8 [g']
          a'4 bes' c'' c''
          bes' a' g'\fermata a'
          f' f' bes' a'
          g'2 f'4\fermata c''
          g' a' bes' bes'
          a' a' g'\fermata c''
          d'' e'' f'' a'
          g'2 f'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  c'4
          f' e' f' a'
          bes'8 [a'] g'4 a' c'
          f' g' g' f'
          f'8 [e'] f'4 e' e'
          e' d' d'8 [e'] f'4
          f' e' c' c'
          f' e' f' a'
          bes'8 [a'] g'4 a' c'
          f' g' g' f'
          f'8 [e'] f'4 e' e'
          e' d' d'8 [e'] f'4
          f' e' c' f'
          g' g' fis' g'
          g' fis' d' f'
          f' c''8 [bes'] a' [g'] f'4
          f' e' c' \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [bes]
          c'4 bes a8 [c'] f'4
          f' c' c' a
          d' d' c'8 [bes] a4
          bes c' c' a
          a a g a
          d' c'8 [bes] a4 a8 [bes]
          c'4 bes a8 [c'] f'4
          f' c' c' a
          d' d' c'8 [bes] a4
          bes c' c' a
          a a g a
          d' c'8 [bes] a4 a
          bes c' d' e'
          a8 [bes] c'4 bes c'
          bes8 [a] g4 f8 [g] a [bes]
          c' [g] c' [bes] a4 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f4
          f g a f
          bes c' f f8 [e]
          d4 c8 [bes,] a,4 d
          g, a,8 [bes,] c4 cis
          d8 [e] f [d] g4 d8 [c]
          bes,4 c f, f
          f g a f
          bes c' f f8 [e]
          d4 c8 [bes,] a,4 d
          g, a,8 [bes,] c4 cis
          d8 [e] f [d] g4 d8 [c]
          bes,4 c f, f
          e ees d cis
          d d g, a,
          bes, c d8 [e] f4
          c c f, \fine
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
