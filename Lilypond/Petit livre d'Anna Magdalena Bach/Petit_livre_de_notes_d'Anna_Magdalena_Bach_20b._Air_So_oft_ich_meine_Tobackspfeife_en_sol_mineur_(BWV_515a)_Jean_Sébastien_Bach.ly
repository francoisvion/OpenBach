\version "2.24.4"

\include "english.ly"

\paper {indent = 10}

\header {
  title = "20b. Air : So oft ich meine Tobackspfeife en sol mineur"
  subtitle = "Petit Livre de notes d'Anna Magdalena Bach"
  subsubtitle = "transposé par Anna Magdalena Bach en 1734)"
  opus = "BWV 515a"
  composer =	"Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

voiceone =  \relative c' {
  \key d \minor
  \time 3/4
  \clef "treble"
    d4 d d |
    \repeat "volta" 2 {
    g4.(  a16[  bf)] a4 |
    g  f8[ e] a4 |
    f  e8[ f] d4 |
    f f f |
    a4.(  bf16[  c)] f,4 |
    g e2 |
    \alternative{
      \volta 1 {
      f2. |
    d4 d d 
      }
      \volta 2 {
      f2. |
      }
    }
  }
  \repeat "volta" 2 {
    g4 g g |
    g2 e4 |
    a  g8[ f e d] |
    cs2. |
    a4 cs e |
    g4.(  a16[ bf]) a4 |
    f  d cs |
    d2. |
  }
}

voicetwo =  \relative c, {
  \clef "bass"
  \key d \minor
  \time 3/4
    d4 d' c |
    \repeat "volta" 2 {
    bf e, f |
    g a a, |
    d a' d |
    a8 f bf c d e |
    f4 c d |
    bf c c, |
    \alternative{
      \volta 1 {
    f4 f'8 g a g |
    f8 g f e d c |
      }
      \volta 2 {
    f,8 e f a g f |}
    }
  }
  \repeat "volta" 2 {
    e f e d c b |
    c4 g' c |
    f, bf g |
    a8 a' g f e d |
    cs f e d cs b |
    a4 cs a |
    d f, a |
    d,8 cs d e f d |
  }
}
   
\score {
  \transpose c f {
   \context GrandStaff << 
    \context Staff = "one" <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>
  }
  \layout{}
  
  \midi {
    \tempo 4 = 105
    }
}

