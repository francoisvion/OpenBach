\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Gott, du frommer Gott (II)"
  opus = "BWV 399"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  b'4
          b' e'' d'' c''16 [b' c''8]
          b'2.\fermata b'8 [c'']
          d''4 g' a' b'
          a'2 g'4\fermata \bar "|."
          \partial 4  a'
          a' b' c''8 [e'' d'' c'']
          b'2.\fermata b'4
          a' d''8 [e''16 fis''] e''4 d''8 [cis'']
          d''2.\fermata
          \partial 4  d''4
          d'' b' c'' d''
          e''2.\fermata a'4
          b'8 [c''16 d'' c''8 b'] b'4 a'8 [g']
          g'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  g'4
          fis' g'8 [fis'] g'4 fis'
          g'2. g'4
          g'8 [fis' e' fis'16 g'] fis'4 g'~
          g'8 [e'] fis'4 d' \bar "|."
          \partial 4  e'
          d' fis' g' a'
          g'2. g'8 [fis']
          e' [d'16 cis'] d'4 g'8 [b' a' g']
          fis'2.
          \partial 4 a'4
          g' g' g' g'
          g'2. fis'4
          g' g' g' fis'
          d'2. \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      O Gott, du from -- mer Gott, du Brunn -- quell al -- ler Ga -- ben,
      g'sun -- den Leib gieb mir und dass in sol -- chem Leib
      ein un -- ver -- letz -- te Seel und rein G'wis -- sen bleib.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g8 [a]
          b4. a8 b [e'] d'4
          d'2. d'8 [c']
          b [a] g4 d' d'
          d'4. c'8 b4 \bar "|."
          \partial 4  cis'
          d' d' c'8 [b a d']
          d'2. d'4
          cis'8 [a g fis] b [g' fis' e']
          d'2.
          \partial 4 fis'4
          g' d' e' f'
          e'2. d'4
          d' d'8 [e'] d'4 c'
          b2. \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  e4~
          e8 d4 c8 b, [c] d4
          g,2.\fermata g,8 [a,]
          b,4 c~ c8 [b, a, g,]
          d2 g,4\fermata \bar "|."
          \partial 4  g~
          g8 [fis e d] e4 fis
          g2.\fermata g,4
          g8 [fis b a] g [e] a4
          d2.\fermata
          \partial 4 d'8 [c']
          b [a g f] e [d c b,]
          c2.\fermata d4
          g,8 [a, b, c] d4 d
          g,2.\fermata \bar "|."
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
