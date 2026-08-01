\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Meine Seele erhebet den Herren"
  opus = "BWV 324"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           b'2 d''
          b'4 b' b' b'
          c''2 b'
          a' a'
          g'1\fermata
           b'2 d''
          a'4 a' a' a' a' a' a' a' e'2
          g' fis'
          e'1\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           e'2 d'
          d'4 dis' e' fis'
          e' d'2 d'4
          e'2 d'
          d'1\fermata
           d'
          d'4 d' d' d' d' d' d' d' e'2
          e' dis'
          b1\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Mei -- ne See -- le er -- he -- get den Herrn, und mein Geist freu -- et sich Got -- tes mei -- nes Hei -- lands, mei -- nes Hei -- lands.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           g2 a
          b4 a g fis
          g a2 g4
          g2 fis
          b1\fermata
           g
          fis4 fis fis fis fis fis fis fis a2
          b2. a4
          g1\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           e2 fis
          g4 fis e dis
          e fis g e
          c a, d2
          g,1\fermata
           g2 b,
          d4 d d d d d d d c2
          b,4 a, b,2
          e,1\fermata \bar "|."
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
