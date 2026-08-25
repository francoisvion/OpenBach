\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Gott sei gelobet und gebenedeiet"
 poet = "Medingen c.1350"
  opus = "BWV 322"
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
          \repeat volta 2 {
          \partial 4  g'4
          g' g' a'2
          g'\fermata c''4 d''
          c'' b' a'2
          g'\fermata a'8 [b'] c''4
          g'8 [f'] e'4 f' e'
          d'2 c'4\fermata }
          \partial 4  g'
          g' g' a'4. g'8
          fis' [g'] a'4 g'2\fermata
          g'4 g' a' b'
          c'' b' a'2
          g'\fermata b'4 c''
           d'' d'' d'' a'
          g' e' d'2\fermata
          e'4 fis' g'8 [f'] e'4
          fis'2 g'\fermata
           d'8 [e'] f'4 e' d'
          e' d' c'2\fermata
          r4 g' g' g'
          a'4. g'8 fis' [g'] a'4
          g'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           \repeat volta 2 {
          \partial 4  d'4
          g'8 [f'] e'2 d'4
          e'2\fermata g'4 g'~
          g'8 [fis'] g'4 g'8 [fis'16 e'] fis'4
          d'2\fermata f'4. e'8
          d'4 c'4. b8 c'4~
          c'8 [b16 a] b4 g\fermata }
          \partial 4  e'
          d'8 [c'] d' [f'] e' [d'16 c'] b8 [cis']
          d' g'4 fis'8 d'2\fermata
          d'4 e' fis' g'~
          g'8 [fis'] g'4 g'8 [fis'16 e'] fis'4
          d'2\fermata g'4 g'
          g' g'~ g'8 [fis'16 e'] fis'8 [f']
          e' [d'] d' [cis'] a2\fermata
          c'4 c' d' c'~
          c'8 [e'] d' [c'] b2\fermata
           b4 a g8 [c'] b4
          c'4. b8 g2\fermata
          r4 d' c' g
          c'8 [d'] e'4 d'2
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Gott sei ge -- lo -- bet und ge -- be -- ne -- dei -- et, der uns sel -- ber hat ge -- spei -- set
      Ky -- rie e -- lei - - - son. Herr, durch dei -- nen heil -- gen Leich -- nam,
      der von dei -- ner Mutt'r Ma -- ri -- a kam, und das hei -- li -- ge Blut
      hilf uns, Herr, aus al -- ler Not! Ky -- rie e -- lei - - - son.
    }
    
    \new Lyrics \lyricsto "soprano" {
      mit sei -- nem Flei -- sche und mit sei -- nem Blu -- te; das gib uns, Herr Gott, zu -- gu -- te.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           \repeat volta 2 {
          \partial 4  b8 [c']
          d'4 c'8 [b] c'4 b8 [a]
          b2\fermata e'4 f'
          e' d' d'4. c'8
          b2\fermata d'4 c'
          d' g f g
          a g8 [f] e4\fermata }
          \partial 4  c'
          g8 [a] b4 c'8 [fis] g [a]
          b4 a16 [b c'8] b2\fermata
          b4. cis'8 d'4 d'
          c' d' e'8 [c'] a [d'16 c']
          b2\fermata d'4 e'
          d'8 [c'] b4 c' d'8 [c']
          bes4 a8. [g16] f2\fermata
          g4 a g g
          a8 [c'] b [a] g2\fermata
           g4 c8 [d] e [g] g4
          g g8. [f16] e2\fermata
          r4 g8 [f] e4 d8 [e]
          f4 c'8 [b] a g4 fis8
          b2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           \repeat volta 2 {
          \partial 4  g,8 [a,]
          b,4 e8 [d] c4 f
          e2\fermata e8 [d] c [b,]
          c4 g, d d,
          g,2\fermata d4 a,
          b, c8 [b,] a,4 g,
          f, g, c,\fermata }
          \partial 4  c
          b,8 [a,] g,4 c8 [d] e4
          d d, g,2\fermata
          g8 [fis] e4 d8 [c] b,4
          a, b,8 [g,] c [a,] d4
          g,2\fermata g8 [f] e4
          b,4. e8 a,4 d
          g, a, d2\fermata
          c8 [b,] a,4 b, c8 [b,]
          a,4 d g,2\fermata
           g,4 a,8 [b,] c [e] g [f]
          e [c] g [g,] c2\fermata
          r4 b, c b,
          a,8 [b,] c4 d2
          g,2.\fermata \fine
        }
      >>
    }
  >>
}

\layout {
  \context {
    \Voice
    \consists "Merge_rests_engraver"
  }
}
\midi {}
