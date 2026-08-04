\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Jesu Christ, dich zu uns wend"
  opus = "BWV 332"
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
          b' d'' b' a'
          b' cis'' d''\fermata e''
          d''8 [c''] b'4 a' g'8 [a']
          b'4 a' g'\fermata
          \partial 4  a'
          b' b' a' d''
          d'' cis'' d''\fermata b'
          c'' b' a' g'
          g' fis' g'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          g' a'4. g'4 fis'8
          g'4 g' fis'\fermata a'
          a'4. g'4 fis'8 e' [d']
          d'4 d' d'\fermata
          \partial 4  fis'
          g' g' g' fis'
          e' e' fis'\fermata d'
          e' d'8 g'4 fis' e'8
          d'4 d' d'\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herr Je -- su Christ, dich zu uns wend', dein'n heil' -- gen Geist du zu uns send', mit Hülf' und Gnad', Herr, uns re -- gier' und uns den Weg zur Wahr -- heit führ'.
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
          d' d' d' d'
          d' e' a\fermata c'
          d' d' e'8 b4 a8~
          a g4 fis8 b4\fermata
          \partial 4  d'
          d' d' d' a8 [d']
          b [g] a4 a\fermata g
          g8 [a] b4 e'8 [b] b4
          b a b\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,4
          g, fis, g,8 [b,] d4
          g8 [fis] e4 d\fermata a8 [g]
          fis4 g cis8 [dis e fis]
          g4 d g,\fermata
          \partial 4  d
          g,8 [a, b, cis] d [e fis b]
          g [e a a,] d4\fermata g8 [f]
          e [fis] g4 cis8 [dis] e4
          b,8 [c] d4 g,\fermata \bar "|."
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
