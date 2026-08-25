\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ich ruf zu dir, Herr Jesu Christ"
  opus = "BWV 1124"
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
          \repeat volta 2 {
          r4 b'4 g'4 a'4
          g'4 e'4 g'4 a'4
          b'2\fermata r4 b'4
          d''4 b'4 g'4 a'4
          <a' c''>2 b'2
          r4 d''4 e''4 d''4
          b'4 g'4 b'4 a'4
          g'2\fermata r4 r4 }
          b'4 r4 r4 r4
          b'4 b'4 a'4 g'4
          fis'2 e'2\fermata
          g'4 fis'4 s2
          d'2\fermata r4 d'4
          g'4 g'4 a'4 a'4
          b'2\fermata r4 c''4
          b'4 a'4 g'4 e'4
          g'4 fis'4 e'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          s4 fis'4 e'4 fis'4
          e'4 c'4 e'4 fis'4
          g'2\fermata s4 g'4
          a'4 d'4 e'4 fis'4
          s2 gis'2
          s4 g'4 g'4 fis'4
          g'4 g'4 g'4 fis'4
          d'2\fermata s2 }
          g'4 s2.
          g'4 g'4 fis'4 e'4
          e'4 dis'4 e'2\fermata
          e'4\fermata d'4 d'4 cis'4
          a2 s4 b4
          b4 d'4 e'4 d'4
          d'2\fermata s4 e'4
          e'4 e'4 e'4 e'4
          e'4 dis'4 b2\fermata \fine
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
          \repeat volta 2 {
          r4 b4 b4 b4
          b4 a4 b4 d'4
          d'2\fermata r4 d'4
          a4 g4 b4 d'4
          e'2 e'2
          r4 d'4 c'4 a4
          e'4 b4 d'4 d'4
          b2\fermata r4 r4 }
          d'4 r4 r4 r4
          d'4 d'4 d'4 b4
          b2 g2\fermata
          a4 a4 a2
          s2 r4 g4
          g4 g4 g4 fis4
          g2\fermata r4 g4
          b4 c'4 b4 a4
          b2 gis2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          s4 b,4 e4 dis4
          e4 a4 e4 d4
          g2\fermata s4 g4
          fis4 g4 e4 d4
          a,2 e2
          s4 b,4 c4 d4
          e4 e4 b,4 d4
          g,2\fermata s2 }
          g,4 s2.
          b,4 g,4 d4 e4
          b,2 c2\fermata
          cis4 d4 a,2
          <d fis>2\fermata s4 g4
          e4 b,4 c4 d4
          g,2\fermata s4 c4
          gis,4 a,4 e4 c4
          b,2 e2\fermata \fine
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
