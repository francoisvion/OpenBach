\language "deutsch"

%%Vivement

global = {
  \key g \minor
  \time 4/4
  \partial 16
 
}

violinI = \relative c'' {
  \global
  % Poniżej wpisz nuty.
 \tempo Gracieusement
c16
\repeat volta 2 {
c8. h16 c d es f d8\prall g g8.\prall f16
g4 r16 g c b as g f es d8.\prall c16
c \breathe h c d es f g as b8 b f16 es f g
as8 as es16 d es f \stemDown\grace f8^( g8.)\mordent as16 g8.(\prall f16)
f8\breathe b16 as g f es d c8 c'16 [b] as g f es
d8\prall \stemDown\grace c^( b) es8.( es16) f8( g16) as f8. es16 }

\alternative {
{es2\fermata r4 r8. c16 }
{es2\fermata}
}


r8. g16 g4( ~
\repeat volta 2 {

  g8. f16) f8 g16 f es8 ~ es32 es( f g f8.\prall) es16
d8.\prall b'16 b8. a16 g8.(\prall a16 a8. g16)
fis8.\prall e16 d c b\prall a b c d es a,8.\prall g16
g4. r16 as as4. b16 f
g8. g'16 g8( f16\prall) es f8. f16 f8 g16 d
e8\prall \stemDown\grace d^( c) f8. es16 d8.\prall d16 d8 es 
\stemDown\grace d^( c4) c'8. c16 b4.\prall c16 g 
as4. b16 f g8. g16 as g f es
d4\prall r8 g16. g32 g4 r8 f16.\prall f32 
f4 r8 es16. es32 es8.\mordent d16 d8.\prall c16 }
\alternative {
{c2\fermata r8. g'16 g4 ~  }
{c,4}
}
r8 g'16. g32 g4 r8 f16.\prall f32 
f4 r8 es16. es32 es8.\mordent d16 d8.\prall c16
c2\fermata
\bar "|."
}

violinII = \relative c'' {
  \global
  % Poniżej wpisz nuty.
es,16 
es8. d16 es f g a \grace a8_( b8)\mordent \grace a_( g) c8.\mordent d16
h\prall d g f es d c c f es d c h8.\prall c16
c\breathe g a h c d es f g8 g d16\prall c d es
f8 f c16 b c d es8 f b, es
d4\prall r8 g c16 b as g f es d c
f8 d\prall g8.( as32 b) d,8 es d8.\prall es16
es2 r4 r8. es,16

es2 r8. es'16 es4( ~
es8. d16) d8 es16 d c8[ \stemDown\grace {c[^( d]} es]) d8.\prall c16
h8\prall r r16 d g f es8 d c8.\prall h16
a8\prall d16 e fis8 g16 a d,8 g fis8.\prall g16
g8 r16 es es4 ~ es8. d16 d4 ~
d c ~ c8 d16 a \stemDown\grace a8^( b4)\mordent ~
b8 c16 g as4\mordent ~ as8 g16 f \grace f8( g4\mordent) ~
g8 as16 g f8 f' ~ f g16 d e4\prall
r8 f16 c d4\prall r8 es16 d c es d c
h4\prall r8 es16. es32 es4 r8 d16.\prall d32
d4 r8 c16. c32 c8. h16 h8.\prall c16
c2\fermata r8. es16 es4

c4 r8 es16. es32 es4 r8 d16.\prall d32
d4 r8 c16. c32 c8. h16 h8.\prall c16
c2\fermata



}

cello = \relative c {
  \global
  % Poniżej wpisz nuty.
r16
c4 c' b as\prall
g8. g16 c b as g f g as f g8 g,
c4. c'8 g16 f g as b8 b
f16 es f g as8( g16\prall) f es8 d\prall es es,
b''16 as g f es d c b as4 as'~
as g8. g16 as8 es b' b, 
es8. d16 \afterGrace es8( {\stemDown f} \afterGrace f\prall {\stemDown es8[ f])} g( f16\prall) es f8 g

es8. b16 g8\prall^\markup \musicglyph #"accidentals.flat"  b es,4 r8. b''16
b4. g16 g as8 es16 f \afterGrace f4\prall( {\stemDown es8[ f)]} 
g8 r r16 g a b c8 d es c
d16 a d c b a g fis g8 b,16 c d8 d,
g4 g' f f,
es es' d g
c, c' h\prall b
a\prall as g\prall c
f, b es,8. as16 f g as f 
g8 \clef tenor g'16[ f] es8 es, f f'16 g as8 f,
g16 g' a h c8 \clef bass c,, as'16 g f8 g g, 

c16\fermata g a h c h c d es4 r8. b'16

c,8 \clef tenor c'16 d es8 es, f f'16 g as8 as,
g16 g' a h c8 \clef bass c,, as'16 g f8 g g,
c2
 
}

bcMusic = \relative c {
  \global
r16
c4 c' b as
g8. g16 c b as g f g as f g8 g,
c4. c'8 g16 f g as b8 b
f16 es f g as8 g16 f es8 d es es,
b''16 as g f es d c b as4 as'~
as g8. g16 as8 es b' b, 
es8. d16 es8 \afterGrace f8_\prall( { \stemDown es16[ f])} g8 f16 es f8 g

es8. b16 g8 b es,4 r8. b''16
b4. g16 g as8 es16( f \afterGrace f4_\prall {\stemDown es8[ f])}
g8 r r16 g a b c8 d es c
d16 a d c b a g fis g8 b,16 c d8 d,
g4 g' f f,
es es' d g
c, c' h_\prall b
a_\prall as g c
f, b es,8. es16 f g as f 
g8 \clef tenor g'16[ f] es8 es, f f'16 g as8 f,
g16 g' a h c8 \clef bass c,, as'16 g f8 g g, 

c16\fermata g a h c h c d es4 r8. b'16

c,8 \clef tenor c'16 d es8 es, f f'16 g as8 as,
g16 g' a h c8 \clef bass c,, as'16 g f8 g g,
c2


 
 
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  % Poniżej wpisz cyfowanie basu.
  <_>16 <_>2 <6>4 <7>8 <6> <3!>2
  <6 5 3->4 <3!>
  <_>2 <6>
  <3->2 <_>8 <5/> <_>4
  <_>2 <7>4 <6 5> <4/> <6> <4/>2
  <_>4 <6> <3!>2
  
  <_>2. <_>8.  \bassFigureExtendersOn <6 4>16 <6 4>4 \bassFigureExtendersOff
  <3>8 <6>4 <6>8 <6 5 3->4 <3!> <3-> <7> <6 4/ 3>
  <3!>\bassFigureExtendersOn<6>4.<6>8\bassFigureExtendersOff<3+>4
  <_>4<6 4><7><6 4>
  <7 5!><6><7 5/><7 3->
  <7 3!><6- 4><7/><6>
  <7><6><7><7 3!>
  <3-><7-><7>8<6><6 5 3->4
  \bassFigureExtendersOn<3!>8.<3!>16\bassFigureExtendersOff<6>4
  <7 3- 2><6>
  <7 3!><_>2<3!>4 
  <_>1
  <_>4<6><7 3- 2><6>
  <7 3!><_>2<3!>4
  
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
 piece = "[2.] Allemande"
 }

}