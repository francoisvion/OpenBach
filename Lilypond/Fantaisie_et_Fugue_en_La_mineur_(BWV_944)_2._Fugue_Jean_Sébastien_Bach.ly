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
  subtitle = "Fantaisie et Fugue en La mineur"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 944"
  tagline = ##f
}
sopranoOne =   \relative a' {
	a16 [ c b a ] e' [ b c d ] e, [ d' c b ] |
	c16 [ d c b ] a [ e' f g ] a [ g f e ]  |
	f16 [ e d e ] f [ e d c ] b [ d c b ]  |
	e16 [ d c d ] e [ d c b ] a [ c b a ] |
	d16 [ c b c ] d [ c b a ] gis [ b a gis ]  |
	a16 [ e a c ] e [ a, c e ] a [ g a fis ] |
	g16 [ e fis g ] dis4.-\prallmordent dis8|
	e4 r8 b'8 [ g b ]|
	a8 [ c fis, c' d, c' ] |
	g8 [ b e, b' c, b' ] |
	fis8 [ a dis, a' b, a' ] |
	g4 r4 g4 ~ |
	g16 [ e f g ] a,8 [ g' cis, g' ] |
	f4 r4 f4 ~ |
	f16 [ d e f ] g,8 [ f' b, f' ] |
	e16 [ f e d ] c [ b a g ] fis [ a  b c ] |
	d16 [ e d c ] b [ a gis fis ] e [ gis a b ] |
	c4 b4. b8 |
	a4 r4 r8 c'8 |
	c4 r4 r8 b8 |
	b4 r4 r8 a8 |
	a4 r8 f8 [ e d ] |
	c2 r8 c8 |
	b2 r8 bes8 |
	a2 d4 ~ |
	d16 [ e, gis b ] e [ b e gis ] b [ f e d ] |
	c4 c r4 |
	r4 c4 r4 |
  	r4 c4 r4 |
	r16 c16 [ b a ] f'16 [ e d c ] b [ d c b ] |
	e4 r4 r16  d16 [ c b ]  |
	c4 r16 c16 [ b a ] gis4 |
	a4 r4 r4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	e16 [ g fis e ] b' [ fis g a ] b, [ a' g fis ] |
	g16 [ a g fis ] e [ b' c d ] e [ d c b ] |
	c16 [ b a b ] c [ b a g ] fis [ a g fis ] |
	b16 [ a g a ] b [ a g fis ] e [ g fis e ] |
	a16 [ g fis g ] a [ g fis e ] dis [ fis e dis ] |
  	e16 [ b e g ] b [ e, g b ] e [ d e cis ] |
	d2. ~ |
	d2. ~ |
	d4 c4 ~ c16 [ bes c a ] |
	es'2. ~ |
	es4 d4 ~ d16 [ c d b ] |
	e2. ~ |
	e4 es4 ~ es16 [ d e cis ] |
	g'2. ~ |
	g4 f4 ~ f16 [ e f d ] |
	bes'4 ~ bes16 [ a g f ] e [ g f e ] |
	f4 ~ f16 [ e d c ] b [ d c b ] |
	cis4 ~ cis16 [ d cis d ] e4 ~ |
	e8 d4 d cis8 |
	d4 r4 r8 f8 |
	f4 r4 r8 e8 |
	e4 r4 r8 d8 |
	d4 r8 bes8 [ a g ] |
	f4 f r8 a8 |
	d4 d r8 d8 |
	cis8-\prall [ d ] e2 ~ |
	e8 [ a, ] d4. cis8 |
	d4 r4 f4 ~ |
	f16 [ d e f ] g,8 [ f' bes, f' ] |
	e4 r4 es4 ~ |
	es16 [ c d es ] f,8 [ es' a, es' ] |
	d16 [ es d c ] bes8 r8 r4 |
	e16 [ f e d ] cis8 r8 r4 |
	a'16 [ f e d ] g [ e f g ] a, [ g' f e ] |
	f16 [ g f e ] d4 ~ d16 [ d e f ] |
  	g16 [ e d c ] f [ d e f ] g, [ f' e d ] |
	e16 [ f e d ] c4 ~ c16 [ c d e ] |
	f16 [ d  c b ] e [ c d e ] a, [ e' d c ] |
	b16 [ c b a ] g4 r4 |
	c2 b4 |
	c4 r4 e4 |
	e4 d r4 |
	d4 c r4 |
	a4 g2 ~ |
	g4 r4 r4 |
	r16 c,16 [ f a ] c [ f, a c ] f [ e f c ] |
	d4 r4 r4 |
	r16 d,16 [ g b ] d [ g, b d ] g [ f g d ] |
	e4 e r4 |
	e4 e r4 |
	e4 e r4 |
	r16  e16 [ d c ] a' [ g f e ] d [ f e d ] |
	e4 r4 r16 f16 [ e d ] |
	e4 r16 e16 [ d c ] b4 |
	r8 c4 c8 ~ c16 [ b c b ] |
	c2. |
	bes4 a2 ~ |
	a16 [ c b a ] d [ b c d ] e, [ d' c b ] |
	c4 b2 ~ |
	b16 [ d cis b ] e [ cis d e ] fis, [ e' dis cis ] |
	dis2 c4 |
	e16 [ g fis e ] a2 ~ |
	a8 g4 g8 ~ g16 [ g fis e ] |
	dis16 [ fis dis e ] fis [ dis e fis ] a, [ c b a ] |
	g16 [ b g a ] b [ g a b ] e, [ g fis e ] |
	dis16 [ fis dis e ] fis [ dis e fis ] r4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
  	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	a16 [ c b a ] e' [ b c d ] e, [ d' c b ] |
  	c16 [ d c b ] a [ e' f g ] a [ g f e ] |
	f16 [ e d e ] f [ e d c ] b [ d c b ] |
	e16 [ d c d ] e [ d c b ] a [ c b a ] |
	d16 [ c b c ] d [ c b a ] gis [ b a gis ] |
	a16 [ e, a c ] e [ a, c e ] a [ g a fis ] |
	g2. ~ |
	g2. ~ |
	g4 f4 ~ f16 [ es f d ] |
	aes'2. ~ |
	aes4 g4 ~ g16 [ f g e ] |
	bes'2. ~ |
	bes4 aes4 ~ aes16 [ g a fis ] |
	c'2. ~ |
	c4 bes4 ~ bes16 [ a bes g ] |
	es'4 ~ es16 [ d c bes ] a [ c bes a ] |
	bes4 ~ bes16 [ a g f ] e [ g fis e ] |
	fis4 ~ fis16 [ g fis g ] a4 ~ |
	a8 g4 g fis8 |
	g2. |
	f4 e2 ~|
  	e16 [ g fis e ] a [ fis g a ] b, [ a' g fis ] |
	g4 fis2 ~ |
	fis16 [ a gis fis ] b [ gis a b ] cis, [ b' a gis ] |
	a4 ais r4 |
	b16 [ d cis b ] e [ cis d e ] fis, [ e'd cis ]|
	d4 dis r4 |
	e16 [ g fis e ] a [ fis g a ] b, [ a' g fis ] |
	g4 gis r4  |
	a16 [ c, b a ] d [ b c d ] e, [ d' c b ] |
	c2 ~ c16 [ c b a ] |
	gis2. |
	a16 [ c b a ] d2 ~  |
	d8 c4 c8 ~ c16 [ c b a ] |
	gis16 [ b gis a ] b [ gis a b ] d, [ f e d ] |
	c16 [ e c d ] e [ c d e ] a, [ c b a ] |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	a'16 [ c b a ] e' [ c d e ] a, [ g' f e ] |
	f16 [ e d e ] f [ e d c ] b [ c d c ] |
  	b [ a gis a ] b [ a gis f ] e16 [ d c b ] |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	r1*3/4 |
	c16 [ e c d ] e [ c d e ] a, [ g' fis e ] |
	dis16 [ a' fis g ] a [ fis g a ] dis, [ c' b a ] |
	gis16 [ b gis a ] b [ gis a b ] e, [ d' c b ] |
  	c16 [ e c d ] e [ c d e ] a, [ g' fis e ] |
	dis16 [ a' fis g ] a [ fis g a ] dis, [ c' b a ] |
	gis16 r16 r8 r4 r4 |
	r16 g16 [ f e ] a [ e f g ] a, [ g' f e ] |
	f16 [ e d e ] f [ e d c ] b [ d c b ] |
	e16 [ d c d ] e [ d c b ] a [ c b a ] |
	d16 [ c b c ] d [ c b a ] gis [ b a gis ] |
	c16 r16 r8 r4 r4 |
	r8 a8 a4 ( gis8.-\prallup) [ a16 ] |
	a4 r4 r4 |
}
sopranoTwo =   \relative e' {
	 s1*3/4 |
	 s1*3/4 |
	 s1*3/4 |
	 s1*3/4 |
	 s1*3/4 |
	 s1*3/4 |
	 e16 [ g fis e ] b' [ fis g a ] b, [ a' g fis ] |
	 g16 [ a g fis ] e [ b' c d ] e [ d c b ] |
	 c16 [ b a b ] c [ b a g ] fis [ a g fis ] |
	 b16 [ a g a ] b [ a g fis ] e [ g fis e ] |
	 a16 [ g fis g ] a [ g fis e ] dis [ fis e dis ] |
	 e16 [ b e g ] b [ e, g b ] e [ d e b ] |
	 cis4 r16 d16 [ cis b ] a [ g fis e ] |
	 d16 [ a d f ] a [ d, f a ] d [ c d a ] |
	 b4 r16 c16 [ b a ] g [ f e d ] |
	 c4 r4 r16 e16 [ d c ]|
	 b4 r4 r16 d16 [ c b ] |
	 a8 [ a' ~] a [ a ] gis4 |
	 a4 r8 e'8 [ c e ] |
	 d8 [ f b, f' g, f' ] |
	 c8 [ e a, e' f, e' ] |
	 b8 [ d gis, d' e, b' ] |
	 b4 a r8 a8 ~ |
	 a4 g r8 g8 ~ |
	 g4 f2 |
	 s2 e4 ~ |
	 e16 [ b' a gis ] a4 r4 |
	 r16 b16 [ a gis ] a4 r4 |
  	 r16 b16 [ a gis ] a4 r4 |
	 r1*3/4 |
	 r16 gis16 [ fis e ] a [ b c d ] e,4 ~ |
	 e4 r4 r16 f16 [ e d ] |
	 c4 ~ c16 [ d e f ] gis,8. [ gis16 ] |
	 a16 [c b a ] e' [ b c d ] e, [ d' c b ]  |
	 c16 [ d c b ] g [ e' f g ] a [ g f e ] |
	 f16 [ e d e ] f [ e d c ] b [ d c b ] |
	 e16 [ d c d ] e [ d c b ] a [ c b a ] |
	 d16 [ c b c ] d [ c b a ] gis [ b a gis ] |
	 a16 [ e a c ] e [ a, c e ] a [ g a e ] |
	 fis4 r16 g16 [ fis e ] d [ c b a ] |
	 g16 [ d g b ] d [ g, b d ] g [ fis g dis ] |
	 e4 r16 fis16 e d ] c [ b a g ] |
	 fis8. [ e'16 ] dis16 [ e dis e ] a, [ c b a ] |
	 g'16 [ dis e fis ] dis4.-\prallmordent dis8 |
	 e4 r16 a16 [ g fis ] g [ b a g ] |
	 a16 [ b c b ] a [ g fis e ] d [ c' b a ] |
	 g16 [ a b a ] g [ fis e d ] c [ b' a g ] |
	 fis16  [ g a g ] fis [ e dis cis ] b [ a' g fis ] |
	 g4 r16 e'16 [ b g ] e [ g a b ] |
	 c16 [ e, a c ] e [ a, c e ] a [ g fis e ] |
	 dis16 [ e fis e ] dis [ cis b a ] g [ fis e dis ] |
	 e16 [ fis g fis ] e [ d c b ] a [ a fis e ] |
	 c'16 [ b a g ] fis [ g a b ] dis,8. [ dis16 ] |
	 e4. e8 dis4 |
	 e4 r8 b'8 [ g b ] |
	 a8 [ c fis, c' d, c' ] |
	 g8 [ b e, b' c, b' ] |
	 fis8 [ a dis, a' b, fis' ] |
  	 g4 r4 r4 |
	 r16 fis16 [ b d ] fis [ b, d fis ] b [ a b fis ] |
	 gis2. ~ |
	 g16 [ fis gis e ] a4 ~ a8. [ a16 ~ ] |
	 a2. ~ |
	 a16 [ g a f ] bes4 ~ bes8. [ b16 ~ ] |
	 b2. ~ |
	 b16 [ a b g ] c4 ~ c8. [ cis16 ] |
	 c2. ~ |
	 a16 [ b cis a ] d4 ~ d8. [ d16 ~ ] |
	 d8 [ g ] cis,4 r4 |
	 r8 d8 gis,4 r4 |
	 r16 a16 [ g f ] e4 ~ e16 [ g f e ] |
	 f4 e e |
	 d4 r8 a'8 [ f a ] |
	 g8 [ bes e, bes' c, bes' ] |
	 f8 [ a d, a' bes, a' ] |
	 e8 [ g cis, g' a, e' ] |
	 e4 d r8 f8 |
	 f4 f r8 f8 |
	 b4. b8 [ a-\prall g ] |
	 f4. bes8 [ e, a ] |
	 f4 r4 r4 |
	 r4 r4 bes4 ~ |
	 bes4 r4 r4 |
	 r4 r4 a4 ~ |
	 a4 r16 a16 [ g f ] e [ d cis b ] |
	 cis4 r16 b'16 [ a g ] f [ e d cis ] |
	 d8 d4 d4 cis8 |
	 r8 d8 ~ d16 [ e d c ] b8 r8 |
  	 r8 c4 c b8 |
	 r8 c8 ~ c16 [ d c b ] a8 r8 |
	 r8 c4 c4 f8 ~ |
	 f4 ~ f16 [ f e d ] c [ b a g ] |
	 c16 [ e d c ] g' [ d e f ] g [ f e d ] |
	 e16 [ f e d ] c [ g' a bes ] c [ bes a g ] |
	 a16 [ g f g ] a [ g f e ] d [ f e d ] |
	 g16 [ f e f ] g [ f e d ] c [ e d c ] |
	 f16 [ e d e ] f [ e d c ] b [ d c b ] |
	 c16 [ g c e ] g [ c, e g ] c [ bes c g ] |
	 a4 r4 r4 |
	 r16 a,16 [ d fis ] a [ d, fis a ] d [ c d a ] |
	 b4 r4 r4 |
	 r16 d16 [ c b ] c4 r4 |
	 r16 d16 [ c b ] c4 r4 |
	 r16 d16 [ c b ] c4 r4 |
	 r1*3/4 |
	 r16 b16 [ a g ] c [ d e f ] g,4 ~ |
	 g4 r4 r16 a16 [ g f ] |
	 e4 d d |
	 e16 [ b a g ] d' [ a b c ] d, [ c' b a ] |
	 g16 [ f' e d ] g [ e f g ] a, [ g'f e ]  |
	 f4 e2 ~ |
	 e16 [ g fis e ] a [ fis g a ] b, [ a' g fis ] |
	 g4 fis2 ~ |
	 fis4 a c |
	 b4 c8 [ a ] dis4-\prallmordent |
	 e4 cis ais |
	 b8 r8 r4 r4 |
	 r1*3/4 |
	 r2 a,16 [ c b a ] |
	 s2.|
	 s2.|
	 s2.|
	 s2.|
	 s2.|
	 s2.|
	 s2.|
	 s2.|
	 s4 e'16 [ a, c e ] a [ g a e ] |
  	 f16 [ a, d f ] a [ d, f a ] d [ cis b a ] |
	 gis4 r4 g4 ~ |
	 g16 [ e f g ] a,8 [ g' cis, g' ] |
	 fis4 r4 f4 ~ |
	 f16 [ d e f ] g,8 [ f' b, f' ] |
	 e16 [ f e d ] c8 r8 r16 a16 [ b c ] |
	 d16 [ e d c ] b8 r8 r16 gis16 [ a b ] |
	 c16 [ d e f ] s2 |
	 s2. |
	 s2. |
  	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2 e16 [ d e b ] |
	 cis2. ~ |
	 cis16 [ b cis a ] d4 ~ d8. [ d16 ~ ] |
	 d2. ~ |
	 d16 [ c d bes ] es4 ~ es8. [ e16 ~ ] |
	 e2. ~ |
	 e16 [ d e c ] f4 ~ f8. [ fis16 ~ ] |
	 fis2. ~ |
	 fis16 [ e fis d ] g4 ~ g8. [ g16 ~ ] |
	 g8 [ c ] fis,4 r4 |
	 r8 g8 cis,4 r4 |
	 r16 d16 [ c bes ] a4 ~ a16 [ c b a ] |
	 bes4 a a |
	 s2. |
	 d,16 [ c' b a ] d [ b c d ] e, [ d' c b ] |
  	 c4 b2 ~ |
	 b16 [ d cis b ] e [ cis d e ] fis, [ e' d cis ] |
	 d4 cis2 ~ |
	 cis16 [ fis e d ] g [ e fis g ] cis, [ e d cis ] |
	 b4 ais r4 |
	 b16 [ b' a g ] c [ a b c ] fis, [ a g fis ] |
	 e4 dis r4 |
	 e16 [ e' d c ] f [ d e f ] b, [ d c b ] |
	 a4 gis4 r4 |
	 a8 [ g fis e ] dis4 |
  	 b4 d f |
	 e4 f8 [ d ] gis4-\prallmordent |
	 a4 fis dis |
	 e8 r8 r4 r4 |
	 r1*3/4 |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
  	 s2. |
	 s2. |
	 s2 d16 [ f gis b ] |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s4 a,16 [ c dis fis ] a [ c dis fis ] |
	 r8 <c, e>8 <b d >2 |
	 <cis e >4 r4 r4 |
  }
soprano = << \sopranoOne \\ \sopranoTwo>>
bassOne = \relative a {
	 s2.*119 |
	 g16 [ b g a ] b [ g a b ] e, [ g fis e ] |
	 dis16 [ fis dis e ] fis [ dis e fis ] r4|
	 e16 [ g fis e ] b' [ fis g a ] b, [ a' g fis ] |
	 g16 [ a g fis ] e [ b' c d ] e [ d c b ] |
	 c16 [ b a b ] c [ b a g ] fis [ a g fis ] |
	 b16 [ a g a ] b [ a g fis ] e [ g fis e ] |
	 a16 [ g fis g ] a [ g fis e ] dis [ fis e dis ] |
	 e16 [ b e g ] b [ e, g b ] e [ d e b ] |
	 c16 [ e, a c ] s2 |
  	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s4 gis4.-\prallmordent gis8 |
	 g16 [ c b a ] e' [ b c d ] e, [ d' c b ] |
	 c4 g4. e'8 ~ |
  	 e16 [ f e d ] c [ d c b ] a [ b c a ] |
	 d16 [ e f e ] d [ c b a ] g [ f' e d ] |
	 c16 [ d e c ] c [ b a g ] f [ e' d c ] |
	 b16 [ c d c ] b [ a gis fis ] e [ d' c b ] |
	 c4 r8 a8 [ c a ] |
	 e'16 [ b, e g ] b [ e, g b ] s4 |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 r16 g,16 [ c e ] g [ c, e g ] c [ bes c g ] |
	 aes4 ~ aes16 [ g aes f ] d'4|
	 r16 a,16 [ d fis ] a [ d, fis a ] d [ c d a ] |
	 bes4 ~ bes16 [ a bes g ] es' [ f es d ] |
	 c16 [ d es d ] c [ bes a g ] fis [ a g fis ] |
	 g16 [ a bes a ] g [ f e d ] cis [ e d cis ] |
	 d16 [ c es d ] c [ bes a g ] fis [ a g fis ] |
	 g16 [ bes a g ] d' [ a bes c ] d, [ c' bes g ] |
	 bes'16 [ f e d ] a' [ e f g ] a, [ g' f e ] |
	 s2. |
  	 s2. |
	 s2. |
	 b4 eis r4	|
	 fis4 e4 r4 |
	 b'4 ais r4 |
	 b,4 a'4 r4 |
	 g4 fis r4 |
	 e4 d' r4 |
	 c4 b r4 |
	 a16 [ c b a ] dis [ a b c ] fis, a gis fis ]  |
  	 e16 [ gis fis e ] b' [ gis a b ] d, [ f e d ] |
	 c16 [ e d c ] gis' [ d e f ] b, [ d c b ] |
	 a16 [ c b a ] dis [ a b c ] fis, [ a gis fis ]  |
	 s2. |
	 s2. |
	 gis'16 [ b gis a ] b [ gis a b ] d, [ f e d ] |
	 c16 [ e c d ] e [ c d e ] a, [ c b a ]|
	 gis16 [ b gis a ] b [ gis a b ] s4 |
	 r4 <e a>4 r4 |
	 a4 r4 r4|
	 <b, e>4 r4 r4 |
	 c'16 [ b a b ] c [ b a g ] fis [ g a g ] |
	 fis16 [ e dis e ] fis [ e dis cis ] b [ a gis fis ] |
	 e16 [ b' gis a ] b [ gis a b ] e, [ d' c b ] |
	 c16 [ e c d ] e [ c d e ] a, [ g' fis e ] |
	 r16 a16 [ fis g ] a [ fis g a ] dis, [ c' b a ] |
	 gis16 [ b gis a ] b [ gis a b ] e, [ d' c b ] |
	 <a, c e >4 r4 r4 |
	 <fis a dis>4 r4 r4 |
	 <gis b e>4 r4 r4 |
  	 <a c e>4 r4 r4 |
	 <fis a dis>4 r4 r4 |
	 s2. |
	 <e' a>4 r4 s4 |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 r4 e2 ~ |
	 e4 r4 r4 |
}
bassTwo = \relative c' {
		 r1*3/4 |
	 R2.*16 |
	 a16 [ c b a ] e' [ b c d ] e, [ d' c b ] |
	 c16 [ d c b ] a [ e' f g ] a [ g f e ] |
	 f16 [ e d e ] f [ e d c ] b [ d c b ] |
	 e16 [ d c d ] e [ d c b ] a [ c b a ] |
	 d16 [ c b c ] d [ c b a ] gis [ b a gis ] |
	 a16 [ e a c ] e [ a, c e ] a [ g a fis ] |
	 g16 [ d, g b ] d [ g, b d ] g [ f g e ] |
	 f16 [ f, a c ] f [ e d c ] b [ c b a ] |
	 <gis b>4 r4 gis4 |
	 a4 ~ a16 [ gis a b ] c [ d e f ] |
	 f,4 ~ f16 [ e f g ] a [ b c d ] |
  	 c,4 ~ c16 [ b a b ] c [ d e f ] |
	 d,8 [ d' a d f, d' ] |
	 d,8 [ d' ] c16 [ c' b a ] gis8 [ e ] |
	 a16 [ f e d ] c8 [ d e e, ] |
	 a16 [ c b a ] e' [ b c d ] e, [ d' c b ] |
	 c4 ~ c16 [ d e f ] gis,8.-\prallmordent [ gis16 ] |
	 a4 r8 e'8 [ c e ] |
	 d8 [ f b, f' g, f' ] |
	 c8 [ e a, e' f, e' ] |
	 b8 [ d gis, d' e, d' ] |
	 c4 r4 c4 ~ |
	 c16 [ a b c ] d,8 [ c' fis, c' ] |
	 b4 r4 b4 ~ |
	 b16 [ g a b ] c,8 [ b' e, b' ] |
	 a16 [ b c b ] a [ g fis e ] dis8 [ dis' ] |
	 e16 [ g fis e ] b' [ fis g a ] b, [ a' g fis ] |
	 g16 [ a g fis ] e [ b' cis dis ] e [ d c b ] |
	 c16 [ b a b ] c [ b a g ] fis [ a g fis ] |
	 b16 [ a g a ] b [ a g fis ] e [ g fis e ] |
	 a16 [ g fis g ] a [ g fis e ] dis [ fis e dis ] |
	 e16 [ b e g ] b [ e, g b ] e [ d c b ]  |
	 a4 r16 a16 [ e c ] a [ c e a ] |
	 b,8 [ a' fis a dis, a' ] |
	 g16 [ a b a ] g [ fis e d ] c [ b a g ] |
	 a16 [ b c b ] a [ g fis e ] b' [c b a ] |
	 g8 [ a ] b4. b8 |
	 e,4 r4 g'4 ~ |
	 g4 r4 fis4 ~ |
	 fis4 r4 e4 ~ |
	 e4 r8 c8 [ b a ] |
  	 g8 [ fis e fis g e ] |
	 b'4. cis8 [ d b ] |
	 e16 [ b e gis ] b [ e, gis b ] e [ d e b ] |
	 c4 ~ c16 [ b c a ] f'4 |
	 r16 c,16 [ f a ] c [ f, a c ] f [ es f c ] |
	 d4 ~ d16 [ c d bes ] g'4 |
	 r16 d,16 [ g b ] d [ g, b d ] g [ f g d ]  |
	 es4 ~ es16 [ d es c ] a'4  |
	 r16 e,16 [ a cis ] e [ a, cis e ] \clef treble a16 [ g a e ] |
	 f4 ~ f16 [ e f d ] bes' [ c bes a ]  |
	 g16 [ a bes a ] g [ f e d ] cis [ e d cis ]  |
	 d16 [ e f e ] \clef bass d [ c b a ] gis [ b a gis ] |
	 a16 [ g bes a ] g [ f e d ] cis [ e d cis ] |
	 d16 [ f e d ] a' [ e f g ] a, [ g' f e ] |
	 f16 [ g f e ] d [ a' b cis ] d [ c bes a ] |
	 bes16 [ a g a ] bes [ a g f ] e [ g f e ] |
	 a16 [ g f g ] a [ g f e ] d [ f e d ] |
	 g16 [ f e f ] g [ f e d ] cis [ e d cis ] |
	 d16 [ a d f ] a [ d, f a ] d [ c d a ] |
	 bes16 [ f, bes d ] f [ bes, d f ] bes [ a bes f ] |
	 g16 [ a bes a ] g  [ f e d ] cis [ e d cis ] |
	 d16 [ e d c ] bes [ a bes g ] a [ a' g a ] |
	 d,16 [ a d f ] a [ d, f a ] d [ c d a ] |
	 bes4 r16 c16 [ bes a ] g [ f e d ] |
	 c16 [ g c e ] g [ c, e g ] c [ bes c g ] |
	 a4 r16 bes16 [ a g ] f [ es d c ] |
	 bes4 r4 r4 |
	 g'4 r4 r4 |
	 f4 e a |
	 d,4 r4 r16 a'16 [ g f ] |
  	 e4 d g |
	 c,4 r4 r16 g'16 [ f e ] |
	 a4 g f |
	 g4 ~ g16 [ a g f ] e [ d c b ] |
	 e8 [ f g f g g, ] |
	 c8 [ d e d ] e16 [ c d e ] |
	 f8 [ a d, a' b, a' ] |
	 e8 [ g c, g' a, g' ] |
	 d8 [ f b, f' g, f' ] |
	 e8 [ d c d e c ] |
	 f8 [ g a bes a g ] |
	 fis8 [ e d e fis d ] |
	 g8 [ a b a b g ] |
	 c4 ~ c16 [ b c d ] e [ f g a ] |
	 a,4 ~ a16 [ g a b ] c [ d e f ] |
	 e,4 ~ e16 [ d c d ] e [ f g a ] |
	 f,8 [ f' c f a, f' ] |
	 f,8 [ f' ] e16 [ e' d c ]  b8 [ g ] |
	 c16 [ a g f ] e8 [ f g g, ] |
	 c16 [ e d c ] g' [ d e f ]  g, [ f' e d ] |
	 c4 fis r4 |
	 g4 cis, r4 |
	 d4 gis r4 |
	 a4 dis, r4|
	 e4 ais4 r4 |
	 b16 [ dis cis b ] fis' [ dis e fis ] a, [ c b a ] |
	 g16 [ b a g ] dis' [ a b c ] fis, [ a g fis ]|
	 e16 [ g fis e ] ais [ e fis g ] cis, [ e dis cis ] |
  	 b2. ~ |
	 b2. ~|
	 b2. ~ |
	 b2. ~ |
	 b2 a16 [ c b a ] |
	 g4 ~ g16 [ a b c ] dis, [ fis b dis, ] |
	 e4 r4 r16 e'16 [ fis g ] |
	 a8 [ a, ] r16 a16 [ b c ] d [ c b a ] |
	 g4 r16 g16 [ a b ] c [ b a g ] |
	 fis4 r16 fis16 [ g a ] b [ a g fis ] |
	 g4 r16 a16 [ g fis ] e [ fis g e ] |
	 a16 [ gis a b ] c [ d c b ] a [ b cis a ] |
  	 d16 [ cis d e ] f [ g f e ] d [ e f d ] |
	 e16 [ b e gis ] b [ e, gis b ] e [ d e b ] |
	 cis4 r16 d16 [ cis b ] a [ g fis e ] |
	 d16 [ a d fis ] a [ d, fis a ] d [ c d a ] |
	 b4 r16 c16 [ b a ] g [ f e d ] |
	 c4 r16 b'16 [ a g ] fis [ e d c ] |
	 b4 r16 a'16 [ gis fis ] e [ d c b ] |
	 a16 [ c b a ] e' [ b c d ] e,16 [ d' c b ] |
	 c8 [ d e fis gis e ] |
	 a2 gis4 |
  	 a4 r4 r4 |
	 r1*3/4 |
	 r1*3/4 |
	 r1*3/4 |
	 r1*3/4 |
	 r4 r8 e8 [ g e ] |
	 a16 [ e, a cis ] e [ a, cis e ] a [ g a e ] |
	 f4 ~ f16 [ e f d ] bes'4 |
	 r16 f,16 [ bes d ] f [ bes, d f ] bes [ aes bes f ] |
	 g4 ~ g16 [ f g es ] c'4 |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 g,4 cis r4 |
	 d4 gis, r4 |
  	 a4 dis r4 |
	 e4 ais, r4 |
	 s2. |
	 s2. |
	 d4 cis r4 |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
	 s2. |
  	 s2. |
	 s2. |
	 s2. |
	 e,2. ~  |
	 e2. ~ |
	 e2. ~ |
	 e2. ~ |
	 e2 d16 [ f e d ]  |
	 c4 c' r4 |
	 d4 r4 r4 |
	 gis,4 r4 r4 |
	 <a e'>4 r4 r4 |
	 <dis, b'>4 r4 r4 |
	 e4 r4 r4 |
	 <e a>4 r4 r4 |
	 <e fis a dis> r4 r4 |
	 <e gis b e >4 r4 r4 |
	 e4 r4 r4 |
	 e4 r4 r4 |
	 e4 r4 r4 |
  	 e4 r4 r4 |
	 e4 r4 r4|
	 r16 e16 [ gis b ] d [ f gis b ] s4 |
	 cis,4 r4 r16 a'16 [ b cis ] |
	 d16 [ e f e ] d [ c b a ] gis [ b e, gis ] |
	 c,16 [ d e d ] c [ b a b ] c [ d e f ] |
	 gis,8 [ d' b d e, d' ]  |
	 r16 a16 [ c e ] s2 |
	 e,2. |
	 a4 r4 r4 |
}
bass = << \bassOne \\ \bassTwo>>
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key a \minor \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key a \minor \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }
}
