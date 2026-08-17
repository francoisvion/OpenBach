\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Hast du denn, Jesu, dein Angesicht"
  opus = "BWV 57/8"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          bes'4 bes' f''
          d''4. c''8 bes'4
          a' bes'8 [a'] g' [f']
          bes'4 c'' d''8 [ees'']
          c''2 bes'4\fermata
          f'' ees''8 [d''] c'' [bes']
          g''2\fermata r4
          d'' ees'' f''
          f'' g''8 [f''] ees'' [d'']
          c''2\fermata r4
          f' g' a'
          bes' c'' d''8 [ees'']
          c''2 bes'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          f'4 f' f'
          f'4. f'8 g'4
          c' c' c'
          f' g'8 [a'] bes' [c'']
          a'2 f'4\fermata
          bes' a' f'
          bes'2\fermata r4
          bes' bes' a'8 [g']
          f'4 bes' g'
          a'2\fermata r4
          f' c' c'
          bes f' f'
          f'4. ees'8 d'4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Hast du denn, Je -- su, dein An -- ge -- sicht gänz -- lich ver -- bor -- gen,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      dass ich die Stun -- de der Näch -- te muss war -- ten bis mor -- gen? Wie hast du doch, Sü -- sse -- ster, mö -- gen an -- noch brin -- gen die trau -- ri -- gen Sor -- gen?
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          d'4 d' c'
          bes4. c'8 d' [e']
          f'4 f' a
          bes ees f
          f' ees' d'\fermata
          d' ees' f'
          ees'2\fermata r4
          f' g' c'
          c' bes bes
          f'2\fermata r4
          bes a8 [g] ees'4
          d' c' bes
          bes a f\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          bes4 bes a
          bes4. a8 g4
          f c ees
          d c bes,
          f2 bes,4\fermata
          bes, c d
          ees2\fermata r4
          bes a8 [g] f [ees]
          d4 d ees
          f2\fermata r4
          d e fis
          g a bes
          f2 bes,4\fermata \fine
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
