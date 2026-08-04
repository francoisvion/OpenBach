\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Lobt Gott, ihr Christen, allzugleich (I)"
  opus = "BWV 375"
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
          \partial 4  g'4
          d'' d'' d'' d''
          e'' d''8 [c''] b'4\fermata a'
          b'8 [cis''] d''4 d'' cis''
          d''2\fermata r4
          \partial 4  d''
          d'' d'' d''8 [c'' b' c'']
          d'' [c''] b'4 a'\fermata d''
          c'' b' a' a'
          g'8 [a' b' c''] d''4\fermata
          \partial 4  d''
          c'' b' b' a'
          g'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d'8 [e'] fis'4 g' g'8 [f']
          e' [g'] fis'4 g'\fermata a'
          g' fis' e' e'
          d'2.\fermata
          \partial 4  fis'4
          g' fis' g'8 [a' b' a']
          g'4 g'8 [fis'16 e'] fis'4\fermata fis'
          g' g'8 [fis'] e'4 fis'
          g' fis' f'\fermata
          \partial 4 e'
          e'8 [fis' g' fis'] e'4 fis'
          d'2.\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Lobt Gott, ihr Chris -- ten all -- zu -- gleich, in sei -- nem höch -- sten Thron, der heut' auf schleusst sein Him -- mel -- reich und schenkt uns sei -- nen Sohn, und schenkt uns sei -- nen Sohn.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          a a8 [b16 c'] b8 [a] g4
          g d' d'\fermata d'
          g d'8 [cis'] b [e' a' g']
          fis'2.\fermata
          \partial 4  d'8 [c']
          b [c' d' c'] b [c'] d'4
          d' e' a\fermata b8 [a]
          g [a b d'] e'4 d'
          d' c' b\fermata
          \partial 4 b
          c'8 [d'] e'4 e'8 [c' a b16 c']
          b2.\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          fis d g8 [a b g]
          c'4 d' g\fermata fis
          e b8 [a] g4 a
          d2.\fermata
          \partial 4  d4
          g8 [a b a] g4~ g8 [a]
          b4 c' d'\fermata b
          e~ e8 [d] c [a, d c']
          b4 a gis\fermata
          \partial 4 gis,
          a, e8 [d] c [a,] d4
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
