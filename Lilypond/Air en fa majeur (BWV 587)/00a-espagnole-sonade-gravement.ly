
\language "deutsch"


global = {
  \key g \minor
  \time 4/4
 
}

violinI = \relative c'' {
  \global
  % Poniżej wpisz nuty.

   
   \tempo "Gravement, et mesuré"
  r4  
   
   g' f\prall g \stemDown \grace f8_\(es4\) es d\prall es  \stemDown \grace d8 (c4) 
   \breathe
   g' as g f\prall es d\prall \stemDown\grace d8_\( \stemNeutral es4\) \stemDown\grace d8_\( \stemNeutral c4\) 
   r4 r2
   r4 b as\prall b 
   \once \override TextScript #'script-priority = #-100
   g^\prall^\markup {\flat} 
   g f\prall g \grace f8 (es4) g' f\prall g \stemDown \grace f8 (es2) \afterGrace e2 ({\stemDown d8 [e)]} f4
   \breathe
   as g as f \prall f e f d2 \prall r g r 
   r4 g f as d, es d4.\prall c8 c4 r4 r2 r4^\markup "doux" g' f \stemDown \grace {f16 ([g]} as4) d, es d4. c8 c4 r8 r16
   es,^\markup "fort et très lentement" f4 g g2 (f4.\prall)g8 g2 \bar "||"

}

violinII = \relative c'' {
  \global
  % Poniżej wpisz nuty.
   r4 es d\prall d~ d c2 h4 \stemDown \grace h8 (c4\mordent) es d es h c2 \afterGrace  h4\prall ({\stemDown a8 [h)]} c4 r4 r2
   \stemNeutral
   r4 g f \prall f4~ f es2 (d4 \prall) \grace d8 (es4 \mordent)
   \breathe es' d \prall es \stemDown\grace d8 (c4) c b \prall c \grace h8 (as4)
   \breathe f' es f d\prall  d c d h2\prall r es r 
   r4 es d f h, c h4. c8 c4 r r2 r4 es d\prall \stemDown\grace {d16 ([es]}  \stemNeutral f4) h, c h4.\prall c8 c4
   r8 r16 c, as4 g c4. d16 es d4. c8 h2
}

cello = \relative c {
  \global
  % Poniżej wpisz nuty.
    \clef bass \stemNeutral
    c4 c'2 h4c es, f g as \breathe es f g as f g g, c
  \clef alto g'' f\prall g \stemDown \grace f8 (es2.) d4\prall es g, as b es, r4 r2
  \clef bass  r4 as g as \stemDown \grace g8 (f1)~ f g4 \breathe g f g \stemDown\grace f8 (es4) \breathe c' b c f,1~f4 es8 f g4 g,
  c \breathe c' b c \stemDown \grace g8 (f1)~ f4 es8 f g4 g, c r8 r16 c c4 b as2~ as\prall  g2
}

bcMusic = \relative c {
  \global
   \clef bass \stemNeutral
    c4 c'2 h4c es, f g a es f g as f g g, c
  \clef alto g'' f g \stemDown \grace f8 (es2.) d4 es g, as b es, r4 r2
  \clef bass  r4 as g as \stemDown \grace g8 (f1)~ f g4 g f g \stemDown\grace f8 (es4) \breathe c' b c f,1~f4 es8 f g4 g,
  c \breathe c' b c \stemDown \grace g8 (f1)~ f4 es8 f g4 g, c r8 r16 c c4 b as2 ( \afterGrace as2 _\prall {g8 [as)]}  g2 
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  % Poniżej wpisz cyfowanie basu.
   \bassFigureExtendersOff
    
    <_>4 <_> <4> <5/> <2> <6> <3- 6 5> <6 5!> <5> <6> <6 5 3-> <6 4> <4/ 2/> <5 7 2> <5 4> <6 3!> <_> <6>
    <7 3-> <5> <_>2 <2>4 <5/> <2> <6> <6 5> <6 3> <_>1 <_>4 <5> 
\bassFigureExtendersOn
 <6!><6!>
 <3->1 <6 3-> <3!>2. <3!>4 <6>2. <6>4
 <3- 7 2>2 <3- 6 5> <4/>4 <6>8 <6> <_ 3!>4 <7 3!>
<_>2. <_>4  
<3- 7 2>2 <3- 6 5> <4/>4 <6>8 <6> <_ 3!>4 <7 3!>
<_>2 <2>4 <6> <7>2 <6> <3!>

}

violinIPart = \new Staff \with {
  instrumentName = \markup \right-column {Premier Dessus}
} \violinI

violinIIPart = \new Staff \with {
  instrumentName = \markup \right-column {Second Dessus}
} \violinII

celloPart = \new Staff \with {
  instrumentName = \markup \right-column {Basse d'archet}
} { \clef bass \cello }

bassoContinuoPart = \new Staff \with {
  instrumentName = \markup \right-column {Basse chifrée}
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
    piece = "[1.] L'Espagnole"
 title = "L'Espagnole"
 composer = "François Couperin"
}
}




