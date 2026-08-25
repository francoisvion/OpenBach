\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Christ lag in Todesbanden"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 277"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    \relative c' {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4 a'4
          gis a8 [b] c4 d
          c b a\fermata a
          f g a g8 [f]
          e [d] e4 d\fermata }          
          r4 d8 [e] f4 g d8 [e]
          f4 g a\fermata a
          d cis d e8 [d]
          c!4 b a\fermata b
          c a8 [bes] c4 g
          f e d2\fermata
          a'4 g f e
          d1\fermata \fine
         }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 f4
          f8 e4 gis!8 a4 b
          b8 a4 gis8 e4\fermata e
          e8 [d] cis [d] e4. d8
          cis8 d4 cis8 a4\fermata } r4
          a4 d d8 [c!] bes [c]
          d [a] d [c] c4\fermata f8 [g]
          a [bes] bes [a] a4 e
          e8 f4 e8 e4\fermata f
          f8 [e] f4 f e ~
          e8 d4 cis8 d2\fermata 
          d4. e8 cis d4 cis8
          a1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
    Christ lag in To -- des -- ban - den
    für un -- ser Sünd' ge -- ge - ben,
    Dess wir sol -- len fröh -- lich sein,
    Gott lo -- ben und ihm dank -- bar sein,
    und sin -- gen Hal -- le -- lu - ja, Hal -- le -- lu - ja!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
    der ist wie -- der er -- stan - den
    und hat uns bracht das Le - ben.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    \relative c
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4 d'8 [c]
          b4 c8 [d] e4 f8 [e]
          e f4 e16 [d] cis4\fermata a
          a bes a a
          a8 [f] g [e] f4\fermata } r4
          f8 [g] a4 g8 [a] bes4
          a8 [f'] f [e] f4\fermata c4
          f, g d'8 [c] b!4
          b8 a4 gis8 c4\fermata d
          g,!8 [c] c4 c8 [d] e [d]
          cis [a] bes [a16 g] f2\fermata
          a8 [c!] bes4 a g ~
          g fis8 [e] fis2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 d4
          d c8 [b] a a'4 gis8
          a [f] d [e] a,4\fermata cis
          d8 [f] e [d] cis [a] d4
          a' a, d\fermata } r4
          d4. c8 bes [a] g4
          d'8 [c] bes [c] f,4\fermata f'8 [e]
          d4 e fis gis
          a8 [f!] d [e] a,4\fermata d
          c f,8 [g] a [bes] c [bes]
          a [f] g [a] bes2\fermata
          fis4 g a2
          d,1\fermata \fine
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
