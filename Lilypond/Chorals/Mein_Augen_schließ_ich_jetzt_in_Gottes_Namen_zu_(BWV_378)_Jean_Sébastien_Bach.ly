\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Mein Augen schließ ich jetzt in Gottes Namen zu"
  opus = "BWV 378"
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
          g' d' g' a'
          b'2\fermata r4 d''
          e'' d'' c''4. d''8
          b'2\fermata r4 d''
          c'' b' a' g'
          a'2\fermata r4 b'
          g' c'' b' a'
          g'2\fermata r4 b'8 [c'']
          d''4 d'' c'' b'
          a'2\fermata r4 b'
          g' g' a' b'
          c''2 b'4\fermata d''
          c'' a' b' c''
          d''2\fermata r4 g'
          a' b' c'' b'
          a'2 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d' a d' e'8 [fis']
          g'2\fermata r4 g'~
          g'8 [fis'] g'4. fis'16 [e'] fis'4
          g'2\fermata r4 g'~
          g'8 [fis'] g'4. fis'8 g' [g]
          d'2\fermata r4 fis'
          fis'8 [e'16 fis'] g'8 a'4 g'8 g' [fis']
          d'2\fermata r4 g'
          g' g' g'8 [fis'] g'4
          g' fis'\fermata r fis'
          e' d' e' e'
          e'2 e'4\fermata d'8 [f']
          e' g'4 fis'8 g'4 g'
          g'2\fermata r4 e'~
          e'8 [fis'] g'4. fis'8 g'4
          g'8 [fis'16 e'] fis'4 d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Mein' Au -- gen schließ' ich jetzt
      in Got -- tes Na -- men zu,
      die -- weil der mü -- de Leib
      be -- geh -- ret sei -- ne Ruh',
      weiß a -- ber nicht, ob ich
      den Mor -- gen möcht' er -- le -- ben;
      es könn -- te mich der Tod
      viel -- leicht noch heut' um -- ge -- ben.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b8 [a]
          g4 fis g c'
          d'2\fermata r4 d'
          c' d' e'8 [d'16 c'] d'4
          d'2\fermata r4 b
          c' d' d'4. cis'8
          fis'2\fermata r4 b
          b e'8 [d'] d'4 d'8. [c'16]
          b2\fermata r4 d'
          d'8 [c'] b4 c' d'
          d'2\fermata r4 b
          b8 [c'] d'4 c' b~
          b8 [a16 gis] a4 a8 [gis]\fermata g4
          g d' d' e'
          d'2\fermata r4 b
          c'8 [d'] d' [e'16 d'] c'4 d'
          e' d'8. [c'16] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,8 [a,]
          b, [c] d [c] b,4 a,
          g,2\fermata r4 b,
          c4. b,8 a,4 d,
          g,2\fermata r4 g,
          a, b,8 [c] d4 e
          d2\fermata r4 dis
          e4. fis8 g4 d
          g,2\fermata r4 g,8 [a,]
          b,4. e8 a,4 b,8 [c]
          d2\fermata r4 dis
          e8 [d] c [b,] c [b,] a, [gis,]
          a, [b,] c [d] e4\fermata b,
          c d g8 [fis] e4
          b,2\fermata r4 e8 [d]
          c4 b,8 [e] a,4 b,8 [g,]
          c4 d g,\fermata \fine
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
