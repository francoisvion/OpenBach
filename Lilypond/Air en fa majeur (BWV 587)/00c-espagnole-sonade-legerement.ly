\language "deutsch"
%%legerement



global = {
  \key g \minor
  \time 4/4

}

violinI = \relative c'' {
  \global
  % Poniżej wpisz nuty.
  \tempo "légerement"
  R1 r4 r16 g' f es d8 es f g
  es c g' g g4 (fis)\prall\turn
  g r8 es es4 (d8.\prall) d16
  d8\noBeam g, c c c4 (h\prall\turn)
  c r16 g' g as b8 b b g\prall
  \stemDown\grace g8 ^(as\mordent) as r16 as g f es8 [f]
  \stemDown\grace f8 ^(g\mordent) [as]
  f4\prall r16 f es d c8 d es f
  d\prall b r16 b' as g f8 g as! b g\noBeam
  b, es es es4 (d\prall\turn) es
  r16 f es d c8 d es f d\prall \noBeam
  b f' f f4 (e\prall\turn) f16\noBeam
  f es d c8 d \stemDown\grace
  d ^(es4\mordent) es8 f d\prall \noBeam
  d g g g4 (f\prall\turn) g
  r16 g f es d8 es f g es c
  r16 g' f es d\prall (c b8)
  r16 f' es d c (b as8)
  r16 es' d c h\prall (a g8)
  r16 d' c b a4\prall a8 h16. c32
  h8 [c] h8.\prall c16 c8 \breathe
  es as2 g4~ g f2 es4~ es
  d8.\prall [d16] d8 [es] d8.\prall [c16]
  c2 r \bar "||"
  \time 2/2 d1 \bar "||"
  \time 6/4 r4 g d es d c
  h2\prall h4 c d es d2\prall r4
  r g d es2 d4 es2\prall c4 c2. r\bar "||"
  \time 2/2 g'1
  \time 6/4 r4 c g as g f
  e2\prall e4 f g as g2\prall r4
  r c g as2 g4 g2\prall f4 f2 r4 r2.
  r r4 b f g as b as8 g f4.\prall es8 es4 \breathe
  b' b, es2.
  r4 c' c, f2.
  r4 g g, c2.~
  c2 c4 h2\prall c4 c \breathe
  g'^\markup\italic{doux} g, c2.
  ~c2 c4 h2\prall c4
  \time 2/2
  c2 \breathe
  \tempo "air tendres"
  g'4. f8 es4 d d4.\prall c8 h4\prall
  \grace a8 _(g4) g'4. (as16 b) as4 g f4.\prall es8
  d2\prall \breathe
  g4. f8 es4 d d4.\prall c8 h4\prall
  \grace a8 _(g4) g'4. (as16 b)
  \stemDown\grace b8 (as4) g f4.\prall es8 d2\breathe
  d4. es8 c4\prall c f4. f8 f4\prall (es) as4. b8
  g4.\prall f8 f4.\prall es8 es2\breathe

  g4. g8 g4 \glissando {c,} f4. f8 f4\prall es es4. es8 es4 (d) d4.\prall d8 d2 \breathe
  \stemDown\grace {d8 ^([es] }f4.) g8 g d es4 d4.\prall c8
  c2 \breathe
  g'4. g8 g4 \glissando {c,} f4. f8 f4\prall es es4. es8 es4 (d) d4.\prall d8 d2 \breathe
  \stemDown\grace {d8 ^([es] }f4.) g8 g d es4 d4.\prall c8
  \time 6/4
  c2. \bar "||" \break
  \tempo "Vivement, et marqué"

  r2.
  R1.*7

  r2. g'2.
  f2. es2.
  d2. b2.
  c2. d2.
  b4.\prall a8 g4 r g8 a b c
  d4 a d g,2 g4
  g2( fis4\prall) g2.~
  g4 g c \afterGrace fis,2.(\prall {es8[ fis)]}
  g4\breathe g8 a b c d4 g, d'
  es8 d es f es d c4\breathe c8 d es f
  g4 d g c, c f
  es8 d es f es d c h c d es c
  d es f es d c h c h! g a h!
  \stemDown\grace h8( c2) c4 r2.
  r4 g'8 a b g c4 f, d
  g g,8 a h g es' f g f es d
  c4 f8 g f es d4.\prall d8 g4
  c,2 c4 r2.
  R1.
  r4 c8 d es f g4 d g
  es8 d es f g es as b as! g f es
  d es d c b as g4 es'2
  c4 f2 d4\prall g2
  \stemDown\grace f8( es4) as2 \stemDown\grace g8( f4) b2
  e,4\breathe c8 d e f g4 as( g8\prall) f
  e\prall d e! f g e! f e! f g f4
  e\breathe e8 f g as b as g as b g
  as g f as g f e d c b as g
  as4 f'2~ f4 e4.\prall f8
  f2 r4 r2.
  r4 c8 d es c f4 a, d
  h2.\prall g'2.
  f2. es2.
  d2.\prall h2.
  c2. d2.
  g,2. r2.
  r4 g'8 a b g c4 f, d
  g g,8 a h g es' f g f es d
  c4 f8 g f es d4.\prall d8 es4
  \stemDown\grace d8( c2) r4 r2.
  R1.
  r4 c8 d es f g4 d g
  e2.\prall \bar "|."
}

