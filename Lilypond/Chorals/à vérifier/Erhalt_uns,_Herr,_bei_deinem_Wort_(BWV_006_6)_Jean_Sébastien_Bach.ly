\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Erhalt uns, Herr, bei deinem Wort"
 subtitle = "tiré de la cantate : Bleib bei uns, denn es will Abend werden"
  opus = "BWV 6/6"
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
          \partial 4  g'8 [a']
          bes'4 a'8 [g'] fis'4 g'8 [a']
          bes'4 a' g'\fermata bes'
          c'' c'' d'' bes'
          c'' c'' d''\fermata
          d''
          ees'' d''8 [ees''] f'' [ees''] d''4
          c''8 [bes'] c''4 bes'\fermata d''
          bes' c'' bes' a'
          g' fis' g'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          g'8 [f'] ees'4 d' d'8 [fis']
          g'4 fis' d'\fermata g'
          f'8 [g'] a'4 bes' d'
          g'8 [bes'] a' [g'] fis'4\fermata
          g'
          g'8 [a'] bes'4 c'' bes'
          a'8 bes'4 a'8 f'4\fermata a'
          g' g'8 [fis'] g'4 fis'
          g'8 [ees'] d'4 d'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Be -- weis dein Macht, Herr Je -- su Christ, Der du Herr al -- ler Her -- ren bist; be -- schirm dein ar -- me Chri -- sten -- heit, dass sie dich lob in E -- wig -- keit.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes8 [c']
          d'4 c'8 [bes] a4 bes8 [c']
          d' [ees'] a [d'] bes4\fermata d'
          c' f' f' g'
          g' c'16 [d' ees'8] a4\fermata
          bes
          c' f f f'
          ees'8 [d'] ees' [c'] d'4\fermata d'
          d' c' d' d'8 [c']
          bes4 a8 [b16 c'] b2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,4
          g c d8 [c'] bes [a]
          g [c] d4 g,\fermata g
          a f bes8 [a] g [f]
          ees [d] ees4 d\fermata
          g
          c bes, a, bes,
          f f bes,\fermata fis
          g8 [g,] a,4 bes,8 [c] d,4
          ees,8 [c,] d,4 g,2\fermata \fine
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
