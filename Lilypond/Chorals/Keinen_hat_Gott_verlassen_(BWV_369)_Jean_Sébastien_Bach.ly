\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Keinen hat Gott verlassen"
  opus = "BWV 369"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  b'4
          b' b' b' e''
          d''4. c''8 b'4\fermata b'8 [c'']
          d''4 fis' g' a'
          b'2.\fermata \bar "|."
          \partial 4  a'4
          a' a' a' a'
          b'2 a'4\fermata a'
          b'8 [cis''] d''4 d'' cis''
          d''2.\fermata
          \partial 4  d''4
          b' b' c'' d''
          e''2 b'4\fermata b'
          a' g'8 [fis'] fis'4. e'8
          e'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          fis' e'8 [dis'] e' [fis'] g'4~
          g' fis' d'\fermata d'
          d' d'8 [c'] b4 e'
          dis'2.\fermata \bar "|."
          \partial 4  e'4
          d' d'8 [cis'] d' [e'] fis'4
          g'2 fis'4\fermata a'
          g' a' a'4. g'8
          fis'2.\fermata
          \partial 4 fis'4
          d' g' g' f'
          e'2 e'4\fermata e'
          e' e' e' dis'
          b2.\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Kei -- nen hat Gott ver -- las -- sen der ihm ver -- traut all -- zeit;
      ob ihm schon drum viel has -- sen, so bringt's ihm doch kein Leid:
      Gott will die Sei -- nen schüt -- zen, zu -- letzt er -- he -- ben hoch. _
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g4
          fis8 [g] a4 g c'8 [b]
          a [g] a4 g\fermata g
          a a g8 [fis] e4
          fis2.\fermata \bar "|."
          \partial 4  e4
          fis8 [e fis g] a4 d'
          d'2 d'4\fermata d'
          d' d'8 [e'] fis'4 e'
          d'2.\fermata
          \partial 4 a4
          g d' e' b~
          b a g\fermata b
          e c' b8 [g] a4
          gis2.\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  e4
          dis b, e8 [d] c4
          d2 g,4\fermata g
          fis8 [e] d4 e8 [d] c4
          b,2.\fermata \bar "|."
          \partial 4  cis4
          d d8 [e] fis4 d
          g,8 [a, b, c] d4\fermata fis
          g fis8 [g] a4 a,
          d2.\fermata
          \partial 4 d4
          g8 [a g f] e [f e d]
          c [b, c d] e4\fermata g,
          c b,8 [a,] b,4 b,
          e,2.\fermata \bar "|."
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
