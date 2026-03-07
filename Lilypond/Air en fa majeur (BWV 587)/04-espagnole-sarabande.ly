\language "deutsch"



global = {
  \key g \minor
  \time 3/4
  
 
}

violinI = \relative c'' {
  \global
  % Poniżej wpisz nuty.
  \tempo "Gravement"
\repeat volta 2 {
  
g8. a16 \grace {\stemDown a8^(} b4.\mordent) c8
a4.\prall d8 h4\prall 
c4 \grace {\stemDown c8^(} d4.)\mordent es8
d2\prall c4 \breathe
es8. d16 c4 f8. es16 

d8.\prall c16 b4 es~
es8. f,16 f4.\prall es8 |

} 
\alternative {{es2.^\fermata }{ es2.^\fermata } }

\bar ".|:"
b'8. b16 es4. d8
c\prall b c d es c

f4 c4. r16 d
c2\prall b4 \breathe
b'8. d,16 \grace {\stemDown d8^(} es4)\mordent c'8. e,16 
\grace {\stemDown e8^(} fis4)\mordent \grace {\stemDown e8^(} d4) g4~
g8. a16 fis4.\prall g8

g2 r4
g8. as16 \grace {\stemDown as8^(} b4)\mordent g\prall
\grace {\stemDown g8^(} as4.)\mordent g8 f4
es d4.\prall c8
h4.\prall a8( g4) \prall

g8. a16 \grace {\stemDown a8^(} b4.)\mordent c8
a4.\prall d8 h4\prall 
c4 \grace {\stemDown c8^(} d4.)\mordent es8
d2\prall c4 \bar ":|."

}

violinII = \relative c' {
  \global
  % Poniżej wpisz nuty.

e8. f16 \grace {f8^(} g4.\mordent) g8
c,4.\prall f8 d4\prall 
g8 a \grace {\stemDown a8^(} h4.\mordent) c8
h2\mordent c4 \breathe
c8. b16 as8. g16 f4

b8. as16 g8. f16 es8. d16
c8. d16( d4.)\prall es8
es2.\fermata
es2.\fermata

g8. g16 c4. b8
a\prall g a b c a

d4( a4.) r16 b
a2\prall b4\breathe
d4. d8 c4
c4.\mordent d8 b4\prall ~
b8 a a4. g8

g2 r4
e'8. f16 \grace {\stemDown f8^(} g4\mordent) e\prall
\grace {\stemDown e8^(} f4.\mordent) g8 as4
g f4.\prall es8
d4.\prall c8( h4)

r4 g4. g8
c,4 f d\prall 
g8. a16 \grace {\stemDown a8^(} h4.\mordent) c8
\afterGrace h2\prall( {\stemDown a8[ h)]} c4


}

cello = \relative c' {
  \global
  % Poniżej wpisz nuty.
c4 e,4.\prall e8
f8 es d4 g8 f
es4 d\prall c
g' g, c

\clef alto c' f8. [es16 d8.\prall c16]
b4 es8. [d16 c8. b16]
\clef bass as4 b b,
es4\fermata es'8.[ f16 es8. d16]

es4\fermata r8. b16[ c8. d16]
\clef alto es8 d c d es c
f2 es4
d \stemDown\grace d8^( es4.\prall) r16 b
f'4 f, b8 a

\clef bass g4 c8 b a4
\stemDown\grace {a8([ b]} b4.\prall) a8 g4
c,^\prall^\turn d d,
g8. g'32 a h4.\prall( a16 g)
c2 c,4

f4. e8 f4
g4 as f 
g g, g'8 f
e2\prall r8 c

es!4 d g8 f
es4 d\prall c
g2 c4

}


bcMusic = \relative c' {
  \global
c4 e,4._\prall e8
f8 es d4 g8 f
es4 d_\prall c
g' g, c

\clef alto c' f8. [es16 d8._\prall c16]
b4 es8. [d16 c8. b16]
\clef bass as4 b b,
es4_\fermata es'8.[ f16 es8._\prall d16]

es4_\fermata r8. b16[ c8. d16]
\clef alto es8 d c d es c
f2 es4
d \stemDown\grace d8^( es4.) r16 b
f'4 f, b8 a

\clef bass g4 c8 b a4
\stemDown\grace {a8([ b]} b4._\prall) a8 g4
c, d d,
g8. g'32 a h4._\prall( a16 g)
c2 c,4

f4. e8 f4
g4 as f 
g g, g'8 f
e2._\prall

es!4 d g8 f
es4 d_\prall c
g2 c4

 
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  % Poniżej wpisz cyfowanie basu.
  
  \bassFigureExtendersOn
  
<3!>4 <5/>2 
<_>2 <3!>4
<6> <6!> <_>
<3!> <_\!> <_\!>

<_\!> <3-\!> <_>
<_\!>2.

<6 5>4 <_> <_\!>
<_\!>2.
<_\!>2.
 
<_\!>


<_\!>4 <_> <_>

<6> <4/> <_>
<_\!>2.

<_>4 <3 2> <5!> <5+ 2>4. <5+ 2>8 <_>4
<_\!>4 <3+> <3+>
<3!>2.
<3!\!>2 <3!>4

<3->2 <3->4
<6 4> <4/ 3> <4/ 3>
<3+>2 <3+>8 <3+>8
<6>4 <5/>2

<4/>4 <7> <3!>8<3!>
<6>4 <6!><_>
<3!>2 <_>4

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
 piece = "[5.] Sarabande"
 }
}