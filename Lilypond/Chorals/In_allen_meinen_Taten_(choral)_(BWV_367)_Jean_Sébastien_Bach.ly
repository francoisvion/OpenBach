\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "In allen meinen Taten (choral)"
  opus = "BWV 367"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          c'' c'' d'' d''
          e''2 d''4\fermata d''
          c'' b' a' a'
          b'2 b'4\fermata g'
          g' g' c'' c''
          b'2\fermata r4
          \partial 4  b'
          e'' e'' c'' c''
          d''2 b'4\fermata b'
          c'' c'' a' a'
          b'2 g'4\fermata g'
          c'' d'' e'' d''
          c''2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e'8 [f'] g'4 a' g'
          g'2 g'4\fermata g'~
          g'8 [fis'] g'4 g' fis'
          g'2 g'4\fermata d'
          e' e' a' a'
          gis'2\fermata r4
          \partial 4  g'
          g' g' f' f'
          fis'8 [g' a' fis'] g'4\fermata g'
          g' g' fis' fis'
          fis' b b\fermata b
          c' f' e'8 [f'] g' [f']
          e'2.\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      In al -- len mei -- nen Ta -- ten lass ich den Höch -- sten ra -- ten, der al -- les kann und hat; er muss zu al -- len Ding -- en, soll's an -- ders wohl ge -- lin -- gen, selbst ge -- ben Rat und Tat.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          c' c' c' b
          c'2 b4\fermata b
          c' d' e' d'
          d'2 d'4\fermata b
          c' c'8 [d'] e'4 e'
          e'2\fermata r4
          \partial 4  e'
          e'8 [d' c' b] a [b c' b]
          a4 d' d'\fermata d'
          e' e' e' d'
          dis'8 [e' fis' dis'] e'4\fermata d'
          g b c' b
          g2.\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  c4
          c8 [d] e4 f g
          c8 [d e f] g4\fermata g,
          a, b, c d
          g2 g,4\fermata g8 [f]
          e [d c b,] a, [b, c d]
          e2\fermata r4
          \partial 4  e8 [d]
          c [d e c] f [g a f]
          d [e fis d] g4\fermata g,
          c8 [d e c] d [e fis d]
          b, [cis dis b,] e4\fermata g8 [f]
          e [f e d] c4 g
          c2.\fermata \bar "|."
        }
      >>
    }
  >>
}

\paper {
  indent = 10
  page-count = 1
}
\layout {}
\midi {}
