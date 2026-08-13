\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wenn wir in höchsten Nöten sein (II)"
  opus = "BWV 432"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          g' a' b' a'8 [b']
          c'' [b'] a'4 g'\fermata b'
          c'' b' a' g'
          fis'8 [g'] g'8. [fis'32 g'] a'4\fermata
          \partial 4  d''
          c'' b' a' g'8 [fis']
          e'8. [fis'32 g'] e'4 d'\fermata b'
          c'' b' a' g'8 [a']
          b'4 a' g'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          e'4. d'8 d' [e'] fis'4
          e'8 [g'16 fis'] e'8 [fis'] d'4\fermata g'
          g'8 a'4 g'8 fis' [e'16 dis'] e'4
          d' d' d'\fermata
          \partial 4  fis'
          e' d'8 [cis'16 d'] e'8 [fis'16 e'] d'4
          d' cis' d'\fermata fis'
          e' d' e'8 [fis'] g'4
          g' fis' d'\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Wenn wir in höch -- sten Nö -- then sein und wis -- sen nicht wo aus und ein, und fin -- den we -- der Hülf' noch Rath, ob wir gleich sor -- gen früh und spat.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          b a8 [fis] g4 a
          a8 [d'] c' [b16 a] b4\fermata d'
          e'8 dis'4 e'8 c'4 b
          a b fis\fermata
          \partial 4  b8 [a]
          g [a] b4 cis' b
          b8 [g] a4 fis\fermata fis
          g8 [a] b4 e8 b4 c'8
          d'4 c'16 [b c'8] b4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g8 [fis]
          e [d c d] g,4 d
          a,8 [b, c d] g,4\fermata g8 [fis]
          e4 e e4. d8
          c [b, a, g,] d4\fermata
          \partial 4  b,
          e8 [fis] g4. fis8 b [a]
          g [e] a4 d\fermata dis
          e8 [fis] g4 cis8 [dis] e [d16 c]
          b,8 [c] d4 g,\fermata \bar "|."
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
