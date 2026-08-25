\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herzliebster Jesu, was hast du verbrochen"
 subtitle = "tiré de la Passion selon saint Jean"
  opus = "BWV 245/3b"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          g' g' fis'\fermata d'
          g' a' bes' bes'
          c'' bes' a'\fermata a'
          bes' c'' d''8 [c''] bes'4
          ees'' ees'' d'' des''8 [c'']
          c''2 bes'4\fermata bes'
          a' g' f' d'8 [ees']
          f'4 f' g' f'
          ees'2 d'4\fermata d''
          c'' bes'8 [a'] a'2
          g'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          ees'8 [d'] c'4 d'\fermata a
          d'8 [e'] fis'4 g' g'
          a' g' fis'\fermata fis'
          g' a' bes' f'
          g'8 [a'] bes'4 bes' bes'
          bes' a' f'\fermata g'8 [f']
          ees' [d'] e'4 d' a
          d'8 [ees'] f'4 f'8 [ees'] ees' [d']
          d' [c'16 bes] c'4 bes\fermata bes'
          a' g' g' fis'
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O gro -- ße Lieb,
      o Lieb ohn al -- le Ma - ße,
      die dich ge -- bracht auf die -- se Mar -- ter -- stra -- ße
      Ich leb -- te mit der Welt in Lust und Freu -- den,
      Und du mußt lei -- den.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes4
          bes a8 [g] a4 fis
          g c' d' d'
          ees' d' d'\fermata d'
          d' ees' f'8 [ees'] d' [c']
          bes4 bes8 [c'] d' [bes] g'4
          f'4. ees'8 d'4\fermata d'
          c' bes a f
          bes bes bes a
          bes f f\fermata f'
          ees' d' e' d'8 [c']
          b2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          c8 [d] ees4 d\fermata c
          bes, a, g, g
          fis g d\fermata d
          g c' bes aes
          g ges f e
          f2 bes,4\fermata g,
          c cis d4. c8
          bes, [c] d [bes,] ees4 f8 [f,]
          g,4 a, bes,\fermata bes,
          fis,8 [fis] g4 cis d
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
