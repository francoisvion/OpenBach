\version "2.18.0"
\language "deutsch"



global = {
  \key g \minor
  \partial 2
  \time 2/2
 
}

violinI = \relative c'' {
  \global
  % Poniżej wpisz nuty.
  \repeat volta 2 {
g8^\markup "tendrement, sans lenteur" ( a) b( c)

h8( c) d( es) d8 es f d
\stemDown\appoggiatura d8 es4\mordent \stemDown\appoggiatura d8 c4 g'8 as b g 
as8 b c b as!8 g f es
d2\prall } 
  
\repeat volta 2 { d8 c d es

d8( c) b( a) h4.\prall c8
d4 g, es'8 d es f
g( f) as( g) f4.\prall es8
es2 \breathe b'8 as b c

as\prall g as b g\prall f g as
f2\prall \breathe f8 es f g
es d es f d4.\prall c8
d4 h\prall \breathe f'8 es f g

f4 g d4.\prall c8
c2 \breathe f8_\markup \italic {doux}  es f g
f4 g d4.\prall c8
c2 }
}

violinII = \relative c'' {
  \global
  % Poniżej wpisz nuty.
r2  
  
g8( a) h( c) h\prall c d h
c( d) es( f) e f g e!
f g as g f es d c
h2\prall r

r2 d8 c d es
h4\prall h \breathe c8 h c d
es8( d) f( es) d4.\prall es8
es2 \breathe g~

g4 f2 es4~ 
es2 d4\prall d4~
d c h4.\prall a8
h4 \stemUp \appoggiatura a8 g4 \breathe d'8 c d es

d4 es h4.\prall c8
c2 \breathe d8_\markup \italic {doux} c d es
d4 es h4.\prall c8
c2
}

cello = \relative c {
  \global
  % Poniżej wpisz nuty.
  c'4 c, 

g'2 g4 g, c2 c'4 c, 
f4. e8 f g as f
g4 g,
g'2 

fis2 g4. c,8
g'8 f g as g4 f 
es4 as, b2
es8 b' c d es4 c

f4 d es es,
b'8 a b c h4 g
c4 c, g'4. c8
g4 g as8 g as b

as4 es8 f g4 g, 
c4 c'8 b as g as b 
as4 es8 f g4 g,
c2
}



bcMusic = \relative c {
  \global
   c'4 c, 

g'2 g4 g, c4 c, c''4 c, 
f4. e8 f g as f
g4 g,
g'2 

fis2\prall g4. c,8
g'8 f g as g4 f 
es4 as, b2
es8 b' c d es4 c

f4 d es es,
b'8 a b c h4 g
c4 c, g'4. c8
g4 g as8 g as b

as4 es8 f g4 g, 
c4 c'8 b as g as b 
as4 es8 f g4 g,
c4 c,
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
%  \override Staff.BassFigureAlignmentPositioning #'staff-padding = #5
  % Poniżej wpisz cyfowanie basu.
  \bassFigureExtendersOn
<_>2
<_\! 3+><7 3+>
<_>2 <_\! 3+>4<7 3+>
<3->2<6 5 3->4. <6 5 3->8
<3!>4<3!>

<3->2 
<_><3!>
<3!\!>4.<3!>8 <6 4>4 <6\! 4\! 3->
<_>1
<_\!>2<_>4<_>

<2 3->4 <5/> <2 3>2
<5 4>4.<4>8 <5/>4<5/>
<_>2 <3!>4. <6 3>8
<3!>4<3!> <6 4/ 3>2

<6 4/ 3>4 <6\!>8 <6> <3!>2
<_>4.<_>8 <6 4/ 3>2 
<6 4/ 3>4 <6\!>8<6> <3!>4 <3!>
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
 piece = "[7.] Gavotte"
 }
}