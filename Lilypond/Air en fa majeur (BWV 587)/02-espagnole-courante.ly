\language "deutsch"



global = {
  \key g \minor
  \time 3/2
  \partial 8
 
}

violinI = \relative c'' {
  \global
  % Poniżej wpisz nuty.
 \tempo Noblement
c8 es4. f8 g4 c,8( d d4.\prall )es8 
es2. r4 r8 es d es 
c4.\prall h8 c4 c4~( c8. d32 es d8.\prall) c16
h2.\prall r8 g c4. d8
\grace {\stemDown d8( } es4.\mordent) d8 c4 f g8( f) es( d) 

c2\prall b4 b' a4.\prall a8
a4.( g16 fis) \grace {\stemDown fis8(} g4.\mordent) a8 fis4.\prall g8 g1 r4 r8 \bar ":|.:" \break d
d4. es8 f4 es d\prall c
d4.\prall es8 f4 es d\prall c
b4. c8 d4 c8\prall b a4.\prall a8

\grace a8( \once \stemUp b4\mordent) \grace a8( g4) \breathe g'2 f4.\prall f8 
f2 \breathe \grace {\stemDown f8([ g]} as2) g4.\prall g8
g4. \breathe g8 f4 es\prall d c
f4. g8 f4 es d\prall c
h\prall g \breathe es'2 d4.\prall d8 

d4.( c16 h) \grace { \stemDown h8(} c4.\mordent) d8 h4.\prall c8 c1 r4 r8

\bar ":|."
}

violinII = \relative c' {
  \global
  % Poniżej wpisz nuty.
es8 g4. as8 b4 es,8( f f4.\prall) g8
g2. r4 r8 g f g 
es4.\prall d8 es4 \grace {es8([ f]} g4) f4.\prall es8
d2.\prall r4 r r8 g
c4. b8 a4\prall d es8( d) c( b)

a2\prall b4 \breathe \grace {\stemDown b8([ c]} d4) c4.\prall c8
c4.( b16 a) \grace a8( b4.\mordent) c8 a4.\prall g8 
g1 r4 r8 h
h4. c8 d4 c h\prall a
h4. c8 d4 c b\prall a

g4. a8 b4 a8 g fis4.\prall( eis16 fis) 
\grace fis8( g2)\mordent \breathe es'2 d4.\prall d8
d2 \grace {\stemDown d8[ es]} f2 es4. es8
es4. \breathe es8 d4 c h\prall a
h4.\prall a8 h4 c d es

d4\prall h  g2 f4.\prall f8
f4.( es16 d) \grace d8( es4.)\mordent f8 d4.\prall c8 c1 r4 r8


}

cello = \relative c' {
  \global
  % Poniżej wpisz nuty.
c8 c2 g4 as8 g f4.\prall es8
es4. g,8 b4 es,2 es'4
as2 as4 es8( f f4.\prall es16 f)
g4. d8 g4 f es4.\prall d8
c2 f8 es \afterGrace d2(\prall {\stemDown es8} \afterGrace es4\prall {\stemDown d8[ es)]}

f2 g4 \breathe g,8( a a4.\prall g16 a)
b2. g4 d' d,
g1 r4 r8 g'8
g4. c8 h4\prall c g c,
g'4. c8 h4\prall c g fis

g4. es8 b4 c d d,
g g'8 f e2 b'4. b8
b2 \breathe f c'4. c8
c4. \breathe c,8 as'4 g f es
d4.\prall es8 d4 c h\prall c

g'4. f8 es4.( f8 f4.\prall es16 f)
g2 c, g
c1 r4 r8

}

bcMusic = \relative c' {
  \global

 c8 c2 g4 as8 g f4.)_\prall es8
es4. g,8 b4 es,2 es'4
as2 as4 es8( f f4.)_\prall es16 f)
g4. d8 g4 f es4_\prall d
c2 f8 es \afterGrace d2(_\prall {\stemDown es8} \afterGrace es4_\prall {\stemDown d8[ es)]}

f2 g4 \breathe g,8( a a4._\prall g16 a)
b2. g4 d' d,
g1 r4 r8 g'8
g4. c8 h4_\prall c g c,
g'4. c8 h4_\prall c g fis_\prall

g4. es8 b4 c d d,
g g'8 f e2 b'4. b8
b2 \breathe f c'4. c8
c4. \breathe c,8 as'4 g f es
d4._\prall es8 d4 c h_\prall c

g'4. f8 es4.( f8 f4._\prall es16 f)
g2 c, g
c1 r4 r8
 
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  % Poniżej wpisz cyfowanie basu.
<_>8
<_>2 <6><6>
<_>1.
<_>2. <6>4<3->2
<3!>1<6>4<6!>
<_>2.<6>2<6 5>4
<_>4 <7>4 <_>2 <6+>
<5+ 2>2 <6> <3+>
<3!>1 <_>4. <3!>8
<_>1 <3!>4<6 5>
<3!>1.
<_>4. <6 4/ 3>8 <6>2 <3+>
<_>1.
<_>2 <3->1
<_>2 <6 4/ 3>4 <6 4> <6 4/> <6 4/ 3>
<6!>1.
<3!>2 <6> <6 5 3->
<7 3!><_><3!>
  
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
 \header {
 piece = "[3.] Courante"
 }
}