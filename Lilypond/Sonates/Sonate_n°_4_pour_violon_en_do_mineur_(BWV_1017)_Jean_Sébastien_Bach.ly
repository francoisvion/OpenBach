\version "2.27.1"

\paper {
  #(set-global-staff-size 17)
  
 
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 18\mm
  short-indent = 8\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

 systems-per-page = 4

  system-system-spacing = #'((basic-distance . 12) 
                             (minimum-distance . 8) 
                             (padding . 2) 
                             (stretchability . 40))
}

\header {
  title = "Sonate n° 4 pour violon en do mineur"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 1017"
  tagline = ##f
}

violinoMusicOne = \relative c''
{ \key c \minor \time 6/8
	\repeat volta 2
	{	\once \override TextScript #'extra-offset = #'(-2.0 . 0.0) g8.
			(^\markup { \large "Largo." } \once \override
			TextScript #'extra-offset = #'(-8.5 . 1.0) es'16)
			^\markup { \larger "1. Sicilienne" } d8 c8.(\trill
			b16) c8															|
		c4.( c4) r8															|
		c8.( aes'!16) g8 f8.(\trill e16) f8									|
		f2.~																|
		f8. d16 b8 aes!8.( g16) f'8											|
		es8. f16 d8 c4.~													|
		c8.[ d32\( es f8]~ f8. d16\) es8									|
		aes,2.~																|
		aes8.[ aes'32\( bes c8]~ c8. a16\) bes8								|
		d,8.(\trill c16) bes8 ges'4.~										|
		ges8.[ f32\( ges aes8]~ aes\) ges16\( f es d\)						|
		es2.~																|
		es8.( fis16) g8~ g8.( es16) d8										|
		c8.( fis16) g8~ g8.( c,16) bes8										|
		a8.( c16 es8~ es8.( fis16) a8										|
	}
	\alternative
	{
		{
			b,2.															|
		}
		{
			b2. 															|
		}
	}
	\bar "|:" d8.\( b16\) g8 f'16.[\( g32 aes16 g\) f8]						|
	es4.~ es8.( g16) c,8													|
	des8.( bes16) e,8 g'16.[\( aes32 bes16 aes\) g8]						|
	aes2.~																	|
	aes8.( f16) ges8~ ges8.( e16 f8)										|
	bes16.[\( c32 des16 c\) bes8] bes8.( ges16) f8							|
	e16\( g! f8.\) bes16 aes\( des c aes\) bes( g)							|
	f2.																		|
	d8.( es16) f8~ f8.( g16) aes8~											|
	aes8.( bes16) c8~ c8.( bes16) aes8										|
	g8.( f16) es8 d16( es f b,) c8											|
	b8.( a16) g8 g4.~														|
	g8.( b16) c8~ c8.( aes!16) g8											|
	f8.( b16) c8~ c8.( f,16) es8											|
	d8.( f16) aes8~ aes8.( g16) es'8										|
	\grace d8( c2.~)														|
	c8.[ d32\( es f8]~ f8. d16\) es8										|
	aes,8.[\( bes32 c des8~\)] des8.( b16) c8								|
	fis8.[\(\trill e32 fis\) g8~\(] g16 aes g( es) f( d)\)					|
	c2.\trill														  \bar":|"
}
cembaloRHMusicOne = \relative c'
{ \clef treble \key c \minor \time 6/8
	c16\( es g c g es\) c\( es g c g es\)									|
	c\( f aes c aes f\) c\( e g bes aes g\)									|
	aes\( bes c f c aes\) f\( aes c f c aes\)								|
	f b d f d b f aes c f c aes												|
	g b d f d c b! d f aes c, b												|
	c es g c g es c es g c g es												|
	c f aes c aes f d f g bes g es											|
	c es f aes g f c es f aes g f											|
	bes,\( c d\) f es d aes'\( g f es d c\)									|
	bes d f bes f d es ges a c bes a										|
	es\( f ges\) bes d, c d f d bes f aes									|
	g bes es g es bes g b d f d b											|
	g b c es d c d\( fis g\) a bes! g										|
	fis g a es d c bes c d a'! fis! g										|
	c, es! fis a fis es c es c a c fis!										|
	g d b g b d g4 s8														|
	g16 d b g b d g4.														|
	g,16 b d g d b g\( b d f d b\)											|
	g b c es c b c es g c g f												|
	g bes! g e des c bes c e g f e											|
	c e f aes f c f, g aes c aes f											|
	des\( f bes des c bes\) a c es ges f es									|
	f a bes aes ges f es ges f es des c										|
	des\( c bes a bes\) e f g aes! f c e!									|
	f aes c aes f e f aes f c aes g											|
	f g aes d aes g aes bes c es d c										|
	bes c d f d c d es f aes g f											|
	g\( f es d c\) es aes g f es d c										|
	g b d f d b g b d g d b													|
	g b c es d c g'\( f es d c b!\)											|
	c e f aes! g f c' g es g c, es											|
	aes c, f aes f d b d f d b g											|
	es' c bes! aes g f es aes g f es d										|
	c f aes c aes f d f g bes g es											|
	f aes des f des! b g aes' g f es d										|
	c b a g f d' es, d es c' d, b'!											|
	c2.																		|
}
cembaloLHMusicOne = \relative c
{ \key c \minor \time 6/8 \clef bass
	c8\( es g\) bes,\( es g\)												|
	aes,\( c f\) g,\( bes e\)												|
	f,\( aes c\) es,!\( aes c\)												|
	d, f aes c, f aes														|
	b f' aes g, d' g														|
	c, es g bes, es g														|
	aes, c f g, bes es														|
	f aes c es, aes c														|
	d, f aes es f g															|
	aes, d f a, c es														|
	bes es f bes, d aes'													|
	es g bes d, g b															|
	c, es g bes,! d g														|
	a, c es g, bes es														|
	fis, a c d, a' d														|
	g,4.~ g16 b d f d b														|
	g2.																		|
	g8 b d g b d															|
	c es g g, c es															|
	e, g bes c, g' c														|
	f,, aes c aes c f														|
	bes, f' bes c, es a														|
	des, f bes c, es aes!													|
	bes, des g c, f c'														|
	f,, aes c aes c f														|
	bes, d bes' c, es aes													|
	d, f aes bes, d bes'													|
	es, g c f, aes d														|
	g, b d f, b d															|
	es, g c c, es g															|
	aes, c f g, c es														|
	f, c' d g, b g'															|
	c, es g bes, es g														|
	aes, c d g, bes es														|
	f, aes f' es, g c														|
	d, c' b c es, g															|
	c16 es c g es g c,4.													|
}
violinoMusicTwo = \relative c''
{ \key c \minor \time 4/4 \clef treble \set Score.currentBarNumber = #38
	\once \override TextScript #'extra-offset = #'(-4.0 . 1.0)
		R1 ^\markup { \larger "2. Allegro" }									|
	R1*4																		|																	|
	g'16[ a bes g] a8[ d,] \stemDown g[ \stemUp g,]
		\stemNeutral bes'4~													|
	bes16 a( bes d) c( bes a) c bes4 r8 d									|
	es,16( d es) g c8 c c d, bes'4~											|
	bes8 es16( d) c( bes) a( g) fis d( es d) c a'! d,( c)					|
	bes8 g' a, fis' g16 bes g f e des( c bes)								|
	aes!( g aes) c f4~ f16 aes f d b aes!( g f)								|
	es( f g) es' b8. c16 c4 r16 c d es										|
	aes,8 c d f bes,16 d es f g4~											|
	g8 f16 es d es f d b8 es16 d c d es c									|
	aes8 c f4~ f8 b, aes'4~													|
	aes16 g( f es) g( f) es( d) es( d es) g c8 c							|
	c d, bes'4 c,16( bes c) es aes8 aes										|
	aes bes, g'4 aes,16( g aes) c f8 f										|
	f g, es'4~ es8 c'16 bes aes( g) f( es)									|
	d16\( c bes c d es f\) aes, g( f g) bes es8 g,							|
	f es' d bes aes16( g aes) c f8 aes,										|
	g f' es c bes16( a bes) d g8 bes,										|
	a g' fis16 d e fis g4~ g16 bes a g										|
	fis( g a) d, g2 fis!4													|
	g bes,16( aes bes) es aes2\trill										|
	g4 g,16( f g) c f2\trill												|
	es4 r8 g~ g16 f es d c bes aes g										|
	aes f bes g c8 bes16( aes) aes8\trill g r16 g a b						|
	c( b c es) d( c b c) d( c) b! a g8 c									|
	aes\trill f r aes~ aes16 f d b g8 b'!									|
	c8. d16 d8. c16 c2~														|
	c2~ c16( bes c) f aes4~													|
	aes16( g aes!) b d8 f, es8. d16 d8. d16									|
	c4 r r8 aes'16( f) d( es32 f) es16 d									|
	d2~ d8 c4 b8															|
	c16 d es c d8 g, \stemDown c8[ \stemUp c,]
		\stemNeutral es'4~													|
	es16 d( es g) f( es d) f es d c d es fis g a							|
	bes,8 d16( bes) g( a32 bes) a16( g) g2~									|
	g16 fis( a c) es( d32 c d16) a! bes8. c16 bes( a) d8					|
	bes\trill g r d'~( d16 c) d es f( es) d f								|
	es8 e f fis g2~															|
	g8 f!16 e f4~ f8 es16 d es8 r											|
	f,16( es f) aes d8 bes bes\trill aes r4									|
	des16( c des) f bes8 g g\trill f r4										|
	bes,16( aes bes) des g( f g) bes g c aes f g8 c,						|
	\stemDown f[ \stemUp f,] \stemNeutral aes'4~ aes16						|
		g( aes c) bes( aes g) bes
	aes4 r8 c des,16( c des) f bes8 bes										|
	bes c, aes'4~ aes8 des16( c) bes( aes) g( f)							|
	e c( des c) bes g' c,( bes) aes8 f' g, e'!								|
	f,16( e f) bes des bes( a bes) es,( des es) a! c a( g a)				|
	des,( c des) f bes ges( f ges) e4 r8 f'16( e!)							|
	f8. g16 e8. f16 f8 g aes4~												|
	aes8. bes16 aes16\( g f g f\) a, bes c d es f d							|
	b c d b g8 c~ c b!16 c d8 d												|
	d\trill c f f f\trill es16 f g8 g										|
	g\trill f16 g aes8 aes aes\trill g16 aes bes8 bes,						|
	c es aes d, g4. c,8														|
	f16 g f es d c b d g,4 r8 b												|
	c8. d16 b8. c16 c4 r16 g' f es											|
	d( c bes!) c des( c des) g g8 aes, r16 es' d c							|
	bes( aes g) aes bes( aes bes) es es8 f, r16 c' bes aes					|
	g( f es) f g aes bes g c8 d, es c'										|
	f, g16 aes bes c d bes es f g es f8 bes,								|
	\stemDown es[ \stemUp es,] \stemNeutral g'4~ g16
		fis( g bes) a( g fis) a												|
	g4 r8 bes c,16( bes c) es aes8 aes										|
	aes bes, g'4~ g8 c16( bes) aes( g) f( es)								|
	d bes( c bes) aes f' bes,( aes) g8 es' f, d'~							|
	d16 g, a bes c d es f g8 f4 a8											|
	bes a16 g f4~ f16 es d c bes a g f										|
	g e a f bes8 a16( g) g8\trill f r16 f g a!								|
	bes( a bes d) c( bes a bes) c( bes) a g f8 bes							|
	g\trill es r g'~ g16 es c a f8 a										|
	bes8. c16 c8. bes16 bes( a bes) d f d( c bes)							|
	a( bes c) e f a,! c b c( b c) es g es( d c)								|
	bes!( c d) fis g bes, d cis d( cis d) f a( f e d)						|
	cis( d e) cis) a4~ a16 d, e! f g4~										|
	g16 bes a g f a d c bes a g f g( f e f)									|
	d4 r g16( f g) bes es8 a,												|
	a\trill g r4 c16( bes c) fis a( g a) c									|
	a8\trill( g) bes,16( aes! bes) es aes!2\trill							|
	g4 g,16( f g) c f2\trill												|
	es16 g, a b c d es c a! bes c a f8 bes~									|
	bes a16 bes c4~ c8. d16 c( bes) a!( bes)								|
	a es' c a fis es! d c bes( c d) bes' fis!8. g16							|
	g4 r16 g a bes es,8 g a c												|
	f,16 a bes c d4~ d8 c16 bes a! bes c a									|
	fis8 bes16 a g a bes g es8 g c4~										|
	c8 fis, es'4~ es16 d( c bes) d( c) bes( a)								|
	bes8 d16( bes) g( a32 bes) a16( g) g2~									|
	g16 fis( a c) es( d32 c d16) a bes8. c16 bes( a) d8						|
	bes\trill g r d'~( d16 c) d es f( es) d f								|
	es8 e f fis g4 r														|
	r16 d es! f g aes bes g aes8 aes16( f) d( es32 f) es16( d)				|
	d2~ d8 c4 b8															|
	c16 d es c d8 g, \stemDown c[ \stemUp c,]
		\stemNeutral es'4~													|
	es16 d( es g) f( es d) f es g es c a g' f es							|
	d f d bes g f' es des c4~ c16 des! c bes								|
	aes g aes8~ aes16 aes' g f es d es8~ es16 es d c						|
	b( a b) d g8 g g aes, f'4												|
	g,16( f g) b es8 es es f, d'4											|
	es,16( d es) g c8 c c d, b'4											|
	c16 d es c d8 g, \stemDown c[ \stemUp c,]
		\stemNeutral es'4~													|
	es16 d( es g) f( es d) g es4 r8 g										|
	aes,16( g aes) c f8 f f g, es'4~										|
	es8 aes16( g) f( es) d( c) b g( aes g) f d' g,( f)						|
	es8 c' d, b' c16( bes c) f aes f( e f)									|
	bes,!( aes bes) e g e( d e) aes,( g aes) c f des( c des)				|
	b4 r8 c16( b) c8. d16 b!8. c16											|
	c1\fermata														  \bar "|."
}
cembaloRHMusicTwo = \relative c''
{ \key c \minor \time 4/4 \clef treble
	c16 d es c d8 g, \stemDown c[ \stemUp c,] \stemNeutral es'4~			|
	es16 d es g f es d f es4 r8 g											|
	aes,16( g aes) c f8 f f g, es'4~										|
	es8 aes16 g f es d c b g aes g f d' g, f								|
	es8 c' d, b' c16 es c a fis es! d c										|
	bes!4 r8 d'~ d16 c bes a g f es d										|
	es c f d g8 f16 es es8\trill d r16 d' e fis								|
	g fis g bes a g fis g a g fis! e d8 g									|
	es\trill c r es~ es16 c a fis \stemUp d8 \stemDown fis' \stemNeutral	|
	g8. a16 a8. g16 g4 r8 g,~												|
	g16 e f g aes! b c d g,4 r8 d'											|
	d\trill c f f f\trill es16 f g8 g										|
	g\trill f16 g aes8 aes aes\trill g16 aes bes8 bes,						|
	c es aes d, g4. c,8														|
	f16 g f es d c b d g,4 r8 b!											|
	c8. d16 b8. c16 c4 r16 g' f es											|
	d\( c bes c des c des\) g g8 aes, r16 es' d c							|
	bes\( aes g aes bes aes bes\) es es8 f, r16 c' bes aes					|
	g16 f es f g aes bes g c8 d, es c'										|
	f, g16 aes bes c d bes es( d es) g bes g( f es)							|
	d( es f) a bes d,( f e) f( e f) aes c aes( g f)							|
	es( f g) b c es,( g fis) g( fis g) bes d bes( a g)						|
	fis g a fis d4~ d16 g, a! bes c4~										|
	c16 es d c bes d g f es d c bes c bes a bes								|
	g4 r c16( bes c) es aes8 d,												|
	d\trill c r4 f,16( es f) aes d( c d) f									|
	d g es c d8 g, \stemDown c[ \stemUp c,] \stemNeutral es'4~				|
	es16 d es g f es d f es4 r8 g											|
	aes,16( g aes) c f8 f f g, es'4~										|
	es8 aes16 g f es d c b g aes g f d' g, f								|
	es8 c' d, b' c16( bes c) f aes f( e f)									|
	bes,( aes bes) e g e( d e) aes,( g aes) c f des( c des)					|
	b4 r8 c16 b c8. d16 b8. c16												|
	c8 g'16( es) c( d32 es) d16 c c2~										|
	c16 b d f aes g32 f g16 d es8. f16 es d g8								|
	es8\trill c r g'~ g16( f) g aes bes aes g bes							|
	aes8 a bes b c4 r														|
	r2 r8 es,16( c) a( bes32 c) bes16 a										|
	a2~ a8 g4 fis8															|
	g16 a bes g a8 d, g g, bes'4~											|
	bes16 a bes d c bes a c bes d bes g e des' c bes						|
	aes c aes f d c' bes aes g8 r g16( f g) c								|
	f2\trill es4 es,16( d es) aes											|
	des2\trill c4 c,16( bes c) f											|
	bes2\trill aes!4 r8 c~													|
	c16 bes aes g f es des c des bes es c f8 es16 des!						|
	des8\trill c r16 c' d! e f e f aes g f e f								|
	g f e d c8 f des\trill bes r des~										|
	des16 bes g e \stemUp c8[ \stemDown e'] \stemNeutral f8. g16 g8. f16	|
	f1~																		|
	f16 e f bes des,4~ des16 c des! e! g8 bes,								|
	aes8. g16 g8. f16 f c' d e f g aes f									|
	d es! f d bes8 es~es d16 es f4~											|
	f8. g16 f\( es d es d\) aes' f d b aes! g f								|
	es f g es' \stemUp b8. c16 c4 d16\rest c d es							|
	aes,8 c d f bes,16 d es f g4^~											|
	g8 f16 es d es f d b8 es16 d c d es c									|
	aes8 c f4^~ f8 b, \stemNeutral aes'4~									|
	aes16( g f) es g( f es d) es( d es) g c8 c								|
	c d, bes'4 c,16( bes c) es aes8 aes										|
	aes bes, g'4 aes,16( g aes) c f8 f										|
	f g, es'4~ es8 c'16 bes aes g f es										|
	d c bes c d es f aes, g4 r8 bes'~										|
	bes16 aes g f es d c bes c a d bes es8 d16 c							|
	c8\trill bes r16 bes c d es( d es) g f es d es							|
	f es d c bes8 es c\trill aes r c'~										|
	c16 aes f d bes8 d es8. f16 f8.\trill es32 f							|
	g4~ g16 f es d c bes a bes c es d c										|
	bes c d bes c8 f, bes bes, d'4~											|
	d16 cis d f e d cis e d4 r8 f											|
	g,16( f g) bes es8 es es f, d'4~										|
	d8 g16 f es d c bes a f g f es c' f, es									|
	d8 bes' c, a' d,16( c d) f bes8 d,										|
	c bes' a f es16( d es) g c8 es,											|
	d c' bes g f16 e f a d8 f,												|
	e8 d' cis16 aes b cis d4~ d16 f e! d									|
	cis d e aes, d2 cis!4													|
	d f,16( es! f) bes es2\trill											|
	d4 d,16( c d) g c2\trill												|
	bes4 r c16( bes c)es aes8 d,											|
	d\trill c r4 f,16( es f) b d( c d) f									|
	d8\trill c16 d es4~ es8. f16 es16( d) c( d)								|
	c e, f g a bes c a fis g a fis d8 g~									|
	g fis16 g a8 a a\trill g c c											|
	c\trill bes16 c d8 d d\trill c16 d es8 es								|
	es\trill d16 es \stemDown f8[ \stemUp f,] \stemNeutral g8 bes es a,		|
	d4. g,8 c16 d c bes a g fis a											|
	d,4 r8 fis' g8. a16 fis!8. g16											|
	g4 r r8 es16( c) a( bes32 c) bes16 a									|
	a2~ a8 g4 fis8															|
	g16 a bes g aes8 d, g g, bes'4~											|
	bes16 a bes d c bes a c bes a bes c d es f d							|
	es8 g16( es) c( d32 es) d16 c c2~										|
	c16 b d f aes! g32 f g16 d es8. f16 es d g8								|
	es c r g'~ g16 f g aes bes aes g bes									|
	aes8 a bes b c2~														|
	c8 bes!16 a bes4~ bes16 c e, f g4~										|
	g16 c aes f d4~ d16 g es c a4~											|
	a16 fis g b es c b c aes( g aes) c f! d c d								|
	b( a b) d g es d es c( b c) es aes! f es f								|
	g c g f es c' aes g f c' f, es d aes' g f								|
	es g f8~ f16 aes g f es f es d c bes aes g								|
	aes f bes g c8 bes16 aes aes8\trill g r16 g a b							|
	c( b c) es d c b c d c b! a g8 c										|
	aes\trill f r aes~ aes16 f d b g8 b'									|
	c8. d16 d8. c16 c2~														|
	c~ c16 bes c f aes4~													|
	aes16 g aes! b d8 f, es8. d16 d8. c16									|
	c1\fermata																|
}
cembaloLHMusicTwo = \relative c'
{ \key c \minor \time 4/4 \clef bass
	c4 bes aes r16 g f es													|
	f8 g aes bes es,16 bes' c d es4~										|
	es8 d16 c d es d c b8 g r16 c, d es										|
	f es f g aes8 f g4 r16 f es d											|
	c bes aes g f8 g c, c' d fis											|
	g4 f! es r16 d c bes													|
	c8 d es f bes,16 f' g a bes4~											|
	bes8 a16 g a bes a g fis8 d r16 g a bes									|
	c bes c d es8 c d4 r16 c bes a											|
	g16 f es d c8 d g, bes c e												|
	f es! d c b d g, b														|
	c16 d es c d8 g, c c, es'4~												|
	es16 d es g f es d f es4 r8 g											|
	aes,16( g aes) c f8 f f g, es'4~										|
	es8 aes16 g f es d c b g\( aes g f d' g, f								|
	es8\) aes d, g c, d es f												|
	g f es g aes bes c d													|
	es d c es f g aes bes													|
	c d c bes aes bes c aes													|
	bes aes g f es f g aes													|
	\stemDown bes[ \stemUp d,] \stemNeutral r16 bes' aes! g f8 g aes bes	|
	\stemDown c[ \stemUp c,] \stemNeutral r16 c' bes! a g8 a bes c			|
	d c d bes es d es c														|
	d d, es bes c a d d,													|
	g'16( f g) bes es8 g, f es' d f,										|
	es16( d es) g c8 es, d c' b g											|
	c,4 bes! aes r16 g f es													|
	f8 g aes bes c,16 bes' c d es4~											|
	es8 d16 c d es d c b8 g r16 c d es										|
	f es f g aes8 f g4 r16 f es d											|
	c bes aes g f8 g \stemUp aes[ \stemDown aes'] \stemNeutral r aes,		|
	\stemUp g[ \stemDown g'] \stemNeutral r g,
		\stemUp f[ \stemDown f'] \stemNeutral r16 f( es f)					|
	d( es f) d c b a g c8 f, g g											|
	c, c'16 d es8 e f d16 es f8 fis											|
	g g16 a bes!8 b c f, g g,												|
	c c' b bes a aes g c													|
	f, es16 d \stemDown g8[ \stemUp g,] \stemNeutral c a' fis d				|
	g g,16 a bes8 b c a!16 bes c8 cis										|
	d d16 e f8 fis g c, d d,												|
	g g' fis f e es d g														|
	c, bes16 a d8 d, g g' c, e												|
	f, f' bes, d es16( d es) g c8 es,										|
	d c' bes d, c16( bes c) es aes8 c,										|
	bes aes' g es aes,16( g aes) c f8 aes,									|
	g f' e c f, f' e! es													|
	des4 r16 c bes aes bes8 c des es										|
	aes,16 es' f g aes4~ aes8 g16 f g aes g f								|
	e8 c r16 f g aes bes aes bes c des8 bes									|
	c4 r16 bes aes g f es des c bes8 c										|
	des des' r des, \stemUp c[ \stemDown c'] r \stemNeutral c,				|
		\stemUp bes[ \stemDown bes'] \stemNeutral r16 bes aes! bes
	g aes bes g f e d! c													|
	f8 bes, c c, f4 r														|
	bes'16( c d) bes es8 es \stemDown bes8[ \stemUp bes,] r4				|
	\stemNeutral g'16( a b) g \stemDown c8[ \stemUp c,8] \stemDown g'[
		\stemUp g,] \stemNeutral r4											|
	\change Staff = RHTwo \stemDown c'16_( d es) c d8[
		\change Staff = LHTwo g,] c[ \stemUp c,]
		\change Staff = RHTwo \stemDown es'4_~								|
	es16 d es g f es d f es4 e8\rest g										|
	\change Staff = LHTwo aes,16( g aes) c \change Staff = RHTwo
		f8 f f[ \change Staff = LHTwo g,] \change Staff = RHTwo es'4_~		|
	es8 aes16 g f es d c \change Staff = LHTwo \stemNeutral
		b g\( aes g f d' g, f												|
	es8\) aes d, g c, d es f												|
	g f es g aes bes c d													|
	es d c es f, g aes bes													|
	c d c bes aes bes c aes 												|
	bes aes g f es4 d														|
	c r16 bes c d es8 d c d													|
	g,16 d' es f g4~ g8 f16 es f g f es										|
	d8 bes r16 es f g aes g aes bes c8 aes									|
	bes4 r16 aes g f es( d) c( bes) aes8 bes								|
	\stemUp es,[ \stemDown g'16 f] \stemNeutral es d c bes a
		f'\( g f es c' f, es												|
	d8\) bes'4 a8 g16 fis g8 r16 f g a!										|
	bes8 a g a d,16 a' bes c d4~											|
	d8 c16 bes c d c bes a8 f r16 bes, c d									|
	es d es f g8 es f4 r16 es d c											|
	bes a g f es8 f bes c d es												|
	\stemDown f[ \stemUp f,] \stemNeutral r16 f' es d c8 d es f				|
	\stemDown g[ \stemNeutral g,] \stemNeutral r16 g' f e d8 e f g			|
	a g a f bes a bes g														|
	a g16 a bes8 f g e a! a,												|
	d16( c d) f bes8 d, c bes' a c,											|
	bes16( a bes) d g8 bes, a g' fis d										|
	g,16( fis g) bes es8 g, f es' d f,										|
	es16( d es) g c8 es, d c' b g											|
	c c, r4 f'16( g a) f \stemDown bes8[ \stemUp bes,]						|
	\stemDown f'[ \stemUp f,] \stemNeutral r4 d'16( e fis) d
		\stemDown g8[ \stemUp g,] \stemNeutral								|
	d' d, r4 g'16( a bes) g a8 d,											|
	\stemDown g8[ \stemUp g,] \stemNeutral
		bes'4~ bes16 a bes d c bes a c										|
	bes4 r8 d es,16( d es) g c8 c											|
	c d, bes'4~ bes8 es16 d c bes a g										|
	fis d\( es d c a' d, c bes8\) es a, d									|
	g, g'16 a bes8 b c a!16 bes c8 cis										|
	d d,16 e f8 fis g c, d d,												|
	g g' fis f e es d g														|
	c, bes16 a d8 d, g g'16 a bes8 b										|
	c c,16 d es8 e f d16 es f8 fis											|
	g8 g,16 a bes8 b c f g g,												|
	c c' b bes a aes g c													|
	f, es16 d \stemDown g8[ \stemUp g,] \stemNeutral c c' f, a				|
	bes, bes' es, g aes,! aes' e c											|
	f, f' b, g c, c' fis, d													|
	g1~																		|
	g~																		|
	g2.~ \stemUp g8[ \stemDown g'8] \stemNeutral							|
	aes a bes b c4 r16 g f es												|
	f8 g aes bes es,16 bes' c d es4~										|
	es8 d16 c d es d c b8 g r16 c, d es										|
	f es f g aes8 f g4 r16 f es d											|
	c bes aes g f8 g \stemUp aes[ \stemDown aes'] \stemNeutral r8 aes,		|
	\stemUp g[ \stemDown g'] \stemUp r g, f[ \stemDown f'] r16 f es f		|
	d es f d c b a g c8 f, g g												|
	c,1\fermata																|
}
violinoMusicThree = \relative c'
{ \key c \minor \time 3/4 \clef treble \set Score.currentBarNumber = #147
	\once \override TextScript #'extra-offset = #'(-4.0 . 1.0)
		r4 ^\markup { \larger "3. Adagio" } bes es~								|
	es8.( c16) d8.( f16) aes4~												|
	aes8.( f16) g8.( bes16) c4												|
	d,\trill bes r															|
	r bes_\markup { \small \italic "piano" } es~							|
	es8.( c16) d8.( f16) aes4~												|
	aes8.( f16) g8.( bes16) c4												|
	d,\trill bes r															|
	r es_\markup { \small \italic "(forte)" } des'~							|
	des8.( bes16) c8.( d,!16) es4~											|
	es8 aes f4.\trill ( es8)												|
	es2 r4																	|
	r bes'_\markup { \italic \small "(piano)" } des,~						|
	des8.( c16) f8.( d16) es4~												|
	es8 c aes4.\trill g8													|
	g2 r4																	|
	r g'_\markup { \small \italic "(forte)" } es'~							|
	es8.( c16) d8.( b16) f4~												|
	f8.( es16) fis8.( a16) c4~												|
	c8.( a16) b4 r															|
	r es_\markup { \small \italic "(piano)" } g,~							|
	g8.( es16) f8.( b16) d4~												|
	d8.( b16) c8.( aes!16) fis8.( g16)										|
	c,8.( a!16) b4 r														|
	r g'8.(_\markup { \small \italic "(forte)" } aes!16) bes4~				|
	bes8.( c16) des8.( bes16) c4~											|
	c8.( f16) des8.( c16) bes8.( aes16)										|
	\grace g8( f2) r4														|
	r aes8.(_\markup { \small \italic "(piano)" } f16) des4~				|
	des8.( b16) c8.( e16) f4~												|
	f8.( bes16) g4.\trill f8												|
	f2 r4																	|
	r aes8.(_\markup { \small \italic "(forte)" } bes16) c4~				|
	c bes8.( g16) aes4~														|
	aes8.( f16) g8.( c16) a4~\(												|
	a8. bes16\) \grace es,8 d4 r											|
	r es8.(_\markup { \small \italic "piano" } f16) g4~						|
	g8.( es16) f8.( d16) bes4~												|
	bes8.( g16) a8.( c16) es4~												|
	es8.( c16) d4 r															|
	r bes'8.[(_\markup { \small \italic "(forte)" } c16]) des4~				|
	des8.( bes16)] c8.( aes16) \grace g8( f4)~								|
	f8.( d16) es8.( g16) aes4~												|
	aes8.( f16) g8.( des16) bes4~											|
	bes8.( g16) aes8.( c16) des4~											|
	des8.( bes16) c8.( es16) ges4~											|
	ges8.( f16) d4.\trill es8												|
	es2 r4																	|
	r bes'_\markup { \small \italic "(piano)" } des,~						|
	des8.( bes16) c8.( es16) aes4~											|
	aes8.( g16) d'4 f,~														|
	f8.( d16) es8.( g16) \grace { bes16([ c] } des4)~						|
	des8.( c16) f4 aes,~													|
	aes8.( f16) g8.( c16) a8.( bes16)										|
	d,8.( es16) bes4\( aes!16\trill g aes8\)								|
	g4 r r																	|
	r8 g''16\( ( f) es( d c es)\) aes,4~									|
	aes16\( c es d c bes aes c\) fis,4~										|
	fis16 a\( c bes a g fis a\) c,4~										|
	c b2\fermata \time 2/4											  \bar "||"
}
cembaloRHMusicThree = \relative c'
{ \key c \minor \time 3/4 \clef treble
	\times 2/3 { es8[ bes g']} es8*2/3[ bes g'] es[ bes g']					|
	f[ bes, aes'] f[ d bes'] f[ d c']										|
	bes[ es aes,] bes[ es g,] f[ aes c~]									|
	c[ aes f] d[ f d] bes[ d aes]											|
	g[_\markup { \small \italic "piano" } bes d] es[ bes g'] es[ bes g']	|
	f[ bes, aes'] f[ d bes'] f[ d c']										|
	bes[ es aes,] bes[ es g,] f[ aes c~]									|
	c[ aes f] d[ f d] bes[ d f]												|
	bes[ g es'] bes[ g es'] bes[ g des']									|
	bes[ g des'] c[ f aes,] g[ es bes']										|
	c[ d! es]~ es[ d f] bes,[ c aes]										|
	g[ es f] g[ aes bes] c[ es d]											|
	es[ es, g] bes[ g es'] bes[ g es']										|
	es,[ bes' aes] c[ bes aes] g[ aes bes]									|
	c[ d es] d[ es f] bes,[ es d]											|
	es[ bes g] es[ g bes] es[ bes g]										|
	es[ g' d] es[ g b,] c[ es g]											|
	f[ aes es] f[ aes b,] d[ f aes]											|
	g[ b, c] es[ b c] fis[ b, c]											|
	g'[ es c] d[ g b,] c[ g' d]												|
	es[ g d] es[ g b,] c[ d es]~											|
	es[ b c] d[ f es] f[ g aes]~											|
	aes[ f( g)] f[( d es)] d[( b c)]										|
	d[ g c,] d[ g d] b[ d g,]												|
	c[ g aes] bes![ c des]~ des[ bes g]										|
	e[ des' c] bes[( aes g)] f[ g e!]										|
	f[ g aes] bes[ e f] g,[( des') c]										|
	bes([ g aes)] f[ f' e] f[ aes g]										|
	aes[ e f] des[ e! f] aes[ e f]											|
	bes,[ aes' g] f[ e des] c[ bes aes]										|
	g[ g' f] e[ g c,] des[ c bes]											|
	aes[ f' c] aes[ c aes] f[ aes g]										|
	aes[ c aes] f[ c g'] aes[ f c']											|
	f[ aes f] d[ bes es] f[ d bes']~										|
	bes[ es, d] es[ f g] f[ g es]											|
	d[ f d] bes[ d f] aes[ g f]												|
	bes[ g es] bes[ c des]~ des[ c bes]										|
	c[ es aes] d,![ f bes] es,[ bes g]										|
	es[ f g] f[ d es] a[ d, es]												|
	bes'[ f a] bes[ f d] bes[ d f]~											|
	f[ es g] bes[ es bes] g[ bes g]											|
	es[ aes g] aes[ bes c] d[ b aes!]										|
	g[ c b] c[ d es] f[ d bes]~												|
	bes[ es d] es[ f g]~ g16*2/3 aes bes8*2/3 des,							|
	c[ f e] f[ g aes]~ aes[ f g]											|
	aes[ es des] es[ c bes] c[ es, d!]										|
	es[ ges a] bes[ f aes] c[ bes aes]										|
	g[ bes g] es[ f g] aes[ bes c]											|
	des[ bes g] es[ des' bes] g[ bes g]										|
	es[ aes g] aes[ bes c] d![ f es]										|
	f[ d b] g[ f' d] b[ d b]												|
	g[ c b] c[ d es] f[ aes g]												|
	aes[ es g] aes[ bes c] bes[ f d]										|
	bes[ es d] es[ f g] f[ g es]											|
	aes[ f g] d[ es bes] c[ f d]											|
	es[ g es] bes[ es d] es[ bes g]											|
	es4 r8 g'16\( f es d c b\)												|
	c4 r8 c'16\( bes a g fis a\)											|
	c,16\( a fis g a bes c d es\) c g' fis									|
	g2.\fermata \time 2/4													|
}
cembaloLHMusicThree = \relative c
{ \key c \minor \time 3/4 \clef bass
	es4 r r																	|
	bes r r																	|
	es, es' aes,															|
	bes r8 bes d bes														|
	es4 r r																	|
	bes r r																	|
	es,	es' aes,															|
	bes r8 bes d bes														|
	g4 r r																	|
	aes4. bes8 c g															|
	aes f bes4 bes'															|
	c r8 c, bes aes															|
	g4 r r																	|
	aes4. bes8 c g															|
	aes4 bes bes															|
	es, r8 es' g es															|
	c4 r r																	|
	d r r																	|
	es a, d																	|
	g, r8 g' es g															|
	c,4 r r																	|
	d r r																	|
	es aes, a																|
	g r8 g' d f																|
	e4 r r																	|
	aes, r r																|
	des bes c																|
	des, r8 des' c bes														|
	f'4 r r																	|
	g, r aes																|
	bes c c,																|
	f r8 f aes c															|
	f4 r es																	|
	d r bes																	|
	es r c																	|
	bes r8 bes' f aes														|
	g4 r es																	|
	aes r g																	|
	c, r f																	|
	bes, r8 bes aes f														|
	g4 r es'																|
	aes r b,																|
	c r d																	|
	es r e																	|
	f r bes,																|
	aes r a																	|
	bes r8 bes' aes bes														|
	des,4 r8 c bes aes														|
	g4 r es																	|
	aes r f																	|
	b r g																	|
	c r es																	|
	aes, r d,																|
	es r c'																	|
	bes r8 g aes bes														|
	es,4 r8 es' g es														|
	c4 r r																	|
	es r r																	|
	d r d,																	|
	g2.\fermata \time 2/4													|
}
violinoMusicFour = \relative c'''
{ \key c \minor \time 2/4 \clef treble \set Score.currentBarNumber = #207
	\repeat volta 2
	{
		\once \override TextScript #'extra-offset = #'(-4.0 . 1.0)
			R2 ^\markup { \larger "4. Allegro" }							|
		R2*3																	|
		g8 c,16 b c8 g'16 fis												|
		 g8[  g, g  bes'] 				|
		a16 g a bes c bes a g												|
		fis e fis g a g fis e												|
		d8 d'16 c d8 es,!16 d												|
		es8 g c4~															|
		c8 c16 bes c8 d,16 c												|
		d8 f bes4~															|
		bes8 c,16 bes c8 a'16 g												|
		a8 bes,16 a bes8 g'16 fis											|
		g8 bes, a fis'														|
		g2~																	|
		g16 g( f es) g, f'( es d)											|
		g, es'( d c) f, d'( c b)											|
		es, c'( bes! aes) e bes'( aes g)									|
		f aes( g f) es g( f es)												|
		aes( g f) es d c b c												|
		aes'8( g) r4														|
		r16 c, es g c g es'8~												|
		es16 aes,( g f) aes( g) f( es)										|
		aes bes, d f aes f d'8~												|
		d16 g,( f es) g( f) es( d)											|
		g( es d c) aes'( g f es)											|
		f( d c b) g'( f es d)												|
		c( b c) aes' g f es d												|
		es c'( bes aes) e bes'( aes g)										|
		aes8 c f4~															|
		f16 bes,( aes g) d aes'( g f)										|
		g8 bes es4~															|
		es8 c16 b c8 aes'~													|
		aes8 d,16 c d8 bes'~												|
		bes es,16 d es8 c'~													|
		c bes16\( aes g f es d\)											|
		bes'8. c16 f,8. es16												|
		es g( f es) d f( es d)												|
		es c'( bes a) d, bes'( a g)											|
		c, a'( g fis) bes, g'( a bes)										|
		a( g fis) e d c bes a!												|
		g8 d16 c d8 g16 fis													|
		g8 g, g bes'														|
		a16 g a bes c bes a g												|
		fis e fis g a g fis e												|
		d8 d'16 c d8 es,16 d												|
		es8 g c4~															|
		c8 c16 bes c8 d,16 c												|
		d8 f bes4~															|
		bes8 c,16 bes c8 a'16 g												|
		a8 bes,16 a bes8 g'16 fis											|
		g8 bes, a fis'														|
	}
	\alternative
	{
		{
			g,2																|
		}
		{
			g2	 															|
		}
	}
	\bar "|:" g'16 es'( d c) d( c b) a										|
	b8 aes'!4 c,16( b)														|
	c g d' c d g, es' d														|
	es f es d c es d f														|
	es d( es f) e( f g) f(													|
	g aes) f( aes bes) aes( bes c)											|
	aes8 f4 e8																|
	f2~																		|
	f8 c'16 bes c8 des,16 c													|
	des8 f bes4~															|
	bes8 bes16 aes bes8 c,16 bes											|
	c8 es aes4~																|
	aes8 bes,16 aes bes8 g'16 f												|
	g8 aes,16 g aes8 f'16 e													|
	f8 aes, g e'															|
	f2~																		|
	f16 f( es d) f, es'( d c)												|
	f, d'( c bes) es, c'( bes a)											|
	bes2~																	|
	bes16 bes'( aes g) f4~													|
	f16 g( aes g) aes( g f g)												|
	es8 bes g'4~															|
	g16 es( d c) f( es d) c													|
	d2~																		|
	d16 d( c bes) es( d c) b												|
	c2~																		|
	c16 d,( g f) aes( g) b( a)												|
	b2\trill																|
	c~																		|
	c																		|
	b16 a( b c) b( c d) c(													|
	d es) d( es f) es( f g)													|
	es8 c'4 b8																|
	c16 aes( g f) es( d c bes!)												|
	a( g f es) d( c b a)													|
	b'( a g f) es( d c b)													|
	c'( bes! aes! g) f( es d c)												|
	d'( c b a) g( f es d)													|
	es es'( d c) f, d'( c b)												|
	c2~																		|
	c16 f( es d) aes' es( d c)												|
	d8 f, bes4~																|
	bes16 es( des c) g' des( c bes)											|
	c aes'( g f) g( f e) d													|
	e8 des'~ des f,16( e)													|
	f c g' f g c, aes' g													|
	aes f( es d) g es( d c)													|
	f d( c b) es c( d es)													|
	d( c b) a g f es d														|
	c a( b c) b( c d) c(													|
	d es) d( es f) es( f g)													|
	es8 c'4 b8																|
	c16 c'( bes aes) c, bes'( aes g)										|
	c, aes'( g f) c g'( f es)												|
	aes( g f) es d c b c													|
	aes'8( g) r4															|
	r16 c,, es g c g es'8~													|
	es16 aes,( g f) aes( g) f( es)											|
	aes bes, d f aes f d'8~													|
	d16 g,( f es) g( f) es( d)												|
	g( es d c) aes'( g f es)												|
	f( d c b) g'( f es d)													|
	c( b c aes') g( f) es( d)												|
	c2\fermata \fine													 \bar ":|"
}
cembaloRHMusicFour = \relative c''
{ \key c \minor \time 2/4 \clef treble
	c8 g16 f g8 c16 b														|
	 c8[  c, c  es'] 					|
	d16 c d es f es d c														|
	b a b c d c b! a!														|
	g g'( f es) g, f'( es d)												|
	g, es'( d c) g d'( c bes)												|
	es d c bes a g fis g													|
	es'8( d) r4																|
	r16 g, bes d g d bes'8~													|
	bes16 es,( d c) es( d c bes)											|
	es f, a c es c a'8~														|
	a16 d,( c bes) d( c bes a)												|
	d( bes a g) es'( d c bes)												|
	c( a g fis) d'( c bes a)												|
	g( fis g) es' d c bes a													|
	bes g'( f es) b f'( es d)												|
	c es( d c) b d( c b)													|
	c g( f es) b' f( es d)													|
	c'4~ c16 e( f g)														|
	aes, f'( es! d) g, es'( d c)											|
	b d aes'8~ aes16 g f es													|
	d( es d c) d( b c d)													|
	g,8 g'16 f g8 aes,16 g													|
	aes8 c f4~																|
	f8 f16 es f8 g,16 f														|
	g8 bes es4~																|
	es8 f,16 es f8 d'16 c													|
	d8 es,16 d es8 c'16 b													|
	c8 es, d b'																|
	c2~																		|
	c16 f( es d) a es'( d c)												|
	d8 f bes4~																|
	bes16 es,( des c) g des'( c bes)										|
	c bes aes g f es d! c													|
	d' c bes aes g f es d													|
	es' d c bes aes g f es													|
	f' es d c bes aes g f													|
	g g'( f es) aes, f'( es d)												|
	g, es'( d c) b d( c b)													|
	c es( d c) bes! d( c bes)												|
	a c( bes a) g bes( a g)													|
	fis8 a d4~																|
	d16 g( f! es) g, f'( es d)												|
	g, es'( d c) g d'( c bes)												|
	es d c bes a g fis g													|
	es'8( d) r4																|
	r16 g, bes d g d bes'8~													|
	bes16 es,( d c) es( d c bes)											|
	es f, a c es c a'!8~													|
	a16 d,( c bes) d( c bes a!)												|
	d( bes a g) es'( d c bes)												|
	c( a g fis) d'( c bes a)												|
	g( fis g) es' d c bes a													|
	g2																		|
	g																		|
	r1*1/2																	|
	r																		|
	r																		|
	r																		|
	c,16 aes'( g f) g( f e) d												|
	e8 des'4 f,16 e!														|
	f c g' f g c, aes' g													|
	aes bes aes g f aes g bes												|
	aes f aes c f c aes'8~													|
	aes16 des,( c bes) des( c bes aes)										|
	des es, g bes des bes g'8~												|
	g16 c,( bes aes) c( bes aes g)											|
	c( aes g f) des'( c bes aes)											|
	bes( g f e) c'( bes aes g)												|
	f( e f) des' c bes aes g												|
	aes f'( es d) a es'( d c)												|
	bes d( c bes) a c( bes a)												|
	bes f( es d) a' es( d c)												|
	d c d es d es f es														|
	f g f g aes g aes bes													|
	g8 es'4 d8																|
	es16 bes'( aes g) c( bes aes) g											|
	aes2~																	|
	aes16 aes( g f) bes( aes g) f											|
	g2~																		|
	g16 g,( c b) d( c) es( d)												|
	f2~																		|
	f16 aes( g f) d' aes( g f)												|
	es g( f es) c' g( f es)													|
	d f( es d) aes' es( d c)												|
	g' es( d c) d( c b) a													|
	b8 aes'!4 c,16( b)														|
	c g d' c d g, es' d														|
	es8 g, c4~																|
	c8 a16 g a8 f'~															|
	f b,16 a b8 g'~															|
	g c,16 b c8 aes'~														|
	aes g16( f) es( d c b)													|
	g'8. aes16 d,8. c16														|
	c16 c'( bes aes) e bes'( aes g)											|
	aes8 c, f4~																|
	f16 bes( aes g) d aes'( g f)											|
	g8 bes, es4~															|
	es16 d es f e f g f														|
	g aes g aes bes aes bes c												|
	aes8 f4 e8																|
	f16 aes( g f) es! g( f es)												|
	d f( es d) c es( d c)													|
	b8 d g4~																|
	g2~																		|
	g8 f16 es d c d8~														|
	d16 es f g aes8 g16 f													|
	g8 g,16 f g8 c16 b														|
	c8  [c,] c  [es']								|
	d16 c d es f es d c														|
	b a b c d c b a															|
	g8 g'16 f g8 aes,16 g													|
	aes8 c f4~																|
	f8 f16 es f8 g,16 f														|
	g8 bes es4~																|
	es8 f,16 es f8 d'16 c													|
	d8 es,16 d es8 c'16 b													|
	c8 es, d b'																|
	c2 \fine																		|
}
cembaloLHMusicFour = \relative c'
{ \key c \minor \time 2/4 \clef bass
	c8 d es c																|
	aes16 g aes bes c bes aes g												|
	f es f g aes8 f															|
	g aes! g f																|
	es d c c'																|
	bes! a bes g															|
	c16 bes c d es8 c														|
	d es d c																|
	bes a bes g																|
	c,16 c' bes a g bes a g													|
	a8 g a f																|
	bes,16 bes' a g fis a g fis												|
	g8 bes a g																|
	fis d g bes,															|
	es c d d,																|
	 g[  g' f g] 								|
	es g d g																|
	c, g' g, g'																|
	c, g16 f g8 c16 b														|
	c8 c, c es'																|
	d16( c d) es f es d c													|
	b g'( f es) g, f'( es d)												|
	es8 d es c																|
	f,16 f' es d c es d c													|
	d8 c d bes																|
	es,16 es' d c b d c b													|
	c8 es d c																|
	b g c es																|
	aes f g g,																|
	c es g c,																|
	f aes c f,																|
	bes, d f bes,															|
	es g bes es,															|
	aes c aes f																|
	bes d bes g																|
	c es c aes																|
	d4 r8 bes																|
	es aes, bes bes,														|
	es f g g,																|
	c4 r8 d																	|
	es d es c																|
	d16 bes'( a g) c, a' g fis												|
	bes,8 a b g																|
	c c' bes! g																|
	c16 bes c d es8 c														|
	d es d c																|
	bes a bes g																|
	c,16 c' bes a g bes a g													|
	a8 g a f																|
	bes,16 bes' a g fis a g fis												|
	g8 bes a g																|
	fis d g bes,															|
	es c d d,																|
	g16 g' f es d d' c b													|
	g,2																		|
	r8 g'8 b d																|
	f, b d es,16 d															|
	es8 aes f g																|
	c, g es g																|
	c c' bes aes															|
	g f e c																	|
	f des bes c																|
	f f, aes c																|
	f4 r8 f,																|
	bes16 bes' aes g f aes g f												|
	g8 f g es																|
	aes,16 aes' g f e g f e													|
	f8 aes g f																|
	e c f aes,																|
	des bes c c,															|
	f f' es f																|
	d f c f																	|
	bes, f' f, f'															|
	bes,16 g'( f es) f( es d) c												|
	d8 c'4 es,16( d)														|
	es bes f' es f bes, g' f												|
	g8 f es c																|
	f es d c																|
	bes aes g bes															|
	es d c es																|
	aes g f es																|
	d c b d																	|
	g, f' es d																|
	c d es c																|
	\stemDown f[ \stemUp f,] \stemNeutral f'4~								|
	f8 es f16 g aes!8~														|
	aes8 b,16 c d8 g,														|
	c aes f g																|
	c4 r8 c																	|
	f a f d																	|
	g b g es																|
	aes c aes f																|
	b4 r8 g																	|
	c f, g g,																|
	c es g c,																|
	f aes c f,																|
	bes, d f bes,															|
	es g bes es,															|
	aes c bes aes															|
	g f e c																	|
	f des bes c																|
	f,4 r8 g																|
	aes g aes f																|
	g16 es'( d c) f, d'( c b)												|
	es, es'( d c) d( c b) a													|
	b8 aes'!4 c,16 b!														|
	c g d' c d g, es' d														|
	es8 g e c																|
	f, f' es! c																|
	f16( es f) g aes8 f														|
	g aes g f																|
	es d es c																|
	f,16 f' es d c es d c													|
	d8 c d bes																|
	es,16 es' d c b d c b													|
	c8 es d c																|
	b g c es																|
	 aes [f] g  [g,]											|
	c,2 \fine																	|
}

\score
{
  {
  	<<
    	\new Staff = "Violino."
    	<<
       		\set Staff.instrumentName = #"Violon"
       		\set Staff.midiInstrument = #"violin"
        	\violinoMusicOne
      	>>
    	\new PianoStaff
    	<<
      		\set PianoStaff.instrumentName = #"Clavecin"
      		\new Staff = RHOne { \cembaloRHMusicOne }
      		\new Staff = LHOne { \cembaloLHMusicOne }
    	>>
  	>>
  }
  \layout { }
  \midi { }
}
\score
{
  {
  	<<
    	\new Staff
    	<<
       		\set Staff.midiInstrument = #"violin"
        	\violinoMusicTwo
      	>>
    	\new PianoStaff
    	<<
      		\new Staff = RHTwo { \cembaloRHMusicTwo }
      		\new Staff = LHTwo { \cembaloLHMusicTwo }
    	>>
  	>>
  }
  \layout { }
  \midi { }
}
\score
{
  {
  	<<
    	\new Staff
    	<<
       		\set Staff.midiInstrument = #"violin"
        	\violinoMusicThree
      	>>
    	\new PianoStaff
    	<<
      		\new Staff = RHTwo { \cembaloRHMusicThree }
      		\new Staff = LHTwo { \cembaloLHMusicThree }
    	>>
  	>>
  }
  \layout { }
  \midi { }
}
\score
{
  {
  	<<
    	\new Staff
    	<<
       		\set Staff.midiInstrument = #"violin"
        	\violinoMusicFour
      	>>
    	\new PianoStaff
    	<<
      		\new Staff = RHTwo { \cembaloRHMusicFour }
      		\new Staff = LHTwo { \cembaloLHMusicFour }
    	>>
  	>>
  }
  \layout { }
  \midi { }
}
