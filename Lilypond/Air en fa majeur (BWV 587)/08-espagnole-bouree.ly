\version "2.18.0"
\language "deutsch"



global = {
  \key g \minor
  \time 2/2
  \partial 4
  \tempo "Gayëment"
 
}

violinI = \relative c''' {
  \global
  % Poniżej wpisz nuty.
\repeat volta 2
{

g4

g( f8)\prall es f4 es8 d
es8 f es d c4 g'
c4 a4\prall \stemDown\appoggiatura a8 b4.\mordent c8
a2\prall g4 } \break
\repeat volta 2
{
b4

b4( as8\prall) g as!4 as
as( g8)\prall f g4 g
g( f8)\prall es as4 g
f8\prall es f g f4 b

b4( as8\prall) g as4 as
as4( g8)\prall f g4. g8
g4. f8 f4.\prall es8
es2. \breathe g4

g4( f8)\prall es f4 f
f4 es8 d es4 es
es4 f8 g as g f es
d\prall c d es d4 \breathe g

g4( f8)\prall es f4 f
f4 es8 d es4. es8
es4. d8 d4.\prall c8
c2.
}
}

violinII =  \relative c'' {
  \global
  % Poniżej wpisz nuty.
es4
es( d8)\prall c d4( c8)\prall h
c4 g c, \breathe e'
a fis\prall \stemDown\appoggiatura fis8 g4.\mordent a8
\afterGrace fis2(\prall{\stemDown e8[ fis)]} g4  

g4 

g4( f8)\prall e f4 \breathe f
f4( es8)\prall d es4 \breathe es
es4 d8( c) d4 es
d8\prall c d es d4 \breathe b

c2. c4
d2 es4. es8
es4. d8 d4.\prall es8
es2. \breathe es4

es4 d8 c d4 d
d4 c8 h c4 \breathe c
c4 d8 es f es d c
h\prall a h! c h!4 \breathe g

a2. a4
h2\prall c4. c8
c4. h8 h4.\prall c8
c2.
}

cello =  \relative c' {
  \global
  % Poniżej wpisz nuty.
  
c4
c2 f,4 g
c,8 h' c d es d c b
a4 d g, c,
d2 g4

g4 
c4 c, f f 
b b, es es
as g f\prall es
b'2 b4 \breathe g

as2. f4
b8 as g f es d c b
as8 b c as! b2
es2 es,4 \breathe es'

as2. d,4
g2 c,4 c'8 b
as b as! g f g as! f
g2 g4 \breathe es

f2 f4 d 
g2 c,
f, g
c2.

}



bcMusic = \relative c' {
  \global
c4
c2 f,4 g
c,2 c,4 c''8 b
a4 d g, c,
d2 g4

g4 
c4 c, f f 
b b, es es
as g f es
b'2 b4 \breathe g

as2. f4
b2 es,
as, b
es2 es,4 \breathe es'

as2. d,4
g2 c,4 c'8 b
as b as! g f g as! f
g2 g4 \breathe es

f2 f4 d 
g2 c,
f, g
c2 c,4 
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
%  \override Staff.BassFigureAlignmentPositioning #'staff-padding = #5
  % Poniżej wpisz cyfowanie basu.
\bassFigureExtendersOn
<_>4
<_\!>2 <6 5 3->4 <3!>
<_>2. <3!>8<3!>
<5!>4 <3+> <_> <6 5>
<3+>2 <3!>4

<3->
<7- 3!><7- 3!><3-><3->
<7><7><_>2
<2>4<2><6 4 3->2
<_>2. <6>4

<7 3 2>2<6 3>4<3>
<7>2 <_>
<7 5 2><_>
<_\!>1

<7>2 <6>4<6>
<7 3!>2<_>
<_\!>2 <6 5 3->4.<6 5 3->8
<3!>2 <_>4 <6>

<2 7 3>2 <6>4<6>
<7 3!>2 <_>
<7 5 2><3!>



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
 piece = "[9.] Bourée"
 }
}