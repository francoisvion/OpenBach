\version "2.24.4"
#(set-global-staff-size 18)
\header{
  title = "Contrepoint 10"
  subtitle="L'Art de la Fugue"
  opus = "BWV 1080"
  composer="Jean-Sébastien Bach (1685 - 1750)"
  tagline = ##f
}
soprano = \relative c''{
	R1*7
	r2 r4 c
	b e r gis,
	a e a8 g f e
	d c b4~ b8 cis d e
	f e f d e fis g a
	bes a bes g a4 d~
	d8 c d b c4 cis
	d g, f a
	d4. e8 f g a4~
	a bes8 a g f g4
	c,1~
	c8 fis, g a bes2~
	bes a~
	a8 d4 cis8 d2~
	d4 cis r2
	a'2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e fis gis
	a g!16 f e4~ e8 d c b
	a gis a b cis d e f
	g a bes g e a g a
	f g a f d g f g
	e f g e f4. g8
	a4. g8 f e d cis
	d2~ d8 b cis4
	d8 bes! a g f4 f'~
	f8 e fis gis a2~
	a~ a8 a g f
	e4 a2 g4
	f2 e~
	e4 fis8 g a4 d,~
	d e8 f! g4 c,~
	c8 b cis d e4 a,~
	a8 a d cis d2~
	d4 d cis2
	d8 bes c!4~ c8 a bes4~
	bes8 a d4~ d8 cis d4~
	d8 cis d e f4. e8
	d2~ d8 cis d e
	cis4 r r2
	R1
	r4 d8 e f g a f
	g a bes g e a g a
	f e d4~ d8 b c d
	e d c4~ c8 b e4~
	e d c b
	a2 r
	R1*2
	r4 a8 b cis d e f
	g a bes g e a g a
	f g f e d e f d
	e fis g2 f4
	g d g2~
	g4 f8 e f4 d
	c2. c4
	f2~ f8 g f g
	e4 a, bes f
	r d' c f
	bes,8 c d e f g a4~
	a8 g f e d2
	c~ c8 c d e
	f2~ f8 fis g a
	bes2 r8 d, e f
	g2~ g8 gis a b
	c2 r8 e, f! g
	a2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a f g4~ g8 d e g
	c,2 bes~
	bes8 g a c f2~
	f4 b, e2~
	e4 d r8 e f a
	d,2 c~
	c8 a b cis d4 a
	r f' e a
	d,8 e f g a bes c4~
	c8 bes a g f2
	e r
	r r8 c d c
	bes2 r
	r8 f' g f e4 a
	f8 a bes a g4 c
	f, bes r f~
	f ees2 d4~
	d c2 bes4~
	bes a~ a8 g g'4~
	g8 e fis4 f2~
	f4 ees8 d ees2~
	ees4 d8 c d ees f4~
	f8 d e! f g4 bes,~
	bes8 g a bes c d ees c
	d4 f bes,4. c8
	d4. e8 f2
	g f4. ees8
	d2~ d8 c d e!
	f4 f,8 g a bes c d
	ees f g ees c f ees f
	d ees f d bes g g'4~
	g g2 fis4
	g8 f! ees d cis4 d
	e!2~ e8 a, d c
	bes1~
	bes8 bes a g f4. f8
	e a4 g8 f e f g
	a g a bes c d ees c
	d2 c4 f8 e
	f4. cis8 d2~
	d2. cis4
	d2\fermata r
}
alto = \relative c'{
	r4 cis d a
	r f' e a
	d,8 e f g a bes c4~
	c8 bes a g fis d g4~
	g8 e fis a bes2~
	bes8 g a cis d2~
	d8 c bes a g f e4
	a4. g8 f4 e8 fis
	gis4 a8 b c4 b
	a2 r
	R1*3
	r4 gis a e
	r bes' a d
	g,8 a b cis	\clef soprano d e f4~
	f8 e d c bes a bes4~
	bes a8 g f g f ees
	\clef alto d2~ d4 e!8 f
	g f e d c4 f
	f2~ f8 fis g gis
	a2 r
	R1
	d2 a4. b8
	cis4. d8 e2
	a, r
	R1*7
	\clef soprano d2 a4. b8
	c4. d8 e2
	f e4. d8
	cis2~ cis8 a b cis
	d2~ d8 d c! b
	c2~ c8 c bes! a
	\clef alto bes2~ bes8 bes a g
	a2~ a8 g f e
	f2. f4
	e2. e4
	a2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a4 d~ d8 c bes a
	g4 c~ c8 bes a g
	f4 bes2 a4
	e' r r2
	r4 d, f c
	r a' g c
	\clef soprano f,8 g a b c d e4~
	e8 d c b a2~
	a8 fis gis4 r2
	R1*3
	r4 d8 e f g a b
	c d ees c a d c d
	bes c bes a g a bes g
	a b c2 bes4~
	bes e, a2~
	a4 d g,2~
	g8 g f e f e d cis
	d e f4~ f8 e d4~
	d d'8 cis d e f4~
	f a, bes d,8 e
	f e f g a4. g8
	f a bes c d2~
	d4. c8 bes4. a8
	g b c d e2~
	e4. \clef alto d8 c4. b8
	c2 f,4. g8
	a4. bes8 c2
	d c4. bes8
	a2~ a8 g a bes
	c2 r
	r8 e, f a d,4 e
	f4. e8 d a bes d
	g2~ g8 bes a e
	f2 r
	r8 fis g bes e,4 fis
	g8 fis g4 bes f
	\clef soprano r4 d' c f
	bes,8 c d e f g a4~
	a8 g f e d2
	cis r
	\clef alto r8 g a g fis4 a
	r8 g f! g a4 e
	f c' g e'
	a, r r8 d ees d
	c4 f bes, c
	r8 g a g f4 bes
	r8 ees, f ees d4 g
	r8 c, d c bes4 bes'~
	bes8 g a4. g8[] f ees
	d4 g4. f8[] ees d
	c4 f4. ees8[] d c
	bes4. a8 bes c d e!
	f4 c r2
	r8 c' bes a g fis g a
	bes a bes g c ees d c
	bes4 ees r8 ees d c
	bes a g a bes a bes g
	c4 r r f,
	g8 a bes2 a4~
	a d, r8 g a bes
	c d ees c a d c d
	bes2 a4 bes~
	bes8 a g a f2~
	f8 a g f e4 d
	cis8 d e4~ e8 e d4~
	d cis d a
	r f' e a
	d,8 e f g a bes c4~
	c8 bes a g f g a4~
	a1~
	a2\fermata r
}
tenor = \relative c{
	R1*2
	r2 r4 fis
	g d r bes'
	a d g,8 a bes c
	d e f4~ f8 e d c
	bes a d2 cis8 b
	cis d e4~ e8 d e4~
	e2. d4
	c2 r8 e, a4~
	a g8 fis g2
	f!8 g a b c2
	bes8 c d e f2
	e4 f8 d e a, bes4
	a d r fis,
	g d a'8 g f e
	d c bes4~ bes8 c d e
	f g f2 g8 a
	bes2~ bes8 a g f
	e4 f8 g a4 d
	d, r r d'
	e2 r
	R1*3
	d2 a4. b8
	c4. d8 e2
	f e4. d8
	cis2~ cis8 a b cis!
	d e f4~ f8 e d e
	cis d e4~ e8 a, d4~
	d8 e f4~ f8 g a4~
	a8 g f e f4 e
	a, b8 cis d2
	c!4. b8 c2~
	c8 c bes! a bes4. d8
	a'2 r
	R1*6
	r4 fis, g d
	r bes' a d
	g,8 a bes c d e f4~
	f8 e d c bes2\trill
	a2. d8 c
	bes a g2 c8 bes
	a g f4~ f8 e f4
	bes e, a2~
	a8 g f g a4 e
	a4. b8 c d c b
	a2. gis4
	a e e' d8 c
	b4 e,8 fis gis a b c
	d e f d b e d e
	cis a d4 g, bes
	e, d2 cis4
	d r r2
	R1*5
	a'2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a c d e f4. e8
	d4. c8 bes4. a8
	g d' e fis g4. f8
	e4. d8 c4. b8
	a8 e' fis gis a4. g8
	f e f c d c d bes
	a g f4~ f8 e f a~
	a g f g a4. bes8
	c2. f,4~
	f8 d e g c4. bes8
	a2~ a8 f g c
	f,2 r4 bes~
	bes8 d, e g cis,4. cis8
	d e f a d4. c8
	bes2~ bes8 g a d
	g,4 d'8 e f e d cis
	d a a'4~ a8 e d cis
	g'4 d r8 d c bes
	a4. cis8 d4 a
	a'8 e d e f4 cis
	d a c fis,
	g c r8 c bes c
	d4 a c cis
	d c! bes g
	a8 c bes c d4 a
	bes c~ c8 a bes a
	g4 c r8 f, g f
	ees4 a r8 d, ees cis
	d4 r d'4. c8
	b a g4 c4. bes8
	a g f4 bes4. a8
	g1
	f4. g8 a bes c a
	bes4 f g d
	r bes' a d
	g,8 a bes c d ees f4~
	f8 ees d c bes2
	a4 f' ees d
	c2 f
	bes,8 c d bes ees d c bes
	a bes c a d4 d,
	g g'~ g8 f e d
	cis d e cis d c bes a
	g d e f g a bes g
	a1
	r4 a bes f
	r d' c f
	bes,8 c d e f g a4~
	a8 g f e d4. e8
	f4 e8 d e f g4~
	g fis\fermata r2
}
bass = \relative c{
	R1*6
	r4 f e a
	r cis, d a
	e'8 d c b a g f4~
	f8 g a b c4 a
	b e~ e8 a, b cis
	d2 c!8 d e fis
	g2 d8 e f g
	a2~ a8 f g e
	f e d cis d bes c a
	b cis d2 f,4
	g2. f8 g
	a2. bes8 c
	d4 e8 fis g f e d
	c4 d8 e f e d c
	bes4 bes'8 a bes4 bes,
	a a'8 bes a g f e
	f e f g f e d cis
	d d, d' e f a d f
	e f g e cis d e cis
	d4 d, r2
	R1*4
	a'2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a2~ a8 g f e
	d2 g~
	g8 g f e f2~
	f8 e f g a2~
	a8 bes! a g fis4.\trill e16 fis
	g8 a g f! e4.\trill d16 e
	f4 e8 d cis4.\trill b16 cis
	d2~ d8 f, bes a
	g a bes g e a g a
	f g a fis bes4 g
	d'4. e8 f4. fis8
	g2 f!8 g a4
	bes a2 g4~
	g8 g e d f2~
	f4 e8 d e2~
	e4 d8 cis d2~
	d cis
	d a4. b8
	c4. d8 e2
	f e4. d8
	c2~ c8 b c d
	e dis e4 r e
	fis8 gis a2 gis8 fis
	g!4 f! e d
	cis d8 bes g4 a
	d, r r2
	R1
	r4 g8 a bes c d e
	f g a f d g f g
	e f g e c f e f
	d e f d b e d e
	cis2 d~
	d4 bes f'4. d8
	g4. g8 f4. e8
	d4. c8 bes2
	f' r
	r r8 d e fis
	g2 r
	r r8 e fis gis
	a2 r
	r4 a bes f
	r d c f
	bes,8 c d e f g a4~
	a8 g f e d2
	c r
	R1*5
	g'2 d4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a2 r8 a g a
	bes4 fis a d,
	ees e f r
	r2 r8 e f e
	d4 f2 ees4~
	ees d r8 f ees f
	g4 c, d2
	ees4 a, bes2
	c4 fis, g2
	d r
	R1*4
	r4 d' ees bes
	r g' f bes
	ees,8 f g a bes c d4~
	d8 c bes a g2
	f r
	R1*7
	a2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a1
	d,2\fermata r
	\bar "|."
}
global = {\time 4/4 \key d \minor}
\score{
    \context StaffGroup <<
	\new Staff <<\global \clef soprano \soprano>>
	\new Staff <<\global \clef alto \alto>>
	\new Staff <<\global \clef tenor \tenor>>
	\new Staff <<\global \clef bass \bass>>
    >>
  \midi {\tempo 4=110}
  \layout{}
}
