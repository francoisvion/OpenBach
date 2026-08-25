\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = \markup{\concat{"O großer Gott von Macht" \small " (v. 9)"}}
 subtitle = "tiré de la cantate : Schauet doch und sehet, ob irgendein Schmerz sei,"
 poet = "Auteur : Matthäus Meyfart (1590-1642)"
  opus = "BWV 46/6"
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
          \tempo \markup{\tiny \italic "Interludes instrumentaux absents"}
          \partial 4  a'4
          bes' c'' d'' a'8 [b']
          c''2\fermata r4 g'
          g' a' bes' c''
          a'2\fermata r4 f'
          f' g' a' bes'
          c''2\fermata r4 d''
          bes'8 [c''] d''4 c'' c''
          bes'2\fermata r4 d''
          d'' d'' c'' c''
          bes' bes' a'2\fermata
          r4 a' bes' a'
          g' g' f' f'
          e'2\fermata r4 g'
          g' a'8 [bes'] c''4 bes'
          a'2 g'\fermata
          r4 g' g' a'8 [b']
          c''4 bes' a'2
          a'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          g' f' f' f'
          g'2\fermata r4 ees'
          e' fis' g' a'
          fis'2\fermata r4 d'
          d' e' f' ees'
          ees'2\fermata r4 d'
          g'8 [a'] bes'4 bes' a'
          f'2\fermata r4 f'
          g' g' g' d'
          d' e' fis'2\fermata
          r4 fis' g' f'
          f' e' d' d'
          c'2\fermata r4 d'~
          d'8 c' f'4 g'8 [a'] d' [g']
          g'4 fis' d'2\fermata
          r4 d' ees' f'
          g' g' g'8 [f'] e'4
          fis'1\fermata \fine
        }
      >>
    }

    \new Lyrics \lyricsto "soprano" {
      O gro -- ßer Gott von Treu,
      weil vor dir nie -- mand gilt
      als dein Sohn Je -- sus Christ,
      der dei -- nen Zorn ge -- stillt,
      so sieh doch an die Wun -- den sein,
      sein Mar -- ter, Angst und schwe -- re Pein;
      um sei -- net -- wil -- len scho -- ne,
      uns nicht nach Sün -- den loh -- ne.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          d' c' bes f'
          ees'2\fermata r4 c'
          c' c' d' ees'
          d'2\fermata r4 a
          bes bes c' bes
          f'2\fermata r4 f'
          ees' f' f' c'
          d'2\fermata r4 bes
          bes bes bes a~
          a g a2\fermata
          r4 d' d' c'
          d' g a g
          g2\fermata r4 g
          g d' c'8 [a] bes [g]
          ees'4 a bes2\fermata
          r4 b c' f'
          ees' d' cis'8 d'4 cis'8
          d'1\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          g a bes d'
          c'2\fermata r4 c'
          bes a g c
          d2\fermata r4 d8 [c]
          bes, [bes] a [g] f4 g
          a2\fermata r4 bes
          ees d8 [ees] f4 f,
          bes,2\fermata r4 bes8 [a]
          g4 f e fis
          g g, d2\fermata
          r4 d, g, a,
          b, c2 b,4
          c2\fermata r4 bes,
          ees d e8 [fis] g4
          c d g,2\fermata
          r4 f ees d
          c g, a,2
          d1\fermata \fine
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
