\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wo Gott zum Haus nicht gibt sein Gunst"
  opus = "BWV 1123"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 r4 r4 r4
          d''4 d''4 b'4 a'4
          b'4 cis''4 d''4 d''8 [c''8]
          b'8 [c''8] d''4 c''4 d''8 [c''8]
          b'4 a'4 g'4\fermata r4
          d''4 r4 r4 r4
          e''4 e''4 b'8 [c''8] d''4
          c''4 c''4 b'4 g''4
          fis''4 e''4 d''4 e''8 [d''8]
          c''8 [b'8] a'4 g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          d'4 s2.
          d'4 a'4 g'4 a'4
          g'4 g'4 fis'4 a'4
          g'4 fis'4 g'4 a'4
          g'4 fis'4 d'4\fermata s4
          g'4 s2.
          g'4 a'4 g'8 [gis'8] a'8 [b'8]
          a'8 [gis'8] a'4 gis'4 b'4
          c''8 [d''8] g'8 [a'8] b'8 [a'8] g'4
          a'8 [g'8] g'8 [fis'8] d'4\fermata \fine
        }
      >>
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          b4 r4 r4 r4
          a4 d'4 d'4 d'4
          g'8 [fis'8] e'4 d'4 d'4
          d'4 d'4 e'4 d'4
          d'4 d'8 [c'8] b4\fermata r4
          b4 r4 r4 r4
          c'8 [d'8] e'4 e'4 a8 [e'8]
          e'4 e'4 e'4 e'4
          e'8 [d'8] e'8 [fis'8] g'4 c'8 [b8]
          a8 [b16 c'16] d'8 [c'8] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          g4 s2.
          fis8 [e8] fis8 [d8] g4 fis4
          e4 a4 d4 fis4
          g4 b,4 e4 fis4
          g4 d4 g,4\fermata s4
          g4 s2.
          c8 [b,8] c8 [d8] e4 fis8 [gis8]
          a8 [b8] c'8 [a8] e4 e'4
          a8 [b8] c'4 g8 [fis8] e4
          fis8 [g8] d4 g,4\fermata \fine
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
