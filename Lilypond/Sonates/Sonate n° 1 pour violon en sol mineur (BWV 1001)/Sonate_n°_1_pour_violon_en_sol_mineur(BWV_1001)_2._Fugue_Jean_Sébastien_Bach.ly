\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "2. Fugue"
  subtitle = "Sonate n° 1 pour violon en sol mineur"
  subsubtitle = "6 sonates pour violon"
  opus = "BWV 1001"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
melodyOne = \relative f' {
  \tempo Allegro
	s1 |
	s1 |
	r8 g'8 [ g  g ] g [ f16 es ] f8 [ d ] |
	es4 s4 r8 d8 [ d d ] |
	d8 [ c16 bes ] c8 [ a ] bes4 bes'4 |
	bes8 [ a16 g ] a [ (fis) g8 ] fis16 s8. s4 |
	d,16 [ a' cis e ]
	\stemDown f [ a d, c ] b [ d f aes ] g [ f es d ] |
	es16 [ g, c d ] es [ g c, bes ] a [ c es g ] f [ es d c ] |
	\stemUp d16 [ a bes fis ] g [ bes d f, ] e [ g bes d ] c [ a bes g ] |
	fis16 [ a c es ] d [ c bes a ] bes [ g d' f, ] es [ d' g c, ] |
 	fis8 s8 bes8 [ bes ] bes [ a16 g ] a8 [ a ] |
	aes16 [ g ( aes fis )] g8 [ f ] es [ d ] c [ bes ] |
	aes16 [ (fis) fis (g) ] g [ bes, a g ] a [ g' c es] d, [ g a fis ] |
	g8 \stemDown d'' [ d d ] d [ c16 bes ] c8 [ a ] |
	\stemUp bes8 r8 es8 r8 a,8 r8 d4 ~ |
	d8 c[  c  c ] c [ bes16 a ] bes8 [ g ] |
	a8 r8 d8 r8 g,8 r8 c4 ~ |
	c8 bes [ bes bes ] bes [ a16 g ] a8 [ bes16 a ] |
	g8 r8  c8 r8 c8 [ bes16 a ] bes8 [ c16 bes ] |
	a8 r8  d8 r8 d8 r8 c8 r8 |
	f,8 r8 bes8 r8 a8 [ f g a ] |
	bes8 [ a ] g8 r8 g8 [ f16 e ] f8 [ f ] |
	f8 [ e16 d ] e8 [ cis ] d8 r8 r8 d8 |
	d8 r8 cis8. \trill [ d16 ] d8 s4. |
	s1 |
	s2 r8 c8 [ c c ] |
	c8 [ bes16 a ] bes8 [ c16 bes ] a8 r8 d8 r8 |
	d8 [ e16 (f) ] e [ (d) cis (d) ] cis8  a' [ a  a ] |
	a8 [ g16 f ] g8 [ g ] g [ f16 e ] f8 [ f ] |
	bes8 [ (a) ] a [ (gis) ] gis [ (a) ] a [ (fis) ] |
	fis8 [ (g) ] g [ (e )] e [ (f) ] f [ (d) ] |
	d8 [ (es) ] es [ (cis) ] cis [ bes'16 (gis) ] a8 [ cis, ] |
	d8 [ bes'16 (gis) ] a8 [ cis ] d [ (c) ] c [ (bes) ] |
	bes8 [ (a) ] a [ (cis) ] cis [ (d) ] d [ (g,) ] |
	g8. [ a16 ] f8 [ e ] e2 |
	e2 a8 [ g a f ] |
	g2 g8 [ f g e ] |
	f8 [ e f g ] a [ bes a g ] |
	f8 [ e f g ] a [ g a b ] |
	cis8 [ b cis d ] e [ f e d ] |
	cis8 [ b cis d ] e [ d e cis ] |
	\stemNeutral d,,16 [ d' f a ] d [ a f d ] a [ d' c bes ] c [ a fis d ] |
	g,,16 [ g' bes d ] g [ d bes g ] d [ g' f es ] f [ d b g ] |
	c,16 [ c' es g ] c [ g es c ] g [ c' bes a ] bes [ g e c ] |
	f,16 [ c' f g ] aes [ f d bes ] es, [ bes' es f ] g [ es c a ] |
	f'16 [ d b g ] es' [ c aes f ] des' [ bes g es ] c' [aes f d ] |
	g,16 [ d' f b ] d [ b f d ] g, [ d' f b ] d [ b f d ] |
	g,16 [ c es g ] c [ g es c ] g [ c es g ] c [ g es c ] |
	aes16 [ c es g ] c [ g es c ] aes [ c es g ] c [ g es c ] |
	a16 [ d fis a ] c [ a fis d ] a [ d fis a ] c [ a fis d ] |
	g,16 [ c es g ] c [ es (des) b ] (c) [ bes' (aes) fis ] (g) [ f (e f) ] |
	\stemUp f8 r8  c'8 r8 c8 r8 b8 [ d ]  |
	s4 s8 g,8 g [ f16 es ] f8 [ d ] |
	es8 [ d16 c ] des8 [ b ] c8. [ d16 ] b8. [ c16 ] |
	c8 r8 r4 s2|
	s1 |
	r8 f8 [ f f ] f [ es16 d ] es8 [ c16 d32 es ] |
	d8 bes' [ bes bes ] bes [ a16 g ] a8 [b]|
	c8 c [ c c ] c [ bes16 a ] bes8 [ c16 (g)] |
	a8 [ bes16 (f) ] g8 [ a16 (g)] f8 [ g16 d ] es [ c a f ] |
	r8 d'8 [ d d ] d [ es16 d ] c8 [ bes ] |
	a8 f'8 [ f f ] f [ g16 f ] es8 [ d ] |
	g8 [ a16 (bes)] bes [ ( a g f )] bes8 [ f ] es16 [( d c bes )] |
	bes,16 [ d' c d ] bes [ (d) a (d) ] g, [ (d') f, (d') ] es, [ (d') d, (d') ]  |
	es,16 [ (d' g f) ] es [ d c bes ] a [ (c) g (c) ] fis, [ (c') e, (c') ] |
	d,16 [ (c' a') c, ] bes [ a bes g ] a [ d, f' aes, ] g [ f g es ] |
	f16 [ bes, d' f, ] es [ d es c ] d [ g, bes' d, ] es [ c c' e, ] |
	fis16 [ d a' fis ] c' [ a es' c ] fis [ c a' (fis] es [ c a fis) ] |
	d16 [ (c' fis) c ] fis [ c a' c,]  d, [ (c' fis) c ] fis [ c a' c, ] |
	d,16 [ (bes' d) bes ] d [ bes g' bes, ] d, [ (bes' d) bes ] d [ bes g' bes, ]  |
	d,16 [ (a' fis') d ] fis [ d c' d, ] d, [ (d' fis) d ] fis [ d c' d, ] |
	d,16 [ (d' g) d ] g [ d bes' d,] d, [( d' g) d ] g [ d bes' d, ] |
	d,16 [ (cis' e) cis ] e [ cis bes' cis,] d, [ (cis' e) cis ] e [ cis bes' g ]  |
	g16 [ (fis) e (d) ] d'8 [ d ] d [ c16 bes ] c8 [ c ] |
	c8 [ bes16 a ] bes8 [ bes ] bes [ (a) ] a [ (g) ] |
	fis8 [ (g) ] g [ (e) ] e [ (f) ] f [ (d) ] |
	d8 [ es16 (d) ] es [ g bes d, ] cis [ e a cis, ] d [ f a c, ] |
	b16 [ aes' (g f) ] g [ d es b ] c [ aes' (g f) ] g [ d es c ] |
	fis,16 [ a c es ] (d [ c) a' c, ] (d [ es) a, (bes ] c )[ fis, g a ] |
	r8 d8 [ d d ] d [ c16 b16 ] c8 [ a' ] |
	c,8 [ c16 bes ] c8 [ a' ] bes, [ bes16 a ] bes8 [ g' ] |
	bes8. [ a16 ] g [ fis g a ] fis8 g [ g g ] |
	g8 r8  fis8 r8  f8 r8  es8 r8 |
	es8 r8 d8 [ bes' ] g [ aes16 g ] aes [ fis g8 ] |
	fis8 r r fis g [a] bes [fis] |
	fis8 [g] g [g] g8. [a16] fis8. [ g16 ]  |
	\stemNeutral g,,16 [ g' bes d ] g [ d bes g ] a [ g' f es ] f [ d b g ] |
	g,16 [ g' c d ] es [ c aes g ] fis [ es' d c ] d [ bes g f ] |
	g,16 [ es' g b ] c [ es aes, g] a, [ c fis a ] c [ es fis a ]  |
	bes,,16 [ d g bes ] d [ fis g bes ] c,, [ es g c ] es [ g a c ]  |
	d,,16 [ c'' bes d, ] cis [ bes' a c, ] b [ aes' g  bes, ] a [ g' f aes, ] |
	g16 [ f' es g, ] fis [ es' d f, ] e [ d' (c b) ]  c [ es, (d c) ] |
	fis'4. ~  fis64 [ g ( a fis g a c, d es c d es a, bes c a bes c fis, g a fis g a )] r8 \stemUp g'8 |
	g16 ~ [ g32 a ( g fis g64 es f32)] f8. \trill [ g16 ] g2 \bar "|."
}
 melodyTwo =  \relative d'' {
	 r8 d8 [ d  d ] d [ c16 bes ] c8 [ a ] |
	 \stemUp
	 bes8 r es r a, r d r |
	 d s c s bes s a s |
	 g [g,] c16 [bes' (a bes32 c)] fis,8 s g s |
	 e8 s fis s g [f16 es] d'8 s |
	 c8 s4. c16 [es d c] bes [g' a, g] |
	 s1*4 |
	 d'8 [d,] d' [d] c r c [c] |
	 bes r  bes [b] g16 [(f) f (es)] es [(d) d (c)] |
	 c8 s s2. |
	 g8 s s2. |
	 \stemDown r8 g'' [g g] g [f16 es] f8 [d] |
	 es8 [es16 d ] es8 [ f16 es ] d8 r8 g8 r8 |
	 g8 f [ f f ] f [ es16 d ] es8 [ c ] |
	 d8 [ d16 c ] d8 [ es16 d ] c8 r8 f8 r8 |
	 f8 [ es16 d ] es8 [ f16 es ] d8 r8 g8 r8 |
	 g8 [ f16 e ] f8 [ g16 f ] e8 r8  e8 r8 |
	 d8 r8 cis8 r8 d8 [ d d d ] |
	 \stemUp d8 [ d ] d [ cis16 b ] cis8 r8 d8 [ a ] |
	 bes8 s8  s8 a8 a [ g16 f ] g8 [ e ] |
	 f16 [ e d f ] e8. [ d16 ] d8 d [ d d ] |
	 e8 r8 r8  fis8 g  g [ g g ] |
	 g8 [ f16 es ] f8 [ d ] es8 r8 e8 r8 |
	 fis8 r8 g8 r8 g8 [ f16 e ] f8 [ g16 f ] |
	 e8 r8 s4 e8 s8 d'8 s8 |
	 d8 s8 s8 d8 cis8 s8 s8 d8 |
	 d8 r8 d8 r8 d8 r8 cis8 r8 |
	 c8 r8 b8 r8 bes8 r8 a8 r8 |
	 a8 r8 g8 r8 g8 r8 r8 g8 |
	 f8 s8 s8 g'8 f8 s8 fis8 s8 |
	 \stemDown g8 [ (f) ] f [ (e) ] e [ (f) ] f [ (cis) ] |
	 cis8 [ (a) ] d [ g, ] a [ g a f ] |
	 g8 [ f g e ] f [ e f d ] |
	 d'8 [ cis ] d [ b ] cis2 |
	 d8 [ cis d e ] f [ g f e ] |
	 d8 [ cis d e ] f [ e f d ] |
	 e8 [ d e f ] g [ a g f ] |
	 e8 [ d e f ] g [ f g e ] |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 b8 r8  es8 r8 d8 r8 d8 [ f ]  |
	 \stemUp es,16 [ d' (g) b,] c8 [c] c s8 b8 s8 |
	 g8 s8 f8 s8 fis8 s8 d8 r8 |
	 es8 r8 r4  d8 r8 r8 e8 |
	 f8 r8 a8 r8 bes8 r8 c8 r8 |
	 c8 [ bes16 a ]<g bes>8 r8 <g bes>8 r8 r8 f8 |
	 bes8 d [ d d ] d [ c16 bes ] c8 [ d ] |
	 es8 es [ es es ] es [ d16 c ] d8 [ es ] |
	 es [ d ] d [ c ] c [ bes ] s4 |
	 r8 f8 [ f f ] f [ g16 f ] es8 [ d ] |
	 es8 bes' [ bes bes ] bes r8 f8 [ f ] |
	 d'8 r8 c8 s8 s8 bes8 s4 |
 	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
	 s4 s8 d8 es8 s8 s8 a,8 |
	 d8 s8 s8 d8 d8 s8 cis8 s8 |
	 c8 s8 bes8 s8 bes8 s8 a8 s8 |
	 a8 s8 g16 s16 s8  g16 s16 s8 f16 s16 s8 |
	 f16 r16 r8 s4 es16 r16 r8 s4 |
	 a,16 s16 r8 s2. |
	 s8 r8 f'8 r8 es8 [ es16 d ] e8 s8 |
	 fis8 [ a16 g ] a8 r8  a8 [ g16 fis ] g8 r8 |
	 cis8. s16 s4 c8 bes [ bes bes ] |
	 a8 r8 a8 r8 d8 r8 g,8 r8 |
	 \stemDown f8 r8 f8 [ d'] d [c16 b ] c8 c |
	 c8 [ es16 (c) ] d8 [ a ] b [ es16 (c)] d8 [ a ] |
	 \stemUp a8 [bes ] bes [ a ] bes8. [ c16 ] a8. s16 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 c4. s8 s4 \stemDown d,8 [ cis'] |
	 \stemUp a8 r8 r4 bes2 \bar "|."
}
 melodyThree =  \relative g' {
	 \stemDown
	 s1 |
	 r8 g8 [ g  g ] g [ f16 es ] f8 [ d ] |
	 es8 r8 es8 r8 d8 r8 d8 r8 |
	 s2 c8 r8 bes8 r8 |
	 a8 r8 d8 r8 g,8 r8  f'8 [ d ] |
	 es8 s8 s4 d16 s16 s8 s4 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s4 g8 [ g ] es8 r8 f8 [ f ] |
	 d8 r8 es8 [ d ] c8 s8 s4 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s2 r8 a'8 [ a  a ] |
	 a8 [ g16 f ] g8 [ e ] f [ d e f ] |
	 g8 [ f ] e8 r8 <a, e'>8 r8 d8 [ d ] |
	 <g, d'>8 r8 r8 a8 bes r8 r8 g8 |
	 a8 s8 s2. |
	 d8 [ c16 bes ] c8 [ a ] bes8 r8 g8 r8 |
	 a8 r8 r8  b8 c8 r8 a8 r8 |
	 d8 r8 g8 r8 d8 r8 s4 |
	 gis,8 r8  s4 g8 r8 f'8 r8 |
	 bes8 s4 e,8 a8 r8  r8 d,8 |
	 g8 s8 f8 s8 e8 s8 <a, e'> s8 |
	 d8 r8 d8 r8 <cis g'>8 r8 <d f>8 r8 |
	 bes8 r8 bes8 r8 a8 r8 r8 a8 |
	 a8 r8 r8 a'8 bes r8 a8 r8 |
	 g8 s8 s2. |
	 s4. d'8 d2 |
	 cis2 d2 |
    	 e,2 a2 |
	 d,2 d2 |
	 d2 d2 |
	 d2 d2 |
	 d2 d2 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 <g, d'>8 \stemUp g' [ g g ]<g, g'>8 [f'16 es ]  es8 [ d ] |
	 g,8  s8 s8 es'8 <g, d'>8 s8 g'8 s8 |
	 c,8 r8 aes8 r8 a8 r8 \stemDown g8 r8 |
	 c8 c [ c c ] c [ bes16 a ] bes8 [ g ] |
	 a8 f'8 [ f f ]  f [ es16 d ] es8 [ c ] |
	 d8 r8 g,8 r8 c8 r8 r8 d8 |
	 s8 <bes f'>8 [ <bes f'>8 <bes f'>8 ] f'8 r8 r4 |
	 s8 <c g'>8 [ <c g'>8 <c g'>8 ] g'8 r8 r4 |
	 f8 r8 es8 r8 e8 r8  s4 |
	 bes8 bes [ bes a ] g8 r8 a8 [ bes] |
	 c8 d [ d d ] <g, d'>8 r8 a [ bes ] |
	 es8 r8 s4 r8 d8 f8 r8 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s1 |
	 s4 r8 bes8 g8 r8 r8 a8 |
	 fis8 r8 r8 g8 es8 r8  e8 r8 |
	 d8 r8 r4 <c g'>8 r8 r4 |
	 bes8 r8 r4 a16 r16 r8 r4 |
	 g16 r16 r8 s4 es16 r16 r8 s4 |
	 a16 r16 r8 s2. |
	 bes8 r8  b8 r8  c8 r8 r4 |
	 d8 r8 s8 r8 d8 r8  g8 r8 |
	 e8. s16 s4 d8 [ d d d ] |
	 d8 [ c16 bes ] <c d>8 [ a ] <b g'>8 [ c16 (b) ] c8 [ g ] |
	 a8 [ bes16 (a) ] bes8 [ d ] es8 r8 r8 es8 |
	 d8 r8 r8 d8 d8 r8 r8 d8 |
	 es8 [ d ] d [ cis ] d8 r8 r4 |
	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
 	 s1 |
	 s1 |
	 d4. s8 s2 |
	 d8 r8 r4 <g, d'>2 \bar "|."
}
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
        { \clef treble \key f \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
