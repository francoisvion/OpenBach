\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Jesu Christ, ich schrei zu dir"
  opus = "BWV 334"
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
          \partial 4  g'4
          g' fis' g' a'
          bes' a' g'\fermata g'
          a' a' d'' c''
          bes'2 a'4\fermata \bar "|."
          \partial 4  d''
          c'' bes' a'8 [bes'] c''4
          bes' a' g'\fermata bes'
          a' g' f'8 [e' d' e']
          f'4 g' a'\fermata
          \partial 4  a'
          bes' c'' d''4. c''8
          bes'4 c''8 [bes'] a'2
          g'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          ees' d'8 [c'] bes4 ees'
          d' d' d'\fermata d'
          ees' d' d' g'8 [fis']
          g'2 fis'4\fermata \bar "|."
          \partial 4  g'
          g'8 [f' f' ees'] ees' [d' c' a']
          fis' g'4 fis'8 d'4\fermata g'8 [f']
          e' [d' d' cis'] d' [e' f' cis']
          d' f'4 e'8 f'4\fermata
          \partial 4 f'
          f'8 [g'] a'4 a' d'~
          d' c'8 [d'] ees'4 d'8 [c']
          b2.\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herr Je -- su Christ, du höch -- stes Gut, du Brunn -- quell al -- ler Gna -- den, und in mir hab der Pfei -- le viel, die im Ge -- wis -- sen oh -- ne Ziel mich, mich ar -- men Sün -- der drü -- cken.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes4
          a a g c'
          fis8 g4 fis8 bes4\fermata bes
          c' c' b c'
          d' e'8 [g] d'4\fermata \bar "|."
          \partial 4  d'
          ees'8 [f' g' bes] c' [d' g c']
          d' [ees' a d'] bes4\fermata d'
          cis'8 [d'] e'4 a4. g8
          a [c' d' c'] c'4\fermata
          \partial 4 c'
          d' ees' f' fis'
          g' g2 fis4
          d2.\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          c d ees d8 [c]
          d4 d g,\fermata g
          g fis f ees
          d cis d\fermata \bar "|."
          \partial 4  bes~
          bes8 [a] g4~ g8 [f] ees4
          d8 [c] d4 g,\fermata g~
          g8 [f] e4 d2~
          d8 [a, bes, c] f,4\fermata
          \partial 4 f8 [ees]
          d [ees d c] bes, [c bes, a,]
          g, [bes, ees d] c [a,] d4
          g,2.\fermata \bar "|."
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
