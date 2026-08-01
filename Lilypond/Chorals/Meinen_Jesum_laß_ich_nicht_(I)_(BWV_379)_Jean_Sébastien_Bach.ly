\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Meinen Jesum laß ich nicht (I)"
  opus = "BWV 379"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           b'4 b' b' d''
          c'' c'' b'2\fermata
          b'4 b' a' b'
          c'' b' a'2
          g'1\fermata \bar "|."
           b'4 b' a' a'
          g' g' fis'2\fermata
          e''4 d'' c'' b'
          a' a' g'2\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           g'4 g'8 [a'] g'4 g'~
          g'8 [fis'16 e'] fis'4 g'2\fermata
          g'4 g'4. fis'8 g'4
          a'4. g'4 fis'16 [e'] fis'4
          d'1\fermata \bar "|."
           g'4 g' g' fis'~
          fis' e' dis'2\fermata
          e'8 [fis'] g'4. fis'8 g'4~
          g'8 [fis'16 e'] fis'4 d'2\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Mei -- nen Je -- sum lass' ich nicht, Je -- sus wird mich auch nicht las -- sen.
      Er ist mei -- nes Le -- bens Licht, mei -- nen Je -- sum lass' ich nicht.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           d'4 e'8 [fis'] e'4 d'
          e'8 [c'] a [d'] d'2\fermata
          d'4 d' d' d'
          e'8 [d'] d'4 e'8 [a] d' [c']
          b1\fermata \bar "|."
           d'4 d' d'4. c'8
          b4 b b2\fermata
          g'8 [a'] d'4 e'8 [c'] d'4
          e'8 [a] d' [c'] b2\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           g8 [fis e dis] e [d c b,]
          a,4 d g,2\fermata
          g,8 [a, b, c] d4 g~
          g8 [fis g b,] c4 d
          g,1\fermata \bar "|."
           g,8 [a, b, c] d [e fis dis]
          e [fis g a] b2\fermata
          c8 c'4 b8 a, a4 g8
          c4 d g,2\fermata \bar "|."
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
