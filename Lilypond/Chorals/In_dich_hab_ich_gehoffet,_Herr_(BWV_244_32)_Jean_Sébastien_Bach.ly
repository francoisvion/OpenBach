\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "In dich hab ich gehoffet, Herr"
 subtitle = "tiré de la Passion selon saint Matthieu"
  opus = "BWV 244/32"
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
          \partial 4  bes'4
          bes' f'' f'' ees''8 [d'']
          c''4 d'' ees''8 [d''] c''4
          bes'\fermata bes' c'' d''
          ees'' c'' f'' g''
          f''\fermata d'' d''8 [ees''] f''4
          ees'' d''8 [c''] bes' [c''] d'' [c'']
          c''4\fermata d'' bes' c''8 [d'']
          ees''4\fermata d'' c'' d''
          ees''\fermata d'' c'' bes'
          f''4. ees''8 d''4 ees''8 [d'']
          c''2 bes'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          g' a'8 [bes'] c''4 bes'8 [a']
          g'4 f' bes' a'
          f'\fermata g' fis' f'
          ees'8 [f'] g'4 f'4. e'8
          a'4\fermata a' g' f'
          c'' bes' d' g'
          f'\fermata f' g'8 [a'] b'4
          c''\fermata bes' bes' aes'
          g'\fermata f' f'8 [ees'] d' [ees']
          f' [g'] a'2 g'4
          g' f'8 [ees'] d'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Mir hat die Welt __ _ _ trüg -- lich ge -- richt
      mit Lü -- gen und mit fal -- schem Gdicht,
      viel Netz und heim -- lich Stri - cke.
      Herr, nimm mein wahr
      in die -- ser Gfahr,
      bhüt mich vor fal - - schen Tü -- cken!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          d'8 [ees'] f'4 f' g'8 [f']
          ees'4 f' bes f'8 [ees']
          d'4\fermata ees' ees' d'
          g g8 [a] bes [c'] d' [c']
          c'4\fermata c' bes8 [c'] d' [ees']
          f'4 f' g' bes
          a\fermata bes8 [a] g4 f
          g\fermata g'8 [f'] ees'4 f'
          bes\fermata bes a bes
          c'2. bes4
          bes a f\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  bes8 [a]
          g4 d a bes~
          bes aes g8 [ees] f4
          bes,\fermata ees a, b,
          c8 [d] ees4 d8 [c] bes, [c]
          f4\fermata fis g aes
          a bes8 [a] g [f] e4
          f\fermata bes, ees d
          c\fermata g aes8 [g] f4
          ees\fermata bes, f g
          a8 [g] f4 fis g8 [f]
          e4 f bes,\fermata \fine
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
