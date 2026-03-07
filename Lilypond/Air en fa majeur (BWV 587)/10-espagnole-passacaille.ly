\version "2.18.0"
\language "deutsch"



global = {
  \key g \minor
  \time 3/4
  \partial 4.
  \tempo "Noblement, et marqué"
 
}

violinI =  \relative c'' {
  \global
  % Poniżej wpisz nuty.
  
  
\repeat unfold 2 {
g8[ c8. d16]
es4\prall d4.( c16 h)
\stemDown \appoggiatura h8 c4.\mordent d8 es f
g4 f4.(\prall es16 d)
\stemDown \appoggiatura d8 es4\mordent \stemDown \appoggiatura d8 c8 \breathe }

\repeat unfold 2 {
g'8 f\prall e
f4 g as
d,2\prall g4
(f8)\prall es d4.\prall c8
c4. \breathe }

c8[ g'8. as16]
b4 as4\prall (g8) as!
g2\prall ~ g8. g16
as8 g f es d c
h4\prall \appoggiatura a8 g8

c8[ g'8. as16]
b4 as\prall (g8) as! 
g2.\prall \breathe
d8. es16 d4.. c16
c4. 

\repeat unfold 2 {
  
s32 g'( as b) as!4 ~
as4. s32 f( g as) g4 ~
g4. s32 es( f g) f4 ~
}
\alternative {
{ f8 es d es f d | \stemDown \appoggiatura d8 es4\mordent \stemDown \appoggiatura d8 c8}
{ f8 g16 es d4..\prall c16 | c4.}
}

\repeat unfold 2 {
es8 d es
c4\prall  \appoggiatura b8 a8 \breathe f' es f
d4\prall \stemDown \appoggiatura c8 h8 \breathe g' f g
}
\alternative {
{ \stemDown \appoggiatura f8 es4 f d | \stemDown \appoggiatura d8 es4 \stemDown \appoggiatura d8  c8 \breathe }
{  es8. f16 d4. c8 | c4. \breathe }
}


c'8_\markup {\italic doux} b\prall as
\break
b4 c8 b as\prall g
\stemDown \appoggiatura g8 as2\mordent 

r8 h,
c d es f d4\prall
f( es\prall) d
g d es
h\prall c d
g,8 g' a h c4 ~

c8 a b4.( c16 b)
a4.( b16 a) g4 ~
g8 a16 g fis8\prall e d4
c8(\prall b) a4.\prall g8
g8.
\breathe
b'16 b2( ~
b8. as16) as2 ~
as4. b8 g4
g8 f f4.\prall es8 
es4 r r

r8 c d es f es
d\prall f es f g f
es4 as2~
as8 b16( as g2) \breathe

c,4 f2
d4\prall g2
f8\prall es d es f d
es\prall d c b as4~
as8 b16 as! g4 g'

c8 b as g f4 ~
f8 g16 f es4.( f16 es)
d8\prall es f es f d
es d es c f4
es d4.\prall( c16 h)
c8. f,16 g2
c, r4

g''8-._\markup {\italic {Vivement et fort}} g16-. g-. g8-. b-. es,-. b-.
d2\prall r4
as'8-. as16-. as-. as8-. c-. as-. f-.
g2 r4

f8 as16 g f8 f16 es d8 d16 c
h8\prall g a h c d
es8.( d16) c4.\prall d8 
h4. \prall r8 r4 

g'8-. g16-. g-. g8-. b-. es,-. b-.
d2\prall r4
as'8-. as16-. as-. as8-. c-. as-. f-.
g2 r4

f8 as16 g f8 f16 es d8 d16 c
h8\prall g a h c d
es8( d16\prall) c h4.\prall c8
c4 \breathe

g'2^\markup {\italic "doux"}
\grace {\stemDown f8([ g]} as4) g2\prall
\grace {\stemDown g8([ as]} b4 as!\prall) g
as4 g4.\prall f8
f4 \breathe


c'8 b as c
b2 ~ b8. as16
g8 b as2~
as8 g f as g\prall f

es [g f es d8.\prall] f16
g8.( as16 as4.\prall g16 as!)
b8[ c b as g8.] b16
as8 g f4.\prall es8
es4 \breathe

g8_\f f es g
f4 as8 g f as!
g4 b8 a! g b
a4 h c
h\prall \breathe

g8 f es g
f g f es d f
es d es f g4
f8 es d4. c8
c4 \breathe

g'2
f f4
es2 es4
d4 d4.(\prall c8)
c4 \breathe

c'2
b2 b4
as2 as8 g
f g f4.\prall es8
es8 \breathe

d es f g as
b4. b8 as g
f\prall e f g as b
c4. c8 b as

g b as2~
as8 d, g2~
g4 f4.\prall g8
g8 g, c4. h8

es4. d8 g4 ~
g8 f c' b as g
f es d4.\prall c8
c8 g' c b as g

f\prall f b as g f
es es as g f es
d\prall d g f es d
c c f es d c

b b'4 as g8~
g f4 es d8
es4 d4.\prall c8
c \breathe g'4 f es8~

es8 d4 c h8
c4 h4.\prall c8
c4 r r


r8 r16 c[ d8.^\markup {\italic doux}( es16) d8.( es16)]
d2.~
d8 r16 g[ as8. b16 as8. b16]
as4 g2~
g4 f4.\prall g8
g2 r8 r16 c,
d8. es16 d4\prall r8 r16 c

d8.[( es16)d8.( es16)d8.( es16)]
d8.[( es16)d8.( es16)d8.( es16)]

f4 f8( es) f( d)
\stemDown \appoggiatura d8 es4\mordent d4.\prall c8
c4 r r

r8 r16 c[ d8.( es32 d) d8.( es32 d])

d2. ~
d8 r16 g[ as8.( b16) as8.( b16)]
as4 g2~
g4 f4. g8
g2 r8 r16 c,
d8. es16 d4\prall r8 r16 c

d8.( es32 d) d8.( es32 d) d8.( es32 d)
d8.( es16) d8.( es16) d8.( es16)

\times 2/3 {f8( g f)} es8*2/3( f es) d( es d)
es8. f16 d4.\prall c8
c2.

\bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinII = {
  \global
  % Poniżej wpisz nuty.


\repeat unfold 2 {
r8 r4
R2.
r4 r8 g' c'' d''
\stemDown\appoggiatura d''8 es''4\mordent d''4.\prall( c''16 h')
\stemDown\appoggiatura h'8 c''4 \glissando c'8 } 
\breathe
\repeat unfold 2 {
es''8 d'' c'' 
d''4 e'' f''
h'2\prall es''4
(d''8\prall) c'' h'4.\prall c''8
c''4. \breathe }

c''8[ es''8. f''16]
d''4 \stemDown\appoggiatura { d''8 es''} f''4. f''8
b'4 es''8 f'' es'' d''
c'' g'' as'' g'' f'' es''
d''4 \stemDown\appoggiatura c''8 h'

c''8[ es''8. f''16]
d''4 \stemDown\appoggiatura { d''8 es''} f''4. f''8
b'4 es''2
h'8. c''16 h'4.\prall c''8
c''2

\repeat unfold 2 {
r8 s32 c''( d'' es'')
d''2 r8 s32 h'( c'' d'')
c''2 r8 s32 a'( h' c'')
}
\alternative {
{h'8 c'' h' c'' d'' h'
c''4 g'8 r }
{ h'8. c''16 h'4.\prall c''8
  c''4.
}
}

\repeat unfold 2 {
c''8 b' c''
as'4 \appoggiatura g'8 f'8 \breathe d'' c'' d''
h'4 \appoggiatura a'8 g'8 \breathe es'' d'' es''
}
\alternative {
{ 
\stemDown\appoggiatura d''8 c''4 d'' h'\prall
\stemDown\appoggiatura h'8 c''4.\mordent}
{
c''8. d''16 h'4.\prall c''8
c''4.
}
}
r8 r4

r4 r8 g'' f''\prall e''

f''4 g''8( f'') es''( d'')
es'' fis' g' a' b' c''
h'\prall g' g''4 f''
es'' h'\prall c''
g'2( f'4\prall)

es'4 r8 d'' e'' fis''
\stemDown\appoggiatura fis''8 g''4.\prall e''8 f''4~
f''8 g''16( f'' es''4.) f''16( es''
d''4.) c''8 b'4
a'8\prall g' fis'4.\prall g'8
g'8. \breathe

g''16 g''2~
g''8.( f''16) f''2~
f''4. d''8 \stemDown\appoggiatura d''8 es''4~
es''8 f'' d''4. es''8
es''8 \breathe

g'8 a' b' c'' b'
a'\prall c'' h' c'' d'' c''
h'\prall d'' c'' d'' es'' d''
c''4 f''2
f''8 g''16( f'' es''2) \breathe

a'4 d''2
h'4\prall es''2
d''8\prall c'' h' c'' d'' h'
c'' b' as' g' f' es'
d'4\prall g''8 f'' es'' d''
\afterGrace c''2\prall( {\stemDown h'8[ c'')]} d''8 c''
h'4\prall \breathe 

\afterGrace g''4( {\stemDown a''8)} \afterGrace a''4\prall( {\stemDown g''8[ a''])}
\stemDown \appoggiatura a''8 b''2\mordent h''4 ~
h''8 g'' c''' b'' as''4
g'' f''4.\prall g''8
f''16( es'') d''( c'') h'4.\prall c''8
c''2 r4

es''8-. es''16-. es''-. es''8-. b'-. g'-. g''-.
f''2 r4
c''8-. c''16-. c''-. f''8-. as''-. f''-. c''-.
es''2 r4
as'8 c''16 b' as'8 as'16 g' f'8 f'16 es' 
d'8\prall h' c'' d'' es'' f''

g''8. as''16 f''4. g''8 | 
g''4. r8 r4 

es''8-. es''16-. es''-. es''8-. b'-. g'-. g''-.
f''2 r4
c''8-. c''16-. c''-. f''8-. as''-. f''-. c''-.
es''2 r4
as'8 c''16 b' as'8 as'16 g' f'8 f'16 es' 
d'8\prall h' c'' d'' es'' f''

g''8. as''16 d''4.\prall c''8 | 
c''4 

\breathe

e''2
\appoggiatura {d''8 e''} f''4 e''2\prall
\stemDown\appoggiatura {es''8 f''} g''4( f''\prall) e''
f''4 e''4.\prall f''8 
f''4 \breathe 

as''2~
as''8 g'' f'' as'' g''4~
g''4. f''8 es'' g''
f''\prall es'' d'' f'' es'' d''
c''[ es'' d''\prall c'' b'8. d''16]

es''8.( f''16 f''4.\prall es''16 f'')
g''8[ as'' g'' f'' es''8. g''16]
f''8\prall es'' d''4.\prall es''8
es''4 \breathe

es''8 d'' c'' es''
d''4 f''8 es'' d'' f''
es''4 g''8 f'' e'' g''
f''2 es''4
d''4\prall \breathe

es''8 d'' c'' es''
d''\prall es'' d'' c'' h' d''
c'' h' c'' d'' es''4
d''8\prall c'' h'4.\prall c''8
c''4 \breathe

es''2~
es''4 d''2~
d''4 c''2~
c''4 b'2~
b'4 as'2~
as'4 g' g''~
g'' f''4.\prall es''8
d''8 es'' d''4.\prall es''8
es''8 \breathe

b' c'' d'' es'' f''
g''4. g''8 f'' es''
d''\prall c'' d'' e'' f'' g''
as''4. as''8 g'' f''
es''4. g''8 f'' es''
d''4.\prall f''8 es'' d''
c''8( d'' d''4.\prall c''8)

h'4.\prall g'8 d''4~
d''8 c'' f''4. es''8
as''4. g''8 f'' es'' 
d'' c'' h'4.(\prall a'16 h')
c''4 r8 

c''8 f'' es''
d''\prall[ c'' b'8. b'16] es''8. d''16
c''8.[ c''16 d''8 es'' f'' g'']
h'4 r8 g' c'' b'
as'\prall[ g' f' f' b'8. as'16]
g'8\prall 

g''4 f'' es''8~
es'' d''4 c'' h'8
c''4 h'4.\prall c''8
c''8 b'4 as' g'8~
g' f'4 es' d'8
es'4 d'4.\prall c'8
c'8.

\breathe

h'16[ c''8.( d''16) c''8.( d''16)]
c''2.
h8.\prall 
\breathe
es''16[ f''8.( g''16) f''8.( g''16)]
f''2.~
f''8.\breathe

h''16[ c'''8.( d'''16) c'''8.( d'''16)]
c'''4 c''2~
c''8.[ a'16 h'8. c''16] h'!4\prall~
h'4. a'8 h'4

h'8.[( c''16) h'8.( c''16) h'8.( c''16])
h'8.[( c''16) h'8.( c''16) h'8.( c''16])

d''4 d''8( c'') d''( h')
\stemDown\appoggiatura h'8 c''4\mordent h'4.\prall c''8
c''8. \breathe

h'16[ c''8.( d''32 c'') c''8.( d''32 c'')]
c''2.
h'8.\prall\breathe

es''16[ f''8.( g''16) f''8.( g''16)]
f''2.~
f''8.\breathe

h''16[ c'''8.( d'''16) c'''8.( d'''16)]
c'''4 c''2~
c''8.[ a'16 h'8. c''16] h'!4\prall~
h'4. a'8 h'4~

h'8.[( c''32 h') h'8.( c''32 h') h'8.( c''32 h']) 
h'8.[( c''16) h'8.( c''16) h'8.( c''16])

\times 2/3 { d''8 es'' d''} c''8*2/3 d'' c'' h'! c'' h'!
c''8. d''16 h'4.\prall c''8

c''2.

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


cello =  \relative c' {
  \global
  % Poniżej wpisz nuty.
\repeat unfold 2 {
    c8 c h
    c4 \afterGrace g2(\prall^\markup {\flat} {\stemDown f8[ g])}
    as4. \breathe g8 g f
    es4 f g
    c,4. }
\clef alto 
    c'8 f g
    as4 g\prall f
    g8 as g f es4
    f4 g g,
    c4.
\clef bass
    c,8 f g
    as4 g\prall f
    g8 as g f es4
    f4 g g,
    c2
\clef alto
    c'8. c16
    g'4 d4.\prall d8
    es8 d c d es c 
    f e f g as f
    g4.
\clef bass
    g,8 es c
    g'4 d4.\prall d8
    es8 d c d es c
    f8. c16 g'4 g,
    c \breathe
    

    c'4 f,
    b b, es,
    as as' d, 
    g2 g,4
    c4 \breathe 
    
    c'4 f,
    b b, es,
    as as' d,
    g8. c,16 g2  
    c4 c,
    
    r8 c'
    f2 r8 d
    g2 r8 es
    as4 f g
    c, c,
    
    r8 c'
    f4 f, r8 d'
    g4 g, r8 es'
    as8. f16 g4 g,
    c,4. r8 r4
    
    R2.*11
    
    r4 r8 es' g es
    c'4 r8 f, as f
    d'4 g, es'
    as, b b,
    es4. 
    
    d8 c c,
    f [f'] ~ f es d d,
    g [g'] ~ g f es c
    as' g f g as b
    c4 
    
    r8 c, d es
    f es d f es f
    g f es g f g
    as f g4 g,
    
    c2.
    b
    as
    g ~ g4 r4 r
    
    R2.*3
    
    c'8-._\markup {\italic {Vivement et fort}} c16-. c-. c8-. es-. b-. b,-. 
    es2 r4
    b'8-. b16-. b-. b8-. d-. b-. b,-.
    f'2 r4
    
    c'8 es16 d c8 c16 b as8 as16 g
    f2 r8 f
    g f es d c4~
    c8 b as2\prall
    g4 r8 es'16-. es-. es8-. g-.
    
    
    
    es2 r4
    b'8-. b16-. b-. b8-. d-. b-. b,-.
    f'2 r4
    
    c'8 es16 d c8 c16 b as8 as16 g
    f2 r8 f
    g2 r8 f
    es8. f16 g4 g,
    c r r
    
    r4 
    \clef soprano c''2
    \stemDown\grace {b8( [c]} des4) c\prall b
    as8 b c4 c,
    f \breathe
    
    f' as
    d,\prall f es
    g c, es
    d\prall b es
    es, b' as
    g f2\prall
    es4 b' c8. g16
    as4 b b,
    es
    
    \clef bass
    es,2
    b'4 f2
    c'4 g2
    \clef alto d'4 es c
    g' 
    \clef bass
    es,2
    b'4 h g 
    c as es
    f g g,
    c r8
    
    c' b c
    as\prall f r b as b
    g\prall es r as g as
    f\prall d r g f g
    e\prall c r 
    
    \clef alto f' es f    
    d\prall b r es d es
    c\prall as r f' g as
    b es, b2
    es r4
    
    \clef bass r8 d, es f g as
    b4. b8 as\prall g
    f e f g as b
    c4. es8 d c
    h4\prall b2
    a4(\prall as2\prall)
    g4 r r
    
    R2.*2
    
    r4 r r8 g
    c8[ b as g f8. f16]
    b8[ as g f es8. es16]
    as8 g f es d\prall c
    g'8[ f es d] c8. c16
    f8[ es d c] b8. b16
    
    es4 f g
    as g f
    es8 f g4 g,
    c8 e, f4 g
    as g f
    es8 f g2
    c4
    
    \breathe
    
    as' g
    as g fis
    g a h
    c h\prall d
    es,
    
    \clef alto 
    es' g
    as,4~ as2\prall
    g2 r4
    
    \clef bass
    g,2 r4
    g2 r8 r16 es'
    f8.[ (g16) f8. (g16) f8. (g16)]
     as4 g f
    c4 g' g,
    c4 \breathe as' g
    as g fis
    g a h
    c h d
    es, \clef alto es' g
    as,4~ as2\prall
    g2 r4
    \clef bass
    g,2 r4
    g2 r8 r16 es'
    f8.[ (g16) f8. (g16) f8. (g16)]
    \times 2/3 {as8( b as)} g8*2/3( as g) f( g f)
    c4 g' g,
    c2.
    
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

bcMusic = \relative c' {
  \global

\repeat unfold 2 {
    c8 c h
    c4 \afterGrace g2(_\prall {\stemDown f8[ g])}
    as4. \breathe g8 g f
    es4 f g
    c,4. }
\clef alto 
    c'8 f g
    as4 g_\prall f
    g8 as g f es4
    f4 g g,
    c4.
\clef bass
    c,8 f g
    as4 g_\prall f
    g8 as g f es4
    f4 g g,
    c2
\clef alto
    c'8. c16
    g'4 d4._\prall d8
    es8 d c d es c 
    f e f g as f
    g4.
\clef bass
    g,8 es8. c16
    g'4 d4._\prall d8
    es8 d c d es c
    f8. c16 g'4 g,
    c \breathe
    

    c'4 f,
    b b, es,
    as as' d, 
    g2 g,4
    c4 \breathe 
    
    c'4 f,
    b b, es,
    as as' d,
    g8. c,16 g2  
    c4 c,
    
    r8 c'
    f2 r8 d
    g2 r8 es
    as4 f g
    c,2 
    
    r8 c
    f4 f, r8 d'
    g4 g, r8 es'
    as8. f16 g4 g,
    c,4. r8 r4
    
    R2.*11
    
    r4 r8 es' g es
    c'4 r8 f, as f
    d'4 g, es'
    as, b b,
    es4. 
    
    d8 c c,
    f [f'] ~ f es d d,
    g [g'] ~ g f es c
    as' g f g as b
    c4 
    
    r8 c, d es
    f es d f es f
    g f es g f g
    as f g4 g,
    
    c2.
    b
    as
    g  g4 r4 r
    
    R2.*3
    
    c'8-. c16-. c-. c8-. es-. b-. b,-. 
    es2 r4
    b'8-. b16-. b-. b8-. d-. b-. b,-.
    f'2 r4
    
    c'8 es16 d c8 c16 b as8 as16 g
    f2 r8 f
    g f es d c4~
    c8 b as2_\prall
    g4 r8 es'16-. es-. es8-. g-.
    
    
    
    es2 r4
    b'8-. b16-. b-. b8-. d-. b-. b,-.
    f'2 r4
    
    c'8 es16 d c8 c16 b as8 as16 g
    f2 r8 f
    g2 r8 f
    es8. f16 g4 g,
    c r r
    
    r4 
    \clef soprano c''2
    \stemDown \grace {b8( [c]} des4) c_\prall b
    as8 b c4 c,
    f \breathe
    
    f' as
    d, f es
    g c, es
    d_\prall b es
    es, b' as
    g f2_\prall
    es4 b' c8. g16
    as4 b b,
    es
    
    \clef bass
    es,2
    b'4 f2
    c'4 g2
    d'4 es c
    g' 
    
    es,2
    b'4 h_\prall g 
    c as es
    f g g,
    c r8
    
    c' b c
    as f r b as b
    g es r as g as
    f d r g f g
    e c r 
    
    \clef alto f' es f    
    d_\prall b r es d es
    c as r f' g as
    b es, b2
    es r4
    
    \clef bass r8 d, es f g as
    b4 r8 b as\prall g
    f e f g as b
    c4. es8 d c
    h4_\prall b2
    a4_\prall as2
    g4 r r
    
    R2.*2
    
    r4 r r8 g
    c8[ b as g f8. f16]
    b8[ as g f es8. es16]
    as8 g f es d c
    g'8[ f es d] c8. c16
    f8[ es d c] b8. b16
    
    es4 f g
    as g f
    es8 f g4 g,
    c8 e, f4 g
    as g f
    es8 f g2
    c,4
    
    \breathe
    
    as'' g
    as g fis
    g a h
    c h_\prall d
    es,
    
    \clef alto 
    es' g
    as,4~ as2_\prall
    g2 r4
    
    \clef bass
    g,2 r4
    g2 r8 r16 es'
    f8.[ (g16) f8. (g16) f8. (g16)]
     as4 g f
    c4 g' g,
    c4 \breathe as' g
    as g fis
    g a h
    c h d
    es, \clef alto es' g
    as,4~ as2_\prall
    g2 r4
    \clef bass
    g,2 r4
    g2 r8 r16 es'
    f8.[ (g16) f8. (g16) f8. (g16)]
    \times 2/3 {as8( b as)} g8*2/3( as g) f4
    c4 g' g,
    c2.

}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
%  \override Staff.BassFigureAlignmentPositioning #'staff-padding = #5
  \bassFigureExtendersOn
  % Poniżej wpisz cyfowanie basu.
<_>4 

<5/>8
<_>4<7 3!>2
<5>4.<3!>8<6 4> <4/>
<6>4 <6\! 5 3-> <3!>
<_>8*5  

<5/>8
<_>4<7 3!>2
<5>4.<3!>8<6 4> <4/>
<6>4 <6\! 5 3-> <3!>

<_>2 <3->8 <6! 4>
<6>2<6>4
<3!>4.<3!>8 <6>4
<6\! 5 3-> <3!> <3!>

<_>2 <3->8 <6! 4>
<6>2<6>4
<3!>4.<3!>8 <6>4
<6\! 5 3-> <3!> <3!>

<_>2 <_\!>8. <6>16
<_>4 <5/>4.<5/>8
<_>2.
<6 5 3->8*5 <6 5 3->8

<3!>4. <6 4>8<6 4>8. <6\!>16
<_>4<5/>8*3<5/>8
<_>2.
<4/>4 <3!> <3!>

<_>2 <7 3->4
<7-><7-><_>
<7><7><7\! 5>
<7\! 3!>2<7 3!>4
<_>2<7 3->4
<7-><7-><_>
<7><7><7\! 5/>
<7\! 3!> <3!\!>2

<_>2.*2

<3!>2<_>8<8>
<_>4<6 5 3-> <3!>
<_>2.*2
<3!>4<3!><_>8<6>
<_>8.<6 5 3->16<3!>2

<_>2.*13

<7>4<3->8*3<3->8
<5/>4<5/><_>
<2 7>2.

<3>4 <4/>8<6><7><7>
<_>4 <4/>8<6><7 5/><7 5/>
<3!><3!><6 4>8*3<6 4>8
<_>4<3->8*3<3->8

<6- 4>4 <3>8*3<3>8
<_><_><5>8*3<5>8
<3!><3!><6>8*3<6>8
<6 4/ 3-><6 4/ 3-><3!>4<7 3!>

<_>4 <6->2
<7->4<6>2
<7>4<6>2
<7 3!>4<6 4><6 4>
<3!>2.

<_>2.*6

<3->2.
<_>
<6 5 3->8*5<6 5 3->8
<3!>2.
<_>4 <6>2
<_>4.<5>8*2<5>8

<_>2.*2

<3->2.
<_>
<6 5 3->8*5<6 5 3->8
<3!>8*5<3!>8
<6>16*3<6>16<3!>4<3!>
<_>1

<3!>2
<6 4 3>4 <6- 4\!> <4/>
<6>8<6><3!>4<3!>
<_>4<_\!><_>
<5/><5/><_>
<_><6- 5><5->
<5/><7->2
<_>4<_\!><_>
<6 4 3> <6\! 4\! 3->2

<_>4 <_> <_\!>8. <6>16

<_>2.*2

<_\!>4<3->2
<_>1
<3! 2>2
<3!\!>4 <5>2

<_>4 <5/> <7 3!>
<_>2 <6>4
<6\! 5 3-> <3!><3!>
<_> <_\!>8*3<_>8
<6 5>8<6 5> <_\!>8*3<_>8
<6 5>8<6 5> <_\!>8*3<_>8
<6 5 3->8<6 5 3-> <_\!>8*3<_>8
<5/>8<5/> <3->8*3<3->8
<5/>8<5/> <_>8*3<_>8
<6 5>8<6 5> <3->8*3<3->8

<_>2.*2

<_\!>4 <5>8*3<5>8
<_>2.
<3->8*5<3->8
<5>4 <6->8*3<6->8
<7/>4<6>2
<7 5/>4 <6>2
<3!>2.

<_>2.*2

<_\!>8*5 <3!>8
<_>2<3->16*3<3->16
<_>2.
<_\!>2<6!>4
<3!>8<3!><_>2
<3->8<3-><_>2

<_\!>4 <_>8 <6 3-> <6 3-><6\! 4>
<6 4><6\! 4\! 2!> <6 4 2!> <6\! 4\!> <6 4><4/>
<6><6><3!>4<3!>

<_>8<5/><5/><3->4<6 4>8
<6 4> <6\! 4/ 3><6 4/ 3><6\! 4\!><6 4><6\! 4/>
<6\!><6><3!>2
<_>4

\bassFigureExtendersOff

<6 4/ 3>4 <5 4>
<6 4/ 3> <5 4> <5/>
<3!> <6> <5/>

\bassFigureExtendersOn

<4 2> <7/><7/>
<4- 2 7><6><6>
<7><6>2
<3!>2.


<3!\!>2.
<3!\!>2 <_>16*3 <6>16

<4/>2<4/>8. <6 4>16

<6\! 4/ 3>4 <6\! 4> <4/>
<_><3!><3!>

<_>

\bassFigureExtendersOff

<6 4/ 3>4 <5 4>
<6 4/ 3> <5 4> <5/>
<3!> <6> <5/>

\bassFigureExtendersOn

<4 2> <7/><7/>
<4- 2 7><6><6>
<7><6>2
<3!>2.


<3!\!>2.
<3!\!>2 <_>16*3 <6>16

<4/>2<4/>8. <6 4>16

<6\! 4/ 3>4 <6\! 4> <4/>
<_><3!>2.



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
  \layout {
  \context {
      \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
     \header {
 piece = "[11.] Passacaille"
 }
}