violinII = \relative c'' {
  \global
  % Poniżej wpisz nuty.
  R1 r8 g c c c4 (h\prall) c r r2
  r4 r16 d c b a8 b c d h4\prall
  r16 g' f es d8 es f g es\prall c
  r16 es es f g8 g g e\prall
  \stemDown\grace e8 (f\mordent) f
  r16 f es d c8 [d \stemDown\grace d ^(es8.\mordent) f16] d4\prall r r2
  r8 b es es e4 (d\prall\turn) es
  r16 b' as g f8 g f8.\prall es16 es8 \breathe
  es, b' b b4 _(a\prall\turn) b r r2 r
  r16 c b a g8 a \grace a8 _(b4.\mordent) g8 c8 d16 es d8.\prall c16 h8\prall \breathe
  g8 c c c4 (h\prall\turn) c as'~as g~g f~f es~es d8.\prall d16 d8 es d8.\prall c16 c4
  r16 g' f es d\prall (c b8)
  r16 f' es d c (b as8) r16 es' d c h\prall (a g8) r16 d' c b
  a4\prall a8 h16 c h!8 [c] h!8.\prall [c16] c2 r
  h1
  R1. r4 g' d es d c h\prall \breathe g' d es es h c2 c4 h2\prall c4 c2. r
  e1
  R1. r4 c' g as g f e\prall \breathe c' g as \breathe as e!\prall f2 f4 e2\prall f4 f2 r4
  r f c \stemDown\grace c8 (d2.\mordent) r4 es (d\prall) \stemDown\grace d8 (es2\mordent) es4 es d4.\prall es8 es2.
  r4 g g, c2. r4 d a h2.\prall
  r4 c' c, f4. g8 es4 d2\prall c4 c2.
  r4 c' c, f4. g8 es4 d2\prall c4 c2 r
  R1*3 r2
  es4. d8 \stemDown\grace d8 ^(c4) as'8 g f4.\prall es8 d4\prall \stemDown\grace c8 ^(h4) r
  e8 g c,4 \stemDown\grace {c8 ^([d]} es4) d4.\prall c8 h2\prall r R1*3
  r2 r8 g a h \stemDown\grace h8 ^(c2\mordent) ~c4 _(b8\prall a) h4\prall \grace a8 _(g4) \breathe
  g'8 g, c b a4.\prall a8 a4 (h8\mordent) c h2\prall\breathe
  \stemDown\grace {h8 ^([c]} d4.) es16 c h8\prall g c4 h!4.\prall c8 c2
  r8 g a h \stemDown\grace b8 ^(c2.\mordent) b8\prall a h4\prall \grace a8 _(g4)
  g'8 g, c b a4.\prall a8 a4 (h8\mordent) c h2\prall\breathe
  \stemDown\grace {h8 ^([c]} d4.) es16 c h8\prall g c4 h!4.\prall c8 c2. r
  R1.*3
  r2. c b as g es f g es4.\prall d8 c4 r g'8 a b c d4 a d g, g c b8 a b c b\prall a g2.
  a8 g a b a b g4 g4.\prall fis8 \grace fis8 _(g2\mordent) g4
  r2. r
  r4 g8 a b c d4 a d g, d' g \stemDown\grace f8 ^(es2.) r4 a, d g,2. r
  r c' b as\prall g es f g es4.\prall d8 (c4)
  r4 c8 d es f g4 d g c, c f h,\prall h d g, g c a\prall a d h4.\prall a8 h4 c\breathe
  c8 d es f g4 d g \stemDown\grace f8 (es4) \breathe
  g,4. a8 \stemDown\grace a8 ^(b4^\mordent) h4.\prall h8 \stemDown\grace b8 (c2^\mordent)
  c8 d h\prall a h! c d h! \stemDown\grace b8 (c2^\mordent) r4 r2. R1.*3
  r2. c' b as\prall g e\prall f g c,4 as'2 g4 g4.\prall f8 f4 \breathe
  f,8 g as b c4 g c \grace b8 (as2) r4 r2. r
  r4 g8 a h c d4 d2~d4 c2 h4\prall\breathe g8 a h! g d'4 d8 e f d
  g2. f es4.\prall d8 (c4)
  r4 c8 d es f g4 d g c, c f h,\prall h d g, g c a\prall a d h4.\prall a8 h!4 \stemDown\grace b8 (c2\mordent) r4 r2.
  r4 c8 d es f g4 d g es2\prall \stemDown\grace d8 ^(c4) c2 (h4\prall) \stemDown\grace b8 (c2.^\mordent)



}

