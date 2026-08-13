\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Mensch, schau Jesum Christum an"
  opus = "BWV 403"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           g'4 g' g'
          g'2 ees'4
          d'2 d'4
          a'2\fermata bes'4
          a'2 g'4
          f'2 e'4
          d'2\fermata
          \partial 4  d'4
          g'2 g'4
          fis'2 fis'4
          g'2 g'4
          a'2\fermata a'4
          a'2 a'4
          bes'2 bes'4
          a'2.\fermata
           d''2 c''4
          bes'2 a'4
          g' a' b'
          c''2\fermata a'4
          bes'2 a'4
          g'2 fis'4
          g'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
           d'8 [c'] d'4 b
          c' b c'8 [a]
          d' [c'] d'4 d'
          d'2\fermata d'4
          cis' d' e'
          e'8 [cis'] d'4. cis'8
          a2\fermata
          \partial 4  a4
          d'2 d'4
          d' ees' d'
          d' c'8 [bes] c'4
          fis2\fermata fis'4
          fis'2 fis'4
          g'2 g'4
          g' fis'8 [e'] fis'4\fermata
          fis'8 [g'] a'2~
          a'4 g' d'
          g' f'2
          g'\fermata fis'4
          g' f' ees'
          ees'4. ees'8 d'4
          d'2.\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      O Mensch, schau' Je -- sum Chri -- stum an, den wah -- ren Mensch und Gott, der für uns hat ge -- nug ge -- than durch sei -- nen bit -- tern Tod. O wie gro -- sse Angst und Pein durch drang das Her -- ze mein, mein.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           bes8 [a] g4. f8
          ees [f] g4 fis
          g8 [a] bes4 bes
          a2\fermata g4
          a2 a4
          a bes8 [a] g [a]
          fis2\fermata
          \partial 4  fis4
          g8 [a] bes2
          a8 [bes] c'4 a
          g4. bes8 a [g]
          d'2\fermata d'4
          d'2 d'4
          d'2 d'4
          d'2.\fermata
          a4 d'2
          d' c'4~
          c' c' d'
          ees'2\fermata d'4
          d'2 c'4
          c'8 [bes] a4. c'8
          b2.\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
           g,8 [a,] bes,4 g,
          c8 [d] ees4 c
          bes,8 [a,] g,4 g
          fis2\fermata g4~
          g f8 [e d cis]
          d4 g, a,
          d,2\fermata
          \partial 4  d8 [c]
          bes,4 g,8 [a, bes, c]
          d4 a,8 [bes, c a,]
          bes,4 ees8 [d] ees4
          d2\fermata d,4
          d8 [ees d c bes, a,]
          g, [fis, g, a, bes, c]
          d2.\fermata
          d8 [e fis e fis d]
          g [fis g a g f]
          ees [d ees f ees d]
          c2\fermata d4
          g8 [g, a, bes, c d]
          ees [d] c4 d
          g,2.\fermata \bar "|."
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
