\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wenn wir in höchsten Nöten sein (I)"
  opus = "BWV 431"
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
          f' g' a' g'8 [a']
          bes'4 a' g'4. g'8
          f'2\fermata r4 a'
          bes' a' g' f'
           e' f' g'\fermata c''
          bes' a' g'8 [f'] e'4
          f' d' c'\fermata a'
          bes' a' g' f'
          a' g' f'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  c'4
          c'8 [b] c'4. d'8 e'4
          f'8 g'4 f' e'16 [d'] e'4
          c'2\fermata r4 f'
          f'8 g'4 f' e'8 d'4
           g c' c'\fermata e'8 [fis']
          g' [e' f' e'] d'4. c'8~
          c' [d'16 c'] b4 g\fermata f'8 [ees']
          d' [e'] f'4. e'4 d'16 [e']
          f'4. e'8 c'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Wenn wir in höch -- sten Nö -- then sein und wis -- sen nicht, wo aus und ein, und fin -- den we -- der Hülf' noch Rath, ob wir gleich sor -- gen früh und spat, und spat.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [g]
          f4 c'8 [bes] a [bes] c'4
          f8 [c'] c'4 d'8 [bes g c'16 bes]
          a2\fermata r4 c'
          d'8 [c'] c'4 d'8 c'4 b8
           c'4 f e\fermata a
          d'8 [cis'] d'4 g g
          a g8 [f] e4\fermata c'
          bes c'~ c'8. [bes16 a8 bes]
          c'4 c'8. [bes16] a4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f8 [e]
          d4 e8 [c] f4 c
          d8 [e] f4 bes, c
          f,2\fermata r4 f8 [ees]
          d [e] f4 b,8 [c] d4
           c8 [bes, a, f,] c4\fermata a,
          g, d8 [c] b,4 c
          f, g, c\fermata f,
          g, a,8 [bes,] c4 d
          a,8 [bes,] c4 f,\fermata \fine
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
