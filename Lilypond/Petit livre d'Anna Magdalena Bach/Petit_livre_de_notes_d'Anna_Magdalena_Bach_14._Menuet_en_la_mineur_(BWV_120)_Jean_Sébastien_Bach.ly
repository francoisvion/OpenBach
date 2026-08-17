\version "2.24.4"
\include "english.ly"
\header
{
  title = "14. Menuet en la mineur"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  opus = "BWV Anh. 120"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
upper = \relative a'
{
  \clef treble
  \time 3/4
  \repeat volta 2
  {
    \partial 4 e4  	  |
    a8. b16 c4 b   	  |
    c4 a e' ~      	  |
    e4 e8 d c b    	  |
    c4 a f' ~      	  |
    f4 e ds        	  |
    e4 b e ~       	  |
    e4 d! cs       	  |
    d4 a d ~         	  |
    d4 c! b        	  |
    c4 g c         	  |
    b8 c d b f' a, 	  |
    gs2 s4         	  |
  }
  \repeat volta 2
  {
    \partial 4 g!  	  |
    c8. d16 e4 d   	  |
    e4 c g' ~      	  |
    g4 g8 f e d    	  |
    e4 c a' ~      	  |
    a4 g fs        	  |
    g4 d e         	  |
    f!4 d2         	  |
    c2 e4          	  |
    f4 fs4.\trill e16 fs  |
    g4 d fs               |
    g4 gs4.\trill fs16 gs |
    a4 e a                |
    f!4 e d               |
    e4 e, a               |
    d4 b2\trill           |
    a2 s4                 |
  }
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}
lower = \relative a
{
  \clef bass
  \time 3/4
  \repeat volta 2
  {
    \partial 4 r4 	    |
    r4 r e        	    |
    a8. b16 c4 b  	    |
    c4 a e' ~     	    |
    e4 e8 d c b   	    |
    a4 a a        	    |
    gs4 gs gs     	    |
    g!4 g g       	    |
    fs4 fs fs     	    |
    f!4 f f       	    |
    e4 e e        	    |
    d4 d d        	    |
    e4 e, s
  }
  \repeat volta 2
  {
    \partial 4 r4 	    |
    r4 r g'       	    |
    c8. d16 e4 d  	    |
    e4 c g' ~     	    |
    g4 g8 f e d   	    |
    c4 c c        	    |
    b4 g c        	    |
    a4 f g        	    |
    c,4 c, r      	    |
    r4 r a'       	    |
    bf4 b8.\trill a32 b c4  |
    b4 e, b'                |
    c4 cs8.\trill b32 cs a4 |
    d4 e f                  |
    c2 f4                   |
    d4 e e,                 |
    a2 s4                   |
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
  \midi
  {
    \context
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}
