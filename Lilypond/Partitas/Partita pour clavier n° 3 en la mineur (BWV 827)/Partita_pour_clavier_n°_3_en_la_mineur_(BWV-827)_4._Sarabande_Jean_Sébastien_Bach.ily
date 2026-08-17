voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)
ttt = { \set tupletSpannerDuration = #(ly:make-moment 1 8) }

upperFour = \relative c''
{
  \clef treble
  \key a \minor
  \time 3/4
  \repeat volta 2
  {
    \partial 8*3 << { a8 gs \prall a } \\
		    { r8 r4          } >> |
    << { e8[ \times 2/3 { f16 e d] }  e8 e   e e } \\
       { r4                           r8 c8  b c } >> |
    << { c'8 b   r a   gs a } \\
       { a 8 gs  r c,  b  c } >> |
    << { d'8 c   r a   gs a } \\
       { a 8 a   r c,  b  c } >> |
    << { f'8 e   r e   e e  } \\
       { a,8 gs  r gs  a b  } >> |
    << { e8[  \times 2/3 { f16 e d] }  e8[ \times 2/3 { g16 f e] }   f8[ \times 2/3 { a16 g f] } } \\
       { c2. ~ 									                 } >> |
    << { g'2. ~ 							    } \\
       { c,8[ \times 2/3 { d16 c b] }  c8[ \times 2/3 { e16 d c] }  g'8 bf, } >> |
    << { g'8[ \times 2/3 { g16 f e] }  f8[ \times 2/3 { f16 e d] }  e8[ \times 2/3 { e16 d c] } } \\
       { a4                            r8               b!          c4                          } >> |
    << { e 8 d  r c'  b c } \\
       { c,8 b  r e   d e } >> |
    << { f8[ \times 2/3 { g16 f e] }  f8[ \set tupletSpannerDuration = #(ly:make-moment 1 8)
	                                  \times 2/3 { a16 g f]  g[ f e]  f[ e d] } } \\
       { b4                           r4                         r4                 } >> |
    << { e 8[ \times 2/3 { f16 e d] }  e8 c'  b c } \\
       { c,4                           r8 e   d e } >> |
    << { d8[ \times 2/3 { f16 e d]  g[ f e]  f[ e d]  e[ d c]  d[ c b] } } \\
       { b4                         r8       a        g        f         } >> |
    << { c'4. } \\
       { e,4. } >>
  }
  \repeat volta 2
  {
    << { r8 r4 } \\
       { r8 r4 } >> |
    r4  r8 << {                   g'8        f        e         } \\
	      { \ttt \times 2/3 { e16[ d c]  d[ c b]  c[ b a] } } >> |
    << {              d8[         fs]        g  r  r4 } \\
       { \times 2/3 { b,16[ a g]  c[ b a] }  b8 r  r4 } >> |
    << { r4  r8 \ttt \times 2/3 { f'16[ e d]  e[d cs]  d[c b] } } \\
       { r4  r8                   a           g        f        } >> |
    << { \times 2/3 { cs'16[ b a]  d[ cs b] }  cs8               r8          r4                  } \\
       {              e , 8[       gs]         a 8[ \times 2/3 { a16 b cs!]  cs[ d e]  e[ f g] } } >> |
    << {              r4                     r8 \times 2/3 { d16[ e f]  f[ g a]  a[ bf c] } } \\
       { \times 2/3 { f,16[ e f]  g[ f e] }  f2 ~ 					    } >> |
    << { \times 2/3 { bf16[ a bf]  c[ bf a] }  bf!8 \times 2/3 { c,16[ d e]  e[ f g]  g[ a bf!] } } \\
       {              f4                       e2 ~						  } >>
    << { \times 2/3 { a16[ g a]  bf[ a g] }  a8 d, e cs } \\
       {              e4                     d8 f, g e  } >> |
    << { d'4. f 8 f f } \\
       { f,4. d'8 d d } >> |
    << { f4. f8 \times 2/3 { e16[ d e]  f[ e d] } } \\
       { d4. d8              c          b         } >> |
    << { e8[ d16 e]  c8 a' gs a } \\
       { c,4         r8 s8 s4   } >> |
    << { d8[ \times 2/3 { e16 d c]  d[ c b]  c[ b a]  b[ a gs]  a[ gs fs] } } \\
       { s4.								     } >> |
    << { \times 2/3 { gs16[ a b]  a[ gs fs] }  e8 c'  b   c } \\
       {              s8          r8           r8 a   gs! a } >> |
    << { d 8[ \times 2/3 { c16 d e] }  d8[ \times 2/3 { b16 c d]  c[ d e]  d[ e f] } } \\
       { b,4                           r8               gs        a        b         } >> |
    << { \times 2/3 { e 16[ d e]  f[ e d] }  e8 a   gs a } \\
       {              gs,4                   r8 e'  d  c } >> |
    << { d8[ \times 2/3 { f16 e d]  e[ d c]  d[ c b]  c[ b a]  b[ a gs] } } \\
       { b4                         r8       f        e        d          } >> |
    << { a'4. } \\
       { c,4. } >>
  }
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lowerFour =
{
  \clef bass
  \key a \minor
  \time 3/4
  \repeat volta 2
  {
    \partial 8*3 r8 r4 			      	|
    r4  r8 a  gs a   			      	|
    e8[ \times 2/3 { f16 e d] }  e8 e,  e,  e,  |
    e8[ \times 2/3 { f16 e d] }  e8 e,  e,  e,  |
    e8[ \times 2/3 { f16 e d] }  e8 e'  fs' gs' |
    a'8 a   a  a'  a' a                         |
    e'8 e   e  e'  e' e                         |
    f 8 e   d  g   c' f                         |
    g 8 g,  g, g   g  g,			|
    g 8 g,  g, g   g  g,			|
    g 8 g,  g, g   g  g,			|
    f 8 d   e  c   g  g,			|
    c 8 g,  c,
  }
  \repeat volta 2
  {
    c' b c' 					 	     	     |
    g8[ \times 2/3 { a16 g fs] }  g8 g,  g,  g,  	     	     |
    g,4  r8 d'  cs' d'                           	     	     |
    a8[ \times 2/3 { b16 a gs] }  a8 a,  a,  a,  	     	     |
    a,4                           r8 a   g   a 	 	     	     |
    d8[ \times 2/3 { e16 d cs] }  d8 d'  cs' d'  	     	     |
    g8[ \times 2/3 { a16 g f ] }  g8 c'  bf  c'  	     	     |
    f8[ \times 2/3 { g16 f e ] }  f8 bf  g   a   	     	     |
    d8[ a, d,] \ttt \times 2/3 { a16[ g f]  f[ e d]  d[ c b,] }      |
    \times 2/3 { b,16[ a, g,]  g,[ a, b,]  b,[ c d]  d[ e f]}  g8 g, |
    \times 2/3 { c16[ d e]  e[ f g]  g[ a g] } << { e'8 d' c' } \\
						  { c'8 b  a  } >>   |
    << { b 8 a  b  e' d' c' } \\
       { gs8 fs gs a  f  d  } >>				     |
    << { b8 s8 s2        } \\
       { e8 e, e, e e e, } >>					     |
    e8  e, e, e  e e,						     |
    d8  d, d, c' b a						     |
    gs8 e  c  a, e e,						     |
    a,8 e  a
  }
  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}
