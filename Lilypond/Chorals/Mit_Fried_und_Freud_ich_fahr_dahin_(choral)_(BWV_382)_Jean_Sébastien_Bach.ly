\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Mit Fried und Freud ich fahr dahin (choral)"
  opus = "BWV 382"
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
          \partial 4  d'4
          a' a' g' d''
          c'' b' a'\fermata c''
          b' a' b'2
          a'2.\fermata
          \partial 4  b'4
          c'' b' c'' a'
          g'8 [f'] e'4 d'\fermata a'~
          a' g' f'8 [e'] d'4
          c'2\fermata
          \partial 32 * 16  a'4 f'
          c'' a' g'8 [f'] g'4
          a'\fermata g' f'8 [e'] d'4
          c' f' e'8 d'4 cis'8
          d'1\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a4
          d' f' e' fis'8 [gis']
          a'4. gis'8 e'4\fermata a'~
          a'8 [gis'] a'4 f' e'8 [d']
          c'2.\fermata
          \partial 4  g'4
          g' g' g' f'
          e'8 [d'] cis'4 a\fermata e'8 [d']
          e' [cis' d' e'] a4 bes
          a2\fermata
          \partial 32 * 16 e'4 d'
          c'8 g'4 f'8 e' [d' cis' d']
          e'4\fermata e' d'8 [c'] b4
          a8 [b cis' d'] e' [f'] g'4~
          g' fis'8 [e'] fis'2\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Mit Fried' und Freud' ich fahr' da -- hin in Got -- tes Wil -- le, ge -- trost ist mir mein Herz und Sinn, sanft und stil -- le. _ Wie Gott mir ver -- hei -- ssen hat, der Tod ist mein Schlaf wor -- den, wor -- den.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  f8 [g]
          a4 d'8 [c'] b4 a8 [b]
          c' [d'16 e' f'8 e'] c'4\fermata e'
          f'8 [e'16 d' c' b] a4 d'16 [b] gis4
          a2.\fermata
          \partial 4  d'4
          e' d' c'4. d'8
          cis' [d' a g] f4\fermata a
          g8 f4 e8 f2
          f\fermata
          \partial 32 * 16 a4 a
          g c'8 [d'] e' [f' e' d']
          cis'4\fermata a a8 [g] f4
          e a2.
          bes4 a8 [g] a2\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d8 [e]
          f [e f d] e [d c b,]
          a, [c d e] a,4\fermata a
          d8 [e f e] d [b,] e4
          a,2.\fermata
          \partial 4  g8 [f]
          e [f g f] e [c f d]
          bes [g] a4 d\fermata cis8 [b,]
          cis [a, b, cis] d [c d e]
          f2\fermata
          \partial 32 * 16 cis4 d
          e f g8 [a] bes4
          a\fermata cis d gis,
          a,4. b,8 cis [d] a,4
          d,1\fermata \bar "|."
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
