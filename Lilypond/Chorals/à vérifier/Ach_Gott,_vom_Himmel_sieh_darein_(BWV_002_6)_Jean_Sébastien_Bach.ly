\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ach Gott, vom Himmel sieh darein"
  opus = "BWV 2/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          bes' a' g' d''
          d''8 [c''] bes'4 a'\fermata c''
          bes' a' g' c''
          bes' a' g'\fermata
          g'
          a' f' e' d'8 [e']
          f'4 g' a'\fermata f'
          g'8 [a'] bes'4 a' bes'
          g' fis' g'\fermata g'
          d'' bes' c'' d''
          c'' bes' a'2
          a'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          g' fis' g' bes'
          a' g' fis'\fermata aes'
          g' fis' cis' d'
          d'2 d'4\fermata
          d'
          e' d' cis' d'
          d' d' e'\fermata d'8 [c']
          bes [c'] d'4 c' d'
          d'8 [ees'] d'4 d'\fermata d'
          d' d' ees' f'
          ees' d' cis'8 d'4 cis'8
          d'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ach Gott, vom Him -- mel sieh' da -- rein und lass dich dess er -- bar -- men,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      wie we -- nig sind der Heil' -- gen dein, ver -- las -- sen sind wir Ar -- men: dein Wort man lässt nicht ha -- ben wahr, der Glaub' ist auch ver -- lo -- schen gar bei al -- len Men -- schen -- kin -- dern.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          d' c' d' g'
          d' d' d'\fermata ees'
          e' d'8 [c'] bes4 a
          g fis8 [c'] bes4\fermata
          bes
          a a a a
          a d' cis'\fermata a
          g f8 [g] a [g] fis4
          g8 [c'] a4 bes\fermata bes
          a g g g
          g2~ g8 f e4
          fis2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          g a bes a8 [g]
          fis4 g d\fermata c
          cis d e fis
          g d g,\fermata
          g
          cis d a8 [g] f [e]
          d [c] bes,4 a,\fermata d
          ees d8 [e] f [ees] d [c]
          bes, [c] d4 g,\fermata g
          fis g8 [f] ees [d] c [b,]
          c4 g, a,2
          d2.\fermata \fine
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
