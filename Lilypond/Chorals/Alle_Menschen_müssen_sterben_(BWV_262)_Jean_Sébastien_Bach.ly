\version "2.27.1"

#(set-global-staff-size 19)

\header { 
 title = "Alle Menschen müssen sterben"
 poet = "Johann Georg Albinus ou Johann Rosenmüller"
  opus = "BWV 262"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          a'4 d'' a' b'
          a'4. g'8 fis'4 fis'\fermata
          a' a' g' fis'
          e'4. d'8 d'2\fermata
          }
          e'4 e' fis'8 [gis'] a'4
          a'4. gis'8 a'4 a'\fermata
          b'4. cis''8 d''4 d''
          cis''4. cis''8 b'4 b'\fermata
          fis' fis' b' a'
          a' gis' a'2\fermata
          b'4 a' g' fis'
          e'4. d'8 d'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          d'4 d' d' d'
          d' cis' fis' fis'\fermata
          d' d'8 [cis'] b [cis'] d'4~
          d' cis' d'2\fermata
          }
          cis'4 cis' d' cis'
          fis' e'8 [d'] cis'4 cis'\fermata
          e'8 [fis'] g'4 fis' fis'
          fis'4. e'8 d'4 d'\fermata 
          d' d' d' cis'
          d' d' cis'2\fermata
          d'4 d'8 [cis'] b [cis'] d'4
          d' cis' d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Al -- le Men -- schen müs -- sen ster -- ben,
      al -- les Fleisch ver -- geht wie Heu;
      Die -- ser Leib der muß ver -- we -- sen,
      Wenn er an -- ders soll ge -- ne -- sen
      zu der gros -- sen Herr -- lich -- keit,
      Die den From -- men ist be -- reit.
  }
  
  \new Lyrics \lyricsto "soprano" {
      Was da le -- bet muß ver -- der -- ben,
      Soll es an -- ders wer -- den neu.
  }
  
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          fis4 fis8 [g] a4 g8 [fis] 
          e [d] e4 d d\fermata 
          fis fis g a
          b a8. [g16] fis2\fermata
          }
          a4 a a a
          b b a a\fermata
          g4. a8 b2~
          b4 ais b2\fermata
          a4 a g8 [fis] e4
          d8 [fis e d] e2\fermata
          g4 fis g a
          b a8. [g16] fis2\fermata  \fine 
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
            d4 b, fis, g,
            a, a, d, d,\fermata
            d d e fis
            g8 [e a a,] d2\fermata 
          }
          a,4 a, d fis8 [e]
          d4 e a,2\fermata
          e b,8 [cis d e]
          fis2 b,\fermata
          d4 d g, a,
          b,2 a,\fermata
          g,4 d e fis
          g8 [e a a,] d2\fermata \fine
        }
      >>
    }
  >>} 
 
\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}
\midi {}
 
