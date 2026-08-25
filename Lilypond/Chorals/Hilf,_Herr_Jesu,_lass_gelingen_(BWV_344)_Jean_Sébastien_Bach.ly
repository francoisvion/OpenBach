\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Hilf, Herr Jesu, lass gelingen"
 poet = "Auteur : Johann Rist (1607-1667)"
  opus = "BWV 344"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           g'2 g'4
          d''2 d''4
          c''2 bes'4
          a'2 a'4\fermata
          d''2 f''4
          ees''2 d''4
          c''2 c''4
          bes'2.\fermata
           a'2 bes'4
          c''2 c''4
          bes'2 c''4
          a'2 a'4\fermata
          d''2 d''4
          c''2 bes'4
          a'2 a'4
          g'2.\fermata
           bes'2 bes'4
          bes'2 bes'4
          ees''2 d''4
          c''2 c''4\fermata
          c''2 d''4
          bes'2 c''4
          a'2 a'4
          g'2 g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           d'2 d'4
          d'8 [e'] fis'4 g'
          a'2 a'8 [g']
          g'4 fis'8 [e'] fis'4\fermata
          f'2 c''4
          bes' c''~ c''8 [bes']
          bes'2 a'4
          f'2.\fermata
           fis'2 g'4~
          g' fis'8 [g'] a'4~
          a' g'8 [fis'] g'4~
          g' fis'8 [e'] fis'4\fermata
          fis'8 [g'] a'4 g'~
          g' fis' g'
          g'2 fis'4
          d'2.\fermata
          g'2 g'4
          g'2 bes'4
          bes' a' bes'~
          bes' a'8 [g'] a'4\fermata
          a'2 a'4
          g'2 g'4
          g'2 fis'4
          d'2 d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Hilf, Herr Je -- su, laß ge -- lin -- gen,
      hilf, das neu -- e Jahr, geht an,
      laß es neu -- e Kräf -- te brin -- gen,
      daß auf's neu' ich wan -- deln kann.
      Neu -- es Glück und neu -- es Le -- ben
      wollst du mir aus Gna -- de ge -- ben.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           bes2 bes4
          a d'8 [c'] bes4
          ees' d' d'
          d'2 d'4\fermata
          f'2 f'4
          g' f' f'
          g' f'4. ees'8
          d'2.\fermata
           d'2 d'4
          ees'2~ ees'8 [d']
          d'2 ees'4
          d'2 d'4\fermata
          a d'8 [c'] bes4
          c' d' d'
          ees'8 [d'] c' [ees'] d' [c']
          bes2.\fermata
          d'2 d'4
          ees'2 f'4
          ees' c' f'
          f'2 f'4\fermata
          f'2 fis'4
          d'2 c'8 [d']
          ees' [d'] c' [ees'] d' [c']
          bes2 bes4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           g8 [a] bes4 g
          fis8 [e] d4 g~
          g fis g
          d2 d4\fermata
          bes, bes a
          g a bes
          ees f f,
          bes,2.\fermata
           d4 c bes,
          a, g, fis,
          g, g c
          d2 d4\fermata
          d8 [e] fis4 g
          a d g
          c a, d
          g,2.\fermata
          g,4 g f
          ees, ees d
          c, c bes,
          f,2 f4\fermata
          f ees d
          g f ees8 [d]
          c4 a, d
          g,2 g,4\fermata \fine
        }
      >>
    }
  >>
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}

\midi {}
