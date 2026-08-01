\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Wo Gott der Herr nicht bei uns hält"
  opus = "BWV 258"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d''4
          d'' b'8 [cis''] d'' [e''] fis''4
          e'' e'' d''\fermata d''
          cis'' b'8 [cis''] d''4 e''8 [d'']
          cis''2 b'4\fermata \bar "|."
          \partial 4  e''
          fis'' fis'' cis''8 [d''] e''4
          d'' d'' cis''\fermata d''
          e'' b'8 [cis''] d''4 cis''
          b' b' a'\fermata
          \partial 4  d''
          cis'' b'8 [cis''] d''4 e''8 [d'']
          cis''2 b'4\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'8 [g']
          a'4 g' a' a'
          b' a'8 [g'] fis'4\fermata gis'
          a' g' fis' e'8 [fis']
          g'4 fis' fis'\fermata \bar "|."
          \partial 4  a'
          a' a' e'8 [fis'] g'4
          fis' gis' ais'\fermata b'
          b'8 [a'] gis'4 fis' e'
          a' gis' e'\fermata
          \partial 4 gis'
          a' gis'8 [ais'] b'4 b'8 [fis']
          g'4 fis'8 [e'] d'4\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Wo Gott der Herr nicht bei uns hält, wenn uns -- re Fein -- de to -- ben,
      und uns -- rer Sach er nicht zu -- fällt, wo er Is -- ra -- els Schutz nicht ist,
      so ist's mit uns ver -- lo -- ren.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          d' d' d' d'
          d' cis' a\fermata b
          e' e' d'8 [cis'] b4
          b ais8 [e'] d'4\fermata \bar "|."
          \partial 4  a
          a a8 [b] cis'4 cis'
          d'8 [cis'] b4 fis'\fermata fis'
          b e' a8 [b] cis'4
          fis' e'8 [d'] cis'4\fermata
          \partial 4 d'
          e' e' fis' b
          b ais fis\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  b4
          fis g fis8 [e] d4
          gis a d\fermata b,
          a, e b8 [a g fis]
          e4 fis b,\fermata \bar "|."
          \partial 4  cis
          d8 [e fis g] a4 ais
          b eis fis\fermata b8 [a]
          gis [fis] e4 fis8 [gis] a4
          dis e a,\fermata
          \partial 4 b,
          cis8 [d] e4 b8 [a g fis]
          e4 fis b,\fermata \bar "|."
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
