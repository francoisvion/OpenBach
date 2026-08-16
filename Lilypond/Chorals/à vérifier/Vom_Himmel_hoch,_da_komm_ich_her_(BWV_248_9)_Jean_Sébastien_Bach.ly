\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Vom Himmel hoch, da komm ich her"
  opus = "BWV 248/9"
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
          cis'' b' cis'' a'
          b' cis'' d''\fermata r
          r1
          r4 d'' d'' a'
          a' fis'8 [g'] a'4 g'
          fis'\fermata r r2
          r r4 fis'
          b' b' a'8 [b'] cis''4
          d''8 [cis''] b'4 a'\fermata r
          r1
          r4 d'' cis'' b'
          a' b'8 [a'] g' [fis'] e'4
          d'\fermata r r2
          r1
          r \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          a'8 [gis'] fis'4 e' fis'8 [e']
          d'4 e' fis'\fermata r
          r1
          r4 fis'8 [g'] a' [g'] fis'4
          e' d' d' e'
          d'\fermata r r2
          r r4 d'8 [e']
          fis'4 e' e'8 [gis'] a'4
          a'~ a'8 gis' e'4\fermata r
          r1
          r4 fis'8 [e'] e' [fis'] fis' [e']
          cis' [d'] b [cis'] d'4~ d'8 cis'
          a4\fermata r r2
          r1
          r \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Vom Him -- mel hoch, da komm ich her. Ich Bring' euch gut -- te neu -- e Mär, Der gu -- ten Mär bring ich so viel, Da -- von ich singn' und sag -- en will.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  fis'4
          e' d' cis' d'8 [cis']
          b [a] g4 a\fermata r
          r1
          r4 a d' d'
          cis' c'8 [b] a4 a
          a\fermata r r2
          r r4 a
          a gis a8 [d'] cis' [b]
          a [cis'] fis' [e'] cis'4\fermata r
          r1
          r4 d'8 [b] b [a] a [g]
          a4 g8 [fis] d4 a8 [g]
          fis4\fermata r r2
          r1
          r \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          a~ a8 gis a [g] fis4
          g8 [fis] e4 d\fermata r
          r1
          r4 d8 [e] fis4 fis8 [g]
          a4 a8 [g] fis [e] d [cis]
          d4\fermata r r2
          r r4 d
          dis e8 [d] cis [b,] a,4
          fis8 [e] d [e] a,4\fermata r
          r1
          r4 b8 [e] a4 d8 [g]
          g [fis] g [a] b [g] a [a,]
          d4\fermata r r2
          r1
          r \fine
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
