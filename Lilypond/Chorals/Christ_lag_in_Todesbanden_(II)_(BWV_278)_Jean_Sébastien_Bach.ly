\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Christ lag in Todesbanden (II)"
 poet = "Martin Luther"
  opus = "BWV 278"
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
          \repeat volta 2 {
          \partial 4  b'4
          ais' b'8 [cis''] d''4 e''
          d'' cis'' b'\fermata b'8 [a']
          g'4 a' b'8 [a'] g'4
          fis'8 [e'] fis'4 e'\fermata }
          \partial 4  r
          e'8 [fis'] g'4 a' e'8 [fis']
          g'4 a' b'\fermata b'
          e'' d'' e'' fis''8 [e'']
          d''4 cis'' b'\fermata
          \partial 4  cis''
          d''8 [c''] b' [c''] d''4 a'
          g' fis' e'2\fermata
          b'4 a' g' fis'
          e'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          fis'4. ais'8 b' ais'16 [b'] cis''4~
          cis''8 b'4 ais'8 fis'4\fermata fis'~
          fis'8 e'4 dis'16 [cis'] b8 [dis'] e'4
          e'8 [dis'16 cis'] dis'4 b\fermata }
          \partial 4  r
          b e' e'4. b8
          b [c'16 d'] e'4 dis'\fermata fis'
          b' a' b'8 [gis'] cis''4
          c''8 b'4 ais'8 fis'4\fermata
          \partial 4 g'
          fis' d' d'2
          e'4. d'8 cis'2\fermata
          dis'8 [e' e' fis'] b e'4 dis'8
          b2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Christ lag in To -- des -- ban - den
      für un -- ser Sünd' ge -- ge - ben,
      Dess wir sol -- len fröh -- lich sein,
      Gott lo -- ben und ihm dank -- bar sein,
      und sin -- gen Hal -- le -- lu - ja,
      Hal -- le -- lu - ja!
    }
    
    \new Lyrics \lyricsto "soprano" {
      der ist wie -- der er -- stan - den
      Und hat uns bracht das Le - ben.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'8 [d']
          cis'4 d'8 [e'] fis' g'4 fis'8
          fis' [b cis'16 d' e'8] e' [dis']\fermata b4
          b8 c'4 b16 [a] b4 b
          b4. a8 g4\fermata }
          \partial 4  r
          g8 [a] b4 e a
          g8 [a16 b] c'4 fis\fermata dis'
          e'8 [fis'16 g' a'8] fis' b [e'] cis' [b16 ais]
          b8 [d' g' fis'] d'4\fermata
          \partial 4 e'
          a b8 [a] g4. fis8
          b4 a a2\fermata
          b4 cis'8 [dis'] e' [g] c' [b16 a]
          gis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          e d8 [cis] b, b4 ais8
          b [g e fis] b,4\fermata dis
          e fis g8 [fis g a]
          b4 b, e\fermata }
          \partial 4  r
          e4. d8 c [b, cis dis]
          e [d] c4 b,\fermata b8 [a]
          g [fis16 e fis8] a gis [cis' ais fis]
          b [g e fis] b,4\fermata
          \partial 4 e
          d g,8 [a,] b, [c] d4~
          d8 [cis d fis] a2\fermata
          a8 g4 fis8 e [c a, b,]
          e2.\fermata \fine
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