cello = \relative c {
  \global
  % Poniżej wpisz nuty.
  r8 g' c c c4 (h\prall\turn) c as f g c,
  r16 d' c b a8 b c d b\turn\breathe
  d,8 g g g4 (fis\prall\turn) g es f g c,
  r16 c' b as g8 as! b c as\prall f g4 as16 as g f es8 as, b \breathe
  f' b b b4 (a\prall\turn) b g as b es g, as b es, d es f b
  r16 c b as g8 as! b c as\prall f as! b c2 b as\prall g4 es f g

  c16 b as g f es d c
  b' as! g f es d c b
  as' g f es d c b as
  g' f es d c b as! g
  f4 fis g8 c g g'

  c16 b as g f es d c
  b' as! g f es d c b
  as' g f es d c b as
  g' f es d c b as! g
  f4 fis g8 c g4 c2 r

  g'1
  g1.~g~g1 r4 g c2 f,4 g2 g,4 c2. r
  c'1
  c,1.~c~c1 r4 c f2 b,4 c2. f,4
  f' c d2 a4 b b' f g g b es, f g as b b, es2.
  r4 es' es, as2.
  r4 f' f, g4. as8 g f
  es4 es' es, as2 f4 g2 g,4
  c4. h8 c d
  es4 es' es, as2 f4 g2 g,4
  c2 \breathe
  c'4 h\prall c f,8 g as4 f g4. f8 e2\prall f4 g as f g8 f g d es4 h c f8 g as4 f g4. f8 e2 f4 g as f g \breathe
  g8 a b2 a as g f es4 as b b, es es, \breathe
  es'8 es f g as2 \breathe
  d,8 d es f g2 \breathe
  c,8 c d es f2 fis\prall g as g4 f\prall\turn g g, c8 h c d es es f g as2 \breathe
  d,8 d es f g2 \breathe
  c,8 c d es f2 fis\prall g\breathe as g4 f\prall\turn g g,
  c2.
  c'_"fort" b as\prall g es f g es4.\prall d8 c4
  \clef alto r4 c'8 d es f g4 d g f8 es d es f d es d es f es d c des c b as g
  \clef bass f g f es d c h\prall a h! g a h! c4 c, c'8 d es2. d2 h4\prall
  c8 h c d es f g2 g,4 es'8 d es f es d c\prall b c d c d b4 a\prall d g,2 g,4 \breathe
  g''2. f es\prall d b c d b4.\prall a8 g4
  r4 g'8 a h g c4 g c as2.\prall g8 as g f e c f e! f g as! f c'4 c,8 d es c as' g as! b as!\prall g f\prall es d es f d es d es f es\prall d c2. \breathe
  c' b as\prall g es f g es4.\prall d8 c4
  r4 g'8 a h g c4 c,8 d es f g4 d g es2\prall c4 g2. c4 \breathe
  c'8 d es c f4 f,8 g as f b4 b,8 c d b es4 es8 f g es as4 f8 g as! f b4 g8 as b g c4 as8 b c as des4 b8 c des! b c2.
  e,4\prall c8 d e! f
  g f g as b g as! g as! b as! b c4 c,8 d e f g4 c c, f2. c'4 e,2\prall f4 f8 g as b c4 g c as8 g as! b as! g f2 e4 f2 r4 d2 r4 g4 g8 a h g es'2. h4\prall g8 a h g c4
  c,8 d es c g'2 r4 f2 r4 es8 g f es d c h!\prall a h! g a h! c2. \breathe
  c' b as\prall g es f g c,4
  \clef alto c'8 d es f g4 d g es2\prall \stemDown\grace d8 ^(c4)
  \clef bass g2. c,2 \breathe as4 g2. c
}

