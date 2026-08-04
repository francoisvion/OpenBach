\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wie bist du, Seele, in mir so gar betrübt"
  opus = "BWV 435"
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
          b' a' g'2
          fis'4\fermata g' a' g'
          fis' fis' e'\fermata fis'
          g' a' b'2
          a'4\fermata c'' c'' b'
           a' a' g'\fermata a'
          a' a' a' fis'
          g' a' b'2
          a'4\fermata fis' g' a'
          b' b' a' g'8 [fis']
          fis'2 e'4\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'8 [dis']
          e' [b cis' dis'] e' [dis'] e'4
          e'8 [dis']\fermata e'4. dis'8 e'4
          e' dis' b\fermata dis'
          e' d'8 [c'] b [d'] g'4
          fis'\fermata e' d' d'
           e' d'8 [c'] b4\fermata d'
          d'8 [cis' d' e'] fis'4 d'
          d'8 [e'] fis'4 g' d'
          d'\fermata fis' b8 [e' d' c']
          b4 e'~ e'8 [dis'] e'4
          e' dis' b\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Wie bist du See -- le in mir so gar be -- trübt? Dein Hei -- land le -- bet, der dich ja treu -- lich liebt, er -- gib dich gänz -- lich sei -- nem Wil -- len, er kann al -- lein dein Trau -- ern stil -- len.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g8 [a]
          b e'4 a8 b2
          b4\fermata b a8 [b16 c'] b4
          cis'8 [fis b a] g4\fermata b
          b8 [c' b a] g [b] d'4
          d'\fermata c'8 [b] a [fis] g4
           g fis g\fermata fis8 [g]
          a4 a d' a
          b c' d' g~
          g8 [fis]\fermata b [a] g4 d'~
          d'8 [f' e' d'] c'4 cis'
          b4. a8 gis4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  e8 [fis]
          g4~ g8 [fis] e [fis g e]
          b,4\fermata e fis g8 [e]
          ais,4 b, e,\fermata b,
          e fis g g,8 [b,]
          d4\fermata a8 [g] fis [d g b,]
           c [a,] d4 g,\fermata d8 [e]
          fis [g fis e] d [e d c]
          b, [c b, a,] g, [a, b, c]
          d4\fermata dis e fis
          g gis a ais
          b b, e\fermata \bar "|."
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
