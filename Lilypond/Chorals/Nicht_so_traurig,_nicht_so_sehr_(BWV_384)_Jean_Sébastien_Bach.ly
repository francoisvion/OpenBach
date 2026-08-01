\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Nicht so traurig, nicht so sehr"
  opus = "BWV 384"
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
          \partial 32 * 16  ees''4 d''8 [c'']
          g''4 f''8 [ees''] d''4 ees''8 [f'']
          b'2\fermata c''8 [d''] ees''4
          aes' g' f' bes'
          g'2\fermata \bar "|."
          \partial 32 * 16  g''4 bes'
          a' bes' ees'' d''8 [c'']
          d''2\fermata d''4 ees''8 [f'']
          b'4 g'' ees'' d''8. [c''16]
          c''2\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 32 * 16  g'4 f'
          ees'8 [f'] g'4 aes' g'8 [f']
          g'2\fermata g'4 g'
          f' bes bes f'
          ees'2\fermata \bar "|."
          \partial 32 * 16  ees'4 ees'
          f' f' g' f'
          f'2\fermata f'4 f'
          g' g' g' f'8. [ees'16]
          ees'2\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Nicht so Trau -- rig, nicht so sehr, mei -- ne See -- le, sei be -- trübt,
      Nimm für -- lieb mit dei -- nem Gott, hast du Gott, so hat's nicht Not.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 32 * 16  c'4 b
          c' c' c' b8 [c']
          d'2\fermata c'4 c'
          c'8 [d'] ees'4 ees' d'
          bes2\fermata \bar "|."
          \partial 32 * 16  bes4 bes
          c' bes bes a
          bes2\fermata bes4 c'
          d' c' c'4. b8
          g2\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 32 * 16  c4 d
          ees c f g8 [aes]
          g2\fermata ees8 [d] c4
          f g8 [aes] bes4 bes,
          ees2\fermata \bar "|."
          \partial 32 * 16  ees4 g
          f8 [ees] d4 c f
          bes,2\fermata bes4 aes
          g8 [f ees f] g4 g,
          c2\fermata \bar "|."
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