cembalo = \relative c'' {
  \global

  R1*23
  R1.*5
  R1
  R1.*13
  R1*24
  s2.
  r8_"Badinage par le Clavecin si l'on veut" g f g es g
  d g f g d g c, g' f es d c
  h\prall d c d h! d g, g' f g c, g'
  as g f es d c h\prall a h! c d h!
  c g' a h c d es4 g, es'
  d8( es) d( es) d( es) d c h c d h!
  c2\mordent r4 g8 f g es f g
  as b as! g f es d4 d'8 h c d
  g, as g f es4 r2.
}

bcMusic = \relative c {
  \global

  r8 g' c c c4 \afterGrace h4 ( {\stemDown a8 [h)]}
  c4 as f g
  c, r16 d' c b a8 b c d
  b_\prall\breathe
  d,8 g g g4 (fis_\prall) g es f g c,
  r16 c' b as g8 as! b c as_\prall f g4 as16 as g f es8 as, b \breathe
  f' b b b4 (a_\prall) b g as b es g, as b es, d es f b
  r16 c b as g8 as! b c as_\prall [f] as! [b] c2 b as g4 es f g

  c,2 b as g
  f4 fis g8 c g4

  c2 b as g f4 fis g8 c g4 c,2 r

  \time 2/2
  g'1
  \time 6/4
  g'1.~g~g2.~g2 g4 c2 f,4 g2 g,4 c2. r
  \time 2/2
  c'1
  \time 6/4
  c,1.~c~c2.~c2 c4 f2 b,4 c2. f,4
  f' c d2 a4 b b' f g g b es, f g as b b, es2.
  r4 es' es, as2.
  r4 f' f, g4. as8 g f
  es4 es' es, as2 f4 g2 g,4
  c4. h8 c d
  es4 es' es, as2 f4 g2 g,4
  \time 2/2
  c2 \breathe
  c'4 h c f,8 g as4 f g4. f8 e2_\prall f4 g as f g8 f g d es4 h c f8 g as4 f g4. f8 e2_\prall f4 g as f g \breathe
  g8 a b2 a as g f es4 as b b, es es,
  es'8 es f g as2
  d,8 d es f g2
  c,8 c d es f2 fis_\prall g as g4 f_\prall g g, c8 h c d es es f g as2
  d,8 d es f g2
  c,8 c d es f2 fis_\prall g as g4 f_\prall g g,
  \time 6/4
  c2.

  \clef bass
  c'2. b as g es f g es4._\prall d8 c4
  \clef alto r4 c'8 d es f g4 d g f8 es d es f d es d es f es d c des c b as g
  \clef bass f g f es d c h_\prall a h! g a h! c4 c, c'8 d es2.

  d2 h4_\prall
  c8 h c d es f g2 g,4 es'8 d es f es d c_\prall b c d c d b4 a_\prall d g,2 g,4 \breathe
  g''2. f es_\prall d b c d b4._\prall a8 g4
  r4 g'8 a h g c4 g c as2._\prall g8 as g f e c f e! f g as! f c'4 c,8 d es c as' g as! b as!_\prall g
  f_\prall es d es f d es d es f es_\prall d
  c2. \breathe
  c' b as_\prall g es f g es4._\prall d8 c4
  r4 g'8 a h g c4 c,8 d es f g4 d g es2_\prall c4 g2. c4 \breathe
  c'8 d es c f4 f,8 g as f b4 b,8 c d b es4 es8 f g es as4 f8 g as! f b4 g8 as b g c4 as8 b c as des4 b8 c des! b c2.
  e,4_\prall c8 d e! f
  g f g as b g as! g as! b as! b c4 c,8 d e f g4 c c, f2. c'4 e,2_\prall f4 f8 g as b c4 g c as8 g as! b as! g f2 e4
  f2. d2. g4 g8 a h g es'2. h4_\prall g8 a h g c4
  c,8 d es c g'2. f2. es8 g f es d c h!_\prall a h! g a h! c2. \breathe
  c' b as_\prall g es f g c,4
  \clef alto c'8 d es f g4 d g es2_\prall \stemDown\grace d8 ^(c4)
  \clef bass g2. c,2 \breathe as4 g2. c
}

bcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  % Poniżej wpisz cyfowanie basu.
  \bassFigureExtendersOff
  <_>2 <2>4 <5/>
  <_>2 <6 5 3->4 <7 3!>
  <_>2 <7 5/>4 <4/>
  <6>2 <2>4 <5/>
  <3!> <6> <6 5 3-> <7 3!>
  \bassFigureExtendersOn
  <_>4.<_>8 <6!>4.<6!>8
  \bassFigureExtendersOff
  <6>4 <7 2>8 <6><_>4.<6 5>8
  <_>2 <2>4 <5/>
  <_><6><6 5> <7->
  <_> <6> <6 5> <7>
  <_> <6> <6 5> <7>
  <_>2 <7>4 <4>
  <6>2. <6>4
  <5><6><7><6>
  <3!><6><6 5 3-><7 3!>

  <_><6-><7><6>
  <7><6><7 3!><6 4>
  <7>2 <3!>4<3!>

  <_><6-><7><6>
  <7><6><7 3!><6 4>
  <7>2 <3!>4<3!><_>1


  <3!>1
  <_>2. <6 4>
  <3!> <6 4>
  <3!> <6 4>2 <3!>4
  <_>2 <6 5 3->4 <3!>2.
  <_>1.

  <3!>1
  <3!>2. <6- 4>
  <3!> <6- 4>
  <3!> <6- 4>2 <3!>4
  <3->2 <6 5 3->4 <3!>2.
  <_><6>2<5/>4
  <_>2.<6>2<3>4
  <_>2.<6 5>
  <_>1.
  <7>2.<6 3->
  <3!><6>
  <6 4/ 3>2 <7 5 2>4 <3!>2.
  <_>1.

  <6 4/ 3>2 <7 5 2>4 <3!>2.
  <_>1

  <_>4 <6 4 3>2.
  <3!>2 <6>4 <5/>
  <3-> <6 4> <6 4 3> <7 5 2>
  <3!>2<6>2.
  <6 5 3->
  <3!>2 <6>4 <5/>
  <3-> <6 4> <6 4 3> <7 5 2>
  <3!>2<6>
  <7 5/> <6>
  <7>4<6> <6 4/ 3->2.
  <6 5><_>
  <_>8 <6 3!>
  <7>2<7 5/>
  <7 3!> <6 4>
  <7><5/>
  <3!><6 4/ 3>
  <3!>4<7 5 2><3!>2
  <_>1
  <7>2<7 5/>
  <7 3!> <6 4>
  <7><5/>
  <3!><6 4/ 3>
  <3>4 <7 5 2> <3!>2 <_>1.

  <6>2. <7>2 <6>4
  <3!>2. <6>
  <6 5 3-><3!>
  <6><_>
  <_><6 4/ 3>
  <6><_>
  <6 5 3-><5/>
  <_><6><5>2<5/>4<_>2.
  <_>1.
  <6>2.<6>4<6+>2
  <_>1.
  <6>2.<7>2<6>4
  <5 4>2<3+>4<6>2.
  <6 5> <3+>
  <6> <3!>
  <_> <7>2<6>4
  <3>2<5/>4<3->2.
  <_><5>
  <6 5 3-><7 5 3!>
  <_>1.
  <6>2.<7>2<6>4
  <3!>2.<6>
  \bassFigureExtendersOn
  <7 3 2>2<6 3>4<3!>2.
  \bassFigureExtendersOff
  <6><3!>
  <_>1<6!>2
  <6>2.<3!>
  <_><3->1
  <7->2.*5
  <6 5 3->2
  <3!>2.<5/>
  <6!><6>
  <3!><6!>
  <3-><3!>4<5/>2
  <3->2.<5 4>4<6!>2
  <6>2. <3->4<5 2><5/>
  <3->2. <5/>
  <3!><6>
  <5/><_>
  <3!><_>
  <6><5/>
  <_>1.

  <6>2.<7>2<6>4
  <3!>2.<6>
  <7 3 2>2<6>4<3!>2.
  <_><5 2>2<3!>4
  <6>2.<3!>
  <_>2<6>4<5 4>2<3!>4<_>2.


}

violinIPart = \new Staff \with {
  \override VerticalAxisGroup #'remove-empty = ##f
  instrumentName = ""
} \violinI

violinIIPart = \new Staff \with {
  \override VerticalAxisGroup #'remove-empty = ##f
  instrumentName = ""
} \violinII

celloPart = \new Staff \with {
  \override VerticalAxisGroup #'remove-empty = ##f
  instrumentName = ""
} { \clef bass \cello }

bassoContinuoPart =  \new StaffGroup <<
\new Staff=cembalo {\clef treble \cembalo} \new Staff=bcmusic \with {
  instrumentName = ""
} { \clef bass << \bcMusic \bcFigures >> }
>>

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

}