\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr, ich habe missgehandelt (II)"
  opus = "BWV 331"
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
           a'4 e' a' b'
          c'' d'' b'2
          a'\fermata c''4 b'
          a' b' c'' d''
          e''1\fermata \bar "|."
           e''4 f'' g'' c''
          f'' e'' d''2
          c''\fermata d''4 d''
          e'' a' d'' c''
          b'2 a'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           e'4 e' e' d'
          e' a' a' gis'
          e'2\fermata a'4 gis'
          a' e' e' a'
          gis'1\fermata \bar "|."
           a'4 a' g' a'
          a'8 [aes'] g'4 g'4. f'8
          e'2\fermata g'4 g'
          g' fis'8 [e'] fis' [gis'] a'4
          a' gis' e'2\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Herr, ich ha -- be miss -- ge -- han -- delt, ja mich drückt der Sün -- den Last;
      ich bin nicht den Weg ge -- wan -- delt, den du mir ge -- zei -- get hast, hast.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           c'4 c' c'8 a4 b16 [a]
          gis4 a e'4. d'8
          c'2\fermata e'4 d'
          e' e'8 [d'] c' [b] a4
          b1\fermata \bar "|."
           c'4 d' d'8 [c'] c'4
          c'8 [b] c'4 c' b
          g2\fermata b4 b
          c'8 [g] d'4 d' e'
          e'4. d'8 cis'2\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           a,4 a8 [g] fis4 f
          e f8 [d] e2
          a,\fermata a4 b
          c' gis a8 [b] f4
          e1\fermata \bar "|."
           a4 g8 [f] e4 f8 [e]
          d4 e8 [f] g2
          c\fermata g8 [f e d]
          c [e d c] b,4 a,
          e2 a,\fermata \bar "|."
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
