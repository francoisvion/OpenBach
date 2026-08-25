\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Es woll uns Gott genädig sein (v. 3),"
  subtitle = "tiré de la cantate : Lobe den Herrn, meine Seele"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 69/6"
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
        \new Voice = "soprano" \relative c' {
          \voiceOne
          \repeat volta 2 {
          \partial 4 cis'4
          d cis b cis8 [d]
          e4 fis e d
          cis2\fermata r4 e
          d cis d b
          a fis8 [g] a4 g
          fis2.\fermata } a4
          g fis e fis
          d e fis\fermata cis'
          d cis8 [b] a4 b8 [cis]
          d4 e cis\fermata fis
          e cis8 [d] e4 b
          a g fis\fermata e
          a b cis8 [d] e4
          d cis b\fermata d
          cis b a fis8 [g]
          a2 g
          fis2.\fermata \fine
          \fine 
        } 
        
        \new Voice = "alto" \relative c' {
          \voiceTwo
          \partial 4 fis4
          fis fis8 [e] d4 a'
          g fis8 [gis] a4 b
          e,2\fermata r4 fis
          fis e fis d8 [e]
          fis2. e4
          d2.\fermata fis4
          e d d8 [cis] d4
          d g, a\fermata a'
          a g fis fis
          fis8 [b] b4 a\fermata a
          a a e8 [fis] g [fis]
          e [d] e4 d\fermata cis
          cis8 [a'] gis [fis] e [fis] g4
          fis8 b4 ais8 fis4\fermata b~
          b8 a4 g8~g [fis16 e] d4~
          d8 [e] fis4 e2
          d2.\fermata \fine
          
          \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Es dan -- ke, Gott, und lo - - be dich
      das Volk in gu -- ten Ta - - - ten;      
      Uns se -- gne Va -- ter und der Sohn,
      uns se -- gne Gott der Heil' -- ge Geist,
      dem al -- le Welt die Eh -- re tut,
      vor ihm sich fürch -- te al -- ler -- meist.
      Nun sprecht von Her -- zen: A - men!
     }
     
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Das Land bringt Frucht und bes - - sert sich,
      dein Wort ist wohl ge -- ra - - - ten.
     }
     
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          \partial 4 ais'4
          b ais b a8 [b]
          cis4 d e8 [fis] gis4
          cis,2\fermata r4 cis
          b8 [a] g!4 a b8 [cis]
          d2. a4
          a2.\fermata a4
          a a a a 
          a b8 [cis] fis,4\fermata e'
          d g, d'8 [e] fis4
          fis8 [d] b [e] e4\fermata d
          cis8 [fis] e [d] cis4 b
          e, a a\fermata a
          a e'8 [d] e [d] cis4~
          cis8 [b] cis [e] d4\fermata e
          e d e8 [a,] a4
          d2. cis4 
          a2.\fermata \fine
          
          \fine
        }
        
        \new Voice = "bass" \relative c {
          \voiceTwo
          \partial 4 fis4
          b, fis' g fis
          e d cis b
          a2\fermata r4 ais
          b e d g
          fis b a a,
          d2.\fermata d4
          d8 [cis] d4 a d8 [e]
          fis4 e d\fermata a
          d e fis8 [e] d [cis]
          b4 e a,\fermata d
          a' a,8 [b] cis [d] e [d]
          cis [b] cis [a] d4\fermata a'8 [gis]
          fis4 e8 [fis] g!4 ais,
          b fis b\fermata gis
          a b cis d8 [e]
          fis [g] a2 a,4
          d2.\fermata \fine
          
          \fine
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