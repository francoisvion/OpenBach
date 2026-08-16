\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Von Gott will ich nicht lassen"
  opus = "BWV 73/5"
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
          c'' d'' ees'' f''
          d''2 bes'4\fermata bes'
          c'' c'' d'' d''
          g'2.\fermata
          g''4
          f'' ees'' ees'' d''
          ees''2.\fermata d''4
          ees'' f'' g'' g''
          f''2 d''4\fermata
          d''
          ees'' d'' c'' c''
          d'' c'' bes'\fermata aes'
          g' c'' c'' b'
          c''2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  ees'4
          g' g' g' f'
          f'8 [g'] a'4 g'\fermata g'
          ees' f' f'8 [aes'] g' [f']
          ees'2.\fermata
          c''4
          c'' c'' bes' bes'
          bes'2.\fermata bes'4
          bes' aes' bes' c''8 [bes']
          a' [g'] a'4 f'\fermata
          bes'
          bes' g' ees' aes'~
          aes'8 g' a'4 g' f'
          ees' f' g' g'
          g'2. \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Von Gott will ich nicht lass -- sen, denn er lässt nicht von mir,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      führt mich auf rech -- ter Stra -- ssen, da ich sonst ir -- ret sehr. Er reicht mir sei -- ne Hand, den A -- bend wie den Mor -- gen thut er mich wohl ver -- sor -- gen, sei wo ich woll' im Land.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          ees' d' c' c'
          bes a d'\fermata ees'
          c' aes g g
          c'2.\fermata
          ees'4
          f' aes' g' f'
          g'2.\fermata f'4
          ees'4. d'4 bes8 ees' [d']
          c' [ees'] d' [c'] bes4\fermata
          f'
          ees' bes c'8 [d'] ees'4
          f' ees' d' bes
          bes c'8 [d'] ees' [d'16 c'] d'8 [d']
          e'2. \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  c4
          c' b c' a
          bes fis g\fermata ees
          aes f b, b,
          c2.\fermata
          c'4
          aes f bes bes,
          ees2.\fermata bes4
          g f ees c
          f2 bes,4\fermata
          bes
          g ees aes g
          f fis g\fermata d
          ees aes g g,
          c2.\fermata \fine
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
