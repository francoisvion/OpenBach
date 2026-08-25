\version "2.27.1"

#(set-global-staff-size 19)

\header {
  title = "Auf, auf, mein Herz, mit Freuden"
  opus = "BWV 441"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f   
  } 
 
\score  {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key f \major
      \time 3/4
      <<
        \new Voice = "soprano" \relative c' {
          \voiceOne
          \repeat volta 2 {
          \partial 4 c'4
          a4. bes8 c4
          bes2 a4
          g2.
          f2\fermata c'4
          d4. e8 f4
          e4. d8 e4
          d2\fermata } a4
          c2 f,4
          e4. f8 g4
          f2\fermata bes4
          d2 g,4
          fis4. g8 a4
          g2\fermata g4
          a4. b8 c4
          b4. c8 d4
          c2\fermata c4
          d4. e8 f4
          e4. d8 e4
          f2\fermata \fine 
        }
        
        \new Voice = "alto" \relative c' {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 f4
          f2 g4
          f2 f4
          f2 e4
          c2\fermata f4
          f4. g8 a4
          bes a g f2 } f4
          f4. e8 d4
          c4. d8 e4
          c2\fermata d4
          d8 [c] bes4 c
          d2 c4
          bes2\fermata c4
          c2 f4
          f e d
          e2\fermata f4
          f2 bes4
          g4. f8 g4
          a2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Auf, auf, mein Herz, mit Freu - den,
      nimm wahr, __ _ was heut ge - schicht,
      Mein Hei -- land ward __ _ ge -- legt,
      da, wo __ man uns __ _ hin -- trägt,
      wenn von __ _ uns un - ser Geist
      gen Him - mel ist __ _ ge -- reist.
     }
     
     \new Lyrics \lyricsto "soprano" {\set stanza = 1
       wie kommt nach gro -- ßen Lei - den
       nun ein __ _ so gro -- ßes __ _ Licht!
     }
     
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key f \major
      \time 3/4
      <<
        \new Voice = "tenor" \relative c {
          \voiceOne
          \repeat volta 2 {
          \partial 4 a'4
          c2 c4
          d2 c4
          d2 c4
          a2\fermata a4
          bes8 [c] d4 d
          d cis2
          a2\fermata } d4
          c!8 [bes] a4 a
          g a bes
          a2\fermata f4
          f g g
          a bes fis
          g2\fermata g4
          f!2 a4
          g a b
          c2\fermata es4
          d c bes
          c g c c2\fermata \fine
        }
        
        \new Voice = "bass" \relative c {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 f,4
          f'2 e4
          d4. e8 f4
          bes,2 c4
          f,2\fermata f'4
          bes2 a4
          g a a,
          d2\fermata } d4
          a2 bes4
          c2 c4
          f,2\fermata d'4
          bes2 es4
          d2 d4
          g,2\fermata e'!4
          f! e d
          g2 g,4
          c2\fermata a'4
          bes a g
          c2 c,4
          f2\fermata \fine
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