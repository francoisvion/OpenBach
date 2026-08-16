\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Vater unser im Himmelreich"
  opus = "BWV 245/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a'8 [g'] f'4 g' a'8 [g']
          f'4 e' d'\fermata a'
          a' g' c'' a'8 [g']
          f'4 g' a'\fermata a'8 [b']
          c''4 d''8 [e''] f''4 e''
          d'' cis'' d''\fermata d''
          e'' d'' c'' b'
          a' gis' a'\fermata d''
          c'' b' c''8 [bes'] a'4
          a' g' f'\fermata a'
          bes' a'8 [g'] f'4 g'
          f' e' d'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  f'4
          e' e'8 [d'] cis' [d'16 e'] a4
          bes8 d'4 cis'8 a4 f'
          e' d' e' f'8 [e']
          d' [f'] e' [d'] e'4 e'
          a' g' f'8 [a'] g' [e']
          f' [e'] e'4 fis' g'8 [f']
          e'4 b' e' f'8 [e']
          e' [d'] e'4 e' g'
          g'8 [f'16 e'] f'4 e' f'
          f'4. e'8 c'4 d'
          d' e' e'8 [a] d'4
          d'4. cis'8 a4 \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          a a g d'
          d' a8 [g] f4 d'
          a bes c'4. cis'8
          d' [cis'] d'4 cis' c'
          c'8 [a] b [cis'] d' [c'] bes4
          b a a b
          b8 [a] a [gis] a4. gis8
          a4 b c' b
          c'8 [a] g [f] g4 d'
          d' g8 [c'] a4 a
          g8 [f] e4 a bes
          b e8 [a] fis4 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          cis d e f
          g a d d
          c bes, a,8 [c] f4
          bes8 [a] bes4 a a8 [g]
          f4. e8 d4 g
          gis a d g
          c b, a, d8 [e]
          f4 e a, g8 [f]
          e4 d c d8 [c]
          bes,4 c f fis
          g cis d8 [c] bes, [a,]
          gis,4 a, d \fine
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
