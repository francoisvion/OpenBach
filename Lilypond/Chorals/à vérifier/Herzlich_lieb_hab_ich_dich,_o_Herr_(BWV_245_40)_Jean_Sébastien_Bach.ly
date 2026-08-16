\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herzlich lieb hab ich dich, o Herr"
  opus = "BWV 245/40"
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
          \partial 4  ees''4
          d'' c'' bes' aes'8 [g']
          c''4 c'' bes'\fermata ees''
          d'' c'' bes' aes'8 [g']
          c''4 c'' bes'\fermata bes'
          c'' d'' ees''8 [f''] g''4
          f'' ees''2 d''4
          ees''2.\fermata ees''4
          d'' c'' bes' aes'8 [g']
          c''4 c'' bes'\fermata ees''
          d'' c'' bes' aes'8 [g']
          c''4 c'' bes'\fermata bes'
          c'' d'' ees''8 [f''] g''4
          f'' ees''2 d''4
          ees''2.\fermata ees''4
          ees'' f'' ees''8 [d''] c'' [d'']
          ees''4 ees'' d''\fermata d''
          ees'' f'' ees''8 [d''] c'' [d'']
          ees'' [g''] f''4 d''\fermata g''
          g'' g'' f'' ees''
          ees'' d'' ees''\fermata d''
          ees'' d'' c'' bes'
          bes' a' bes'\fermata g''
          f'' ees'' d''\fermata g''
          aes''8 [g''] f''4 g'' ees''
          ees'' d'' ees''\fermata ees''
          ees'' ees'' f'' ees''
          ees''2. d''4
          ees''2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  bes'4
          bes' g' g' f'8 [ees']
          ees'4 aes' g' g'
          g'8 [f'] ees' [f'] g' [f'] ees' [d']
          ees' [f'] f'4 g' g'
          aes'8 [c''] bes' [aes'] g' [f'] ees'4
          f'2 g'4 aes'
          g'2. g'4
          bes' g' g' f'8 [ees']
          ees'4 aes' g' g'
          g'8 [f'] ees' [f'] g' [f'] ees' [d']
          ees' [f'] f'4 g' g'
          aes'8 [c''] bes' [aes'] g' [f'] ees'4
          f'2 g'4 aes'
          g'2. g'4
          aes' aes' g'4. g'8
          f' [g'] a'4 bes' bes'
          bes' aes' g' aes'
          bes' c'' bes' bes'
          bes' c'' c'' aes'
          g' f' g' aes'
          g' f'8 [bes'] g'4 g'
          g' f' f' ees'
          f'8 [g'16 aes'] g'8 [a'] b'4 c''
          c'' b'8 [c''] g'4 g'
          ges'8 [f'] f'4 g' g'
          aes' aes' aes' g'
          f'2 f'
          g'2. \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g'4
          f' ees' d' des'
          c'8 [bes] c' [d'] ees'4 g8 [aes]
          bes4 c'8 [d'] ees'4 aes8 [bes]
          c' [ees'] d' [c'] d'4 ees'
          ees'8 [aes'] g' [f'] ees' [bes] des'4
          c'2 bes
          bes2. g'4
          f' ees' d' des'
          c'8 [bes] c' [d'] ees'4 g8 [aes]
          bes4 c'8 [d'] ees'4 aes8 [bes]
          c' [ees'] d' [c'] d'4 ees'
          ees'8 [aes'] g' [f'] ees' [bes] des'4
          c'2 bes
          bes2. bes4
          c' c' c'8 [d'] ees' [d']
          c'4 f' f' f'
          bes bes bes f'
          ees'8 [d'] c'4 f' ees'
          ees' ees' f' f'
          bes bes bes f'
          bes8 [c'] d'4 ees' d'
          ees'8 [d'] c'4 d' bes8 [c']
          d'4 ees'8 [c'] g'4 c'
          f'8 [ees'] d' [c'] d'4 c'
          c' bes bes des'
          c'8 [d'] ees'4 bes bes
          c'2 bes
          bes2. \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  ees4
          bes c' g bes
          aes aes, ees c
          g aes ees8 [d] c [bes,]
          aes,4 aes g ees
          aes bes c'8 [d] ees4
          aes, a, bes,2
          ees2. ees4
          bes c' g bes
          aes aes, ees c
          g aes ees8 [d] c [bes,]
          aes,4 aes g ees
          aes bes c'8 [d] ees4
          aes, a, bes,2
          ees2. ees4
          aes8 [g] f4 c c'8 [bes]
          a [g] f4 bes bes8 [aes]
          g [f] ees [d] ees4 f
          g a bes ees
          ees'8 [d'] c' [bes] aes [bes] c' [aes]
          bes4 bes, ees f
          g8 [a] bes [g] ees [f] g [ees]
          c4 f bes, ees
          bes c' g e
          f8 [g] aes4 b, c
          a bes ees ees
          aes8 [bes] c'4 d ees
          a,2 bes,
          ees,2. \fine
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
