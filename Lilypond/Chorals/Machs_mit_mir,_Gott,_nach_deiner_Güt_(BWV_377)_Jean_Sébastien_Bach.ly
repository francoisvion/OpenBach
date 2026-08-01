\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Machs mit mir, Gott, nach deiner Güt"
  opus = "BWV 377"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d'8 [e']
          fis'4 g' a' a'
          g' fis' e'\fermata a'
          b' cis'' d'' cis''
          b'2 a'4\fermata \bar "|."
          \partial 4  a'
          d'' cis'' b' a'
          g' fis' e'\fermata a'
          g' fis' e'8 [fis'] g'4
          fis' e' d'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a4
          d' d' e' d'8 [cis']
          b [cis'] d'4 cis'\fermata e'
          fis'8 [gis'] a'4 b' a'~
          a' gis' e'\fermata \bar "|."
          \partial 4  e'
          fis' e' d'8 [e'] fis'4
          e' a8 [b] cis'4\fermata fis'8 [e']
          d' e'4 d' cis'8 d'4
          d' cis' a\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Mach's mit mir, Gott, nach dei -- ner Güt, hilf mir in mei -- nem Lei -- den,
      ruf ich dich an, ver -- sag mir's nicht: ist al -- les gut, wenn gut das End.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  fis8 [g]
          a4 g8 [fis] e4 fis
          g a a\fermata a
          d' e' e' e'
          fis' e'8 [d'] cis'4\fermata \bar "|."
          \partial 4  cis'8 [b]
          a [fis g a] b4 b
          b8 [cis'] d'4 a\fermata cis'
          b8 [a] a4 a g
          a4. g8 fis4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          d8 [cis] b,4 cis d
          e fis8 [g] a4\fermata cis'
          b a gis a
          d e a,\fermata \bar "|."
          \partial 4  a8 [g]
          fis [d e fis] g [fis e dis]
          e4 fis8 [gis] a4\fermata fis
          b,8 [cis] d4 a, b,
          a,8 [g,] a,4 d,\fermata \bar "|."
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
