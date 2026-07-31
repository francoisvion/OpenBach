\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, du mein liebstes Leben"
  opus = "BWV 356"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           g'2 a'4
          bes' c'' d''
          c''2 bes'4
          a'2 g'4\fermata
          d'' ees'' f''
           bes' c'' d''
          c''2 c''4
          bes'2.\fermata \bar "|."
          a'2 g'4
          a' bes' c''
          bes'2 a'4
          g'2 f'4\fermata
           bes'2 a'4
          bes' c'' d''
          d''2 c''4
          d''2.\fermata
          a'2 d''4
          g' a' bes'
          a'2 a'4
          g'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           d'2 a'4~
          a'8 [g' f' ees'] d'4
          g' a'4. g'8
          g'4 fis' d'\fermata
          bes' a'8 [g'] f'4
           g' f'8 [ees'] d'4
          g' ees'8 [g' f' ees']
          d'2.\fermata \bar "|."
          f'2 g'4~
          g'8 [f' e' d'] c'4
          f' g'4. f'8
          f'4 e' c'\fermata
          f' g' d'~
          d'8 [g' f' ees'] d'4
          g'8 [fis' g' bes' a' g']
          fis'2.\fermata
          fis'2 fis'4
          g' d' d'
          ees' c' d'8 [c']
          b2.\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Je -- su, du mein lieb -- stes Le -- ben, mei -- ner See -- len Bräu -- ti -- gam, der du dich vor mich ge -- ge -- ben an des bit -- tern Kreu -- zes -- stamm. Je -- su, mei -- ne Freud und Won -- ne, all mein Hoff -- nung, Schatz
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           bes2 d'4
          d' c' bes~
          bes a bes8 [d']
          ees' [a d' c'] bes4\fermata
          f' ees' d'~
           d' c' bes~
          bes a8 [g] a4
          bes2.\fermata \bar "|."
          c'2 c'4
          c' bes a~
          a g a8 [c']
          d' [g c' bes] a4\fermata
          d' c'2
          bes8 [ees' d' c'] bes4~
          bes8 [a] bes4 ees'
          a2.\fermata
          d'2 d'4
          d' a g
          g2 fis4
          d2.\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           g,4 g fis
          g a bes
          e fis g
          c d g,\fermata
          bes, c d
           g, a, bes,
          ees c f
          bes,2.\fermata \bar "|."
          f,4 f e
          f g a
          d e f
          bes, c f,\fermata
          d e fis
          g a bes
          ees2.
          d\fermata
          d8 [d, d c bes, a,]
          bes, [a, g, fis,] g,4
          c a, d
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
