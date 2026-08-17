\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ach lieben Christen, seid getrost"
 subtitle = "tiré de la cantate : Ach lieben Christen, seid getrost"
  opus = "BWV 114/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4  bes'4
          bes' g'8 [a'] bes' [c''] d''4
          c'' c'' bes'\fermata bes'
          a' g'8 [a'] bes'4 c''8 [bes']
          a'2 g'4\fermata
          c''
          d'' d'' a'8 [bes'] c''4
          bes' bes' a'\fermata bes'
          c'' g'8 [a'] bes'4 a'
          g' g' f'\fermata bes'
          a' g'8 [a'] bes'4 c''8 [bes']
          a'2 g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  g'4
          f' ees' d' d'
          ees' ees'16 [d' ees'8] d'4\fermata d'
          d'8 [c''] bes' [a'] g'4 g'8 [f']
          ees'4 d'8 [c'] bes4\fermata
          f'
          f' f' c'4. a'8
          a' [g'16 fis'] g'4 fis'\fermata g'
          g'8 [f'] ees'4 d'8 [e'] f'4
          f' e' c'\fermata d'
          c'8 [d'] e' [fis'] g'4 g'
          g' fis' d'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Wir wa -- chen o -- der schla -- fen ein, so sind wir doch des Her -- ren; Durch A -- dam auf uns kömmt der Tod, Chri -- stus hilft uns aus al -- ler Not. Drum lo -- ben wir den Her -- ren.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          d'8 [c'] bes4 bes f
          g a f\fermata g
          fis8 [ees'] d' [c'] bes [a] g4
          g fis g\fermata
          f
          bes bes f' fis'8 [a]
          bes [c'] d'4 d'\fermata d'
          g c' bes c'
          c'8 [g] c' [bes] a4\fermata f8 [g]
          a [bes] c'4 d' c'8 [d']
          ees' [a] d' [c'] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          d ees8 [f] g [a] bes4
          ees f bes,\fermata g,
          d e8 [fis] g [f] ees [d]
          c4 d g,\fermata
          a,
          bes,8 [c] d [ees] f [g] a [fis]
          g [a] bes [c'] d'4\fermata g8 [f]
          ees [d] c4 g, a,8 [bes,]
          c [bes,] c4 f,\fermata d8 [e]
          f4 c g8 [f] ees [d]
          c4 d g,\fermata \fine
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
