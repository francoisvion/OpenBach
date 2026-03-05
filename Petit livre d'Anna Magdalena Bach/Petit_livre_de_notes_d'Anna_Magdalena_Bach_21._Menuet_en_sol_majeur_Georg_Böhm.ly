\version "2.24.4"

\language "deutch"

\paper {indent = 10}

\header {
  title = "21. Menuet en sol majeur"
  subtitle = "Petit Livre de notes d'Anna Magdalena Bach"
  composer =	"Georg Böhm (1661-1733)"
  tagline = ##f
}

twoWayFermata = {
  \once \set Staff.caesuraType = #'((underlying-bar-line . "||"))
  \once \set Staff.caesuraTypeTransform = ##f
  \caesura ^\fermata _\fermata
}

voiceone =  \relative c'' {
  \key g \major
  \time 3/4
  \clef "treble"
  \repeat volta 2 {
  g2 a4 | fis d a' | c a fis | \appoggiatura {e8} d2. |
  b'4 d8 c b a | g4 b8 a g fis | e4c' b |
  \alternative {
    \volta 1 {a2.}
    \volta 2 {a2.}
  }
  }
  \repeat volta 2 {
  d2 e4 | cis a e' | g e cis | a2. | g'2 a4 | fis d e | a, d cis | d2. |
  b4 d8 c b a | g4 b8 a g fis | e4c' b | a2. | g2 a4 | fis d a' | c a fis | 
  d2. | b'4 d8 c b a | b4 d8 c b a | g4 a fis |
  \alternative {
    \volta 1 {g2.} 
    \volta 2 {g2. \twoWayFermata \fine} 
  }
  }

}

voicetwo =  \relative c' {
  \clef "bass"
  \key g \major
  \time 3/4
  \repeat volta 2 {
  g4 e c | d2 a'4 | c a fis | d4 r8 c' b a | g4 fis d | e d b | c a g |
  \alternative {
    \volta 1 {d'8 c d e fis d}
    \volta 2 {d2.}
  }
  }
  \repeat volta 2 {
  d4 b g | a2 e'4 | g e cis a | a'8 b cis d | e4 cis a | d b g | fis g a |
  d,8 c? d e fis d | g4 fis d | e d b | c a g | d'8 d, d' e fis d | g4 e c |
  d2 a'4 | c a fis | d4. c8 b a | g4 b d | g fis d | b c d |
  \alternative {
    \volta 1 {g,8 fis g a b c}
    \volta 2 {g'4 d g,\twoWayFermata \fine}
  }
  }
}
   
\score {
   \context PianoStaff \with {\accidentalStyle modern} << 
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

