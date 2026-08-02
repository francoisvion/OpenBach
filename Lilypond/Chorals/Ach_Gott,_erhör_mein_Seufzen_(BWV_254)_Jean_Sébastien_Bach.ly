\version "2.27.1"

#(set-global-staff-size 19)

\header { 
 title = "Ach Gott, erhör mein Seufzen"
  opus = "BWV 254"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4 d'4
          f' f' g' g'
          a' a' bes' a'
          g'2 f'4\fermata \bar "|" \break
          \partial 4 a
          f' f' g' g'
          a' a' g' f'
          e'2 d'4\fermata a'4
          f' g' e'\fermata 
          \partial 4 a' \bar "|"
          f' g' e'\fermata e'
          f' f' g' g'
          a' a' g' f'
          e'2 d'4\fermata \bar "|."
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 a4
          d'8 [e'] f'4 f' e'8 [d']
          c'4 d' d'8 g'4 f'8~ 
          f' [e'16 d'] e'4 c'\fermata
          \partial 4 a8 [g] \bar "|"
          f4 d' d' c'
          c' f' f'8 e'4 d'8 
          d'4 cis' a4\fermata e'~
          e'8 [d' d' e'] cis'4\fermata
          \partial 4 e'4 \bar "|"
          d'8 [c'] d'4 c' c'
          c' d' d' e'~
          e'8 [d'16 e'] f'4  e'4. d'8
          d'4 cis' a \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ach Gott, er --  hör' mein Seuf -- zen und Weh -- kla -- gen, 
      laß mich in mei -- ner Noth nicht gar ver -- za -- gen,
      du weißt mein'n Schmerz,
      er -- kennst mein Herz,
      hast du mir's auf -- ge -- legt, so hilf mir's tra -- gen!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 f4
          a c' d' c'8 [bes]
          a [g] f4. e8 c'4
          d'8 [g c' bes] a4\fermata
          \partial 4 f8 [g]
          a4 bes4. a8 g4
          f c' c'8. [bes16] a4
          bes a8 [g] f4\fermata a
          a bes a\fermata
          \partial 4 a \bar "|"
          a g g g
          a a bes4. c'16 [bes]
          a4 d'8 [c'] bes4 a
          bes4 a8 [g] fis4  \bar "|." 
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 d4
          d a, bes, c 
          f8 [e] d4 g, a,
          bes, c f,\fermata
          \partial 4 f8 [e] \bar "|"
          d8 [c bes, a,] g, [f,] e,4
          f,8 [g, a, bes,]  c4 d
          g, a, d,\fermata cis
          d g, a,\fermata
          \partial 4 c~ \bar "|"
          c b, c\fermata c8 [bes,]
          a, [f, d c] bes, [a, g, c]
          f [e] d4~ d8 [cis] d4
          g, a, d,\fermata \bar "|."
        }
      >>
    }
  >>} 
 
\paper {
  indent = 10
  page-count = 1
}
\layout {}
\midi {}
 
