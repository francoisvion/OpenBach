\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Meine Seele erhebt den Herren (doxology)"
  opus = "BWV 10/7"
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
          d''2 f''
          d''4 d'' d'' d''
          ees''2 d''
          c'' c''
          bes'1\fermata
          d''2 f''
          c''4 c'' c'' g'
          bes'2 a'
          g'1\fermata
          d''2 f''
          d''4 d'' d'' d''
          ees''2 d''
          c'' c''
          bes'1\fermata
          d''2 f''
          c''4 c'' c'' c''
          c''2 g'4 a'
          bes'2 a'
          g'1~
          g'
          g'
          g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          g'2 f'
          f'4 fis' g' a'
          g' f'2 g'4
          g'2 f'
          f'1\fermata
          f'
          f'4 f' ees' g'
          g'2 fis'
          d'1\fermata
          g'2 a'
          f'2. fis'4
          g' a' bes'2~
          bes'4 bes' bes' a'
          f'1\fermata
          r
          f'4 g' a' bes'
          c''2 c'
          d' d'4 c'
          b d' g' f'
          ees'1
          ees'2 d'4 c'
          d'1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Mei -- ne Seel’ er -- hebt den Her -- ren; und mein Geist freut sich Got -- tes, mei -- nes Hei -- lands. denn er hat sein’ e -- lend’ Magd an -- ge -- se -- hen, Sieh’, von nun an wer -- den mich se -- lig prei -- sen all’ Kin -- des -- kind.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes2 c'
          d'4 c' bes a
          bes c'2 bes4
          bes2 a
          d'1\fermata
          bes
          a4 c' g c'
          d'2. c'4
          bes1\fermata
          bes2 c'
          d'4 c' bes a
          bes c' f f'
          g'2 f'4 c'
          d'1\fermata
          r2 f4 g
          a bes c'2~
          c'4 d' e' fis'
          g'2 f'4 ees'
          d' b c' d'
          d' g c'2
          c' b4 a
          b1\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          g2 a
          bes4 a g fis
          g a bes g
          ees c f2
          bes,1\fermata
          bes2 d
          f4 a c' ees
          d c d2
          g,1\fermata
          g2 f
          bes4 c' d'2~
          d'4 c' bes d
          ees c f2
          bes,1\fermata
          bes,4 c d ees
          f2. g4
          a bes c'2
          bes,4 c d ees
          f2 ees4 d
          c d ees f
          g1
          g,\fermata \fine
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
