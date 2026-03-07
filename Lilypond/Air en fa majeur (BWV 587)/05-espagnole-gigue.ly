\version "2.18.0"
\language "deutsch"



global = {
  \key g \minor
  \time 6/4
  \partial 8*9
 
}

violinI = \relative c'' {
  \global
  % Poniżej wpisz nuty.
\repeat volta 2 {
c8 g4 c d es
d4.\prall \breathe es8 d4 es f g
f4.\prall f8 g f es4. es8 f es
d4.\prall d8 es d c4.\prall h8 c4

h4.\prall h8 c4 c4. d8 h4\prall
\stemDown\appoggiatura b8 c4.\mordent \breathe es8 d4 es (d\prall) c~
c4 b2~ b4 as2~
as4 g g'~ g8. as16 f4.\prall f8
f4. \breathe b,8 f4 b4. \breathe d8 c4

d es f es4. es8 f es
d4.\prall d8 es d c4.\prall c8 d c
b4\prall \stemUp\appoggiatura a8 g8 \breathe g' d4 g a b~
b a8 b a4~  a g8 a g4~
g (fis8\prall) e d4 c8\prall b a4. g8
g4.
}
\repeat volta 2 {
d'8 es4 f \stemDown\appoggiatura es8 d4 g
\stemDown\grace f8 (es4) \stemDown\grace d8 (c4) f f g8( f) es( d)
\stemDown\grace d8 (es2.\mordent) \breathe e4.\prall f8 e f
g4 c, f4. g8 e4.\prall f8

f4. \breathe c8 d4 es \stemDown\appoggiatura d8 c4 f
es4. f8 es f d4.\prall es8 d es
c2.\prall \breathe c4 c4.\prall c8
f4. f8 g([ f) es( d)] c4.\prall b8 

b2. \breathe d4 d4.\prall d8
es8.[ d16 es8 f g es]  f es f g as f
\stemDown \appoggiatura f8 g2.~\prall g2 \breathe g4
g2 f4 f4. f8 es d

\stemDown \appoggiatura d8 es4.\prall es8 f g as g f es d c
h4\prall\glissando g8 \breathe d'8 es4 f \stemDown\appoggiatura es8 d4 g
f4.\mordent g8 f g \stemDown \appoggiatura f8 es4. f8 es f
d2. \breathe d4 d4.\prall d8

g4. g8 as8[ g f es] d4.\prall c8
c4.


}

}

violinII = \relative c'' {
  \global
  % Poniżej wpisz nuty.
r8 r4 r2 r4
r4 r8 c g4 c d es~
es4 d2~ d4 c2~
c4 (h8.\prall) \breathe h16 c8 b as4.\prall g8 \afterGrace f4\prall( {es8[ f)] }

g4. \breathe \stemUp\appoggiatura d8 es4 f8 es4. f8 d4\prall
\stemUp\appoggiatura d8 es4. c'8 h4 \stemDown\appoggiatura h8  c2\mordent g4
f4.\prall f'8 g f es4. es8 f es
d4.\prall d8 es d c4.\prall c8 d es 

d4\prall r2 r4 r8 b a4\prall
b4 c d~ d c2~
c4 b2~ b4 a2
d,4. \breathe b'8 a4 b c d~

d4 c8 d c2 b8 c b4
a4. (g16 a b4) fis8 g fis!4.\prall g8
g4.

h8 c4 d \stemDown\appoggiatura c8 h4 es
c4\prall \appoggiatura b8 a4 d d es8( d) c( h)
\stemDown\appoggiatura b8 c2.\prall \breathe g4. as8 g as! 
b4( as) as4.\mordent b8 g4.\prall^\markup {\flat} f8

f4. \breathe a8 b4 c \stemUp\appoggiatura b8 a4 d~
d4 c2~ c4 b2~
b4( a\prall) r4 a a4.\prall a8
d4. d8 es([ d) c( b)] a4.\prall b8

b2. \breathe f4 f4.\prall f8
b8. [b16 c8 d es c] d\prall c d es f d
\stemDown\appoggiatura d8 es4. \breathe g,8 a4 \appoggiatura a8 b4 \appoggiatura a8 g4 c
as2\prall as8 b g2\prall ~ g8. g16 

g4. \breathe c8[ d es] f g as g f es
d4 h8. \breathe h16 c4 d \stemDown\appoggiatura c8 h4 es~
es4 d2~ d4 c2~
c4 h r h h4. h8

es4. d8 c8[ es d c] h4.\prall c8
c4.

}

