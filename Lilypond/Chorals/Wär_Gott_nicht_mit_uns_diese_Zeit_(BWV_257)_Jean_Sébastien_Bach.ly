\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wär Gott nicht mit uns diese Zeit"
  opus = "BWV 257"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  c''4
          c''8 [b' a' b'] c'' [d''] e''4
          d'' d'' c''\fermata c''
          b' a'8 [b'] c''4 d''
          b'2 a'4\fermata \bar "|."
          \partial 4  d''
          e'' e'' b'8 [c''] d''4
          c'' c'' b'\fermata c''
          d'' a'8 [b'] c''4 b'
          a' a' g'\fermata
          \partial 4  c''
          b' a'8 [b'] c''4 d''8 [c'']
          b'2 a'4\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          g' f' e'8 [d'] c'4
          d'8 [e'] f'4 e'\fermata fis'
          g' fis'8 [gis'] a'4 a'8 [g']
          f'4 e'8 [d'] c'4\fermata \bar "|."
          \partial 4  g'
          g' g' d'4. e'8
          fis' [gis'] a'4 gis'\fermata a'
          a'8 [g'] fis'4 e' d'8 [e']
          f'4 f' e'\fermata
          \partial 4 a'
          g' a' gis'8 [b' a' g']
          f'4 e'8 [d'] cis'4\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Wär' Gott nicht mit uns die -- se Zeit, so soll I -- sra -- el sa -- gen,
      wär' Gott nicht mit uns die -- se Zeit, wir hät -- ten müßt ver -- za -- gen,
      die an uns set -- zen al -- le.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  e'4
          e'8 [d'] c'4 c'8 [b a g]
          a4 b c'\fermata c'
          d' d' e' a
          a gis a\fermata \bar "|."
          \partial 4  g
          c' g8 [a] b4 a8 [b]
          c' [d'] e'4 e'\fermata e'
          d' d' g8 [a] b4
          c'8 [b c' d'] e'4\fermata
          \partial 4 ees'
          d' d' e' a
          a gis e\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          e f8 [g] a [b] c'4
          f g c\fermata a
          g d' a8 [g f e]
          d4 e a,\fermata \bar "|."
          \partial 4  b,
          c8 [d e f] g4 fis8 [gis]
          a [b c' d'] e'4\fermata a8 [g]
          fis [e] d4 e8 [fis] g4
          a8 [g a b] c'4
          \partial 4 fis
          g f e8 [c f e]
          d [b,] e4 a,\fermata \bar "|."
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
