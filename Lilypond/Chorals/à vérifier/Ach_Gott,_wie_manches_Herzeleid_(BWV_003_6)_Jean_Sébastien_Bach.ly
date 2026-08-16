\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ach Gott, wie manches Herzeleid"
  opus = "BWV 3/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  a'4
          a' a' fis'8 [gis'] a'4
          b'8 [a'] gis'4 fis'\fermata fis'
          gis' a' b' e'8 [fis']
          gis' [a'] fis'4 e'\fermata
          b'
          cis'' cis'' a'8 [b'] cis''4
          d'' cis'' b'\fermata a'
          b' cis'' b' a'
          a' gis' a'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  cis'8 [d']
          e'4 a d' cis'
          b e' dis'\fermata dis'
          e' fis' fis'8 [dis'] e'4
          e'8 [fis'] dis'4 b\fermata
          gis'
          a' cis' fis'8 [gis'] ais'4
          b' e'8 [fis'] gis'4\fermata fis'
          e'8 [d'] cis' [dis'] e' [d'] cis'4
          fis' e' e'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Ach Gott, wie man -- ches Her -- ze -- leid be -- geg -- net mir zu die -- ser Zeit. Der schma -- le Weg ist trüb -- sal -- voll, den ich zum Him -- mel wan -- dern soll.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [b]
          cis' [d'] e'4 a a8 [gis]
          fis4 gis8 [a] b4\fermata b
          b dis' gis8 [a] b [cis']
          b4 b8 [a] gis4\fermata
          e'
          e'8 [fis'] gis'4 cis'8 [d'] e'4
          fis'8 [gis'] a'4 e'\fermata cis'
          b e8 [fis] gis4 a
          b8 [cis'] d'4 cis'\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a4
          a,8 [b,] cis4 d8 [e] fis [e]
          dis4 e b,\fermata b8 [a]
          gis [a] gis [fis] e [fis] gis [a]
          b4 b, e\fermata
          e
          a8 [gis] fis [eis] fis [e] d [cis]
          b,4 cis8 [d] e4\fermata fis
          gis a e fis8 [e]
          dis4 e a,\fermata \fine
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
