\language "deutsch"

%%Vivement

global = {
  \key g \minor
  \time 4/4
 
}

violinI = \relative c'' {
  \global
  % Poniżej wpisz nuty.
 \tempo Vivement
   R1*2
r8 c g' as b (as16\prall) g f8 as 
g f16 es d8 f es8. f16 \afterGrace f4\prall ({\stemDown es8 [f)]} g4
r4 r2 
r8 c, g' g as (g16\prall) f e8 g f c g' g as8. g16 g4\prall
f16 \breathe
c d es f g f es d\prall b c d es f es d 
c es f g as b as g f\prall d es f g as g f 
es4 r8 es f g f8.\prall es16 es4 r4 
r16 c d es f g f es 
d\prall h c d es f es d
c8 (h!16\prall) a \stemDown g8 h\prall c8
d16 es d es f d es4 e8.\prall e16 f4 fis8.\prall fis16 g4 r4
r16 a, b c d es d c b8 \breathe
d g a b (a16\prall) g fis8 a g4 g8.\prall fis!16 g4 r4 r2 R1
r8 c, g' as b (as16\prall) g f8 as g4 es f \afterGrace d\prall ({\stemDown c8 [d)]} 
es g g g f4. f8 f4 es8. es16 es4 d8. d16 d4 \breathe
c2 (h4\prall \turn) c16 \breathe
es f g as b as! g 
f\prall d es f g as g f es es f g as g f es d8 es d8.\prall c16 
\time 6/4
c2 r4 r2.
R1.*7
r2. 
r4 r 
c c4. d8 c4 h4.\prall a8 h4 \stemDown \grace  h8 (c2\mordent) r4
r r 
r16 c d es
d4.\prall (c16 d es4) c4.\prall h8 c4 h2 \prall r4 \stemNeutral
r r8 g'16 [f es f es d] c2
r r8 f16 [es d es d c] b2 r4
r r 
r16 b (c des)
c8 des c b as g f4 g as g2\prall r4
r r r16 h (c d) c2. 
r4 r 
r16 
a (h c) h2.\prall 
r4 r 
r16
g (a h)
a4 h c h8\prall a g f es d
\grace d8 (es4\mordent)
\grace d8 (c4) r4 
r r r16 es' (f es) d2.\prall
r4 r r16 d (es d) c2.\prall
r4 r r16 c (d c)
h4.\prall (a16 h c4) h2\prall c4 c2. \bar "||"



}

violinII = \relative c'' {
  \global
  % Poniżej wpisz nuty.
  R1 r8 g c d es d16 c h8 d c4 \breathe es8 f g f16 es d8 f es d16 c h8 d c8. (d16 d8.\prall c16) h8
  \breathe
  g c d es (d16\prall) c h8 d c4 r r8 c g' g as (g16\prall) f e8 g f4 \afterGrace e\prall ({\stemDown d8 [e)]} 
  f4 r4 r2
  r16 c d es f g f es 
  d\prall b c d es f es d 
  c4.\prall c8 d es d8.\prall es16 es 
  \breathe
  g, a b c d c b 
  a\prall a h c d es d c h8\prall
r8 r4 r8  g d' d es d16\prall c h8 d c4 r
r2 r8 d g a 
b a16 g fis8 a g4 r4
r16 a, b c d es d c b d c b a8.\prall d16 h8\prall \breathe
g c d es (d16\prall) c h8 d 
c d es f g (f16\prall) es d es f d es8 \breathe
c16 d es8 f g (f16\prall) es d8 f es4 \breathe
c d h\prall c8 \breathe
es es es d4.\prall c8 h16 g a h! c d c b a\prall f g a b c b as g4\prall
r16 es f g as g f es d8. c16 c \breathe
c' d es f g f es d\prall b c d es f es d c c d es f es d c h8 c h!8.\prall c16 c2 
%%
r4 r2. R1.
r4 r c 
g'4. as8 g4 f2\prall \stemDown \grace es8 (d4)
f4. g8 f4 es2\prall \stemDown \grace d8 (c4) \breathe
as'4. b8 as4 as2 g4
g4. as8 f4\prall \stemDown \grace f8 (g2\mordent) r4 r2.
R1.
r4 r c,
g'4. as8 g4 f2\prall \stemDown \grace es8 (d4)
f4. g8 f4 es2\prall \stemDown \grace d8 (c4) \breathe
as'4. b8 as4 as2 g4
g4. as8 f4 \stemDown \grace f8 (g2\mordent) \breathe
g4 b4. c8 b4 b2 \breathe
f4 as4. b8 as4 as2 \breathe
es4 g4. as8 g4 
f4.\prall g8 es4 es4. f8 d4\prall \stemDown \grace d8 (es2\mordent)\breathe
es4 g4. as8 g4 g2 \breathe
c,4 f4. g8 f4  
f4.\prall es8 d4
g4. as8 g4 f4. g8 es4 
d2\prall c4 c2 \breathe
es4
as4. b8 as4 as2
d,4 g4. as8 g4 g2
c,4 f4. g8 f4 f
as8 (g) f (es) d2\prall c4 c2.

}

