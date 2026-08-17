upperSix = \relative c'
{
  \clef treble
  \key a \minor
  \time 12/8
  \repeat volta 2
  {
    \partial 8 e8 			        			   
    a,8 c e    a   gs a   b, d  e   a  gs a 			   
    c,8 e gs   a   b  c   d, c' a   bf d  a 			   
    << {     gs4. ~ gs8 fs g a4. ~ a8 b  c  } \\
       {  e,, gs b    e   ds e    fs, a b    e  ds! e } >> 
    << {     b'4. ~          b8 ds e   c2. ~           } \\
       {  g,!8 b  ds   e  fs g   a, g' e   f a e } >>            
    << { c'8 b a   b   fs' a, ~   a   g fs   g4. ~  } \\
       { ds4. ~    ds8 cs  ds     e4. ~      e8 b d } >>		   
    << { g8 a g    a   e' g, ~   g f e   f4. ~  } \\
       { cs4. ~    cs8 b  cs     d4. ~   d8 a c } >>		   
    << { f8 f e    f d'       f, ~ f   e d    e d' e, } \\
       { \change Staff = "lowerSix" b4   c8   b4  a8   gs4   b8   gs4.    } >>		   
    << { c'4. ~ c8 b c   d4. ~    d8 e f } \\
       { a,,4   gs'8   a4. ~    a4 gs8   b4. ~  } >>	   
    << { e4. ~     e8 gs a   f2. ~ 		} \\
       { b,4 e,8   c'4. ~    c4 cs8   d4 c8 } >>			   
    << { f8 e d   e b' d,   c2. ~          } \\
       { b2.                r8 a e   c e a } >>			   
    << { c8 a fs   a fs d   b'2. ~         } \\
       { d,8 r r   r4   r8  r8 g d   b d g } >>			   
    << { b8 g e   g e c   a'2. ~         } \\
       { c,8 r r  r4.  r8 e c   a c e } >>			   
    << { a8  fs ds   fs ds b   g'4 e8   e'4. ~   } \\
       { b,8 r r r4. g'4. ~ g8 fs! g } >>		   
    << { e'4 ds8   fs4. ~   fs8 e fs  g4. ~    } \\
       { a,4. ~    a8 b c   b4. ~     b8 ds! e } >>			   
    << { g4 gs8   a c g   fs2. ~ 		 } \\
       { c2. ~            c8 b a   b fs'! a, } >>			   
    << { fs'8 e ds   e4 b8   e2. ~ 	  	  } \\
       { g,2. ~              g8 a g   a e' g, } >>			   
    << { e'8 d cs   d4 a8   d2. ~		 } \\
       { f,2. ~             f8 g f   g d' f, } >>			   
    << { d'8 c b   c4 gs8   a4. ~   a4 a8 } \\
       { e2. ~ e4 a,8  d4. ~ } >>			   
    << { d'2. ~ d8 b' gs   e  b e  } \\
       { d,4 a'8   gs b a   b4    r8   r4   r8 } >>			   
    << { a8 c e   a gs a   b, d e   a gs a } \\
       { r4   r8  e,4.     f4   e8  d4.    } >>			   
    << { c'8 e gs   a b c   d, c' a   bf d a } \\
       { e,4   b8   c4  e8  a,4.      d4. ~  } >>			   
    << { gs'8 b! gs e b  d   c e c   a e g  } \\
       { d8 gs, b e gs e   a4  r8  r4  r8 } >>	   
    << { f8 a' f d a c   b d b   g d f  } \\
       { r8 f, a d f d   g4  r8  r4. } >>	   
    << { e8 e'4 ~   e8 d4   e4. ~ e4  } \\
       { r8 r c a4 b8 a4. ~ gs4 } >>
  }
  \repeat volta 2
  {
    r8 							  	   
    R1. 								   
    r2. r4.   r8  r   e			   
    \skip 8*12							   
    \skip 8*12							   
    \skip 8*12							   
    \skip 8*12							   
    \skip 8*12							   
    \skip 8*12							   
    r 2.                  r 4     r8   r  r   b'			   
    e 8 b  gs   e ds e    d'! b   gs!  e  ds! e			   
    c'8 a  f    e gs a    f   d   b    gs e'  d			   
    c 8 e  a    c gs a    c   fs, g    c  e,  fs!			   
    b,8 d  g    b fs g    b   e,  fs   b  ds, e			   
    a,8 c  e    a e  fs   a   ds, e    a  cs, ds!			   
    g 8 e  b    g fs g    g'  e   d    cs b   cs			   
    fs8 d  a    s s  s    fs' d   cs   b  as  b			   
    \skip 8*9 r8 r   fs''			   
    b 8 fs d    b as b    a'! fs  ds   b  as! b     		   
    g'8 e  c    b ds e    c   a   fs   << { r8  r b } \\
				      { ds, b' a}  >>		   
    << { g8 r r   	r fs' g   gs4. ~ \prall gs8 fs! gs!  } \\
       { e8 b g   	e ds e    d'! b gs      e   ds! e    } >>	   
    << { a'4. ~     a8 b  c   d,4   f!8   	b,4     gs'8 } \\
       { c,8 a f!   e  gs a   f   d b     	gs  e'  d    } >>	   
    << { a''2. ~              a 2. ~      	             } \\
       { c,,4 r8   	r  b' c   cs4. ~ \prall	cs8 b   cs   } >>	   
    << { a'2.      	          g 2. ~      	             } \\
       { d4. ~     	d8 e f    e 4. ~      	e 8 cs  e    } >>	   
    << { g4   e8   	f4. ~     f4    e8     	f 4. ~       } \\
       { a,4. ~    	a4 cs8    d4. ~       	d 4     a 8  } >>	   
    << { f'4 b8    	b4 d,8    d4    b8     	b 4     e 8  } \\
       { d4  d8    	d4 b8     b4    gs8    	gs4     gs8  } >>	   
    << { e'8 d c   	d c b     a4. ~       	a 4          } \\
       { a4. ~     	a4  gs8   a   e d      	cs4          } >>
  }
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lowerSix =
{
  \clef bass
  \key a \minor
  \time 12/8
  \repeat volta 2
  {
    \partial 8 r8 			      	           			 
    r1.           			                   			 
    r2. r4 r8  r   r  a 			 
    \skip 2*3			                   			 
    \skip 2*3			                   			 
    \skip 2*3			                   			 
    \skip 2*3			                   			 
    r2. r4.  r8   r  e 			 
    a,8 c e a gs a b, d e a gs a 			 
    c8   e  gs    a  b  c'   d   c'  a    bf  d'  a	   			 
    gs4     b!8   gs4   e8   a,  c   e    a   c'  a	   			 
    fs8  a  d'    d  fs a    g,  b,  d    g   b   g	   			 
    e8   g  c'    c  e  g    fs, a,  c    fs  a   fs   			 
    ds8  fs b     b, ds fs   e,  g,  b,   e   ds! e	   			 
    fs,8 a, b,    e  ds e    g,  b,  ds   e   fs  g	   			 
    a,8  g  e     f! a  e    ds4. ~       ds8 cs  ds!  			 
    e,8  g, b,    e  g  e    cs4. ~       cs8 b,  cs   			 
    d,8  f, a,    d  f  d    b,4. ~       b,8 a,  b,   			 
    c,8  e, g,    c  e  c    f,  a,  c    f   a   f    			 
    b,8  d  f     b  d' b    e   gs  b    e'  gs' e'   			 
    c'2.                     d'4     c'8  b4.          			 
    a4. ~         a4    g!8  f2.                       			 
    e4      r8    r4    r8   a,  c   e    a   c'  a    			 
    d4      r8    r4    r8   g,  b,  d    g   b   g    			 
    c4      a,8   f4    f,8  e,  gs, b,   e4
  }
  \repeat volta 2
  {
    b8									 
    e'8 b gs   e  ds e   d'!  b gs!   e   ds! e				 
    c'8 a f    e  gs a   f    d b,    gs, e   d				 
    << { a'8  e' c' a  gs a    g'! e' cs' a   gs! a  } \\
       { c4. ~  c8 b, c       cs4. ~           cs8 b,  cs } >> 
    << { f'8 d' bf a cs' d' bf g e   cs a g } \\
       {     d4. ~           d8        e   f            g, r r   a, r r } >> 
    << { f8  r  r    r4      r8   r8 fs g  	 b   d' f   } \\
       { d,8 a  f    d   a,  c    b,2. ~           	    } >>		 
    << { e8  r  r    r4.   r8 e  f    a   c' e   } \\
       { b,8 g  e    c   gs, b,   a,2. ~                } >>		 
    << { d8  r  r    r4      r8   r8 d  e    gs  b  d   } \\
       { a,8 f  d    b,  fs, a,   gs,2.                 } >> 		 
    << { c8  e  f    a   c'  e    d  fs g    b   d' f   } \\
       { a,4. ~      a,8 f,  a,   b,4. ~     b,8 g, b,  } >>		 
    << { e8  gs a    c'  e'  g    f  a  bf   d'  f' a   } \\
       { c4. ~     	 c8  a,  cs   d2. ~       	    } >>		 
    << { gs4.      	 a ~          a          gs         } \\
       { d4.       	 c	      b,	       	e   } >>		 
    << { a4.       	 r4      r8   r4    r8   b4. ~      } \\
       { a,4.      	 c	      d	       	 e	    } >>		 
    << { b8  c  e    a   b   c'   d' a  b    fs  g  a   } \\
       { a,4    r8   r4      r8   r2.		    } >>		 
    << { r8  b, d    g   a   b    c' g  a    e   fs g   } \\
       { g,4    r8   r4      r8   r2.		    } >>		 
    << { r8  a, c    fs  g   a    b  fs g    ds  e  fs! } \\
       { fs,4   r8   r4      r8   r2.		    } >>		 
     e,8 g,  b,   e ds e   a, cs e   a gs a					 
     d,8 fs, a, << { fs es fs } \\
		       { d  cs d  } >>   g, b, d   g fs! g			 
    << {  e' 8 cs'  as   e  ds e    e'  cs' b     as! gs as } \\
       {     cs,8 e,      g,   cs b, cs   fs, as, cs!   fs  es fs } >>	 
    << { fs4.    r4    r8   b4.    r4      r8  } \\
       { d 4. ~  d8 cs d    ds4. ~ ds8 cs! ds! } >>				 
    << { b4.     r4.   s4.      s4.    } \\
       { e4. ~   e8 fs g    a8 r r   b8 r r } >>				 
    e 8  r  r    r4 r8     	 r2.						 
    r 2.                   	 r4.   r8  r   e'				 
    a'8  e' c'   a  gs  a  	 g'! e' cs'   a  gs! a				 
    f'8  d' bf   a  cs' d'   bf! g  e     cs a   g				 
    f 8  a  cs'  d' a   f    d   f  gs    a  f   d				 
    b,!8 d  gs   a, d   f    gs, b, d     f  e   d				 
    c 8  b, a,   e4     e,8  a,8 cs e     a4
  }
  \mark \markup { \musicglyph #"scripts.dfermata" }
}