\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Christum wir sollen loben schon"
  subtitle = "tiré de la cantate : Christum wir sollen loben schon"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 121/6"
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
          \partial 4  e'8 [fis']
          g'4 g' a' b'~
          b' e' a' g'
          fis'2.\fermata a'4
          b'8 [cis''] d''2 cis''4
          b' a' b'8 [cis''] d''4
          d''2.\fermata
          a'4
          b'8 [cis''] d''2 cis''4
          b' a' b'8 [cis''] d''4~
          d'' a'8 [g'] fis' [g'] a'4
          b'2.\fermata e'8 [fis']
          g'4 g'8 [a'] b' [c''] d''4~
          d'' b' a'8 [g'] fis' [g']
          a'4 g' fis'2~
          fis'1 ~
          fis'
          fis'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  b4
          e' e' e' fis'~
          fis' e' dis' e'
          dis'2.\fermata d'4
          g' fis'8 [g'] a'4 e'8 [fis']
          g'4 fis'8 [e'] d'4 g'
          fis'2.\fermata
          fis'8 [e']
          d' [e'] fis'2 fis'8 [e']
          d' [e'] fis'4 g' d'8 [e']
          fis'2. e'4
          fis'2.\fermata e'8 [dis']
          e' [fis'] g'4 fis'8 [e'] d' [c']
          b [c'] d' [e'] fis'4. e'8
          dis'4 e'2 d'8 [cis']
          d' [e'] fis'2 gis'8 [ais']
          b'1~
          b'4 ais'8 [gis'] ais'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Lob, Ehr und Dank __ _ sei dir ge -- sagt,
      Christ ge -- born von __ _ der rei -- nen Magd,
      samt Va - ter und dem Heil - - - gen Geist
      von nun an bis __ _ in E - - wig -- keit. __ _ 
    }
    
    \new Lyrics \lyricsto "alto" {
      \repeat unfold 34 {\skip1 }
      in E - - - - - - - - - - wig -- keit.
    }
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g8 [a]
          b4 b a2
          g8 [a] b4 a b
          b2.\fermata a4
          e' a4. b8 cis' [d']
          e' [d'] cis'4 b b
          a2.\fermata
          d'8 [e']
          fis'4 b2 a4
          b8 [cis'] d'4 g8 [a] b4~
          b8 cis' d'4 cis'8 [dis'] e'4
          dis'2.\fermata b4
          b b8 [c'] d' [e'] fis'4
          g' g d'8 [e'] fis'4~
          fis' e'8 [d'] cis'4 fis
          b8 fis b4. ais8 b [cis']
          d'1~
          d'4 cis'8 [b] cis'2\fermata \fine
        }
        
      \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" {
        \repeat unfold 37 {\skip1 }
        E - - - - - wig -- keit, in E - - - wig -- keit.
      }
    
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  e,4
          e e8 [d] cis4 dis
          e8 [fis] g4 fis e
          b,2.\fermata fis,4
          e, d,8 [e,] fis, [g,] a,4
          e, fis, g,8 [a,] b, [cis]
          d2.\fermata
          d8 [cis]
          b,4. cis8 d [e] fis4
          g fis e b,8 [cis]
          d [e] fis [g] a [b] c'4
          b2.\fermata g8 [fis]
          e4 e d8 [c] b, [a,]
          g, [a,] b, [c] d4. c8
          b,4 c8 [b,] ais,2
          b,8 [cis] d [e] fis4. e8
          d [cis] b, [ais,] b, [d] cis [b,]
          fis2 fis,\fermata \fine
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
