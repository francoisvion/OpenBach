\version "2.24.4"

\include "english.ly"

\header {
  title = "20a. Air : So oft ich meine Tobackspfeife en ré mineur"
  subtitle = "Petit Livre de notes d'Anna Magdalena Bach"
  opus = "BWV 515"
  composer =	"Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}



voiceone =  \relative c' {
  \key d \minor
  \time 3/4
  \clef "treble"

  \repeat "volta" 2 {
    d4 d d |
    g4.(  a16[  bf)] a4 |
    g  f8[ e] a4 |
    f  e8[ f] d4 |
    f f f |
    a4.(  bf16[  c)] f,4 |
    g e2 |
    f2. |
  }
  \repeat "volta" 2 {
    g4 g g |
    g2 e4 |
    a  g8[ f e d] |
    cs2. |
    a4 cs e |
    g4.  a16[ bf] a4 |
    f(  d) cs |
    d2. |
  }
}

voicetwo =  \relative c {
  \clef "bass"
  \key d \minor
  \time 3/4

  \repeat "volta" 2 {
    d4 d' c |
    bf e, f |
    g a a, |
    d a f |
    d d' bf |
    f' c d |
    bf c c, |
    f2. |
  }
  \repeat "volta" 2 {
    c''4 e, g |
    b g c |
    f,2 g4 |
    a  g8[ f e d] |
     cs[ b a b cs d] |
    e4 d cs |
    d f a |
    d, a d, |
  }
}
   
\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>

  \layout{}
  
  \midi {
    \tempo 4 = 105
    }
}

