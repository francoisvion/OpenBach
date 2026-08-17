\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Gelobet seist du, Jesu Christ"
 subtitle = "tiré de la cantate : Sehet, welch eine Liebe hat uns der Vater erzeiget"
  opus = "BWV 64/2"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          g' g' a' g'
          c'' d'' c''2\fermata
          b'4 d'' e'' d''
          b' a' g'\fermata g'
          c'' b' d'' a'
          g' e' d'\fermata
          d'
          a' a' a' b'
          c'' a' g'8 [a'] b'4
          a'2 g'4 g'
          g'2 g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          e' e' f' g'
          a' b' a'2\fermata
          g'4 g' g' fis'
          g' fis' d'\fermata e'
          e'8 [fis'] g'4 g' fis'
          e'8 [d'] cis'4 a\fermata
          d'
          d' a'8 [g'] fis'4 gis'
          a' f' e'8 [fis'] g'4~
          g' f'~ f'8 e' e'4
          e' d'8 [c'] d'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Das hat er al -- les uns ge -- tan, sein groß Lieb zu zei -- gen an. Des freu sich al -- le Chri -- sten -- heit und dank ihm des in E -- wig -- keit. Ky -- ri -- e e -- leis! _
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          b c' c' c'8 [d']
          e'4 f' e'2\fermata
          e'4 d' c'8 [b] a4
          b8 [c'] d'4 b\fermata b
          c' d' d' d'8 [c']
          b4 a8 [g] fis4\fermata
          fis8 [g]
          a [b] cis'4 d' d'
          e' c' c' d'
          d'8 [a] d' [c'] b4 c'
          c' b8 [a] b2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          e c f e
          a gis a2\fermata
          e4 b, c d
          g d g,\fermata e
          a, g,8 [a,] b, [c] d4
          g, a, d\fermata
          d8 [e]
          fis [g] a [b] c'4 b
          a a,8 [b,] c4 b,8 [c]
          d4 c8 [d] e4 d8 [c]
          g2 g,\fermata \fine
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
