\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ein feste Burg ist unser Gott (II)"
  opus = "BWV 303"
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
          \partial 4  d''4
          d'' d'' a'8 [b'] cis''4
          d''8 [cis''] b'4 a'\fermata d''
          cis'' b' a' b'8 [a']
          g' [fis'] e'4 d'\fermata \bar "|."
          \partial 4  d'
          a' b' a' gis'
          a'\fermata d' a' b'8 [cis'']
          d''4\fermata cis'' d''8 [cis'' b' b']
          a'4\fermata
          \partial 32 * 24  b' b' a'
          b'8 [a'] g'4 fis'\fermata d''
          cis'' b' a' b'8 [a']
          g' [fis'] e'4 d'\fermata \bar "|."
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          a'8 [g' fis' g'] a' [fis' g' a']
          fis' [e' d' e'] cis'4\fermata fis'
          e'8 [fis'] g'4 fis'8 [e'] d'4
          d' cis' a\fermata \bar "|."
          \partial 4  d'
          cis'8 [fis'] e'4 cis'8 [d'] b4
          a\fermata d' d' g'8 [g']
          fis'4\fermata fis' fis'16 [gis' a'8] a' [gis']
          a'4\fermata
          \partial 32 * 24 g' g' fis'
          fis' e' dis'\fermata fis'8 [gis']
          a'4 g' g' fis'8 [e']
          d'4 cis' a\fermata \bar "|."
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ein' fe -- ste Burg ist un -- ser Gott, ein' gu -- te Wehr und Waf -- fen.
      Der alt bö -- se Feind, mit Ernst er's jetzt meint,
      groß Macht und viel List sein grau -- sam Rüst -- zeug ist,
      auf Erd ist nicht seins -- glei -- chen.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  fis'8 [e']
          d'4 c'8 [b] d'4 e'
          a a8 [gis] a4\fermata fis8 [gis]
          a4 e'8 [d'] cis'4 b8 [cis']
          d'4 a8 [g] fis4\fermata \bar "|."
          \partial 4  fis8 [gis]
          a [d' cis' b] e' [fis' e' d']
          cis'4\fermata fis8 [g] a4 e'8 [e']
          d'4\fermata a b8 [e' fis' e']
          cis'4\fermata
          \partial 32 * 24 b8 [cis'] d'4 d'8 [c']
          b4 b b\fermata b
          e' e' e' d'8 [a]
          b4 e8 [a] fis4\fermata \bar "|."
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d'8 [cis']
          b4 a8 [g] fis4 e
          d e a,\fermata b,
          cis8 [d] e4 fis g8 [a]
          b [g a a,] d4\fermata \bar "|."
          \partial 4  d8 [e]
          fis4 gis a8 [d] e4
          a,\fermata b, fis e8 [a,]
          d4\fermata fis b,8 [cis d e]
          a,4\fermata
          \partial 32 * 24 e b8 [cis'] d4
          dis e b,\fermata b,
          cis8 [d e d] cis [a, d cis]
          b, [g,] a,4 d\fermata \bar "|."
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
