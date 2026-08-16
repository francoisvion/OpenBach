\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Valet will ich dir geben"
  opus = "BWV 245/26"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key ees \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  ees'4
          bes' bes' c'' d''
          ees''2 ees''4\fermata g''
          f'' ees'' ees'' d''
          ees''2.\fermata
          ees''8 [f'']
          g''4 g'' f'' ees''
          d''8 [c''] d''4 bes'\fermata d''
          ees'' d'' c'' c''
          bes'2.\fermata
          bes'4
          g'8 [aes'] bes'4 c'' bes'
          bes' aes'8 [g'] g'4\fermata bes'
          aes' g' f' f'
          ees'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  bes4
          ees' g' aes' g'
          g'2 g'4\fermata c''
          c'' aes' g' f'
          g'2.\fermata
          g'8 [aes']
          bes'4 c'' c'' a'
          bes'8 [a'] bes'4 f'\fermata bes'
          bes' bes' bes' a'
          f'2.\fermata
          f'4
          ees'8 [f'] g'4 aes' g'
          g' f' ees'\fermata ees'
          ees' ees' ees' d'
          bes2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Va -- let will ich dir ge -- ben, du ar -- ge, fal -- sche Welt,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      dein sünd -- lich bö -- ses Le -- ben durch -- aus mir nicht ge -- fällt. Im Him -- mel ist gut woh -- nen, hin -- auf steht mein Be -- gier da wird Gott e -- wig loh -- nen dem, der ihm dient all -- hier.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g4
          bes ees' ees' d'
          c'2 c'4\fermata ees'
          c' c' bes bes
          bes2.\fermata
          bes4
          ees' ees' f' f'
          f'8 [ees'] f'4 d'\fermata f'
          ees' f' g' f'8 [ees']
          d'2.\fermata
          bes4
          bes ees' ees' des'
          c'2 c'4\fermata g
          aes bes c' bes8 [aes]
          g2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  ees4
          g ees aes b,
          c2 c4\fermata c'
          aes f bes bes,
          ees2.\fermata
          ees4
          ees'8 [d'] c' [bes] a4 f
          bes2 bes,4\fermata aes
          g f ees f
          bes,2.\fermata
          d4
          ees des c8 [d] e4
          f2 c4\fermata des
          c bes, a, bes,
          ees,2.\fermata \fine
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
