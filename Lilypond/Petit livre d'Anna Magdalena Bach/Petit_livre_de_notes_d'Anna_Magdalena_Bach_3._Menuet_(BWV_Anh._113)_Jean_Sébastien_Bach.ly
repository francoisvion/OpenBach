\version "2.24.4"

\header {
  title = "3. Menuet en fa majeur"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  opus = "BWV Anh. 113"
  composer =   "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

voiceone =  \relative c'' {
  \clef "treble"
  \time 3/4
  \key f \major

  \repeat "volta" 2 {
    c4  d16 e f8 e4 |
     \times 2/3 {f8( e  d)} c2 | %A grace might be missing here
     \times 2/3 { d8 ees d }  \times 2/3 {c d c }  \times 2/3 {bes c bes} |
    \grace bes8 a2 g4 |
     a8 c f, c' g c |
     a c bes c g c |
     a c f, c' g c |
     a c bes c g c |
     a c d e f d |
     c b a g  c16( d c  b) |
     c8 f e4  d16\trill c d8 |
    c2. |
  }
  \repeat "volta" 2 {
    g'4  f8 e f d |
     e g bes4 r |
    a  g8 f e d |
    \grace d8 cis2. |
     cis8 d e cis d e |
    a,4 a a |
     cis8 d e cis d e |
    g,4 g g |
     cis8 d e cis d e |
     a, d c! bes a g |
    f4 g e |
    d2. |
     c'8 f e f ees f |
     a f d f c f |
     d g fis g f g |
     bes g e g c, bes |
     a f' g a g f |
     bes, g' a bes a g |
     c, c' bes a g a |
    \grace g8 f2. |
  }
}

voicetwo =  \relative c {
  \time 3/4
  \key f \major
  \clef "bass" 

  \repeat "volta" 2 {
    f4 a g |
    a  f8 g a f |
    bes4 c c, |
    f  c8 d e c |
    f4 a, g |
    f g e |
    f a g |
    f g e |
    f f' d |
    g e a |
    f g g, |
    c2. |
  }
  \repeat "volta" 2 {
    c4 g' g, |
    c  e8 d e c |
    f4 bes g |
    a e cis |
    a a' e |
     cis8 d e cis d e |
    a,4 a a |
     cis8 d e cis d e |
    g,4 g g |
    f f' g |
    a2 a,4 |
     d8 d' c bes a g |
    a2 g4 |
    f bes a |
    bes2 a4 |
    g c e, |
    f r r |
    g r r |
    a bes c |
    f,2. |
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
    \tempo 4 = 120
    }


}