cello = \relative c {
  \global
  % Poniżej wpisz nuty.
    
    \clef bass \stemNeutral
  r8 g'c d es d16\prall c h8 d c4 as es8 f g g,
  c4 c' g8 as b b, es f g g, c b as4_\prall g8 g16 f e8 d c 
  \breathe
  c' g' g as8 g16\prall f e8 g f es16\prall des c4
  f8 es16\prall des c4 f8 b, c4 
  f f, b g as f b g 
  as16 es' [f g] as b as g f8 es b' b, 
  es4 e f d g8 g [c d] es d16 c h8 d c4 g 
  c,16 g' [a b] c d c b a a b c d es d c b b, c d es d es c
  g'8 f16 es d4 g es8 c g'8 f16 es d8 f, g c d4 g,8 g16 f es8 d c16 d' [es f ] g as g f es8
  \breathe
  g c d es d16 c h8 d c4~ c16 c b as g8 as b4
  es,16 es  f g as b as g f d es f g as g f es8
  \breathe
  c g' as b as16 g f8 as g4 r16 c, d es f4 r16 b, c d es es f g as b as g f g as f g8 g, c4 
  \stemDown  f,16  f' g as 
  \stemNeutral
  b4 r16 es, f g as b as g f g as f g8 c, g4
  
  \time 6/4
  c2 \breathe c4 
g'4. as8 g4 f2\prall d4
f4. g8 f4 es2\prall  \grace d8 (c4)
es4. f8 es4 d2.\prall
g2. c, \breathe
c' b as\prall g2 \breathe
c,4 
g'4. as8 g4 f2\prall  \stemDown\grace es8 (d4) \stemNeutral
f4. g8 f4 es2\prall  \grace d8 (c4)
es4. f8 es4 d2.\prall
g2. c, 
c'4 c, c' b b, b' 
as~ as2\prall g4 g, r 
es'2. f d es es, as b es, \breathe
es' as d, g \breathe
es f g c, \breathe
c' h\prall b a\prall as 
g2 c,4 g2. c 
  
}

