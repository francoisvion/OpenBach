\version "2.18.0"
\language "deutsch"



global = {
  \key g \minor
  \time 6/4
  \partial 2.
  \tempo afectuësement
 
}

violinI =  \relative c''' {
  \global
  % Poniżej wpisz nuty.
  g2^\markup {\musicglyph #"scripts.segno"} f4
es2\prall d4 \stemDown\appoggiatura d8 es2\mordent f4
\stemDown\appoggiatura f8 g2\mordent r4 g, a b
a h c c4. d8 h4\mordent
\stemDown\appoggiatura h8 c2\mordent g4 \breathe g'2 f4

es2\prall d4 \stemDown\appoggiatura d8 es2\mordent f4
\stemDown\appoggiatura f8 g2\mordent r4 g, a b
a h c c4. d8 h4\prall
\stemDown\appoggiatura h8 c2.\mordent^\fermata
_\markup \italic "fin"

\bar ":..:" \break

es2^\markup {\italic {"1" \super "er" Couplet}} d4
c2\prall c4 f4. es8 f4
d2\prall d4 es4. f8 g4
c,4 d es es4. f8 d4\prall
\stemDown\appoggiatura d8 es2.\mordent \breathe g2 (f4\prall )
\stemDown\appoggiatura f8 g2\mordent (f4) \stemDown\appoggiatura f8 g4.\mordent as8 g4

f2. \breathe f4. es8 d4
\stemDown\appoggiatura d8 es4.\mordent f8 g4 c,4. h8 c4
h2\prall \appoggiatura a8 g4^\markup {\hspace #5 \musicglyph #"scripts.segno"} 

\bar ":..:" 
\break

es'2^\markup {\italic {"2" \super "e" Couplet}} es4
e4.( d16 e) f4 f4. g8 e4\prall
\stemDown\appoggiatura e8 f2.\mordent \breathe c4. c8 f4
d4.\prall es8 f4 es4. f8 d4
c2\prall b4 b'2( a4)\prall
\stemDown\appoggiatura a8 b2(\mordent a4)\prall \stemDown\appoggiatura a8 b4.\mordent a8 g4
fis2.\prall \breathe d4 es f
e? fis g g4. a8 fis4
\stemDown\appoggiatura fis8 g2.\mordent s^\markup {\musicglyph #"scripts.segno"} 
\bar ":..:" 
 \stemDown\appoggiatura h,8
^\markup {\italic {"3" \super "e" Couplet}}
_\markup {\italic fin} c4\fermata r8 es d c b c b as g  f  
es8 d es f g as f es f g as b
g2\prall \appoggiatura f8 es4 g'8 f g as f as
g f g as f as g8.( a16 a4.\prall g16 a)
\stemDown\appoggiatura a8 b2.\mordent \breathe f8 e f g f g
\stemDown\appoggiatura g8 as2.\mordent \breathe as,8 b g as b c
as2\prall \appoggiatura g8 f4 \breathe as'8 g f g as! f 
g f es f g es f es d es f d



es  d es( g) \mark \markup { \abs-fontsize #10 {\bold {Rondeau} jusqu'au mots \italic {fin}}}  f( as)  \bar ":|." 
\mark \markup {\musicglyph #"scripts.segno"}
}

violinII =  \relative c'' {
  \global
  % Poniżej wpisz nuty.
es2 d4
c2\prall h4 \appoggiatura h8 c2\mordent d4
h2\prall r4 e, f g
c, d es es4. f8 d4\prall
\appoggiatura d8 es2 \appoggiatura d8 c4 \breathe es'2 d4

c2\prall h4 \appoggiatura h8 c2\mordent d4 
h2\prall r4 e, f g
c, d es es4. f8 d4\prall
c2.\fermata

c'2 b4
a2 a4 b2 c4
f,2 f4 \breathe g4. as8 b4
es, f g g4. as8 f4\prall
es2. \breathe es'2( d4\prall)

\appoggiatura d8 es2\mordent (d4)\prall \appoggiatura d8 es4. f8 es4
d2.\prall \breathe d2 d4
g,2 g4 g2( f4\prall)
\appoggiatura f8 g2\mordent g4

g2 g4
g2 c4 \appoggiatura c8 des4.\mordent des8 g,4\prall^\markup {\flat}
\appoggiatura g8 as2\mordent \appoggiatura g8 f4 a4. a8 d4
b4.\prall c8 d4 g,4. a8 b4
a2\prall b4 \breathe d2( c4)

\appoggiatura c8 d2\mordent c4 d4. c8 b4
a2.\prall \breathe h4 c d
g, a b b4. c8 a4
g2. s

c,4 \fermata _\markup {\italic fin} r8 c'8 b as g as g f es d
c b c d es c d c d es f d
\appoggiatura d8 es2 b4 \breathe es'8 d es f d f
es d es f d f es f es d c f
d2.\mordent \breathe d8 c d es d e

\stemDown\appoggiatura e8 f2.\mordent f,8 g e f g e
\appoggiatura e8 f2\mordent c4 r c' d ~
d g, c ~ c a h\prall
c8 h c( es) d( f)

}

cello =  \relative c' {
  \global
  % Poniżej wpisz nuty.
   c2 h4\prall
   c2 g4 c b\prall as
   g2 r4 c f, e\prall
   f2 c4 g'2 g,4
   c2 c4 \breathe c'2 h4\prall
   
   c2 g4 c b\prall as
   g2 r4 c f, e\prall
   f2 c4 g'2 g,4
   c2.
   
   \clef alto c'2 c4
   f4. es8 f4 d2\prall a4
   b4. as8 b4 g2 g4
   \clef bass as2 es4 b'2 b,4
   es2. \breathe es'2 b4
   
   es2 b4 es2 es,4
   b'2. \breathe h4.\prall a8 h!4
   c2 b4 as4.\prall g8 as4
   g2 g4
   
   c2 g4
   b4. c8 as4 b4. b8 c4
   f,2. \clef alto f'4. f8 d4
   g4. g8 d4 es4. es8 b4
   f'2 b,4 \clef bass b2 f4
   
   b2 f4 b4. b8 c4
   \appoggiatura c8 d2.\mordent \clef alto g4 c, h\mordent
   c2 g4 d'2 d,4
   g2. s2 s8. \clef bass s16
   
   c,4\fermata_\markup {\italic fin} \breathe c' d es2 g,4
   as2 es4 b'2 b,4
   es4 b g es2 \breathe b''4
   es2 b4 es c f 
   
   b,8 f d f b,4 \clef alto b'' as\prall g
   f8 c as c f,4 \clef bass f c' c,
   f c as f2 \breathe f'4 
   es es, es' d d, g
   c,2.
}



bcMusic = \relative c' {
  \global
   c2( h4)_\prall
   c2 g4 c b_\prall as
   g2 r4 c f, e_\prall
   f2 c4 g'2 g,4
   c2 c,4 \breathe c''2( h4)_\prall
   
   c2 g4 c b_\prall as
   g2 r4 c f, e_\prall
   f2 c4 g'2 g,4
   c2.
   
   \clef alto c'2 c4
   f4. es8 f4 d2_\prall a4
   b4. as8 b4 g2 g4
   \clef bass as2 es4 b'2 b,4
   es2 es,4 \breathe es''2 b4
   
   es2 b4 es2 es,4
   b'2. \breathe h4.\prall a8 h!4
   c2 b4 as4._\prall g8 as4
   g2 g,4
   
   c'2 g4
   b4. c8 as4 b4. b8 c4
   f,2 f,4 \clef alto f''4. f8 d4
   g4. g8 d4 es4. es8 b4
   f'2 b,4 \clef bass b2 f4
   
   b2 f4 b4. b8 c4
   d2. \clef alto g4 c, h_\prall
   c2 g4 d'2 d,4
   g2. s2 s8. \clef bass s16
   
    c,4\fermata_\markup {\italic fin} \breathe c' d es2 g,4
   as2 es4 b'2 b,4
   es4 b g es2 \breathe b''4
   es2 b4 es c f 
   
   b,2 b,4 \clef alto b'' as_\prall g
   f2 f,4 \clef bass f c' c,
   f c as f2 \breathe f'4 
   es es, es' d d, g
   c,2.
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
%  \override Staff.BassFigureAlignmentPositioning #'staff-padding = #5
  \bassFigureExtendersOn
  % Poniżej wpisz cyfowanie basu.
<_>2 <5/>4
<_>2<3!>4 <_><_><6>
<3!>2.<3->2<5/>4
<3><4><_><4>2<3!>4
<_>2. <_\!>2 <5/>4

<_>2<3!>4 <_><_><6>
<3!>2.<3->2<5/>4
<3><4><_><4>2<3!>4
<_>2. <_\!>2.

<_\!>2. <6>2 <5/>4
<_>2. <6>
<3>4<4><_>
<5 4>2 <3>4

<_>1.*3

<_\!>2<6>4
<7>4.<7>8<6>4
<3!>2<3!>4 

<_>2.
<4/>4.<4/>8 <6>4 <5 3->2 <3!>4
<3->2. <3!>
<_>2<6>4<_>4.<4/>8<_>4
<_\!>1.

<_\!>2. <_\!>4. <6>8<6>4
<3+>2. <3!>4 <3!\!> <5/>
<3!> <4/> <_> <4>2 <3+>4
<3!>1.

<_>2 <5/>4 <_>2 <6>4
<_>2. <7->2<7->4
<_>2.<_>2. 
<_\!>1 <6>4 <_>

<_\!>2. <_\!>4 <_> <6>
<3->2<3->4 <3-\!> <3!> <7 3!>
<3->2. <3->2 <6 3->4
<7><6><6><7><7><7\! 3!>

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
 piece = "[8.] Rondeau"
 }
}