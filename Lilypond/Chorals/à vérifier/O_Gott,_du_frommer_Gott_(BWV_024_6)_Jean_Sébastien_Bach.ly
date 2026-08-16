\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Gott, du frommer Gott"
  opus = "BWV 24/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a' bes'8 [c''16 d''] c''4 bes'16 [a' bes'8]
          a'4\fermata a'8 [bes'] c''4 f'
          g' a' g'2
          f'4\fermata a' a' bes'8 [c''16 d'']
          c''4 bes' a'\fermata a'8 [bes']
          c''4 f' g' a'8. [bes'16]
          g'2 f'4\fermata g'
          g' a' bes' bes'8. [c''16]
          a'4\fermata a' g' c''8 [d''16 ees'']
          d''4 c''8 [b'] c''4\fermata c''
          c''8 [bes'] a'4 bes' c''8 [d''16 ees'']
          d''4\fermata g' a' a'
          g' g' f'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'8 [f'16 g']
          f'4 f' f'8 [e'16 d'] e'4
          f'\fermata f' g'8 [e'] f'4
          e' f' d' e'
          c'\fermata f' f' f'8 [g']
          e' f'4 e'8 f'4\fermata f'
          f'8 [ees'] d'4 e' f'
          f' e' c'\fermata d'
          e' f'4. e'16 [d'] e'4
          f'\fermata ees' d' g'
          f'8 [aes'] g' [f'] e'4\fermata g'
          f' f' f' f'
          f'\fermata e' c' f'~
          f' e' c'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      O Gott, du from -- mer Gott, du Brunn -- quell al -- ler Ga -- ben, ohn' den nichts ist, was ist, von dem wir al -- les ha -- ben, ge -- sun -- den Leib gib mir, und dass in sol -- chem Leib ein' un -- ver -- letz -- te Seel' und rein Be -- wis -- sen bleib.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  cis'4
          d' d'8 [bes] a [g16 f] g4
          c'\fermata c'8 [d'] e'4 a8 [f]
          c'4 c' bes g
          a\fermata c' d' d'8 bes~
          bes a g [c'] c'4\fermata f8 [g]
          a [g] f4 c' c'
          c'8 [bes16 a] bes8 [g] a4\fermata d'8 [b]
          c'4 c' d'8 [c'16 bes] c'4
          c'\fermata c' b c'
          c'8 [f'] d'4 c'\fermata e'
          c' c' d' c'
          bes\fermata bes a d'
          d'8 [g] a [bes] a4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,4
          d8 [c] bes,4 c c
          f,\fermata f e d
          c8 [bes,] a, [f,] bes, [g,] c [c,]
          f,4\fermata f8 [e] d [c] bes, [g,]
          c4 c f,\fermata d
          a, bes, bes8 [a] g [f]
          c4 c f\fermata b,8 [g,]
          c4 bes,8 [a,] g,4 c
          f\fermata fis f ees8 [f16 g]
          aes8 [g16 f] g8 [g,] c4\fermata c'8 [bes]
          a [g] f [ees] d [c] bes, [a,]
          bes,4\fermata c f8 [e] d [c]
          bes, [b,] c4 f\fermata \fine
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
