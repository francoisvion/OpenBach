\version "2.27.1"

#(set-global-staff-size 19)

\header { 
 title = "Ach Gott und Herr"
 poet = "Auteur : Martin Rutilius (1551-1618)"
  opus = "BWV 255"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  copyright = "© 2026 — OpenBach"
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4 c''4
          b' a' g'\fermata g' |
          a' b' c''\fermata d'' |
          c'' b' a' b'8 [c'']   |
          a'2 g'4\fermata \bar "|"
          \partial 4 c'' | 
          b' c'' d''\fermata d'' |
          e'' d''8 [c''] d''4\fermata g' |
          a' b' c''8 [d''] e''[ f''] |
          d''2 c''4\fermata \fine 
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 g'4
          g' fis' d'\fermata e'8 [d'] |
          c'4 d' e'\fermata g'~
          g'8 [fis'] g'4 fis' g'~
          g' fis' d'\fermata
          \partial 4 g'4
          f' g' g'\fermata g'
          g' fis' g'\fermata g'
          d' d' c'4 a'
          g'4. f'8 e'4 \fermata
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ach Gott und Herr, wie groß und schwer
      sind mein' be -- gang --  ne__  Sün --  den!
      Da ist Nie --  mand, der hel --  fen kann,
      in die --  ser Welt zu fin -- den.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 e'4 
          d'4. c'8 b4\fermata c'8 [bes]
          a [g] f4 g\fermata b
          c' d' d' d'
          e' d'8 [c'] b4\fermata
          \partial 4 c'
          d' e' b\fermata b
          c' c' b\fermata c'
          c' b e'8 [f' g' c']
          c'4 b g\fermata  \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 c4
          g d g,\fermata c
          f8 [e] d4 c\fermata g,
          a, b,8 [c] d4 g
          c d g,4\fermata
          \partial 4  e
          d c g\fermata g
          c' 8 [b] a4 g\fermata e
          fis gis a g8 [f]
          g4 g, c\fermata \fine
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
