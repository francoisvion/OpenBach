\version "2.27.1"

\language "deutsch"

sopranC = \relative c''
{
	h8 e e 
	e\( dis\)-\prall r 
	\tuplet 3/2 {gis16( h a gis fis e} d16.) h'32 
	d,8\( cis\)-\prall r 
	a' c, c 
	h a' g 
	fis-\prallmordent g16 fis e dis 
	\tuplet 3/2 {e h dis  e h e  fis h, fis' 
	g h a  g a fis  e fis d 
	\omit TupletNumber
	\omit TupletBracket
	cis_\markup {\tiny "triolets simile"} e d   cis e h  ais e' gis, 
	a dis e} fis4~
	\tuplet 3/2 { fis16 h fis   e h' d, cis h' h,
	ais cis d   e e, d'   cis e, d' 
	e d cis  h cis ais  h cis ais 
	h e g  fis g e   d e cis
	d fis e   fis d g   a d, h'
	c, a h  c a d  e a, fis' 
	g h, c  d h e  fis h, g'
	a, fis g  a fis h  cis fis, dis'
	e g fis  e d c  h a g
	fis g a   g a h   c d h}
	a8 a8.-\prall gis32 a 
	h8~ \tuplet 3/2{h16 gis a   h c d}
	e8 e8.-\prall dis32 e 
	fis16. e32 dis16. e32 dis16. e32
	fis8~fis16. h,32 g'16. h,32 
	a16. a'32 g16. fis32 e16. dis32
	 \tuplet 3/2{e16 h e} g8~\tuplet 3/2{g16 e c}
	\tuplet 3/2{fis a, d} fis8~\tuplet 3/2{fis16 d h}
	e8~\tuplet 3/2{e16 c e}a8~
	a~\tuplet 3/2{a16 h, d} g8~
	\tuplet 3/2{g16 a c  fis, a c  e, a c}
	d,4.~
	\tuplet 3/2{d16 h c  d e fis  g fis e
	fis a g  fis e d} c16. a'32
	 \tuplet 3/2{c,16 h a  h g a  h d cis
	d c h  a c g  fis c' e,
	d h' c} d4~
	\tuplet 3/2{d16 g d  c g' h,  a g' g,
	fis a h  c c, h' a c, h'
	c h a  g a fis  g a fis
	g c e  d e c  h c a}
	h4 r8
	g d' d
	d\( cis\)-\prall r
	\tuplet 3/2{fis16 a g  fis e d} c16. a'32
	c,8\( h\)-\prall r
	g' h, h 
	a g' fis
	e-\prallmordent fis16.( e32) d16.( cis32)
	 \tuplet 3/2 {d16 fis e fis d gis a d, h'}
	c8 a r
	\tuplet 3/2 {e,16 g fis g e gis h e, cis'}
	d4.~
	\tuplet 3/2 {d16 c h c a' c,} h8~
	\tuplet 3/2 {h16 g a b g' b,} a8~
	\tuplet 3/2 {a16 h c d e f e f d}
	c8~c16.[ e32]  \tuplet 3/2 {a16 gis a
	gis a h d, gis a h a h
	d,( h c)} r8 r
	\tuplet 3/2 {c16( a h)} r8 r
	r e4~
	\tuplet 3/2 {e16 cis d} r8 r
	\tuplet 3/2 {a16( fis gis)} r8 r
	\tuplet 3/2 {h16( c, d)} r8 r
	R4.*2
	h'8 e e
	e\( dis\)-\prall r
	\tuplet 3/2 {gis16 h a gis fis e} d16. h'32
	d,8\( cis\)-\prall r
	a' c, c
	h a' g
	fis-\prallmordent g16.(fis32)e16.(dis32)
	 \tuplet 3/2 {e16 g, a h g c d g, e'
	f, d e f d g a d, h'~
	h e, fis gis e a h e, c'
	d, h c d h e fis h, gis'
	a c e c a g fis a c
	dis, e fis e fis g a h g
	fis a g fis a e dis a' cis,
	d gis a} h4~
	\tuplet 3/2 {h16 e h a e' g, fis e' e,
	dis fis g a a, g' fis a, g'
	a g fis e fis dis e fis dis
	e a c h c a g a fis}
	g8~\tuplet 3/2{g16 e g} c8~
	c~\tuplet 3/2{c16 e, fis} h8~
	\tuplet 3/2{h16 e dis} e16. e,32 a16.[-\mordent a32]
	 \tuplet 3/2{a16 fis' e dis cis h e d c
	h c a} g8\(fis16.\)-\prall e32
	 \tuplet 3/2 {e16 h' e}g8~\tuplet 3/2{g16 e c
	fis a, d} fis8~\tuplet 3/2{fis16 d h}
	e8~\tuplet 3/2{e16 fis g fis g e}
	dis16. fis32 a16. h32 g16. dis32
	e16. fis32 e8\( dis16.\)-\prall e32
	e4.-\fermata \fine
}

altC = \relative c'
{
	R4. *8 
	e8 h' h 
	h\( ais\)-\prall r
	\omit TupletNumber
	\omit TupletBracket
	\tuplet 3/2{dis16 fis e  dis cis h} a16. fis'32
	a,8\( gis\)-\prall r
	e' g, g 
	fis e' d
	cis-\prallmordent d16. cis32 h16. ais32
	 \tuplet 3/2{h16 h, cis d h e fis h, gis'
	a c, d e c fis g c, a'
	\clef bass h, g a h g cis dis g, e'
	fis a, h cis a dis e a, fis'
	g, e fis g a h cis dis e
	\clef violin dis e fis e fis g a h g
	fis a g fis a e dis a' cis,
	d gis a} h4~
	\tuplet 3/2{h16 e h a e' g, fis e' e,
	dis fis g a a, g' fis a, g'
	a g fis e fis dis e fis dis
	e a c h c a g a fis}
	g8~\tuplet 3/2{g16 e g} c8~
	c~\tuplet 3/2{c16 d, fis} h8~
	\tuplet 3/2{h16 g h} e8~\tuplet 3/2{e16 c a
	d fis, h} d8~\tuplet 3/2{d16 h g}
	c4.~
	\tuplet 3/2{c16 h a c a g c g fis}
	h8~\tuplet 3/2{h16 g a h d cis}
	d8 r r
	d, g g
	g\( fis\)-\prall r
	\tuplet 3/2{h16 d c h a g} f16. d'32
	f,8\( e\)-\prall r
	c' e, e
	d c' h
	a-\prallmordent h16. a32 g16. fis32
	 \tuplet 3/2{g16 d fis g d g a d, a'
	h d c h c a g a fis
	e g fis e g d cis g' h,
	c fis g} a4~
	\tuplet 3/2{a16 d a g d' fis, e d' d,
	cis e fis g g, fis' e g, fis'
	g fis e d e cis d e cis
	d g h a h g fis g e}
	fis8 d r
	\tuplet 3/2{a'16 c h c a dis e a, fis'}
	g8 e r
	\tuplet 3/2 {h,16 d cis d h e fis h, g'}
	a4~ \tuplet 3/2{a16 g fis}
	g4~ \tuplet 3/2{g16 f e}
	f8~\tuplet 3/2{f16 e d} gis8-\prall
	\tuplet 3/2 {a16 g f  e d c h c a}
	e'8 r r
	e a a
	a\( gis\)-\prall r
	\tuplet 3/2{cis16 e d cis h a} g16. e'32
	g,8\( fis\)-\prall r
	d' f, f
	e d' c
	h-\prallmordent c16 h a gis
	 \tuplet 3/2{a16 e gis a e h' cis e, dis'
	e e, d' c d h  a h g
	fis a g fis a e dis a' cis,
	d gis a} h4~
	\tuplet 3/2 {h16 e h a e' g, fis e' e,
	dis fis g a a, g' fis a, g'
	a g fis e fis dis e fis dis
	e a c h c a g a fis
	g e fis g e a h e, c'~
	c f, g a f h c f, d'
	e, c d e c fis gis c, a'~
	a d, e fis e gis a d, h'
	\clef bass c, e c a c e c a g
	fis g a g a h c d h}
	a8 a8.-\prall gis32 a
	h8~ \tuplet 3/2{h16 gis a  h c d}
	\clef violin e8 e8.-\prall dis32 e
	fis16. e32 dis16. e32 dis16. e32
	fis8~fis16. h,32 g'16. h,32
	a16. a'32 g16. fis32 e16. dis32
	 \tuplet 3/2 {e16 h e} g8~\tuplet 3/2 {g16 e c
	fis a, d} fis8~\tuplet 3/2{fis16 d h}
	e8~\tuplet 3/2 {e16 fis g fis g e}
	dis16. fis32 a16. h32 g16. dis32
	e16. fis32 e8\( dis16.\)-\prall e32
	\clef bass e8~ \tuplet 3/2{e16 e, g} c8~
	c~\tuplet 3/2 {c16 d, fis} h8~
	\tuplet 3/2{h16 e dis} e16. e,32 a16.-\mordent a32
	 \tuplet 3/2{a16 fis' e dis cis h e d c
	h c a} g8\( fis16.\)-\prall e32
	e4.-\fermata \fine
}

bassC = \relative c
{
	e8 g e 
	h'4 h,8 
	e fis gis 
	a4 g8
	fis4 e8
	dis4 e8
	a h h,
	e g, h
	e, e' cis
	fis4 fis,8
	h cis dis
	e4 d8
	cis4 h8
	ais fis g
	e'fis fis,
	h4 r8
	R4.*4
	h8 e e
	e dis r
	gis d d
	d( cis) r
	a' c, c
	h a' g
	fis h h,
	\omit TupletNumber
	\omit TupletBracket
	e8~ \tuplet 3/2{e16 g e  a g a}
	d,8~\tuplet 3/2{d16 fis d  g fis g}
	c,8~\tuplet 3/2{c16 e c  fis e fis}
	h,8~\tuplet 3/2{h16 d h  e d e}
	a,8 a' g
	fis e d
	g fis e
	d e fis
	g fis e
	d4 d,8
	g a h
	c4 e8
	a,4 g8
	fis d e
	c' d d,
	g h d
	g g, e
	a4 a'8
	d, e fis
	g4 h8
	e,4 d8
	cis a h
	g' a a,
	d c h
	a g fis
	e' d cis
	h a g
	fis' e dis
	e d cis
	d c h
	a g f
	e fis gis
	a~\tuplet 3/2 {a16 c h c a dis}
	e,8~\tuplet 3/2 {e16 e' d f e gis}
	a,8 g a
	d,~\tuplet 3/2{d16 d' cis d a c}
	h8~\tuplet 3/2{h16 h' a h gis a}
	gis8~\tuplet 3/2{gis16 a gis a e f}
	d8 e e,
	a g fis
	g a fis
	h4 h'8
	e, fis gis
	a4 g8
	fis4 e8
	dis h c
	a' h h,
	e r r
	d r r
	c r r
	h r r
	a r r
	h e e
	e( dis) r
	gis d d
	d( cis) r
	a' c, c
	h a' g
	fis h h,
	e8~\tuplet 3/2{e16 g e a g a}
	d,8~\tuplet3/2{d16 fis d g fis g}
	c,8 c' c,
	h8. h'16 c16. fis,32
	g16. a32 h8 h,
	e8~ \tuplet 3/2{e16 g e a g a}
	d,8~\tuplet3/2{d16 fis d g fis g}
	c,8 c' c,
	h8. h'16 c16. fis,32
	g16. a32 h8 h,
	e,4.-\fermata \fine
}
