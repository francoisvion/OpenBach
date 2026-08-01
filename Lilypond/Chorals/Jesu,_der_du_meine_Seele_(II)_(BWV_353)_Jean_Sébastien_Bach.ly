\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, der du meine Seele (II)"
  opus = "BWV 353"
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
           d''4 d'' a' bes'
          c'' bes'8 [a'] a'2
          g'\fermata bes'4 bes'
          a' g' fis' g'
          a'1\fermata \bar "|."
           a'4 bes' c'' a'
          bes' a'8 [g'] g'2
          f'\fermata bes'4 c''
          d''8 [c''] bes'4 ees'' d''
          c''2 bes'\fermata
           a'4 bes' c'' d''
          c'' bes' a'2\fermata
          g'4 a' bes' c''8 [bes']
          a'4. g'8 g'2\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           g'8 [fis'] g'4 fis' g'
          g'8 [fis'] g'4 g' fis'
          d'2\fermata g'4 g'8 [f']
          ees' [d' d' c'] c'4 d'
          d'1\fermata \bar "|."
           fis'4 g' g' f'
          f' f' f' e'
          c'2\fermata f'4 f'
          f'8 [ees' f' d'] g'4 g'
          g' f'8 [ees'] d'2\fermata
          f'4 ees'8 [d'] c'4 f'8 [g']
          a'4 g' fis'2\fermata
          g'4 d' g' g'
          g' fis' d'2\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Je -- su, der du mei -- ne See -- le
      hast durch dei -- nen bit -- tern Tod
      Kräf -- tig -- lich her -- aus -- ge -- ris -- sen
      und mich sol -- ches las -- sen wis -- sen
      durch dein an -- ge -- neh -- mes Wort,
      sei doch itzt, o Gott, mein Hort!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           bes8 [c'] d'4 d' d'
          c' d' ees' d'8 [c']
          bes2\fermata d'4 g
          g8 [fis] g4 a8 [c' bes g]
          fis1\fermata \bar "|."
           d'4 d' c' c'
          bes8 [c'] d'4 c'4. bes8
          a2\fermata d'4 a
          bes bes bes8 [c' d' bes]
          g [ees'] a4 bes2\fermata
          c'4 bes f'8 [ees'] d'4
          d' d' d'2\fermata
          d'4 d' d' c'8 [d']
          ees' [c' a d'] b2\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           g8 [a bes c'] d'4 c'8 [bes]
          a4 g c d
          g,2\fermata g8 [f ees d]
          c [d] ees4 a, g,
          d1\fermata \bar "|."
           d4 g8 [f] e4 f8 [e]
          d4 c8 [bes,] c2
          f,\fermata d4 f
          bes8 [c' d' bes] g [a bes g]
          ees [c] f4 bes,2\fermata
          f4 g a bes8 [a]
          g [fis] g4 d2\fermata
          bes8 [a g fis] g [f ees d]
          c [a,] d4 g,2\fermata \bar "|."
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
