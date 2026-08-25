\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Christ, der du bist der helle Tag"
 poet = "Auteur : Erasmus Alber (v.1500-1553)"
  opus = "BWV 273"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
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
          g' bes' a' g'
          bes' c'' d''\fermata d''
          d'' d''8 [ees''] f'' [ees''] d''4
          c'' c'' bes'\fermata
          \partial 4  bes'
          bes' d'' c'' a'
          bes' c'' d''\fermata d''
          d'' d'' c'' c''
          bes'4. a'16 [g'] f'4\fermata f'
          bes'8 [c''] d''4 c'' d''
          bes' a' g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d'8 [e' f' g'] f' [ees'] d'4
          g'8 [f' ees' f'] f'4\fermata f'
          f' g' a' bes'~
          bes'8 [a'16 g'] a'4 f'\fermata
          \partial 4  g'
          g'8 [a'] bes'4 bes'8 [a'16 g'] f'4
          f' f' f'\fermata f'
          f' f' f'8. [ees'16] d'4~
          d' e' d'\fermata d'
          g'8 [a'] bes'4 bes' a'
          a'8 g'4 fis'8 d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Christ, der du bist der hel -- le Tag,
      vor dir die Nacht nicht blei -- ben mag;
      du leuch -- test uns vom Va -- ter her
      und bist des Lich -- tes Pre -- di -- ger,
      und bist des Lich -- tes Pre -- di -- ger.
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
          bes d'8 [c'] c'4 bes8 [a]
          g16 [a] bes4 a8 bes4\fermata bes8 [c']
          d' [c'] bes4 c' bes8 [d']
          g'4 f'8 [ees'] d'4\fermata
          \partial 4  d'
          ees' f' f' c'
          bes4. a8 bes4\fermata bes
          bes bes4. a8 a4~
          a8 [g] g [a16 bes] a4\fermata bes8 [c']
          d' [c' bes a] g4 d'
          d'8 [ees' a d'] bes4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,4
          g d8 [e] f [fis g f]
          ees [d c f] bes,4\fermata bes,
          bes8 [a] g4 f g8 [f]
          ees4 f bes,\fermata
          \partial 4  g8 [f]
          ees [d c bes,] f4. ees8
          d [bes,] f4 bes,\fermata bes,
          bes,8 [c d ees] f4 fis8 [d]
          g4 cis d\fermata bes,8 [a,]
          g,4 g8 [f] e4 fis
          g8 [c] d4 g,\fermata \fine
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
