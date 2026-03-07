\language "deutsch"



global = {
  \key g \minor
  \time 3/2
  \partial 8
 
}

violinI = \relative c''' {
  \global
  % Poniżej wpisz nuty.
  \tempo "Un peu plus vivement"
g8 

g4. as8 b4 es, as! f\turn
g es f g f4.\prall es8
d4.\prall d8 es4 d d4.\prall c8
h4.\prall h8 c( d) c( d) d4.\prall( c16 d)
es4 c \breathe g'2 c

b4.\prall as8 g f es2 as!8 g
f4\prall \grace {\stemDown es8^(} d4) es8( f) es( f) f4.\prall es8
es1 r4 r8 \bar ":..:" b
b4. c8 as4\prall g f b
g^\prall^\markup \flat es b'2 es

c4.\prall c8 f4 g c,4.\prall b8
b2 \breathe f' b
g4.\prall g8 a4 b a4.\prall g8
fis2\prall \breathe a, d
b4.\prall c8 d4 es a,4.\prall g8

g4. \breathe g'8 g4 f f8( es) f( d)
\grace {\stemDown d8^(} es2.\mordent) r
r4 r8 c' c4 b b8( as) b( g)
\grace {\stemDown g^(} as4.\mordent) as8 as4 g f\prall es 
d\prall \grace {\stemDown c8^(} h4) \breathe d2 g

\grace {\stemDown f8^(} es4.) f8 g4 as d,4.\prall c8
c1 r4 r8 \bar ":|."


}

violinII = \relative c'' {
  \global
  % Poniżej wpisz nuty.
es8

es4. f8 g4 c, f d\prall
\grace {\stemDown d8^(} es4) \grace {\stemDown d8^(} c4) d es h4. c8
h4.\prall \breathe h8 c4 b a4.\prall a8
d,4. g8 a_( h! a h! h4.\prall a16 h!)
c4( g8 es) \breathe es'2 as

g4.\prall f8 es d c2 f8 es
d4\prall \grace {\stemDown c8^(} b4) c8( d c d d4.)\prall es8 
es1 r4 r8 g,
g4. as8 f4\prall es2 d4\prall
\grace {d8_(} es2\mordent) \breathe g c

a4.\prall a8 b2 a4.\prall b8
b2 \breathe d g
e4.\prall e8 fis4 g c,4.\prall b8
a2\prall \breathe fis b
g4.\prall a8 b4 a8\prall g fis4.\prall g8

g4. \breathe es'8 es4 d c\prall h
\grace {\stemDown h8(} c2)\mordent r r
r4 r8 as'8 as4 g f\prall e
\grace {\stemDown e8^(} f4.)\mordent \breathe d8 es4 f h, c
h\prall \grace { a8_(} g4) \breathe h!2 es 

c4.\prall d8 es4 d8\prall c h4. c8
c1 r4 r8

}

cello = \relative c' {
  \global
  % Poniżej wpisz nuty.
c8 

c2 g4 as f b
es, as8 g f4 es d4.\prall c8
g'4. g8 c,4 g' fis2\prall
f! es d
c \breathe c' as

es' es,4 as8[ b as! g] f4
b as g es b' b,
es1 r4 r8 es
es2 d4\prall es b2
es, \prall es' c

f4. es8 d4 es f f,
b2 \clef alto b'' g
c4. b8 a4 g fis4. g8
d2 \clef bass d, b
es4. es8 b4 c d d,

g2 r r
r4 r8 c' c4 b as\prall g
as2 as4 b c c,
f4. \clef alto f'8 f4 es d\prall c
g'2 \clef bass g, es

as4. as8 es4 f g g, c1 r4 r8
}


bcMusic = \relative c' {
  \global

c8 

c2 g4 as f b
es, as8 g f4 es d4._\prall c8
g'4. g8 c,4 g' fis2_\prall
f! es d
c \breathe c' as

es' es,4 as8[ b as! g] f4
b as g_\prall es b' b,
es1 r4 r8 es
es2 d4_\prall es b2
es, _\prall es' c

f4. es8 d4 es f f,
b2 \clef alto b'' g
c4. b8 a4 g fis4._\prall g8
d2 \clef bass d, b
es4. es8 b4 c d d,

g2 r r
r4 r8 c' c4 b as_\prall g
as2 as4 b c c,
f4. \clef alto f'8 f4 es d_\prall c
g'2 \clef bass g, es

as4. as8 es4 f g g, 
c\fermata g es c2 r8
 
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  % Poniżej wpisz cyfowanie basu.
<_>8 <_>2 <6> <3->
<_> <6 5>4 <6> <6!>2
<3!>2. <3->4<5/>2
<4/><6 4/ 3> <6! 4 3>
<_>1.

<_>2. <_>2 <3->4
<_>2 <6> <_>
<_>1.
<_>2 <5/> <4>4 <3>
<_>1.

<_>2 <6> <_>
<_>1.
<3!>2 <6+> <_>
<3+>1 <6>2
<_> <6> <3+>

<3!>1.
<_>2 <3!>1
<6>1 <3!>2
<3->2 <6 3->4 <6> <6!> <_>
<3!>1 <6>2
<_> <6> <3!>

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
 piece = "[4.] Seconde Courante"
 }
}