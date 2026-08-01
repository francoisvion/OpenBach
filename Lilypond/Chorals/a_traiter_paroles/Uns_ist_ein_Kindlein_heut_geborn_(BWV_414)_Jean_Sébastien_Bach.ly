\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Uns ist ein Kindlein heut geborn"
  opus = "BWV 414"
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
          \partial 4  b'4
          b'8 [c''] d''4 b' g'
          a' b' c''\fermata b'
          a' g' g'4. a'8
          b'4 b' a'8 [g'] a'4
          g'2.\fermata \bar "|."
          \partial 4  b'4
          a' b' g' e'
          fis' g' a'\fermata b'
          g' g' g'4. a'8
          b'4 b' a'8 [g'] a'4
          g'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  g'4
          g' a' g' g'
          f'8 [e'] d'4 e'\fermata d'~
          d'8 [c'] b4 e'2
          d'4 d' d'4. c'8
          b2.\fermata \bar "|."
          \partial 4  g'4
          fis' fis' e'8 [d'] cis'4
          d'4. cis'8 d'4\fermata dis'
          b e' d' e'8 [fis']
          g'4 d' d'4. c'8
          b2.\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Uns ist ein Kind -- lein heut' ge -- bor'n von ei -- ner Jung -- frau aus -- er -- kor'n.
      Sein Nam ist Wun -- der -- bar und Rat, durch ihn ha -- ben wir fun -- den Gnad, ha -- ben wir Gnad.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          d' d' d' d'8 [c']
          c'4 g g\fermata g
          fis g c'2
          b8 [a] g4 g fis
          d2.\fermata \bar "|."
          \partial 4  d'4
          d'8 [c'] b4 b a
          a g fis\fermata fis
          g c' b8 [c' b a]
          g4 g2 fis4
          d2.\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,4
          g fis g e
          f g c\fermata g,
          d e8 [d] c [d e fis]
          g4 b,8 [c] d4 d
          g,2.\fermata \bar "|."
          \partial 4  g,4
          d dis e a8 [g]
          fis4 e d\fermata b,
          e8 [d e fis] g [a g fis]
          e4 b,8 [c] d2
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