bcMusic = \relative c {
  \global

    \clef bass \stemNeutral
  r8 g'c d es d16\prall c h8 d c4 as es8 f g g,
  c4 c' g8 as b b, es f g g, c b as4_\prall g8 g16 f e8 d c 
  \breathe
  c' g' g as8 g16\prall f e8 g f es16\prall des c4
  f8 es16\prall des c4 f8 b, c4 
  f f, b g as f b g 
  as16 es' [f g] as b as g f8 es b' b, 
  es4 e f d g8 g [c d] es d16 c h8 d c4 g 
  c,16 g' [a b] c d c b a a b c d es d c b b, c d es d es c
  g'8 f16 es d4 g es8 c g'8 f16 es d8 f, g c d4 g,8 g16 f es8 d c16 d' [es f ] g as g f es8
  \breathe
  g c d es d16 c h8 d c4~ c16 c b as g8 as b4
  es,16 es  f g as b as g f d es f g as g f es8
  \breathe
  c g' as b as16 g f8 as g4 r16 c, d es f4 r16 b, c d es es f g as b as g f g as f g8 g, c4 
  \stemDown  f,16  f' g as 
  \stemNeutral
  b4 r16 es, f g as b as g f g as f g8 c, g4
  
  \time 6/4
  c2 \breathe c4 
g'4. as8 g4 f2_\prall d4
f4. g8 f4 es2\prall  c4
es4. f8 es4 d2._\prall
g2. c, \breathe
c' b as_\prall g2 \breathe
c,4 
g'4. as8 g4 f2_\prall  d4
f4. g8 f4 es2\prall  c4
es4. f8 es4 d2._\prall
g2. c, 
c'2. b  
as g \breathe 
es2. f d es es, as b es, \breathe
es' as d, g \breathe
es f g c, \breathe
c' h_\prall b a_\prall as 
g2 c,4 g2. c 
  
 
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  % Poniżej wpisz cyfowanie basu.
  
  \bassFigureExtendersOn
  <_>4. <6!>8 <6>8.<6>16 <5/>8<5/> <_>4 <6> <6\!>8 <6> <3!>4
  <_>2 <6> <_>4 <3!> <_> <6>
  <3!>8.<3!>16<6>8<6!>
  <_>4 <3!> <_> <5/> <3->8.<3->16 <3!>4 <3->8.<3->16 <3!>4 <3->8<3-> <3!>4
  <3-> <7 3!> <_> <6> <_> <3-> <_> <6>
  <_>8.<_>16 <_\!>4 <6 4 3->8
  \bassFigureExtendersOff
  <_>8 <_>4 <_>1 
  \bassFigureExtendersOn
  <3!>4.<3!>8
  <6>8.<6>16
  <5/>4 <_> <3!>
  <_>8.<_>16 <3!>8.<3!>16
  <6>8.<6>16
  <3+>8.<3+>16
  <6>4..<6>16
  <_>4 <3+> <_> <6>8 <6\! 5>
  <_>8.<_>16
  <3+>8 <5/> <_><_> <4> <3+> 
  <3!>8.<3!>16
  <6>8 <6!>
  <_>8.<_>16
  <3!>8.<3!>16
  <6>8 <3!><_><6!>
  <6>8.<6>16
  <5/>4
  <_>2
  <6>4<6>
  <_>2
  <6 5 3->8.<6 5 3->16
  <3!>8.<3!>16
  <6>4.<6>8
  <_>4<_>8<6 4/ 3>
  <7 3!>4<_>
  <7>4<_>
  <7>8.<7>16
  <5>8.<5>16
  <6 5\! 3->8.<6 5 3->16
  <3!>4
  <_>
  <3->8.<3->16
  <_>2 <_\!>4
  <6 5 3->8.<6 5 3->16
  <3!>4 <3!\!>
  <_>2.
  <3!>2<3!>4
  <4/>2.<4/>2<4/>4
  <6>2.<6>2<6>4
  <5/ 7>2.
  <7\! 3!>
  <_>
  <6->
  <7->2<6>4
  <7>2<6>4
  <3!>2.
  <3!\!>
    <4/>2.<4/>2<4/>4
  <6>2.<6>2<6>4
  <5/ 7>2.
  <7\! 3!>
  <_>
  <6->2<6->4
  <7>2<6>4
  <7>2<6>4
  <3!>2.
  
  <5-> <3 4> <5/>
  <5\! 4-> <3> <6 5> 
  <7- 4>2<7- 3>4
  <_>1.
  <7>2. <5/ 7\!> <7\! 3!>
  <6> <7 2> <3!>
  <_>
  <6-> 
  <7/> <6> 
  <5/ 7> <6>
  <7 3!>
<3!\!>  

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

}