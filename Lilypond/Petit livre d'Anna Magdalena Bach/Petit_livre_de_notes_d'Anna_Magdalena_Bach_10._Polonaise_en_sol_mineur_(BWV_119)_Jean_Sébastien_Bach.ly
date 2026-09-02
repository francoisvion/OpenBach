\version "2.24.4"
\include "english.ly"
\header
{
  title = "10. Polonaise en Sol mineur"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  opus = "BWV Anh. 119"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
upper = \relative g'
{
  \clef treble
  \key bf \major
  \time 3/4
  \repeat volta 2
  {
    g8. a16 bf4 c 	   			       	|
    a8 a16 bf c2  	   			       	|
    bf8 bf16 c d8 g c, g'  			       	|
    bf,8 a16 bf g2         			       	|
  }
  \repeat volta 2
  {
    bf8. c16 d4 f4         			       	|
    d8 c16 bf a bf c a f4  			       	|
    f'8 d bf f' g16 f ef d 			       	|
    ef8 c a ef' f16 ef d c 			       	|
    d8 c16 d ef8 d c bf    			       	|
    a16 bf c a bf4 bf,     			       	|
    d'4\staccatissimo ef\staccatissimo g,\staccatissimo |
    fs8 fs16 g a8 d, fs a                              	|
    d4\staccatissimo ef\staccatissimo g,\staccatissimo 	|
    fs8 fs16 g a8 d, fs a                              	|
    d8 d16 ef d8 d16 ef d8 g                           	|
    bf,8 a16 bf g4 g,                                  	|
  }
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lower = \relative g
{
  \clef bass
  \key bf \major
  \time 3/4
  \repeat volta 2
  {
    g4 g g         |
    g4 fs8 e fs d  |
    g4 g, c        |
    d4 g8 g, bf d  |
  }
  \repeat volta 2
  {
    g8. a16 bf4 a  |
    bf4 f f8 ef    |
    d4 f ef        |
    c4 f d         |
    bf4 g' ef      |
    f8 ef d ef d c |
    bf4 c ef       |
    d4 d c         |
    bf4 c ef       |
    d2 c4          |
    bf4 g bf       |
    d4 g,2         |
  }
  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}
\score
{
  \new PianoStaff
  <<
    \new Staff = upper \upper
    \new Staff = lower \lower
  >>
  \layout
  {
    \context
    {
      \Score
      \remove "Mark_engraver"
    }
    \context
    {
      \Staff
      \consists "Mark_engraver"
    }
  }
  \midi   { }
}
