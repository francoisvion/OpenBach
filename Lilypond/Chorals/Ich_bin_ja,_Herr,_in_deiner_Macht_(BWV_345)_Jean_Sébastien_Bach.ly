\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ich bin ja, Herr, in deiner Macht"
  opus = "BWV 345"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          a' a'8 [bes'16 c''] bes'8 [g'] d''4~
          d''8 [c''16 bes'] a'8 [g'] fis'4\fermata a'
          bes' c''8 [d''16 ees''] d''8 [bes'] f''4~
           f''8 [e''16 d''] c''8 [bes'] a'4\fermata d''
          cis'' d'' e''8 [f''16 g''] f''8 [e'']
          e''2 d''4\fermata \bar "|."
          \partial 4  d''
          bes'8 [a' b' d''] g'' [ees''] c''4
          d''8 [f'' ees'' d''] ees''4\fermata a'
          d'' g' c''8 [d''16 ees''] d''8 [c'']
          bes'4 a'8 [g'] g'4\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          ees' d' d'4. d'8
          g'4 fis'8 [g'] d'4\fermata fis'
          g' f' f'4. f'8
           bes'4 c''8 [e'] f'4\fermata f'
          g' f' e' d'
          e'8 [f'] g'4 fis'\fermata \bar "|."
          \partial 4 a'
          g' g' g'4. ees'8
          aes'4 g' g'\fermata fis'
          g'8 [f'] e'4 fis'8 [g'] a'4
          a'8 [g'] fis'4 d'\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ich bin ja, Herr, in dei -- ner Macht, du hast mich an das Licht ge -- bracht, und du er -- hältst mir auch das Le -- ben, du ken -- nest mei -- ner Mon -- den Zahl, Wo, wie und wann.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes4
          c'8 [bes] a4 g4. a8
          bes4 c'8 [bes] a4\fermata d'
          d' c' bes4. c'8
           d'4 g8 [c'] c'4\fermata bes
          bes a a a8 [d']
          d' [cis'16 b] cis'4 a\fermata \bar "|."
          \partial 4 d'
          d' d' c'4. c'8
          c'4 b c'\fermata d'
          d' c' c'8 [bes a d']
          d'4 c'8 [bes] bes4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          g fis g4. f8
          ees [d ees c] d4\fermata d
          g a bes4. a8
           g [f e c] f4\fermata bes
          e f cis d
          a a, d\fermata \bar "|."
          \partial 4 fis
          g f ees4. aes8
          f [d] g4 c\fermata c'
          bes8 [a bes c'] a [g] fis4
          g d g,\fermata \bar "|."
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
