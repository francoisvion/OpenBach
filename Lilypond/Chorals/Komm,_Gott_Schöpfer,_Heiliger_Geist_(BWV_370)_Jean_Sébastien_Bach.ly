\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Komm, Gott Schöpfer, Heiliger Geist"
 poet = "Martin Luther"
  opus = "BWV 370"
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
          \partial 4  g'4
          a' g' f' g'
          c'' d'' c''\fermata c''
          g' b' c'' d''
          e'' e'' d''\fermata
          \partial 4  d''
          e''8 [d''] c''4 a' g'
          b' cis'' d''\fermata g'
          c'' a' f' a'
          g'2 g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'8 [e']
          f'4. e'4 d'16 [c'] b8 [e']~
          e' [c'] g' [f'] e'4\fermata c'8 [d']
          e'4 f' g' g'
          g'4. fis'8 g'4\fermata
          \partial 4  g'
          g' g'4. f'4 e'8
          g'4 g' a'\fermata e'
          e'8 [d'] e'4. d'16 [e'] f'4~
          f' e' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Komm, Gott Schö -- pfer, hei -- li -- ger Geist,
      be -- such das Herz der Men -- schen dein,
      mit Gna -- den sie füll, wie du weißt,
      dass dein Ge -- schöpf vor dir sein.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          c' c' a g8 [c'16 b]
          c'8 [f'] b4 g\fermata a
          b8 [c'] d'4 e' d'~
          d'8 [c'16 b] c'8 [a] b4\fermata
          \partial 4  b
          c'8 [b] c'4 c' c'
          d' e' f'\fermata b
          a a a8 [bes] c'4
          d'4. c'4 b8\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          f c d e
          a, g, c\fermata f
          e d c4. b,8
          c4 c, g,\fermata
          \partial 4  g
          c e f c'
          g8 [f] e4 d\fermata e
          a,8 [b,] c4 d a,
          b, c g,\fermata \fine
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
