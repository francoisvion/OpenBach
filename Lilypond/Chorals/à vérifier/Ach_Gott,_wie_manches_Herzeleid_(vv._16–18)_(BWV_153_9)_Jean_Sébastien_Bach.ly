\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ach Gott, wie manches Herzeleid (vv. 16–18)"
  opus = "BWV 153/9"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          c''4 c'' c''
          a' b' c''
          d'' c'' b'
          a'2.\fermata
          a'4 b' c''
          d''2 c''4
          b' a'2
          g'2.\fermata
          e''4 e'' e''
          c'' d'' e''
          f'' e''2
          d''2.\fermata
          c''4 d'' e''
          d''2 c''4
          c'' b'2
          c''2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          e'4 g' g'
          f' g' g'
          a'2 g'4
          fis'2.
          fis'4 g' g'
          g'2 g'4
          g' g' fis'
          g'2.
          g'4 e' gis'
          a' b' cis''
          d'' c''2
          g'2.
          g'4 b' c''
          c'' b' e'
          a' g'2
          g'2. \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Ach Gott, wie man -- ches Her -- ze -- leid be -- geg -- net mir zu die -- ser Zeit. Der schma -- le Weg ist trüb -- sal -- voll, den ich zum Him -- mel wan -- dern soll.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          g4 c' e'
          c' d' e'
          d'2 d'4
          d'2.
          d'4 d' e'
          d'2 e'4
          d' d'4. c'8
          b2.
          c'4 b e'
          e' f' g'
          f' g' c'
          b2.
          c'4 f g
          a b c'
          d' d'2
          e'2. \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          c4 e c
          f2 e4
          fis2 g4
          d2.\fermata
          d4 g e
          b,2 c4
          g d2
          g,2.\fermata
          c'4 gis e
          a2 a,4
          d e f
          g2.\fermata
          e4 d c
          f g a
          fis g g,
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
