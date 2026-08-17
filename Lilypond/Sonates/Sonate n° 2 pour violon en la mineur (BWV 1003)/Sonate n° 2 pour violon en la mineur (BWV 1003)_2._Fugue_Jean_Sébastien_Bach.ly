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
  subtitle = "Sonate n° 2 pour violon en la mineur"
  subsubtitle = "6 sonates pour violon"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1003"
  tagline = ##f
}
melodyOne = \relative f' {
	r8 e'16  [ dis16 ] e8 [ e, ] |
	a8 [ c ] b [ d ] |
	c8 r8 r4 |
	r8 e8 [ e dis ] |
	e8 [ b16 a ] b8 [ cis ] |
	d8 [ a16 gis ] a8 [ b ] |
	s8 a'16 [ gis ] a8 [ a,] |
	e'8 [ g ] fis [ a ] |
	g8 [ e16 dis ] s8 g8 |
	g8 [a16 g ] a8 [ e ] |
	f4 s8 f8 |
	f8 [ g16 f ] g8 [d ] |
	e16 [ f e d ] c [ b a g ] |
	fis8 [ d'16 c ] d8 [ fis,] |
	gis16 [( a b c ) ] d8 [ f, ]  |
	e8 [ d'16 c ] d [ f e d ]  |
	c16 [ d c d ] d8. \prall [ c32 d ] |
	e8 r8 g4 |
	fis4 f |
	e4 a |
	gis4 g |
	fis4 b |
	ais4 a |
	gis8 [ g16 fis] g8 [ a ]|
	b8 [ fis16 e] fis8 [ gis ] |
	a8 [ a16 gis]  a8 [ b ] |
	c8 [ g16 fis] g8 [ a ] |
	b8 [ b16 a] b8 [ c ] |
	d8 [ a16 gis] a8 [ b ] |
	c8 s4. |
	d,,8 [ c''16 ( a ] g [ fis e d )] |
	b'8 s4. |
	c,,8 [ bes''16 (g ] f [ e d c )]|
	a'8 [ a16 ( f ] e [ d cis b )] |
	g'8 [g16 ( e ] d [ cis b a )] |
	f'16 [ g f e ] d [ c bes a ] |
	f'8 [ bes16 ( f ] e16 [ d c b )] |
	gis'8 [a16 gis] a8 [ a ] |
	a8 r8 r8 gis8 |
	g8 r8 f8 r8 |
	e8 r8 r8  e8 |
	e8 [ d16 cis16 ] d8 [ bes8 ] |
	gis8 [ f' ] e [ d ] |
	cis8. [ d16 ] b8. \prall [ a16 ]  |
	a16 [ e' c a ] s16 a16 [ s16 a ] |
	e16 [ (a) f (a) ] e [ ( a) d, ( a')] |
	a16 [ e' c a ] s16 a16 [ s16 a16 ]  |
	e16 [ (a) f (a) ] e [ (a) d, (a') ] |
	e16 [ a (gis a ] b [ a gis a )] |
	d,16 [ a' ( gis a ] b [ a gis a ) ] |
	e16 [ e' c a ] s16 a16 [ s16 a16 ] |
	dis,16 [ fis' c a ] gis [ (a)  dis, (a') ] |
	e16 [ b'' g e ] s16 e16 [ s16 e16 ] |
	b16 [ (e) c (e) ] b [ (e) a, (e') ] |
	e16 [ bes' g e ] s16 e16 [ s16 e ] |
	b16  [ (e) c (e) ] b [ (e) a, (e') ] |
	b16 [ e ( dis e]  fis [ e dis e)] ] |
	a,16 [ e' ( dis e ] fis [ e dis e )] ] |
	b16 [ b' g e ] s16 e16 [ s16 e ] |
	c16 [ (e) b (e) ] a, [ (a') c, ( a') ] |
	b,8 [ b'16 a ] b8 [ b, ] |
	e8 [ g ] fis [ a ] |
	g8 r8 r8 g8 |
	fis4 f4 |
	e8 [ a16 (gis) ] a [ (fis) g (e) ] |
	dis8 r8 r8 fis8 |
	b,8 [ e16 (dis) ] e [ (c) d (b) ] |
	c8 [ b ] a r8 |
	a8 [ fis'16 e ] fis8 [ fis, ] |
	b8 [ d ] cis [ e ] |
	dis8 [ fis ] b [ a ] |
	g8. [ a16 ] fis8.^\trill [ e16 ] |
	e8 r8 e4 |
	dis4 d4 |
	cis8 [ c16 b ] c8 [ d ] |
	e8 [ b16 a ] b8 [ cis ] |
	d4 d |
	cis4 c |
	b8 [ b16 a ] b8 [ c ] |
	d8 [ a16 g ] a8 [ b ] |
	r8 g'16 [ f ] g8 [ g,] |
	c8 [ e8 ] d8 [ f8 ] |
	e8 [ g8 ] f8 [ a8 ] |
	g8 [ c,16 (b ] c [ d e f32 g) ] |
	a8 s4. |
	a8 [ d,16 ( e ] fis [ g a b32 c) ] |
	b8 s4. |
	r8 c8 [c  b ] |
	c8 [ c16 b ] c [ g e c ] |
	g'8 [ b ] a [ c ] |
	b8 r8 r8 b8 |
	c8 r8 b8 r8 |
	bes8 r8 a8 r8 |
	b,16 [ c d e ] f [ g a f ] |
	g16 [ a g f ] e [ d c e ] |
	a,16 [ b c d ] e [ f g e ]  |
	f16 [ g f e ] d [ c b d ] |
	g,16 [ a b c ] d [ e f d ] |
	e8 r8 r8 e8 |
	e8 [ a16 g ] f [ e d f ] |
	b,16 [ d c b ] a [ g f d'] |
	e,16 [c' d, c ] g [ d' c' b] |
	c8 [ e16 d ] e8 [e,] |
	a16 [ b c a ] b [ c d b ] |
	c16 [ d e c ] d [ e f d ] |
	e8 [ a16 (gis) ] a16 [ (fis) g (e) ] |
	fis8  r8 r4 |
	gis8 s4. |
	a8 r8 r4 |
	d,16 [ e f e ] d [ c b a ]  |
	gis16 [ b e gis ] b [ cis d b ] |
	c16 [ a f e ] f [ c a c ] |
	b'16 [ f d c ] d [ b gis b ] |
	c16 [ e a gis ] a [ e c e ] |
	g16 [ e cis b ] cis [ a e g ] |
	f16 [ d' a g ] a [ f d f ] |
	b,16 [ d gis fis ] gis [ b d c ] |
	d16 [ f b a ] b [ f e d ] |
	c [ b a gis ] a [ c f c ] |
	b16 [ a g fis ] g [ b e b ] |
	a16 [ g f e ] f [ a d a ] |
	gis16 [ a b c ] d [ e f e ] |
	f16 [ e d cis ] d [ gis a b ] |
	c,16 [ b a c ] f, [ e' a d, ] |
	gis8 r8 r8 g8 |
	c,4 cis4 |
	d8 r8 r8 f8 |
	b,4 d4 ~ |
	d8 [ c16 d ] c8 [ c' ] |
	f,4 e |
	d8 [ c16 b ] c8 [ a' ] |
	e8 [ d16 c ] d8 [ b ] |
	c8 [ e ] a [ c, ] |
	b8 [ a'16 g ] a8 [ dis, ] |
	e8 [ c' ] b [ a ] |
	g8. [ a16 ] fis8. [ e16 ] |
	e8 [ b'16 a ] b8 [ b, ] |
	e8 [ g ] fis [ a ] |
	g8 r8 r4 |
	r8 e8 [ e es ] |
	e8 [ b16 c ] b8 [ b' ] |
	e,8 [ (c) ] d [ (b) ] |
	c8 [ e16 es ] e8 [ e, ] |
	r8 a'8 [ a gis ] |
	a8 [ c,16 b] c8 [ c ] |
	c8 [ d16 c ] d8 [ a ] |
	b8 r8 r8 bes8 |
	bes8 [ c16 bes ] c8 [ g ] |
	a8 [ f'16 g ] f8 [ e ] |
	d8 [ g16 a ] g8 [ f ] |
	e8 r8 g8 r8 |
	a8 r8  a8 r8 |
	r8 g16 [ a ] g8 [ f ] |
	e8 [ a16 bes] a8 [ g ] |
	f8 r8  fis8 r8 |
	g8 r8 gis8 r8 |
	a8 [ b ] c r8 |
	r8 c8 [ b a ] |
	gis8 [ a ] b8 r8 |
	r8 b8 [a  g ] |
	fis8 [ g ] a8 r8 |
	r8 g16 [ fis ] g8 [ b, ] |
	c8 [ e ] d [ f ] |
	e8 [ fis ] g8 r8 |
	g8. [ a16 ] fis8. \trill [ g16 ] |
	g8 [ b16 a ] b8 [ b, ] |
	cis16 [ e fis g ] a [ b, a g ] |
	fis8 [ a'16 g ] a8 [ cis, ] |
	dis16 [ (e) dis (e) ] fis [ (g) a, (b) ] |
	c16 [ (d) fis, (g) ] a [ (b) dis, (e) ] |
	fis16 [ g a b ] cis [ dis e fis ] |
	g16 [ a g a ] b8 [ b, ] |
	e8 s4. |
	dis8 [ b16 c ] b8 [ b' ] |
	e,8 [ (c) ] d [ (b) ] |
	c4 b4 |
	a8 [ (b) ] c4 ~ |
	c8 [ fis16 (c) ] b [ (a) g (fis) ] |
	g16 [ (dis e g) ] c [ e, d b' ] |
	a16 [ (e c) e ] a [ c, b g' ] |
	f16 [ (c a) c ] f [ a, g e' ] |
	es16 [ fis a c ] fis [ b, a fis' ] |
	g,16 [ (fis g) b ] e [ a, gis d' ] |
	c16 [ (b c) e ] f [ a, g e' ] |
	dis16 [ (e fis g ] a) [ fis, e c' ] |
	dis,16 [ (e fis g ] a) [ b, dis fis ] |
	g16 [ c (b) dis ] (e) [ g (fis) ais ] |
	b8 [ e,8 ] g16 [ (fis) e (dis) ] |
	e8 [ g,16 a ] g8 [ g' ] |
	g8 r8  cis,4 |
	d8 s4. |
	e8 r8 b4 |
	c8 s4. |
	b8 s4. |
	c,16 [ (d c) a ] e' [ (f e) c ] |
	a'16 [ (b a) e ] c' [ (d c) a ] |
	bes8 [ g'16 f ] g8 [ g, ] |
	a16 [ c (bes a) ] bes [ d (c bes) ] |
	c16 [ es (d c) ] d [ f (e d) ] |
	e8 r8 r8 e8 |
	f8 r8 r8 f8 |
	g8 r8 r8 g8 |
	a8 [ g ] bes [ a ] |
	g8 [ f16 e ] f [ a g f ] |
	e16 [ g (f e) ] d [ c bes a ] |
	bes16 [ (a bes) d, ] f [ bes d f ] |
	bes16 [ (a bes) f ] d [ bes f d ] |
	c'16 [ (bes c) e, ] g [ c e g ] |
	bes16 [ a (bes g) ] e [ c g e ] |
	c'16 [( bes c) f, ] a [ c f g ] |
	a16 [ (g a) f ] c [ a f a ] |
	c16 [ (bes c) fis, ] a [ c es fis ] |
	a16 [ (g a) es ] c [ a fis a ] |
	bes16 [ (a bes) g ] bes [ d fis a ] |
	g16 [ (fis g) d ] bes [ g es d ] |
	cis16 [ (b cis) e ] a [ cis e f ] |
	g16 [ (f g) e ] cis [ a e cis ] |
	d16 [ (cis d) f ] a [ d f c, ] |
	bes16 [ (a bes) f' ] bes [ d f a,, ] |
	g16 [ d' g a ] bes [ d es g ] |
	cis,8 [ a'16 g ] a8 [ a, ] |
	d8 [ f ] e [ g ] |
	f8 r8 r8 f8 |
	e8 r8 es8 r8 |
	es8 [ d16 cis ] d8 [ d' ] |
	g,16 [ (f e g) ] f [ (e d f) ] |
	es16 [ (d cis d) ] bes'8 [ a ] |
	es16 [ (cis) d8 ] bes'8 [ (a) ] |
	d,8 [ cis ] g' [ bes, ] |
	a8 [ g' ] f [ e ] |
	a,8 [ d ] e, [ cis' ] |
	d8 [ f,16 e ] f8 [ g ] |
	a8 [ e16 d ] e8 [ fis ] |
	g4 g |
	fis4 f |
	e8 [ e16 d ] e8 [ f ] |
	g8 [ d16 c ] d8 [ e ] |
	f4 f |
	e4 es |
	d8 [ bes'16 c ] bes8 [ a ] |
	g8 [ c16 d ] c8 [ bes ] |
	a4 a |
	bes4 b |
	c8 [ c16 d ] c8 [ bes ] |
	a8 [ d16 e ] d8 [ c ] |
	bes4 b |
	c4 cis |
	d8 [ a16 bes ] a8 [ a' ] |
	d,8 [ (bes) ] c8 [ (a) ] |
	bes16 [ (a g a ] bes8 ) [ g' ] |
	c,8 [ (a) ] bes [ (g) ] |
	a8 [ c16 bes ] c8 r8 |
	r8 f8 r8 es8 |
	r8 d16 [ c ] d8 r8 |
	r8 g8 r8 f8 |
	r8 e16 [ f ] g8 [ a ] |
	bes8 [ (a) ] a [ (g) ] |
	g8 [ (f) ] f [ (e) ] |
	d16 [ e d e ] f8 [ a,, ] |
	gis8. [ f''16 ] e [ d c b ] |
	c16 [ (a f) e' ] d [ c b a ] |
	gis8 [ b'16 a ] b8 [ d, ] |
	c16 [ b' (a gis) ] a8 [ c, ] |
	b8 [ (a') ] g [ bes, ] |
	a16 [ g' (f e) ] f8 [ a, ] |
	g8 [ f' ] e [ g, ] |
	f16 [ e' (d c) ] d8 [ f, ] |
	e8 [ (d') ] c [ e, ] |
	f8 [ bes16 a ] bes8 [ d ] |
	d8 [ (f) ] f [ bes ] |
	gis8 [ f16 e ] a8 r8 |
	a8 r8 r8 gis8 |
	a8 r8 e8 r8 |
	a8 r8  g8 r8 |
	f8 [ (e) ] e [ (d) ] |
	d8 r8 r8 c8 |
	bes16 [ (c d e) ] f8 [ a, ] |
	gis8 [ f' ] e [ d ] |
	c8. [ d16 ] b8. [ a16 ] |
	a8 s4. |
	a'8 r8 gis8 r8|
	a8 [ a,16 b] a8 [ a'] |
	e8 [ c ] d [ b ]|
	c8 r8 cis r8 |
	a'8 [ f ] g [ e ] |
	f32 [ g a g f e d cis ] d [ e f e d c b a ] |
	b32 [ c d c b a gis fis ] gis [ a b a gis fis e d ] |
	r8 a''8 a [ gis ] |
	a2 \bar "|."
}
melodyTwo =  \relative f' {
	s2 |
	s2 |
	r8 a16  [ gis ] a8 [ a,8 ] |
	e'8 [ g ] fis [ a ] |
	gis4 g |
	fis4 f |
	e4 r8 fis8 |
	g4 dis4 |
	e4 r8 e8 |
	a4 r8 a8 |
	d,4 r8 d8 |
	g4 r8 g8 |
	c,8 s4. |
	c8 r8 r8 c8 |
	b8 r8 r8 a8 |
	gis8 s4. |
	a16 s8. f'4 |
	e8 [ b'16 a ] b8 [ cis ] |
	d8 [ a16 g ] a8 [ b ] |
	c8 [ c16 b ] c8 [ d ] |
	e8 [ b16 a ] b8 [ cis ] |
	d8 [ d16 cis ] d8 [ e ] |
	fis8 [ cis16 b ] cis8 [ dis8 ] |
	e4 e |
	dis4 d |
	c4 f |
	e4 es |
	d4 g |
	fis4 f |
	e8 [ a16 gis ] a8 [ a, ] |
	s2 |
	g8 [ g'16 fis ] g8 [ g, ] |
	s2 |
	f8 s4. |
	e8 s4. |
	d16 s8. s4 |
	d8 s4.|
	d8 r8 r8 dis8 |
	e8 [ e'16 dis ] e8 [ e, ] |
	a,8 [ cis ] b [ d ] |
	cis8 r8 r8 cis8 |
	d8 r8 r8 d8 |
	d8 [ b ] c [ d ] |
	e8 [d] e4 |
	a,16 s8. gis'16 [ s16 a16 ] s16 |
	r8 d,8 [ c b ] |
	a16 s16_\markup { piano } s8 gis'16 [ s16 a16 ] s16 |
	r8  d,8 [ c b ] |
	a16 s16_\markup { forte } s8 s4 |
    	b16 s16_\markup { piano } s8 s4  |
    	c16 s16_\markup { forte } s8 gis'16 [ s16 a16 ] s16   |
    	s8_\markup { piano } s8 s4  ] |
    	s8_\markup { forte } s8 dis16 [ s16 e ] s16 |
   	r8 a,8 [ g fis ] |
    	e16 s16_\markup { piano } s8 dis'16 [ s16 e16 ] s16  |
    	r8 a,8 [ g fis ] |
    	e16 s16_\markup { forte } s8 s4 |
	fis16 s16_\markup { piano } s8 s4 |
    	g16 s16_\markup { forte } s8 dis'16 [ s16 e16 ] s16  |
	a,8 [ g ] fis [ e ] |
 	dis8 r8 r8 a'8 |
	g r8 b8 r8 |
	e,8 [ e'16 dis ] e8 [ e,] |
	a8 [ c ] b [ d ] |
	c8 r8 r8 a8 |
	a8 [ b16 (a) ] b16 [ (g) a (fis) ] |
	g8 r8 r8 gis8 |
	a16 [ e g e ] fis [ e dis e ] |
	dis8 r8 r8 dis8 |
	e8 r8 a,8 r8 |
	a8 r8 g8 [ a ] |
	b8 r8 dis8 r8  |
	e8 [ g16 fis ] g8 [ a ] |
	b8 [ fis16 e ] fis8 [ gis ] |
	a4 a |
	gis4 g |
	fis8 [ f16 e ] f8 [ g ] |
	a8 [ e16 d ] e8 [ fis ] |
	g4 g |
	fis4 f |
	e8 r8 r8 c8 |
	a8 r8 b8 r8 |
	c8 r8  d8 r8 |
	e8 s4. |
	f8 s4. |
	fis8 s4. |
	d'8 [ g16 fis ] g8 [ g,]   |
	c8  [ e d f ] |
	e8 r8 r4 |
	r8 g8 [ g fis ] |
	g8 g,16 [ fis ] g8 [g,] |
	c8 [ e ] d [ f ]  |
	e8 [ g ] f [ a ] |
	g8 s4.  |
    	e8 s4. |
	f8 s4.  |
	d8 s4. |
	b8 s4. |
	c8 [ bes16 a ] bes8 [ g ] |
	a8  s4. |
	g16 s8. s4 |
	s2  |
	c8 r8 r8 c8 |
	c8 r8 b8 r8 |
	a8 r8 b8 r8 |
	c8 s4. |
	c8 [ d16 (c) ] d [ (b) c (a) ] |
	<b e>8 s4. |
	a8 s4. |
	a8 s4. |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	e''8 [ e,16 f ] e8 [ e'] |
	a,8 [ (f) ] g [ (e) ] |
	f8 [ d16 e ] d8 [ d' ] |
	g,8 [ (e) ] f [ (d) ] |
	e4 r8 e'8  |
	e8 [ d ] (d8) [ c8 ] |
	f,8 [ g ] a [ f ] |
	g8 r8 g,8 r8 |
	c8 r8 r4  |
	dis8 r8 r8 a'8 |
	g8 [ fis ] g [ a ] |
	b8 [ a ] b4 |
	e,8 r8 r4 |
	r8 e'8 [ e dis ] |
	e8 [ e,16 fis ] e8 [ e' ] |
	b8 [ g ] a8 [ fis ] |
	g8 r8 r4  |
	gis8 r8 e8 r8 |
	a8 r8 r8 d,8 |
	<c e>8 r8  e8 r8 |
	a,8 r8 r8 a8 |
	d8 r8 r8 d8 |
	g,8 r8 r8 g8 |
	c8 r8 r8 c8 |
	f8 r8 a8 r8 |
	bes8 r8 b8 r8 |
	r4 e,8 r8 |
	f8 r8 fis8 r8 |
	g8 r8 e8 r8 |
	a8 r8 a,8 r8 |
	d8 r8 <b d>8 r8  |
	e8 r8 e8 r8 |
	f8 r8 s4 |
	d8 [ e' d c ] |
	e,8 s4. |
	a,8 [ d' c b ] |
	d,8 s4.  |
	g,8 [ b'16 a ] b8 [ f ] |
	e8 r8 b8 r8 |
	c8 s4. |
	d8 r8 r4 |
	g,8 r8 r8 g8 |
	a8 r8 r4 |
	a8 r8 r4 |
	b8 s4. |
	s2 |
	s2 |
	e8 r8 r8 d8 |
	<c e>8 s4. |
	b8 r8 r8 a8 |
	g8 r8  gis8 r8 |
	a8 s4. |
	fis'4. e8 |
	dis8 s4. |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	r8 g8 [ a  b ] |
	e,8 r8 r8 e8 |
	a,8 r8 bes'8 [ (g)] |
	f16 [ e d e ] f [ a d f ]  |
	g,,8 r8 aes'8 [(f)] |
	e16 [ d c d ] e [ fis gis a ] |
	gis,8 s4. |
	s2 |
	s2 |
	e'8 r8 r8 c8 |
	f8 r8 d8 r8 |
	a8 r8 bes8 r8 |
	g'8 [ bes,16 a] bes8 [g'] |
	a8 [ a,16 g] a8 [a'] |
	e8 r8 r8 e8 |
	f8 [ e'] d [c] |
	bes8 r8 b8 r8 |
	c8 r8 s4 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	g,8 r8 r8 g'8 |
	f8 r8 a8 r8 |
	d,8 [ d'16 cis ] d8 [d,] |
	g8 [ bes ] a [c ] |
	bes,8 s4.  |
	bes'8 r8 a8 r8 |
	g8 s4. |
	f8 s4. |
	e8 r8 r8 d8 |
	cis8 r8 d8 [ g,] |
	a8 r8 a8 r8 |
	d8 r8 d4 |
	cis4 c |
	b8 [ b16 a ] b8 [ cis] |
	d8 [ a16 g ] a8 [ b ] |
	c4 c |
	b4 bes |
	a8 [ a16 g ] a8 [ b ] |
	c8 [ g16 a ] g8 [ a ]|
	bes8 r8 d4 |
	es4 e |
	f8 [ f16 g ] f8 [ es ] |
	d8 [ g16 a ] g8 [ f ] |
	e4 e |
	f4 fis |
	g8 [ g16 a ] g8 [ f ] |
	e8 [ a16 bes ] a8 [ g ] |
	f8 s4. |
	fis8 r8 d8 r8 |
	g8 s4. |
	e8 r8 c8 r8 |
	f8 [ a16 g ] f8 [ es ] |
	d8 [ bes'] c, [ a'] |
	bes,8 [ bes'16 a ] g8 [ f ] |
	e8 [ c'] d, [ b'] |
	c,8 [ c'16 d ] e8 [ d ] |
	a,8 r8 a'8 r8 |
	d,8 r8 c8 r8  |
	b8 r8 s4 |
	s2 |
	s2 |
	e8 s4. |
	e8 s4. |
	e4 r8 d8 |
	cis16 s8. d'8 [ c,] |
	b8 [ d'] c [b,] |
	a16 s8. r8 a8 |
	gis8 r8 a'8 [ a,] |
	d8 r8 r8 f8 |
	f8 [(bes)] bes [ (d) ] |
	e,8 s4. |
	r8 e16 [f] d8 [d] |
	a'8 [f] g [ e ] |
	f8 [d] e [a,] |
	d8 s4. |
	f8 [ a16 g ] f8 [ e ] |
	d4 r8 d8 |
	d8 [ b] c [ d ]  |
	e8 [d] e4 |
	a8 a,16 b ] a8 [ a'] |
	e8 [ c] d [ b ] |
	c8 s4. |
	c8 r8 b8 r8 |
	a8 s4. |
	a8 s4. |
	d16 s8. s4 |
	s2 |
	c8 [ a ] s4 |
	a2 \bar "|."
}
melodyThree =  \relative c'' {
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	c4 s4 |
	b4 b |
	b4 e8 [ b ] |
	cis4 s8 cis8 |
	a8 [ d16 cis ] d8 [ a ] |
	b4 s4 |
    	<g c>16 s16 s4. |
    	s2 |
    	s2 |
    	s2 |
	e16 s8. s4 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
    	s2 |
	d'8 s4. |
	s2 |
	c8 s4. |
	cis8 s4. |
	d16 s8. s4 |
	bes8 s4. |
	b8 [ c16 b ] c8 [ c ] |
	b8 s8 s8 d8 |
	<e, cis'>8 r8 <a d>8 r8  |
	<< { a8 s4 a8 } \\
	{ g8 [ g16 f ] g8 [a ] } >> |
	<f a>8 s4 f8 |
	s8 <gis d'>8 <a c>8 s8 |
	s2 |
	s2 |
	s2  |
	e16 s8. s4 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2  |
	b'16 s8. s4 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	b8 s4 b8 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	g8 s8 g8 s8 |
	fis8 s8 <e b'>8 [ <e c'>8 ] |
	<e b'>8 s8 a8 s8 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	c8 s4. |
	g8 s8 g8 s8 |
	<g c>8 s8 b8 s8 |
	c8 s4. |
	c8 [ f16 e ] f8 [ c ] |
	d8 s4. |
	g,8 s4.  |
	s2 |
	s2 |
	s2 |
	s4. <g d'>8  |
	<g e'>8 s8 f'8 s8  |
	c8 s8 c8 s8 |
	s2 |
	c8 s4. |
	s2 |
	a8 s4. |
	s2 |
	<g c>8 s4 <g c >8 |
	<f c'>8 s4. |
	f16 s8. s4 |
	s2 |
	e8  s4.  |
	fis8 s8 gis8 s8 |
	a8 s8 a8 s8 |
	<e a>8 s4.  |
	<d a'>8 s4. |
	d'8 [ e16 (d)] e [ (c) e (b)] |
	<e, c'>8 [ a16 (g)] a16 [ (f) g ( e)] |
	<f b'>8 s4.  |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s4. c'8 |
	c8 s8 f,8 [ d ] |
	e8 s4. |
	s2 |
	s8 dis'8 e8 s8 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	a,8 [ c ] b [ d ] |
	<e, c'>8 [ a16 gis] a8 [ e ] |
	fis8 s4 fis8 |
	d8 [ g16 fis ] g8 [ d ]|
	e8 s4. |
	s2 |
	s2 |
	c'8 [ c16 d ] c8 [ b] |
	a8 [ d16 e16 ] d8 [ c8 ] |
	b8 s8 b8 s8 |
	c8 s8 <e, cis'>8 s8 |
	a8 [ d16 e ] d8 [ c ] |
	b8 [ e16 f ] e8 [ d ] |
	c8 [ d ] e [ e, ] |
	s2 |
	b'8 [ c ] d [ e, ] |
	s2 |
	a8 [ b ] c [ d, ] |
	s2 |
	s4 g8 s8 |
	<g c>8 [ a ] bes [ cis, ] |
	a'8 [ b8 ] c4 |
	<d, b'>8 s4 g8 |
	g8 s4. |
	s2  |
	fis8 s4. |
	s2 |
	s2 |
	b8  s4. |
	b8 [ c16 ( b) ] a [ (g) fis (e) ] |
	fis8 s4 <fis dis'>8 |
	<e b'>8 s8 e8 s8 |
	a8 [ (fis)] g [ ( e)] |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s4. b'8 |
	<< { cis8 [ a ] s4 } \\
	{ e8 s4.} >> |
	s2 |
	<< { b'8 [ g ] s4 } \\
	{ d8 s4.} >> |
	s2 |
	e16 [ (f e) c ] d [ (e d) b ] |
	s2 |
    	s2 |
	s2 |
	s4 g'8 s8 |
	f8 s8 f8 s8 |
	c'8 s4 c8 |
	c8 s4 c8 |
	c8 [ bes16 a ] bes8 [ c ] |
	c8 s4. |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	e,8 s4.  |
	s2 |
	a8 s4 a8 |
	bes8 s4. |
	f8 s4. |
	s2 |
	s2 |
	s2 |
	s2 |
	e8 s8 a8 [ <g bes>8 ] |
	f8 s4.] |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s4 e8 s8 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	< e cis'>8 s8 cis'8 s8 |
	a8 s8 a8 s8 |
	gis8 s4. |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	s2 |
	d'8 s8 c8 [ b16 ( a )] |
	b8 s4 d8 |
	c8 s8 cis8 s8 |
	d8 s8  cis8 s8 |
	a8 [ (g)] g [(fis)] |
	s2 |
	s2 |
	s8 <gis d'>8 <a c>8 s8 |
	s2 |
	s2 |
	c8 s8 b8 s8 |
	<e, a>8 s4. |
	<e a>8 s8 gis8 s8 |
	a8 [ f] g8 [e]  |
	<f d'>8 s8 <e cis'>8 s8 |
	a16 s8. s4 |
        s2 |
	s8 <e c'>8 <e b'>8 [ <e d'>]  |
	<e cis'>2 \bar "|."
}
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key a \minor \time 2/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
