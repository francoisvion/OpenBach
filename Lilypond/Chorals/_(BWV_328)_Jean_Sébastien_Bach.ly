\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Gott, dich loben wir"
  opus = "BWV 328"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

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
          \partial 4 e4
          g a c a 
          a2\fermata r4 c
          c b a a
          g2.\fermata \repeat volta 2 { c4
          c c b a 
          b a a\fermata a
          a g a b 
          c a g\fermata } \repeat volta 2 { e
          g a b b
          a2.\fermata } \repeat volta 2 { b4 
          b b8 [c] d4 a
          a g a b 
          c a g\fermata } \repeat volta 2 { c
          c c b a 
          b a a\fermata a
          a g a b 
          c a g\fermata } \repeat volta 2 { a 
          a a g b 
          b a a \fermata a
          a g a8 [b] c4
          g g e\fermata } f
          d f e d 
          e fis g\fermata g
          g g a4. f8

        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 b,4
          e f f8 [e] d4
          c2\fermata r4 e8 [fis]
          g [a] a [g] g [fis16 e] fis4
          d2.\fermata \repeat volta 2 { g4
          g8 [fis16 e] fis8 [a] a [g16 fis] e8 [d]
          d g4 fis16 [e] fis4\fermata e8 g
          g [f] f [e16 d] c4 d16 [e f8]
          e16 [fis] g4 fis8 d4\fermata } \repeat volta 2 { c
          d e8 [d16 c] f!16 [e] d4 e16 [d]
          c2.\fermata } \repeat volta 2 { g'8 [a]
          g4 g g g8 [f!16 e]
          f4. e16 [d] c8 [d16 e] f4
          e16 [fis] g4 fis8 d4\fermata } \repeat volta 2 { g!8 [f!]
          e8 [fis] g [a] a [g] g [fis]
          g [fis] e4 fis\fermata d
          c16 [a d8] d [c] c [d16 c] b8 [d]
          g4. fis8 d4\fermata } \repeat volta 2 { f! 
          e16 [f g8] g [fis] fis [e16 fis] g4
          g8 [f!] g4 g8\fermata [f] c8 [f16 e]
          f4. e8 f4 f
          f8 [e] d4 c\fermata } c
          c8 [b] c [d] d [c] d4
          d8 [c16 b] c8 [b16 a] b4\fermata d
          e8 [f] g [e] c [f] f16 [ e d cis]
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    \relative c {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 g'4
          b d g, g8 [f]
          e2\fermata r4 c'8 [d]
          e [d] d4 e16 [d] c4 d16 [c]
          b2.\fermata \repeat volta 2 { e4
          e8 [d16 c] d4 d c8 [d16 c]
          b8 [e16 d] cis4 d\fermata e
          d4. c!16 [b] a8 [g] f4
          g8 [e'] d8. [c16] b4\fermata } \repeat volta 2 { g
          g8 [a16 b] c8 [a] a [gis16 fis] gis4
          e2.\fermata } \repeat volta 2 { e'8 [dis]
          e4 e d! e8 [a,]
          a [d16 c] b8 [c16 b] a8 [b16 c] d4
          g,8 [e'] d8. [c16] b4\fermata } \repeat volta 2 { c
          g g8 [d'] d4 d
          d4. cis8 d4\fermata f,!8 [g]
          a [f] g4 g8 [fis] d'4
          c8 [e] d8. [c16] b4\fermata } \repeat volta 2 { d 
          a8 [e'] e [d16 c] b4 e
          d e d\fermata a8 [bes]
          c4 c c c
          c4. b!8 g4\fermata } a
          g c,8 [g'] g4 g8 [d]
          a'4 a8 [d,] d4\fermata b'
          c8 [d] e [c] a [c] d16 [e f8]

        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 e,,4
          e' d c d
          a2\fermata r4 a'
          e8 [fis] g4 c, d
          g,2.\fermata \repeat volta 2 { e'4
          a d,8 [e16 fis] g4. fis8
          g [e] a4 d,\fermata cis
          d e f8 [e] d4
          c d g,\fermata } \repeat volta 2 { c
          b a8 [f'] d [b] e4
          a,2.\fermata } \repeat volta 2 { e'8 [fis]
          g [fis] e4 b cis
          d e f8 [e] d4
          c d g,\fermata } \repeat volta 2 { e'8 [d]
          c [d] e [fis] g4 d
          g,4 a d,\fermata d'8 [e]
          f4 e d g8 [f!]
          e [c] d4 g,\fermata } \repeat volta 2 { d'
          cis d e4. fis8
          g4 cis, d\fermata f!
          a,8 [bes] c!4 f,8 [g] a [b!]
          c4 g c\fermata } f,
          g a8 [b] c4 b
          a d g,\fermata g'8 [f]
          e [d] c4 f8 [g16 a] bes4
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