cello = \relative c {
  \global
  % Poniżej wpisz nuty.
  r8 r4 r2 r4 R1. R1.
  
  r4 r8 g' c,4 f g as
  g8 as g f es4 as f g
  c,4.  c'8 g4 c d es
  d4 d,8.[ d'16 es8 d] c4 c,8.[ c'16 d8 c8]
   b4 b,8.[ b'16 c8 b] as4 a4.\prall( g16 a) 
b4 r2 r4 r8 b f4
b2 h4 c8 b  \afterGrace a2( {\stemDown g16[ a)]}
b8 a g2 a8 g \afterGrace fis2\prall({\stemDown e16[ fis)]}

g4. r8 r4 g,2.
a2~ a8 c b2~ b8 g
d'8 es d c b4 a8\prall g d'4 d, 
g4. 


r8 r4 r2 r4
R1.
r4 r8 g' as4 b g c
e,4\prall f8 es des4 b c2 

f,4. r8 r4 r2. 
R1.

r4 r8 c' d4 es c f
d\prall b es8[ f g es] f4 f,
b4. \breathe f'8 g4 as f b
g8 as g f es4 b'2 b,4

es2. e\prall^\turn
f8 g f es d c h\prall a h! g a h!
c d c b as g f e f g as f

g2.~ g~
g~ g~
g4. \breathe d'8 es4 f d g 
es\prall c f8[ g as f] g4 g,

c4.
}



bcMusic = \relative c {
  \global
   r8 r4 r2 r4 R1. R1.
  
  r4 r8 g' c,4 f g as
  g8 as g f es4 as f g
  c,4.  c'8 g4 c d es
  d4 d,8.[ d'16 es8 d] c4 c,8.[ c'16 d8 c8]
   b4 b,8.[ b'16 c8 b] as4 a4.\prall( g16 a) 
b4 r2 r4 r8 b f4
b2 h4_\prall c8 b  \afterGrace a2_\prall( {\stemDown g16[ a)]}
b8 a g2 a8 g \afterGrace fis2({\stemDown e16[ fis)]}

g4. r8 r4 g,2.
a2~ a8 c b2~ b8 g
d'8 es d c b4_( a8)_\prall g d'4 d, 
g4. 


r8 r4 r2 r4
R1.
r4 r8 g' as4 b g c
e,4_\prall f8[ es des c] b4 c2 

f,4. r8 r4 r2. 
R1.

r4 r8 c' d4 es c f
d_\prall b es8[ f g es] f4 f,
b4. \breathe f'8 g4 as f b
g8 as g f es4 b'2 b,4

es2. \afterGrace e_\prall( {\stemDown d8[ e)]}
f8 g f es d c h_\prall a h! g a h!
c d c b as g f e f g as f

g2.~ g~
g~ g~
g4. \breathe d'8 es4 f d g 
es\prall c f8[ g as f] g4 g,

c4.
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
%  \override Staff.BassFigureAlignmentPositioning #'staff-padding = #5
  % Poniżej wpisz cyfowanie basu.
\bassFigureExtendersOn
<_\!>8 <_\!>1 
<_\!>1.*2
<_\!>4 <_\!>8 <3!>
<_>4 <6 5 3-> <6 5 3-> <6\!>
<3!>4.<3!>8 <6>4 <_> <6 5 3-> <3!>
<_>2 <3!>4 <_>2<_>4

<7>4 <6>4.<6>8 <7>4 <6->4.<6->8
<7->4 <6>4.<6>8 <7>4 <5/>2
<_\!>1.
<_\!>2 <5/>4 <2>8<2> <5/>2

<2>8<2> <_>2 <2>8<2> <_>2

<_\!>1.

<6+>2<6+>8<6+><5+>2<6>4
<3+>4.<3+>8 <6>4 <6+> <3> <3>
<3!>1.
<_>

<6 4>2<6 4>4 <4/>2<4/>4
<_> <3->2 <3->4 <3+>2

<_>1.*2

<6 4>2 <6 4>4 <6 4>2 <6 4>4
<6\!>4 <6> <_>1

<_\!>2<_>4 <4/>2<4/>4
<6>2<6>4 <_>2 <7->4
<_>2. <5/>
<3->2<3->8<3->8
<5/>2<5/>8<5/>8
<_>2<_>8<_>8
<6 5 3->2<6 5 3->8<6 5 3->8

<3!>2 <6 4>4 <3! 7>2 <4 6>4
<7 6\!>4 <7 5>2 <6 5>4 <4>2
<3!>1<3!>4<3!>4

<6><6> <6\! 5 3->4.<6 5 3->8 <3!>2

}

violinIPart = \new Staff \with {
  instrumentName = ""
} \violinI

violinIIPart = \new Staff \with {
  instrumentName = ""
} \violinII

celloPart = \new Staff \with {
  instrumentName = ""
} { \clef bass \cello }

bassoContinuoPart = \new Staff \with {
  instrumentName = ""
} { \clef bass << \bcMusic \bcFigures >> }

\score {
  <<
    \violinIPart
    \violinIIPart
    \celloPart
    \bassoContinuoPart
  >>
  \layout { }
   \header {
 piece = "[6.] Gigue Lourée"
 }
}