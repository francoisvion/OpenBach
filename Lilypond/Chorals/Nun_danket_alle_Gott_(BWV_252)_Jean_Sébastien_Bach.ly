\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Nun danket alle Gott"
  opus = "BWV 252"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d''4
          d''4 d''4 e''4 e''4
          d''2.\fermata b'4
          c''4 b'4 a'4 [b'8 c''8]
          a'2 g'4\fermata
          a'4
          a'4 a'4 b'4 b'4
          a'2.\fermata a'4
          [b'8 cis''8] d''4 d''4 cis''4
          d''2.\fermata
          d''4
          e''4 d''4 c''4 b'4
          c''2.\fermata b'4
          a'4 [b'8 c''8] a'4~ a'8 g'8
          g'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  g'4
          a'4 g'4 g'4 [g'8 a'8]
          b'2.\fermata g'4
          a'4 d'4 d'4 d'4
          [e'16 fis'16] g'4 fis'8 d'4\fermata
          [fis'8 g'8]
          [a'8 g'8] [a'8 fis'8] d'4 g'4
          fis'2.\fermata fis'4
          [d'8 e'8] fis'4 b'4 [a'8 g'8]
          fis'2.\fermata
          g'4
          [g'8 a'8] b'4 [b'8 a'8] [a'8 gis'8]
          a'2.\fermata d'4
          d'4. e'8 d'8 [g'8 fis'4]
          d'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Nun dan -- ket al -- le Gott mit Her -- zen, Mund und Hän -- den,
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      der gro -- sse Din -- ge thut an uns und al -- len En -- den; der uns von Mut -- ter -- leib und Kin -- des -- bei -- nen an un -- zäh -- lig viel zu gut, und noch jetz -- und ge -- than.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          [a8 d'8] b4 c'4 c'4
          d'2.\fermata d'4
          d'4. [g'8] fis'4 [g'8 g8]
          e'4 a4 b4\fermata
          a4
          d'4 c'4 [b8 c'8] d'4
          d'2.\fermata [d'8 c'8]
          [b8 a8] [a8 d'8] [d'8 g'8] [e'16 d'16 e'8]
          d'2.\fermata
          b4
          c'4 [d'8 e'16 f'16] [g'8 c'8] [f'8 e'8]
          e'2.\fermata g'4
          [fis'8 d'8] [b8 a8] [a8 b8] [c'8 a8]
          b2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          fis4 g4 [c8 d8 e8 c8]
          g2.\fermata g4
          [g8 fis8] g4 [d8 c8] [b,8 e8]
          [c8 b,16 c16] d4 g,4\fermata
          [d8 e8]
          [fis8 e8] [fis8 d8] [g,8 a,8] [b,8 c8]
          d2.\fermata d4
          g4 [fis8 b8] [g8 e8] [a8 a,8]
          d2.\fermata
          g4
          c4 [g8 f8] [e8 f8] [d8 e8]
          a,2.\fermata [b,8 g,8]
          [d8 fis8] [g8 c8] d4 d,4
          g,2.\fermata \fine
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
