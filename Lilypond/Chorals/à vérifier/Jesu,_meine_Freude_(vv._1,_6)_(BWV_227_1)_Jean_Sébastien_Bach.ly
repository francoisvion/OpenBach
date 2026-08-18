\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, meine Freude (vv. 1, 6)"
 subtitle = "tiré du motet : Jesu, meine Freude"
  opus = "BWV 227/1"
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
          b'4 b' a' g'
          fis'2 e'\fermata
          b'4 cis'' d'' b'
          e''2 dis''\fermata
          e''8 [fis''] g''4 fis''4. fis''8
          e''1\fermata
          b'4 b' a' g'
          fis'2 e'\fermata
          b'4 cis'' d'' b'
          e''2 dis''\fermata
          e''8 [fis''] g''4 fis''4. fis''8
          e''1\fermata
          b'4 b' c'' b'
          a'4. a'8 g'2\fermata
          b'4 cis'' d'' b'
          e'' d''8 [cis''] cis''2
          b'\fermata b'4 b'
          a' g'8 [fis'] fis'2
          e'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          g'4 fis' e'8 [dis'] e'4
          e' dis' b2
          g'8 [fis'] e'4 d' d'
          g'8 [a'] b'4 b'2
          g'8 [a'] b'4 b'4. a'8
          g'1
          g'4 fis' e'8 [dis'] e'4
          e' dis' b2
          g'8 [fis'] e'4 d' d'
          g'8 [a'] b'4 b'2
          g'8 [a'] b'4 b'4. a'8
          g'1
          g'4 g' a' g'
          g' fis' d'2
          g'4 g' a' g'8 [a']
          b'4 b' b' ais'
          fis'2 g'4 fis'
          e' e' e' dis'
          b1 \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Je -- su, mei -- ne Freu -- de, mei -- nes Her -- zens Wei -- de, Je -- su, mei -- ne Zier! ach wie lang, ach lan -- ge ist dem Her -- zen ban -- ge und ver -- langt nach dir! Got -- tes Lamm, mein Bräu -- ti -- gam, au -- sser dir soll mir auf Er -- den nichts sonst Lie -- bers wer -- den.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          e'4 b c'8 [fis] g4
          c' b8 [a] g2
          e'8 [d'] cis' [b] a4 g8 [a]
          b4 g' fis'2
          e'4 e' e' dis'
          b1
          e'4 b c'8 [fis] g4
          c' b8 [a] g2
          e'8 [d'] cis' [b] a4 g8 [a]
          b4 g' fis'2
          e'4 e' e' dis'
          b1
          e'4 d' d' d'
          e' d'8 [c'] b2
          d'4 e' d' d'
          g' fis' g' fis'8 [e']
          dis'2 e'4 fis'8 [g']
          a' [a] b4 c' b8 [a]
          gis1 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          e4 d c4. b,8
          a,4 b, e2
          e4 a8 [g] fis4 g8 [fis]
          e [fis] g [a] b2
          c'4 b8 [a] b4 b,
          e1
          e4 d c4. b,8
          a,4 b, e2
          e4 a8 [g] fis4 g8 [fis]
          e [fis] g [a] b2
          c'4 b8 [a] b4 b,
          e1
          e8 [fis] g4 fis g
          c d g,2
          g4 fis8 [e] fis4 g8 [fis]
          e4 b, e fis
          b,2 e4 d
          c b, a, b,
          e1 \fine
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
