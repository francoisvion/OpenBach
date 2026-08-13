\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Heut ist, o Mensch, ein großer Trauertag"
  opus = "BWV 341"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d'4
          f' g' a'\fermata bes'
          a' g' c'' bes'
          a'2\fermata r4 d''
          c'' bes' a' g'
           f' g' f' ees'
          d'2\fermata r4 a'
          bes' c'' d''\fermata d''
          c'' g'8 [a'] bes'4 a'
          g'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          a8 f'4 e'8 f'4\fermata d'8 [e']
          fis'4 g'~ g'8 a'4 g'8
          fis'2\fermata r4 bes'~
          bes'8 a'4 g' f' ees'8
           ees' [d'] ees' [d'] c' [bes] c' [a]
          bes2\fermata r4 c'
          d'8 [f'] g' [a'] bes'4\fermata g'8 [f']
          ees' [f'] g'4~ g'4. fis'8
          d'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Heut' ist, o Mensch, ein gro -- ßer Trau -- er -- tag, an wel -- chem un -- ser Hei -- land gro -- sse Plag' er -- lit -- ten hat, und todt dar -- nie -- der lag.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g4
          f8 [a] d' [c'] c'4\fermata g
          a16 [bes] c'4 bes16 [a] g8 [d'] d'4
          d'2\fermata r4 f'
          f'8. [ees'16] d'4~ d'8. [c'16] bes4~
           bes bes f2
          f\fermata r4 f
          f' ees' f'\fermata d'
          g c' d'~ d'8 [c']
          b2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,4
          d bes,8 [c] f4\fermata g
          d e4. fis8 g4
          d2\fermata r4 bes,
          f g d ees
           bes,8 [a,] g,4 a,8 [g,] a, [f,]
          bes,2\fermata r4 f8 [ees]
          d4 c bes,\fermata b,
          c8 [d] ees4 bes,8 [c] d4
          g,2.\fermata \fine
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
