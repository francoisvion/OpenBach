\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Alles ist an Gottes Segen"
 poet = "Nürnberg 1676"
  opus = "BWV 263"
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
          g'4 g' d'' d''
          c'' d'' b' g'\fermata
          b' b' a' a'
          g' a' fis' d'\fermata
          a' a' b'8 [a'] g' [fis']
          e'4. d'8 d'2\fermata
          d''4 d'' d'' e''
          c'' d'' b' g'\fermata
          b' b' a' a'
          g' a' fis' d'\fermata
          g' a' b'8 [c''] d''[c'']
          b'4 a'8 [g'] g'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          d'4 d' d'8 a'4 g'8
          a'4 a'8 [fis'] g'4 d'\fermata
          g' g' g' fis'~
          fis'8 [e'16 d'] e'8 [cis'] d'4 a\fermata
          d' d' d' d'~
          d'8 [b] cis'4 a2\fermata
          a'4 a' gis'8 [a'] b'4~
          b'8 [a'16 g'] a'4 g' d'\fermata
          g' g'8 [fis'] e' [cis'] fis'4~
          fis'8 [e'16 d' e'8 cis'] d'4 a\fermata
          d'8 [b] fis'4 g'8 [fis'] g'4~
          g' fis' d'2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Al -- les ist an Got -- tes Se -- gen
      und an sei -- ner Gnad' ge -- le -- gen,
      ü -- ber al -- les Geld und Gut.
      Wer auf Gott sein' Hoff -- nung se -- tzet,
      der be -- hält ganz un -- ver -- let -- zet
      ei -- nen frei -- en Hel -- den -- mut.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          b4 b a b
          e' d' d' b\fermata
          d' d' d' d'
          d'8 [b] a4 a fis\fermata
          fis8 [g] a [fis] g4 a
          a4. g16 [fis] fis2\fermata
          fis'4 fis' f' e'
          e' d' d' b\fermata
          d'8 [b e' d'] cis' [a] d'4
          d'8 [b] a4 a fis\fermata
          g d' d'8 [c' b c']
          d'4 d'8. [c'16] b2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          g4 g fis g~
          g fis8 [d] g4 g,\fermata
          g,8 [a,] b, [c] d [e] fis [d]
          b, [e] cis [a,] d4 d,\fermata
          d8 [e] fis [d] g4 d
          a a, d2\fermata
          d8 d'4 c'8 b [a gis e]
          a [g fis d] g4 g,\fermata
          g g g fis8 [d]
          b, [e cis a,] d4 d,\fermata
          b,8 [e d c] b, [a, g, e]
          d4 d, g,2\fermata \fine
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
