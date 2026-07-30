\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr, ich habe missgehandelt (I)"
  opus = "BWV 330"
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
          a'4 e'8 [fis'] gis'4 a'
          b'8 [c''16 d'' c''8 b'] b'4 a'\fermata
          c'' b' a' b'
          c'' d'' e''2\fermata \bar "|."
          e''4 f'' g'' c''
          f'' e'' d'' c''\fermata
          d'' d'' e'' a'
          d'' c''8 [b'] b'2
          a'2.\fermata r4 \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          e'8 [d'] c'4 b d'8 [c']
          e'4 e'8 [f'] e'4 e'\fermata
          a'8 [g' f' e'] e' a'4 gis'8
          a' [e' a' b'16 a'] gis'2\fermata \bar "|."
          a'4 a' g' a'8 [g']
          a' [d''] g'4. g'16 [f'] e'4\fermata
          g'8 [a'] b'4. gis'8 [a' g']
          f' [e' e' f'] e'4. d'8
          cis'2.\fermata r4 \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herr, ich ha -- be miss -- ge -- han -- delt, ja mich drückt der Sün -- den Last;
      ich bin nicht den Weg ge -- wan -- delt, den du mir ge -- zei -- get hast,
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          c'8 [b] a4 e8 [e'] a4
          b8 [gis] a4. gis8 c'4\fermata
          e' d' c' f8 [e]
          e a4 gis16 [a] b2\fermata \bar "|."
          c'4 d'4. c'8 c'4
          c'8 [b] c'4. b8 g4\fermata
          b8 [d' g' f'] e'4. d'8
          c' [b] a4 a gis
          e2.\fermata r4 \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          a,8 [b, c d] e4 fis
          gis8 [e a d] e [e,] a,4\fermata
          a,8 a4 gis8 a [f d e]
          a, [g,] f,4 e,2\fermata \bar "|."
          a,8 [a g f] e4 f8 [e]
          d4 e8 [f] g [g,] c4\fermata
          g8 [f e d] c [d c b,]
          a, [gis, a, d] e4 e,
          a,2.\fermata r4 \bar "|."
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
