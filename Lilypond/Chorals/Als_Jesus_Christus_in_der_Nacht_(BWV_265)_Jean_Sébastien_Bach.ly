\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Als Jesus Christus in der Nacht"
 poet = "Johann Heermann"
  opus = "BWV 265"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          c'' a' bes' a'
          g' g' f'\fermata a'
          b' c'' d'' c''
          b'2 a'4\fermata
          \partial 4  e'
          f' f' g' g'
          a' a' f'\fermata d'
          e' f' g' f'
          e'2 d'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          g'4. f'4 e'8 f'4~
          f'4. e'8 c'4\fermata a'~
          a'8 [gis'] a'4. gis'8 a'4
          a' gis' e'\fermata
          \partial 4  cis'
          d' d' d'8 [b cis' d']
          e' [d' e' cis'] d'4\fermata a8 [b]
          c'4 c' cis' d'
          d' cis' a\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Als Je -- sus Chri -- stus in der Nacht,
      da -- rin er ward ver -- ra -- then,
      auf un -- ser Heil war ganz be -- dacht,
      das -- selb' uns zu er -- stat -- ten.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          c' c' bes c'
          d' c'8. [bes16] a4\fermata c'
          f' e' d' e'
          f' e'8 [d'] cis'4\fermata
          \partial 4  a
          a a g bes
          a a a\fermata f
          g a8 [f] bes [g] a4~
          a8 [e a g] fis4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          e f g a
          bes c' f\fermata f8 [e]
          d4 c b, a,
          d e a,\fermata
          \partial 4  a,
          d,8 d4 c8 b, e4 d8
          cis [b, cis a,] d4\fermata d
          c8 [bes,] a,4 e, f,8 [g,]
          a,2 d4\fermata \fine
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
