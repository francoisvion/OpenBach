\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Sei gegrüßet, Jesu gütig"
 poet = "Auteur : Christian Keymann (1607-1662)"
  opus = "BWV 410"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 a' bes' bes'
          c'' bes' a' a'\fermata
          bes' c'' d'' d''
          ees'' d''8 [c''] c''2
          bes'\fermata
          \partial 32 * 16  d''4 c''
          d'' d'' c'' bes'
          c'' c''\fermata c'' d''
          ees'' ees'' d'' c''8 [d'']
          d''2 c''\fermata
           g'4 a' bes' bes'
          c'' c'' d'' d''\fermata
          d'' d'' ees'' d''
          c'' bes'8 [a'] a'2
          g'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          d'4 d' d' d'
          g'8 [fis'] g'4 g' fis'\fermata
          g' f' f' f'
          ees'8 [f'] g'4 f'2
          f'\fermata
          \partial 32 * 16  f'4 f'
          f' bes' bes'8 [a'] bes'4
          bes' a'\fermata a' g'
          g' g' g'8 [f'] ees'4
          aes' g'8 [f'] ees'2\fermata
          ees'4 d' d'8 [ees'] f'4
          g' f' f' f'\fermata
          d' g' g'8 c''4 b'8
          c'' [fis'] g'4 g' fis'
          d'1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Sei ge -- grü -- ßet, Je -- su gü -- tig,
      ü -- ber al -- les Maß sanft -- mü -- thig!
      Ach wie bist du so zer -- schmis -- sen,
      und dein gan -- zer Leib zer -- ris -- sen!
      Laß mich dei -- ne Lieb' er -- er -- ben
      und da -- rin -- nen se -- lig ster -- ben!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes4 a~ a8 [g16 fis] g4
          g8 [a] bes [g] d'4 d'\fermata
          d' c'~ c'8 [bes16 a] bes4
          bes bes bes a
          d'2\fermata
          \partial 32 * 16  bes4 c'~
          c' bes g'8 [ees'] f'4
          f' f'\fermata f' f'
          ees'8 [d'] c'4 b c'
          c' b g2\fermata
          c'4 c' bes bes~
          bes a bes bes\fermata
          a8 [c'] c' [bes]~ bes [aes16 g] f4
          g8 [a] bes [ees'] d'4. c'8
          b1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           g4 fis g4. f8
          ees4 d8 [c] d4 d\fermata
          g a bes4. a8
          g4 ees f f,
          bes,2\fermata
          \partial 32 * 16  bes4 a
          bes8 [a] g [f] ees [c] d [bes,]
          f4 f,\fermata f b,
          c8 [d] ees [f] g4 aes8 [g]
          f4 g c2\fermata
          c'4 fis g d
          ees f bes,2\fermata
          fis,4 g, c d
          ees d8 [c] d4 d,
          g,1\fermata \fine
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
