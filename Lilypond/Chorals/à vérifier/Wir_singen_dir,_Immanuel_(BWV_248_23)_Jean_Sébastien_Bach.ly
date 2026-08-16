\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wir singen dir, Immanuel"
  opus = "BWV 248/23"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 12/8
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4.  g''4.
          fis'' e'' fis'' d''
          e'' fis'' g'' r
          r1.
          r4 r8 g''4. g'' d''
          d''4 c''8 b'4 c''8 d''4. c''
          b' r r r
          r2. r4. b'
          e'' e'' d''4 e''8 fis''4.
          g''4 fis''8 e''4. d'' r
          r1.
          r4 r8 g''4. fis'' e''
          d'' e''4 d''8 c''4 b'8 a'4.
          g' r r r
          r1. \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4.  b'4.
          a' b'4 a'8 a'4. g'
          g'4 c''8 b'4 a'8 b'4. r
          r1.
          r4 r8 b'4. b' b'
          a' g' a'4 e'8 e'8. [g'16 fis'8]
          g'4. r r r
          r2. r4. g'
          g' g'4 a'8 b'4 a'8 a'4 b'8
          b'4 a'8 b'4 a'8 a'4. r
          r1.
          r4 r8 b'4. c''4 b'8 b'4 a'8
          a'4 g'8 g'4. g' g'4 fis'8
          d'4. r r r
          r1. \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Wir sin -- gen dir in dei -- nem Heer aus al -- ler Kraft, Lob, Preis und Ehr, dass du, o lang ge -- wünsch -- ter Gast, dich nun -- mehr ein -- ge -- stel -- let hast.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 12/8
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4.  d'4.
          d' d'4 cis'8 d'4 c'8 c'4 b8
          b4 a8 d'4. d' r
          r1.
          r4 r8 d'4. e' fis'4 g'8
          d'4. d'4 e'8 a4 b8 c'8. [e'16 dis'8]
          e'4. r r r
          r2. r4. e'
          e'4 d'8 c'4. b4 cis'8 d'4.
          g4 d'8 d'4 cis'8 fis'4. r
          r1.
          r4. e' e'4 d'8 d'4 c'8
          c'4 b8 c'4 b8 c'4 d'8 e'4 d'8
          b4. r r r
          r1. \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4.  g4.
          d' g4 a8 d4. g
          c d g, r
          r1.
          r4 r8 g4 fis8 e4. b
          fis g4 e8 fis4 gis8 a4.
          e r r r
          r2. r4. e4 d8
          c4 d8 e4 c8 g4. fis4 b8
          e4 fis8 g4 a8 d4. r
          r1.
          r4. e4 g8 a4 b8 g4 a8
          fis4 g8 c4 d8 e4 d8 c4 d8
          g,4. r r r
          r1. \fine
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
