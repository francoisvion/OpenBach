\version "2.24.4"
\include "english.ly"
\header
{
  title = "Marche en mi♭ majeur"
  subtitle = "Petit livre de notes d'Anna Magdalena Bach"
  opus = "BWV Anh. 127"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
upper = \relative ef'
{
  \clef treble
  \key ef \major
  \time 2/2
  \set tupletSpannerDuration = #1/4
  \repeat volta 2
  {
    \partial 4 ef8 g	     		    	       	     |
    bf4 c8 d ef bf g'4       		    	       	     |
    g8 f ef d ef4 << c 4 \\
		     af4 >>  		    	       	     |
    << { c 4 bf2 af4 } \\
       { af4 g 2 f 4 } >>    		    	       	     |
     \times 2/3 { g8[ f ef] } ef2 g'4         	       	     |
     \times 2/3 { f8[ ef d] } d d d f ef d    	       	     |
     \times 2/3 { ef8[ d c] } c c c ef d c    	       	     |
     \times 2/3 { d8[ ef f] } << { f8 f f f } \\
			       { d8 d d d } >> bf'8 d,       |
     \times 2/3 { c8[ d ef] } << { ef8 ef ef ef } \\
			       { c 8 c  c  c  } >> c'8 ef,   |
     \times 2/3 { d8[ bf' a] g[ f ef] d[ c bf] } c4\trill    |
     bf2. s4                                	       	     |
  }
  \repeat volta 2
  {
    \partial 4 bf8 d                        	       	     |
    f4 ef8 d c bf af'!4                     	       	     |
    af4\trill g2 g,4                        	       	     |
    \times 2/3 { ef'8[ d c] f[ ef d] g[ f ef] } af c,  	     |
    c4\trill b2 g8 g                        	       	     |
    b8 g d' g, g f f f                      	       	     |
    b8 g d' f, f ef c' ef                   	       	     |
    g8 c, \times 2/3 { f[ ef d] } d2\trill    	       	     |
    c2. ef8 d                               	       	     |
    ef8 bf g'2 df4                          	       	     |
    df4\trill c2 d4                          	       	     |
    \times 2/3 { ef8[ f g] af[ g f] g[ f ef] } bf' ef, 	     |
    \times 2/3 { d8[ c bf] } bf2 af4          	             |
    \times 2/3 { g8[ af bf] } << { bf8 bf bf bf } \\
				 { g 8 g  g  g  } >> ef'8 g, |
    \times 2/3 { f8[ g  af] } << { af8 af af af } \\
				 { f 8 f  f  f  } >> f'8 af, |
    \times 2/3 { g8[ af bf] } << { bf8 bf } \\
				 { g 8 g  } >> g'8 bf, af g  |
    \times 2/3 { f8[ g  af] } << { af8 af } \\
				 { f 8 f  } >> f'8 af, g f   |
    \times 2/3 { g8[ ef' d] c[ bf af] g[ f ef] }  f4\trill   |
    ef2. s4                                 	       	     |
  }
}
lower = \relative ef
{
  \clef bass
  \key ef \major
  \time 2/2
  \repeat volta 2
  {
    \partial 4 ef4	     |
    g4 af8 f g4 ef           |
    bf4 bf' ef, af           |
    bf2 bf,                  |
    ef4 g8 f g4 ef           |
    d4 bf' bf, bf'           |
    f,4 << { a'4 a a } \\
	   { f 4 f f } >>    |
    << { bf4 bf bf bf } \\
       { f 4 f  f  f  } >>   |
    << { a4 a a a } \\
       { f4 f f f } >>       |
    bf4 ef, f f,             |
    bf4 f bf, s
  }
  \repeat volta 2
  {
    \partial 4 bf'4	     |
    bf4 c d bf               |
    ef,4 ef'8 d ef f ef d    |
    c4 d ef f                |
    g,4 g'8 fs g4 g,         |
    g4 g g g                 |
    g4 g c c                 |
    ef af g g,               |
    c4 c' bf8 af g f         |
    g4 ef8 f g4 ef           |
    af,4 af'8 g af4 f        |
    g4 d ef g                |
    bf4 bf,8 c d4 bf         |
    ef4 ef ef ef,            |
    bf'4 << { d 4 d  d  } \\
	    { bf4 bf bf } >> |
    << { ef4 ef ef ef } \\
       { bf4 bf bf bf } >>   |
    << { d 4 d  d  d  } \\
       { bf4 bf bf bf } >>   |
    ef4 af bf bf,            |
    ef4 bf ef, s             |
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
    \context
    {
      \Score
      tempoWholesPerMinute = #48/2
    }
  }
}
