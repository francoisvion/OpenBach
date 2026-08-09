\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "O Gott, du frommer Gott (I)"
  opus = "BWV 398"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4 a'4
          fis' d' a' a'
          b'2\fermata r4 b'
          e' e' a' g'
          fis' e' d'\fermata a'
          b' b' a' g'
           fis'2\fermata r4 e'
          fis' gis' a' b'8 [cis''16 d'']
          cis''4 b' a'\fermata a'
          a' a' d'' c''8 [b']
          b'2\fermata r4 b'
           b' b' e'' d''8 [cis'']
          cis''2\fermata r4 a'
          b' a' b' cis''
          d''2\fermata r4 a'
          b'8 [a'] g' [fis'] e'4 e'
          d'2.\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 d'4
          d' d'8 [e'] fis'4 d'
          d'2 r4 d'
          cis' cis' d' e'
          d' cis' a fis'
          g' g'8 [fis'] e' [d'] e'4
           d'2 r4 cis'
          d' e' e' fis'
          e'4. d'8 cis'4 cis'
          d' d' d' d'
          d'2 r4 g'
           g'8 [fis'] g' [a'] b' [a'] b' [gis']
          a'2 r4 a'
          g' fis' fis' fis'
          fis'2 r4 fis'8 [e']
          d'4 d' cis' cis'
          a2. \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      O Gott, du from -- mer Gott, Du Brunn -- quell al -- ler Ga -- ben, Ohn' den nichts ist, was ist, Von dem wir al -- les ha -- ben: Ge -- sun -- den Leib gib mir, Und dass in sol -- chem Leib Ein' un -- ver -- letz -- te Seel' Und rein Ge -- wi -- ßen bleib'. A -- men.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 fis4
          a a d' a
          g2 r4 b
          a a a a
          a4. g8 fis4 d'
          d' g a a
           a2 r4 a
          a b a a
          a gis e e
          fis8 [e] fis [g] a [g] a [fis]
          g2 r4 d'
           e' e' b e'
          e'2 r4 d'
          d' d' d' cis'
          b2 r4 d'8 [cis']
          b4 b8 [d'] a4. g8
          fis2. \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 d4
          d8 [e] fis [g] fis [e] fis [d]
          g2 r4 g
          a8 [g] fis [e] fis [e] d [cis]
          d4 a, d d
          g8 [fis] e [d] cis [b,] cis [a,]
           d2 r4 a,
          d8 [cis] d [b,] cis4 d
          e8 [d] e4 a, a,
          d8 [cis] d [e] fis [e] fis [d]
          g2 r4 g8 [fis]
           e [dis] e [fis] gis [fis] gis [e]
          a2 r4 fis
          g8 [b] d' [e'] d' [cis'] b [ais]
          b2 r4 fis
          g8 [a] b [g] a4 a,
          d2. \bar "|."
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
