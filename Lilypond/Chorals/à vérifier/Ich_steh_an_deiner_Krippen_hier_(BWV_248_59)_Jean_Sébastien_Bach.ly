\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Ich steh an deiner Krippen hier"
  opus = "BWV 248/59"
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
          g'8 [a'] b'4 a' g'
          a' a' b'\fermata g'8 [a']
          b'4 c'' d'' c''8 [b']
          a' [g'] a'4 g'\fermata
          b'
          b' a' g' fis'
          g'8 [a'] b'4 a'\fermata a'
          g' fis' g' d'
          g' a' b'\fermata g'8 [a']
          b'4 c'' d'' c''8 [b']
          a' [g'] a'4 g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          e'8 [fis'] g'4 g'8 [fis'] g'4
          g' fis' g'\fermata e'8 [fis']
          g' b'4 a'16 [g'] fis'4 g'
          g' fis' d'\fermata
          g'
          g'4. fis'8 fis' [e'] e' [dis']
          e'4 d' d'\fermata d'
          d'8 [c'] d'4 d'8 [c'] b4
          b e' dis'\fermata b
          e' e' d'8 [e'16 fis'] g'4
          g' fis' d'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Es ist ge -- wiss -- lich an der Zeit, dass Got -- tes Sohn wird kom -- men
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      in sei -- ner gro -- ssen Herr -- lich -- keit, zu rich -- ten Bös' und From -- men. Dann wird das La -- chen wer -- den theu'r, wann Al -- les soll ver -- gehn im Feu'r, wie Pe -- trus da -- von zeu -- get.
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
          b e' e'8 [d'] d'4
          e'8 [c'] a [d'] d'4\fermata e'
          d' g8 [a] b [c'] d'4
          d' c'8 [b] b4\fermata
          d'
          d' d'8 [c'] b [c'] fis [b]
          b [a] a [g] fis4\fermata fis
          g8 [a] b [c'] b [a] g4
          g fis8 [e] fis4\fermata e8 [fis]
          g4. a8 b [c'] d'4
          d' c'8 [b] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g8 [fis]
          e4. d8 c4. b,8
          c [a,] d4 g,\fermata c
          g8 [fis] e4 b8 [a] g4
          d' d g\fermata
          g8 [a]
          b [c'] d'4 g8 [a] b4
          e8 [fis] g4 d\fermata d'8 [c']
          b4. a8 g4. fis8
          e [d] c4 b,\fermata e
          e8 [d] c4 b,8 [a,] g,4
          d2 g,4\fermata \fine
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
