\version "2.24.4"

\include "english.ly"

\header {
  title = "Gib dich zufrieden und sei stille"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 512"
  tagline = ##f
}


upper = \relative c''
{
  \clef treble 
  \key e \minor

  \repeat volta 2
  {
    \partial 8 b8        	      	    |
    g4 a8( b16 c) b4. a8 	      	    |         
    g8[ fs] fs g16 a g8 fs e4\fermata       |
    c'8 b b4 e8 d d4                  	    |
    fs,8[ c'] b[ a] a4 g8 s8    	    |   
  }

  \break

  \partial 8 b8                             |
  a4 b8( a16 g) a4 b8 c                     |
  d8[ c] c[ b] c[ b] a\noBeam\fermata c     |
  fs,4 e'8( ds) e16( fs g8) c, b            |   
  a8[ g'] fs[ e] ds[ cs] b\noBeam\fermata e |
  d!([ c!)]  b([ a)]  b[ ds,]  e\noBeam a   |
  g4( fs8\trill e) e4.\fermata s8           |
  \bar "|."
}

lower = \relative f
{
  \clef bass
  \key e \minor
  
  \repeat volta 2
  {
    \partial 8 e,8	    |
    e'8 ds e fs g fs g a    |
    b8 a b b, e b g b       |
    e,8 e'4 d8 c c'4 b8     |
    a4 g d g,8 s8           % barcheck fails here
  }

  \break

  \partial 8 g'8            |
  fs8 d g g, d' e d c       |
  b4 e a,4._\fermata a'8    |
  b8 a g fs g fs e d        |
  c8 b a4 b4._\fermata g'8  |
  a4 fs g8 b c a            |
  b8 a b b, e4._\fermata s8 |
}

\score 
{
  \new GrandStaff 
  <<
    \new Staff = upper \upper
    \new Staff = lower \lower
  >>
  
  \layout { }
  \midi   { }
}
