\version "2.18.0"
\language "deutsch"



global = {
  \key g \minor
  \time 2/2
  \partial 4
 
}

violinI =  \relative c''' {
  \global
  % Poniżej wpisz nuty.
\repeat volta 2 {
g4
g8 f g es f es f d
es f es d c g' a b
c b c a b4. c8
a2\prall g4
} \break
\repeat volta 2 {
b4
b8 as b g as! g as! b
as g as! f g f g as!
g f g es as b g as!
f\prall es f g f4 \breathe b

b8 as b g as!4 as!
as8 g as f g4. g8
g4. f8 f4.\prall es8
es2. \breathe g4

g8 f g es f4 f
f8 es f d es4 es
es8 g f g as g f es
d\prall c d es d4 \prall g

g8 f g es f es f g
f es f d es4. es8
es4. d8 d4.\prall c8
c2.

}
}

violinII =  \relative c'' {
  \global
  % Poniżej wpisz nuty.
es4
es8 d es c d c d h
c4 g c,8 e' fis g
a g a fis g4. a8
fis4.\prall e16( fis) g4

g4
g8 f g e f e! f g
f es! f d es d es f
es d es c d4 es
d8\prall c d es d b c des

c2\prall r8 c d! es
d\prall b c d es4. es8
es4. d8 d4.\prall es8
es2. \breathe es4

es8 d es c d4 d
d8 c d h c4 c
c8 es d es f es d c
h\prall a h c h \breathe g a b

a\prall g a b a a h c
h\prall g a h! c4. c8
c4. h8 h4.\prall c8
c2.
}

cello =  \relative c' {
  \global
  % Poniżej wpisz nuty.
c4
c2 f,4 g
c,2 ~ c8 d' c b
a4 d g, c,
d2 g,4

g'4
c4 c, f f
b b, es es
as g f\prall es
b'2 b,4 g'
as2 as,4 f'

b8 as g f es d c b 
as b c as b2
es,8 b' c d es es f g
as2 as,8 d es f

g8 f es d c d' c b
as b as! g f g as! f
g4 g, g'8 es f g
f4 f, f' d

g8 f es d c b as g 
f g as f g2
c2 c,4

}



bcMusic = \relative c' {
  \global
c4
c2 f,4 g
c,2 ~ c8 d' c b
a4 d g, c,
d2 g,4

g'4
c4 c, f f
b b, es es
as g f es
b'2 b,4 g'
as2 as,4 f'

b8 as g f es d c b 
as b c as b2
es,8 b' c d es es f g
as2 as,8 d[ es f]

g8 f es d c d' c b
as b as! g f g as! f
g4 g, g'8 es f g
f4 f, f' d

g8 f es d c b as g 
f g as f g2
c2 c,4 
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
%  \override Staff.BassFigureAlignmentPositioning #'staff-padding = #5
  \bassFigureExtendersOn
  % Poniżej wpisz cyfowanie basu.
  
<_>4
<_\!>2 <6 5 3->4 <3!>
<_>1
<5!>4 <7 3+> <_> <6 5>
<3+>2<3->4

<3-\!>
<7 3!><7 3!><3-><3->
<7-><7-><_>2
<2>4<2><6 4 3-><_>
<_\!>2.<6>4

<7 2 3>2<6>4<3->
<7->4.<7->8<_>2
<7 5 2>4.<7 5 2>8 <_>2
<_\!>1

<7>2 <6>4.<6>8
<7 3!>4.<7 3!>8<_>4.<_>8
<_\!>2 <6 5 3->4.<6 5 3->8
<3!>4<3!><_>8<6>4<6>8

<2 7 3!>4<2 7 3!>4<6><6>
<7 3!>4.<7 3!>8<_>2
<7 5 2>4.<7 5 2>8<3!>2

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
 piece = "[10.] Double de la Bourée précédente"
 }
}