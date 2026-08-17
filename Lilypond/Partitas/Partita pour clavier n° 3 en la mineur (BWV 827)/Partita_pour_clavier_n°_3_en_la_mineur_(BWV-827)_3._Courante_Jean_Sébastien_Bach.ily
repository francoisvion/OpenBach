voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

upperThree = \relative c''
{
  \clef treble
  \key a \minor
  \time 3/4
  \repeat volta 2
  {
    \partial 4 r16 d c b              	    
    c8. e16  a8. e16  b'8. d,16       	    
    c16 e fs gs  a8. e16  b'8. d,16   	    
    c16 a b c  d e f e  d c b a       	    
    gs16 a b gs  e2 ~                 	    
    e16 d c b  c a c e  a gs fs e     	    
    c'16 b a g!  f! d f a  d cs b a   	    
    f'16 e d c!  b g b d  g fs e d    	    
    b'16 a g f!  e c e g  c b a g      	    
    a8. d,16  e d cs d  e d cs d      	    
    g8. b,16  c2 ~                    	    
    c8. b16  c b a b  c b a b         	    
    e8. gs,16  a2 ~                   	    
    a16 d e f  e d c b  a gs a b      	    
    e,16 b' gs f!  e c' a f  e d' b f 	    
    e16 c' a f  e b' gs f  e c' a f   	    
    e16 d' b f  e c' a f  e b' gs f   	    
    e8 c'16 d d4. \trill c16 d        	    
    e4 ~  e16 d c b  c e c a          	    
    gs16 b gs e  d f e d  c e c a     	    
    << { \voiceOne   e'2 } \\
       { \voiceThree b 2 } \\
       { \voiceFive  gs2 } >>
  }
  \repeat volta 2
  {
    r16 b' c a      	      	   	    
    gs8. e16  b'8. d,16  e8. b16      	    
    c16 e f d  e8. a16  gs8. d'16     	    
    c16 e a g  f e d c  b a gs fs     	    
    e16 d' c b  c2 ~                  	    
    c16 b a gs  a f a c  f e d c      	    
    d16 c b a  b g b d  g f e d       	    
    e16 d c b  c a c e  a g f e       	    
    d16 c b a  g b c d  c b a g       	    
    c8. f,16  g f e f  g f e f        	    
    b8. d,16  e2 ~                    	    
    e8. d16  e d c d  e d c d         	    
    g8. b,16  c2 ~                     	    
    c16 f g a  g f e d  c b c d       	    
    g,8. b16  c8. g16  d'8. g,16      	    
    e'8. g,16  d'8. g,16  e'8. g,16   	    
    f'8. g,16  e'8. g,16  f'8. g,16   	    
    g'16 e f g  a f e d  b' g a b     	    
    c16 a g f  d' b c d  e c b a      	    
    f'16 d e f  g e d c  a' f g a     	    
    b,4 ~  b16 g a b  c d e f         	    
    g16 f a g  f e d c  e d c b       	    
    c4 ~  c16 g c d  e c d e          	    
    a,16 cs e g  bf8. cs,16  d8. e16   	    
    f4 ~  f16 a, d e  f d e f         	    
    b,16 ds fs a  c8. ds,16  e8. fs16  	    
    g4. fs16 gs  a gs! fs gs          	    
    a8. d,16  cs d e f  g f g e       	    
    f16 d e f  e c d e  d b c d       	    
    c16 a gs a  d e f e  d c b a      	    
    gs16 fs gs fs  e4 ~  e16 d' c b   	    
    c16 e gs a  b, d fs g  a, c e f   	    
    gs, b ds e  fs, a ds! e  gs,! b d b	    
    c16 a f e  b' gs e d  a' fs ds c! 	    
    b16 a' gs fs  e gs b d  c8. \prall b16  
    e8. b16  c8. a16  e8. gs16              
    a2
  }
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
\override Score.RehearsalMark.extra-offset = #'(-0.6 . 0.0)
\mark \markup { \musicglyph "scripts.ufermata" }
}
lowerThree =
{
  \clef bass
  \key a \minor
  \time 3/4
  \repeat volta 2
  {
    \partial 4 r4                                
    a,8 r c r e r              	       		 
    a8 r c' r gs r             	       		 
    a8. e'16  f'8. gs16  a8. f16       		 
    e4 ~  e16 gs b gs  e gs d gs       		 
    c8. e16  a,8. b,16  c8. e16        		 
    a,8. a16  d8. e16  f8. a16         		 
    d8. d'16  g8. a16  b8. d'16        		 
    g8. b16  c'8. d'16  e'8. c'16      		 
    f'8. f16  f'8. f16  f'4 ~          		 
    f'16 d' e' f'  e' d' c' b  a g f e 		 
    d8. d'16  d8. d'16  d4 ~           		 
    d16 b, c d  c b, a, g, f, e, d, c, 		 
    d,8. b,16  c8. e,16  f,8. d16      		 
    e4 ~  e8. a16  gs8. d'16           		 
    c'4  r8 r16 b16  c'8. a16          		 
    gs4  r8 r16 a16  b8. gs16          		 
    a8. g!16  f4.  e16 f               		 
    e16 gs b gs  e2 ~                  		 
    e16 gs b gs << { r8 r16 gs!16  a8. fs16 } \\
		   { e2 ~                   } >> 
    << { s4 e,4 } \\
       { e4 s 4 } >>
  }
  \repeat volta 2
  {
    r4    	       	       		      	 
    e,8 r gs, r b, r 	       	       	      	 
    e8 r gs r b r    	       	       	      	 
    e'8. a16  d'8. f'16  gs4 ~ 	       	      	 
    gs16 e fs gs  a b c' b  a c' g c'  	      	 
    f!4 ~  f8. e16  d8. f16            	      	 
    b,8. d16  g8. f16  e8. g16         	      	 
    c8. e16  a8. g16  f4 ~             	      	 
    f16 a b c'  b g a b  e g f e       	      	 
    a8. a,16  a8. a,16  a4 ~           	      	 
    a16 f g a  g f e d  c b, a, g,     	      	 
    f,8. f16  f,8. f16  f,4 ~          	      	 
    f,16 d e f  e d c b,  a, g, f, e,  	      	 
    d,8. c16  b,8. f16  e8. f16        	      	 
    b,16 f e d  e c d e  b, d c b,     	      	 
    c16 a, b, c  b, f e d  c a, b, c   	      	 
    d16 f e d  c e d c  b, a, g, f,    	      	 
    e,8. e16  f8. f,16  g,8. g16       	      	 
    a8. a,16  b,8. b16  c'8. c16       	      	 
    d8. d'16  e'8. e16  f8. f'16       	      	 
    g8. f'16  e'8. g16  f8. d'16       	      	 
    c'8. e16  a8. f16  g8. g,16        	      	 
    c16 c, e, g,  c4 ~  c16 e f g      	      	 
    cs4 ~  cs16 e f g  f e d cs        	      	 
    d16 d, f, a,  d4 ~  d16 f g a      	      	 
    ds4 ~  ds16 fs g a  g fs e ds!     	      	 
    e16 e, g, b,  e4 ~  e16 c d e      	      	 
    f16 e f g  a b cs' d'  e'8. a16    	      	 
    d'8. a16  c'8. a16  b8. gs16       	      	 
    a8. c'16  f8. a16  f8. d16         	      	 
    e4 ~  e8 d16 c  b, gs, a, b,       	      	 
    e,8. e16  e,8. e16  e,8. e16       	      	 
    e,8. e16  e,8. e16  e,8. e16       	      	 
    e,8. e16  e,8. e16  e,8. e16       	      	 
    e,4 ~  e,16 c' b a  gs fs e d      	      	 
    c16 b, a, gs,  a, b, c d  e8. e,16 	      	 
    a,2
  }
\override Staff.RehearsalMark.direction = #-1
\override Score.RehearsalMark.extra-offset = #'(-0.6 . 0.0)
\mark \markup { \musicglyph "scripts.dfermata" }
}