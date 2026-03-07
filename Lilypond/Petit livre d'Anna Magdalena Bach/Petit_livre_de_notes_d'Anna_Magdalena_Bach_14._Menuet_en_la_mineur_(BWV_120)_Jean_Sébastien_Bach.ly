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
    a8. b16 c4 b   	  | % 1
    c4 a e' ~      	  | % 2
    e4 e8 d c b    	  | % 3
    c4 a f' ~      	  | % 4
    f4 e ds        	  | % 5
    e4 b e ~       	  | % 6
    e4 d! cs       	  | % 7
    d4 a d ~         	  | % 8
    d4 c! b        	  | % 9
    c4 g c         	  | % 10
    b8 c d b f' a, 	  | % 11
    gs2 s4         	  | % 12
  }

  \repeat volta 2
  {
    \partial 4 g!  	  |
    c8. d16 e4 d   	  | % 13
    e4 c g' ~      	  | % 14
    g4 g8 f e d    	  | % 15
    e4 c a' ~      	  | % 16
    a4 g fs        	  | % 17
    g4 d e         	  | % 18
    f!4 d2         	  | % 19
    c2 e4          	  | % 20
    f4 fs4.\trill e16 fs  | % 21
    g4 d fs               | % 22
    g4 gs4.\trill fs16 gs | % 23
    a4 e a                | % 24
    f!4 e d               | % 25
    e4 e, a               | % 26
    d4 b2\trill           | % 27
    a2 s4                 | % 28
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
    r4 r e        	    | % 1
    a8. b16 c4 b  	    | % 2
    c4 a e' ~     	    | % 3
    e4 e8 d c b   	    | % 4
    a4 a a        	    | % 5
    gs4 gs gs     	    | % 6
    g!4 g g       	    | % 7
    fs4 fs fs     	    | % 8
    f!4 f f       	    | % 9
    e4 e e        	    | % 10
    d4 d d        	    | % 11
    e4 e, s       	      % 12 barcheck fails here
  }

  \repeat volta 2
  {
    \partial 4 r4 	    |
    r4 r g'       	    | % 13
    c8. d16 e4 d  	    | % 14
    e4 c g' ~     	    | % 15
    g4 g8 f e d   	    | % 16
    c4 c c        	    | % 17
    b4 g c        	    | % 18
    a4 f g        	    | % 19
    c,4 c, r      	    | % 20
    r4 r a'       	    | % 21
    bf4 b8.\trill a32 b c4  | % 22
    b4 e, b'                | % 23
    c4 cs8.\trill b32 cs a4 | % 24
    d4 e f                  | % 25
    c2 f4                   | % 26
    d4 e e,                 | % 27
    a2 s4                   | % 28
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
