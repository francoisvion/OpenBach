\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Welt, sieh hier dein Leben"
 subtitle = "tiré de la Passion selon saint Matthieu"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 244/37"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
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
          f' g' a'8 [bes'] c''4
          bes'2 a'4\fermata a'8 [bes']
          c''4 c'' g' a'8 [g']
          f'2 e'4\fermata
          c'
          f' g' a'8 [bes'16 c''] bes'8 [a']
          g'2.\fermata a'4
          f' g' a'8 [bes'] c''4
          bes'2 a'4\fermata
          a'8 [bes']
          c''4 c'' g' a'8 [g']
          f'2 e'4\fermata c'
          f' g' a' g'8 [a'16 bes']
          a'4 g' f'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          d' e' f'8 [g'] a'4
          a' g' f'\fermata f'
          f'8 [e'] f' [g'] e' [d'] c'4
          c' b c'\fermata
          e'
          d' c' c' d'
          e'2.\fermata e'4
          d' c' c' d'
          d' g' fis'\fermata
          f'
          f' f' e'8 [d'] c'4
          c' b c'\fermata g
          c' bes a8 [c'] f'4
          f' e' c'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wer hat dich so ge -- schla -- gen,
      mein Heil, und dich mit Pla -- gen
      so ü -- bel zu -- ge -- richt'?
      Du bist ja nicht ein Sün -- der
      wie wir und un -- sre Kin -- der;
      von Mis -- se -- ta -- ten weißt du nicht.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          d' c'8 [bes] a4. g8
          f4 c' c'\fermata c'
          c' c' c' c'8 [b]
          a [g] f4 g\fermata
          bes
          a g f f
          c'2.\fermata a4
          a g f8 [g] a4
          g8 [a] bes [c'] d'4\fermata
          d'
          c'8 [bes] c' [d'] e'4 f'
          f8 [a] g [f] g4\fermata e
          f8 [c'] d' [e'] f' [c'] bes [f]
          c'4. bes8 a4 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  f4
          bes a8 [g] f4. e8
          d4 e f\fermata f8 [g]
          a4 a,8 [bes,] c4 a,
          d2 c4\fermata
          c
          d e f bes,
          c2.\fermata cis4
          d e f fis
          g g, d\fermata
          d'
          a8 [g] a [bes] c'4 f8 [e]
          d [c] d4 c\fermata bes,
          a, g, f, d
          c8 [bes,] c4 f,\fermata \fine
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
