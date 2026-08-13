\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Nun freut euch, Gottes Kinder all"
  opus = "BWV 387"
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
          \partial 4  d'4
          d' c' f' g'
          a'4. gis'8 a'4\fermata b'
          c'' b' c'' a'
          b'8 d''4 cis''8 d''4\fermata
          \partial 4  d''
          c'' a' f' d'
          e' d' cis'\fermata e'
          g'8 [f'] e'4 f' d'
          e'4. e'8 d'4\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a4
          a8 [b] c'4 d' e'
          e' e' e'\fermata g'
          g' g' g'4. f'16 [e']
          d'4 e' fis'\fermata
          \partial 4  g'8 [f']
          e'4 c' c' bes~
          bes8 [a] b4 a\fermata cis'
          d' a a bes~
          bes8 d'4 cis'8 a4\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Nun freut euch, Got -- tes Kin -- der all', der Herr fährt auf mit gro -- ssem Schall, lob -- sin -- get ihm, lob -- sin -- get ihm, lob -- sin -- get ihm mit hel -- ler Stimm', Stimm'!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  f4
          f g a8 [f] c'4~
          c'8 [b16 a] b8 [d'] c'4\fermata d'
          e' f'8 [d'] c'4 c'8 [d'16 c']
          b8 [a g a] a4\fermata
          \partial 4  d'
          g4. f8 f4 f
          g f8 [e] e4\fermata a
          g4. g8 f4 f
          g8 [bes] a8. [g16] fis4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d8 [e]
          f4~ f8 [e] d4 c8 [b,]
          a,4 e a,\fermata g8 [f]
          e [c d f] e [c f d]
          g [f e a] d4\fermata
          \partial 4  b,
          c8 [e] f4 a,8 [f, bes, a,]
          g,4 gis, a,\fermata a,
          b, cis d8 [c bes, a,]
          g,4 a, d,\fermata \bar "|."
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
