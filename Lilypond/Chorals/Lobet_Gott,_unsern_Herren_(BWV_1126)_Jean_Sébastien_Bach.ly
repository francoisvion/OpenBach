\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Lobet Gott, unsern Herren"
  opus = "BWV 1126"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          d'4 r4 r4 r4
          f'4 e'4 f'4 g'4
          a'2 a'4 c''4
          b'4 a'4 a'4 gis'4
          a'2.\fermata r4
          a'4 r4 r4 r4
          b'4 c''4 d''4 b'4
          c''2 a'4\fermata r4 }
          a'4 r4 r4 r4
          g'4 f'4 f'4 e'4
          f'2\fermata r4 a'4
          f'4 g'4 a'4 g'4
          f'2 e'4 f'4
          g'4 f'4 g'4 e'4
          d'2.\fermata r4 \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          a4 s2.
          d'4 e'4 d'4 d'4
          cis'2 cis'4 e'4 ~
          e'8. [d'16] c'8 [d'16 e'16] f'4 e'4
          e'2.\fermata s4
          e'4 s2.
          f'8 [e'8] e'8 [g'8] a'4 g'4 ~
          g'8 [f'8] g'8 [e'8] f'4\fermata s4 }
          f'4 s2.
          f'8 [e'8] d'4 d'4 c'4
          c'2\fermata s4 e'4 ~
          e'8 [d'8] c'4 ~ c'8 [d'8] e'4
          e'8 [d'16 cis'16] d'4 d'8 [cis'8] d'4
          e'4 ~ e'8 [d'8] e'8 [cis'16 b16] cis'4
          a2.\fermata s4 \fine
        }
      >>
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          f4 r4 r4 r4
          a4 a4 a4 bes4
          e2 e4 s4
          a8 [gis8] a8 [b16 c'16] d'8. [c'16] b8 [d'8]
          cis'2.\fermata r4
          c'4 r4 r4 r4
          d'4 c'8 [e'8] d'4 d'4
          c'2 c'4\fermata r4 }
          c'4 r4 r4 r4
          c'8. [bes16] a4. ~ <a g>8 g16 [a16 bes8]
          a2\fermata r4 a4
          a4 c'8 [bes8] a8 [b8] c'8 [bes8]
          a2 a4 a4
          bes4 a4 bes8 [g8] e8 [a16 g16]
          fis2.\fermata r4 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          d4 s2.
          d4. cis8 d8 [c8] bes,4
          a,2 a,4 a,4
          e4 f8 [e8] d8 [b,8] e4
          a,2.\fermata s4
          a4 s2.
          a8 [gis8] a8 [e8] f8 [d8] g8 [f8]
          e8 [d8] e8 [c8] f4\fermata s4 }
          f,4 s2.
          c4 d8 [c8] bes,4 c4
          f,2\fermata s4 cis4
          d4 e4 f4 c4
          d8 [e8] f8 [d8] a4 d4 ~
          d8 [cis8] d8 [f,8] g,4 a,4
          d,2.\fermata s4 \fine
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
