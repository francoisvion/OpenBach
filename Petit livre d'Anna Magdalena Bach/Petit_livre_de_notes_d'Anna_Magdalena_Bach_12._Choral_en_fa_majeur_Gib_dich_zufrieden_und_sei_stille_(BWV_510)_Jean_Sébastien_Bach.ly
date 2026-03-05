\version "2.24.4"

\include "english.ly"

\header {
  title = "Choral en fa majeur : Gib dich zufrieden und sei stille"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 510"
 tagline = ##F
}

upper = \relative c' {
  \clef treble 
  \key f \major
  \time 2/2
  \repeat volta 2
  {
    \partial 2 f2 | a2 bf | c a | d c | bf1 | <c, f a>\fermata | f'2 e |
    d  c | b c4 d | d1 | <c g e> |
  }
  
  \repeat volta 2
  {
    \partial 2 d2 | d d | bf4 c d2 | c4 d bf2 | a1 | <g d b>\fermata |
    g'2 g4 g | e f g2 | f e | d1 |
    <e, g c>\fermata | c'2 d4 g, | g2 <c, f> |
  }
}

lower = \relative f
{
  \clef bass
  \key f \major
  \time 2/2
  
  \repeat volta 2
  {
    \partial 2 r2 | f2 d | a  f | bf a | g  c	 | <f, f'>1_\fermata |
    a'2 g | f1 ~ | f2 e4 f | g2 g, | <c, c'>1
  }
  
  \repeat volta 2
  {
    \partial 2 bf''2 | bf, bf' | g,4 a bf2 | e4 fs g c, | d2 d,2 |
    <g g'>1_\fermata | g2 b4 g	 | c d e c | d b c f, | g'2 g, |
    <c, c'>1_\fermata | a'2 bf	 | c4 c, <f f'>2 |
  }
}

\score 
{
  \new PianoStaff 
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  
  \layout { }
  \midi 
  {
    \tempo 1 = 60
  }
}