\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Meinen Jesum laß ich nicht (II)"
 poet = "Auteur : Christian Keymann (1607-1662)"
  opus = "BWV 380"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key ees \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           bes'4 bes' c'' c''
          d'' d''8 [ees''16 f''] ees''2\fermata
          f''4 f'' ees'' ees''
          d'' c''8 [d''16 ees''] c''2
          bes'\fermata
          \partial 32 * 16  bes'4 bes'
          c'' c'' bes' aes'8 [g']
          g'2\fermata bes'4 bes'
          aes' aes' g' f'8 [g'16 aes']
          f'2 ees'\fermata
           bes'4 bes' c'' c''
          d'' d''8 [ees''16 f''] ees''2\fermata
          bes'4 bes'8 [c''16 des''] c''8 [bes'] aes' [g']
          f' [g'16 aes'] f'4 ees'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           g'4 g' ees' aes'
          aes'8 [g'] aes'4 g'2\fermata
          bes'4 bes'8 [aes'] g'4. a'8
          bes' [a'] g' [ees'] f'4. ees'8
          d'2\fermata
          \partial 32 * 16  ees'4 ees'
          ees' aes' aes'8 [g'] f'4
          e'2\fermata e'8 [f' g' e']
          c'4 f'8 [d'] ees'4 ees'
          ees' d' bes2\fermata
          g'4 g' aes' aes'8 [g']
          f'4 g' g'2\fermata
          ees'4 ees' ees'8 [d'] ees'4
          ees' d' bes2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Mei -- nen Je -- sum laß' ich nicht,
      weil er sich für mich ge -- ge -- ben:
      so er -- for -- dert mei -- ne Pflicht,
      klet -- ten -- weis an ihm zu kle -- ben.
      Er ist mei -- nes Le -- bens Licht,
      mei -- nen Je -- sum laß' ich nicht.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key ees \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           ees'4 ees' c' f'
          f'8 [ees'] f' [d'] bes2\fermata
          d'8 [ees'] f' [d'] d' [c'16 b] c'4
          bes bes bes8 [g] a4
          f2\fermata
          \partial 32 * 16  g8 [aes] bes [g]
          aes [bes] c'4 f8 [g] aes [bes]
          c'2\fermata bes8 [aes] g4
          aes bes bes c'8 [aes]
          bes [g] aes4 g2\fermata
          ees'4 ees' ees' f'
          b8 [c'] d' [b] c'2\fermata
          g4 g aes8 [f] ees [bes]
          c'4 bes8 [aes] g2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           ees8 [f] g [ees] aes [g] aes [f]
          bes4 bes, ees2\fermata
          bes,8 [c] d [bes,] c [d] ees [f]
          g [f] ees [c] f4 f,
          bes,2\fermata
          \partial 32 * 16  ees8 [f] g [ees]
          aes [g] f [ees] d [e] f4
          c2\fermata g8 [f] e [c]
          f [ees] d [bes,] ees [g] aes [f]
          bes4 bes, ees2\fermata
          ees'8 [des'] c' [bes] aes [g] f [ees]
          d [c] b, [g,] c2\fermata
          ees8 [des] c [bes,] aes, [bes,] c [bes,]
          aes,4 bes, ees2\fermata \fine
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
