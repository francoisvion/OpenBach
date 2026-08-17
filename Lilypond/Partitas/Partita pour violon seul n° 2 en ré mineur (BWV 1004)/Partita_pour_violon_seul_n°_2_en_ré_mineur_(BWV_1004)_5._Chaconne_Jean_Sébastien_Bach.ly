\version "2.24.4"
\paper {
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "5. Chaconne"
  subtitle = "Partita pour violon seul n° 2 en ré mineur"
  subsubtitle = "6 sonates pour violon"
  opus = "BWV 1004"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f}
voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)
melodyOne =  \relative a' {
	\voiceOne
	a4. a8 |
	e'4 e4. e8 |
	f4 d4. c8 |
	bes4 a g16 [( f e f ) ] |
	g16 [ ( e )  f ( d ) ] a'4. a8 |
	e'4 e4. e8 |
	f4 d4. d8 |
	bes'4 a8. [ g32 f ] g8. [ e16 ] |
	f8. s16 s2 |
	e8 s8 e8 s8 s4 |
	f8 s8 d8. [ f16]  e8. [ d16] |
	d8 s8 cis8 r8 r8. a'16 |
	f8 s8  s2 |
	e8 r8 e8 r8 s4 |
	e8 r8  d8. [ f16 ] e8. [ cis16 ] |
	d8. [ e16 ] d4 ( cis8.)  [ d16 ] |
	d8. [ e16 ] f8. [ g32 a ] bes8. [ f16 ] |
	e8. [ bes'16 ] a8. [ g16 ] a8. [ fis16 ]  |
	g8. [ f16 ] e8. [ d32 cis ] d8. [ e16 ] |
	f8. [ g16 ] e8. [ f16 ] g8. [ e16 ] |
	f8. [ d32 e ] f8. [ g32 a  ] bes8. [ f16 ] |
	e8. [ bes'16 ] a8. [ g16 ] a8. [ fis16 ] |
	g8. [ f16 ] e8. [ d32 cis ] d8. [ e16 ] |
	f8. [ g16 ] d8. [ cis32 b ] cis8. [ g16 ] |
	f8 [ f' e d cis d ] |
	g,8 [ a16 ( bes ) ] cis,8 [ bes' a g ] |
	f8 [ g16 ( a ) ] bes,8 [ d g d'16 ( cis ) ] |
	d8 [ f,8 ] e16 [ f g bes ] a [ g f e ] |
	f16 [ ( a d f ) ] f [ ( e g f ] e [ d cis d ) ] |
	g,16 [ bes fis g ] cis, [( e g )  bes ] a [ g e' g, ] |
	f16 [ cis d a ] bes [ ( d g ) a ] bes [ es cis d ] |
	gis,16 [(  b d ) f ] e [ g cis, d ] a, [ ( e' d' ) cis ] |
	d8 [ f bes a gis d, ] |
	cis8 [ e' a g fis c, ] |
	b8 [ d' g f e bes, ] |
	a16 [ f'' e d ] cis8 [ a8 e'8 g,8 ] |
	f16  [ d f a ] d [ ( f bes ) a ] gis [ b gis e ] |
	cis16 [ ( e a ) g ] fis [ a fis c ] a [ fis d c ] |
	b16 [ ( d g ) fis ] g [ es' ( d cis ) ] bes' [( a gis ) a ] |
	f16 [ e d c ] bes [ ( a gis ) a ] cis, [ g' f e ] |
	f16 [ d e f ] g [ a b cis ] d [ f, e d ] |
	a16 [ ( e' d' ) cis ] d, [(  fis a ) c ] c [ bes c a ] |
	bes16 [ g f es ] d [ c bes a ] g [ ( g' es' ) d ] |
	cis16 [ e a, g ] f [ d' e, d ] a [ ( e' d' ) cis ] |
	g'16 [ (e f cis ) ] d [( c bes a ] g [ f e d ] ) |
	cis16 [ bes' a g ] fis [ d a' d, ] c [ bes c a ] |
	bes16 [ ( g a bes ] c [ d e fis ] g [ a bes a ] ) |
	gis16 [ a e f ] g [ cis,( d ) gis, ] ( a ) [ f' e cis ] |
	d16 [ d' ( a g ] f [ e d c ] bes ) [ d' g, f ] |
	e16 [ c' ( g f ] e [ d c bes ] a ) [ c' f, es ] |
	d16 [ bes' ( f es ] d [ c bes a ] g ) [ bes' e, d] |
	cis16 [ a cis e ] a [ e a cis ] e [ g, a e ] |
	f16 [ d f a ] d [ a d f ] bes, [ g' ( a bes ) ] |
	e,16 [ c, e g ] c [ g c e ] a, [ f' ( g a ) ] |
	d,16 [ bes, d f ] bes [ f bes d ] g, [ e' ( f g ) ] |
	cis,16 [ a cis e ] a [ e a cis ] e [ g, ( f e ) ] |
	f8 s4 f8 g8 s8 |
	e8 s4 e8 f8 s8 |
	d8 s4 d8 e8 s8 |
	s4. a8 a16 [ ( g ) a (e) ] |
	f8 s8 d8 s8 s4 |
	e8 s8 c8 s8 s4 |
	d8 s8 bes8 s8 g,16 [ e' b' g' ]   |
	a,,16 [ e' cis' g' ] a,, [ f' d' f ] a,, [ g' cis e ] |
	d16 [ a32 ( g f16 e ) ] d [ c bes a ] bes [ d'32 ( c bes a g f ) ] |
	e16 [ g32 (f e16 d ) ] c [ bes a g ] a [ c'32 ( bes a g f es )] |
	d16 [ f32 (es d16 c ) ] bes [ d32 ( c bes16 a )] g [ bes'32 (a g f e d ) ] |
	cis32 [( b a b cis d e f )] g [ (a bes a g f e d )] cis16 [ (e'32 d cis b a g )] |
	f16 [ d32 ( e f16 ) a ] f [ d f a ] bes32 [ (c d e f g a bes ] |
	e,16 ) [ c,32 ( d e16 ) g ] e [ c e g ] a32 [ ( bes c d e f g a ] |
	d,16 ) [ bes,32 ( c d16 ) f ] d [ bes d f ] g32 [ ( a bes c d e f g ) ] |
	cis,32 [ bes' ( a g f e d c ) ] bes [ ( a g f e d cis b ) ] a [ ( b cis d e f g e ) ] |
	f32 [ ( d e f g a b cis )] d [ ( b cis d e f g a ) ] bes16 [ d,, c \trill bes ] |
	c32 [ d e fis g a bes c ] d [ a bes c d e fis g ] a16 [ c,, bes^\markup { (tr) } a ] |
	bes32 [ d e fis g a bes c ] d [ g, a bes c d e fis ] g [ a bes a g f e d ] |
	cis32 [ a' g f e d cis b ] a [ b cis d e f g a ] bes [ g e cis a g f e ] |
	d16  [ a' d e ] f [ d bes a ] gis [ b d f ] |
	c,16[ e a c ] e [ c a g ] fis [ a c es ] |
	bes,16 [ d g bes ] d [ bes g f ] e [ g bes cis ] |
	a,16 [ d f a ] d [ a f d ] a [ e' g cis ] |
	d,16 [ (bes'') bes (gis) ] gis [ (f) f (d) ] d [ b gis e ] |
	cis16 [ (a'') a (fis) ] fis [ (es) es (c) ] c [ a fis d ] |
   	b16 [ (g'') g (es) ] es [ (cis) cis (bes) ] bes [ g e cis ] |
	a16 [ (cis) cis (e) ] e [ (g32 f) g16 (bes32 a) ] bes16 [ cis32 (d e16) g, ] |
	f32 [ (a b cis) ] d [ (cis b a) ] f' [ (e d cis)] d [(e f g )] a [ (g f e)] bes' [(a g f) ] |
	c32 [ (e fis gis) ] a [ (gis fis e) ] c' [ (b a gis) ] a [ (b c d) ] e [ (d c b) ] f' [ (e d cis) ] |
	d32 [ (e f e)] d [(f e d) ] f [ (e d f)] e [(d f e )] d [ (g f e d c bes a )] |
	g32 [ (a bes a)] g [(bes a g) ] bes [ (a g bes)] a [(g bes a) ] g [ (f e d cis b a g )] |
	f32 [ ( d ) a'' ( d,,) ] f32 [ ( d ) a'' ( d,,) ] a''2^\markup { arpeggio }  |
	g2 g4 |
	f2 f4 |
	e8  [ f8 ] e8 [ d8 ] d8 [ cis8 ] |
	d2. |
	es2. |
	d2. |
	d2 cis4 |
	d4 a4 bes4 |
	c4 bes4 a4 |
	bes4 bes'4 a4 |
	g8 [ f8 ] e2 |
	f2.  |
	fis2. |
	g4 f e |
	f4 cis2 |
	d4 f f |
	f4 e es |
	es4 bes' e, |
	e4 a g |
	f4 fis2 |
	g4 gis2 |
	a4 c b |
	d4 d cis |
	d2. |
	d4 cis2 |
	c4 b2 |
	bes4 a g |
	fis4 f f |
	e4 es es |
	d4 d d |
	d4 d cis  |
	d,8 [ f'32 ( e d e ] d [ c d c bes c bes a ] bes [ c d e f16 ) d, ] |
	c8 [ e'32 ( d c d ] c [ bes c bes a bes a g ] a [ bes c d es16 ) c, ] |
	bes8 [ d'32 (c bes c ] bes [ a bes a g a g f ] g [ a bes c d16 ) bes, ] |
	a32 [ ( a' b cis d16 ) a, ] g32 [( a' b cis d16 ) g,, ] a32 [ ( d' cis b cis16 ) g ] |
	f16 [ ( e d cis) ] d [( f g a ) ] bes [ a bes g ] |
	e'4 e4. e8 |
	f4 d4. d8 |
	bes'4 a g |
	g4 fis4 s4 |
	f4 e s4|
	es4 d s4  |
	s4 cis4. d8 |
	\key d \major
	d4 fis,4. g8 |
	e4 fis4. ( g16 [ a ] ) |
	d,4 e4. ( fis16 [ g ] ) |
	fis8 [ e ] e4. a8 |
	fis4 b8 [ a g fis ] |
	e4 fis16 ( [ g a g ] fis 8 ) [ e ] |
	d4 e8 [ g16 fis ] e8 [ d ] |
	cis'8 [ d ] e,4. a8 |
	fis8 [ e d e fis gis ] |
	a8 [ b cis d b cis ] |
	d8 [ fis e d cis b ] |
	a8 [ b cis d e cis8 ] |
	d4 fis4. fis8 |
	e4 a4. g8 |
	fis8 [ e ] g [ fis ] b [ a ]  |
	g8 [ fis ] e2 |
	d16 [ cis b a ] gis ( [ b d fis ] ) e8 [ e ] |
	e8 r8 r4 fis,8 [ e' ] |
	d8 r8 r4 e,8 [ d' ]  |
	cis16 [ b a b ] cis [ ( e g b )] a [ g fis e ] |
	fis16 [ a fis d ] a [ ( d a fis )] d [ fis e d ] |
	cis16 [ a'' e cis ] a [ cis a e] cis [ e d cis ] |
	b16 [ gis'' d b ] gis [ b gis e ] b [ d cis b ] |
	a16 [ b cis d ] e [ cis a cis ] e [ g fis e ] |
	fis16 [ d a d ] fis [ d a' fis ]
	d' [ a fis' d ] |
	a'16 [ e cis e ] a [ e cis' a ] e' [ cis fis cis ] |
	d16 [ fis d b ] fis [ b d, fis ] b, [ d cis b ] |
	cis16 [ e cis a ] e [ a cis, e ] a, [ cis e g ] |
	fis16 [ d a'' a ] a [ fis d a ] fis [ d a d ] |
	e16 [ cis a'' a ] a [ e cis a ] e [ cis a cis ] |
	d16 [ b a'' a ] a [ fis d b ] d [ gis b gis ] |
	a16 [ e a a ] a [ cis, e e ] e [ a, cis g ] |
	fis16 [ d a' a ] a [ fis d fis ] a [ d fis b,, ] |
	cis16 [ d a' a ] a [ e cis e ] a [ cis e a,, ] |
	b16 [ d a' a ] a [ d, b d ] gis [ b d e, ] |
	a,16 [ e' a a ] a [ e a cis ] e [ cis a g ] |
	fis16 [ a, a a ] a16 a''16 [ a fis ] fis [ d d fis ]  |
	e16 a,,16 [ a a ] a a''16 [a e ] e [ cis cis e ]  |
	d16 a,16 [ a a ] a b''16 [ b gis ] gis [ e e gis ] |
	a16 a,, [ a a ] a  a''16 [ a a ] a [ g g g ] |
	fis16 r16 r8 s2 |
	d16 r16 r8 r16 d'16 [ d d ] d [ c c c ] |
	b16 r16 r8 r16 b16 [ b b ] cis16 [ d d d ]  |
	g,16 [ g g g ]   fis16 [ fis fis fis ] e [ e e e ] |
	fis4 fis4. fis8 |
	fis8 ( [ e8 ])  e4. e8 |
	e8 ([ d8 ]) c4. c8 |
	c8 [ ( b8 )] r8 b'8 [ a g ] |
	fis4 fis4. fis8 |
	e4 e4. e8 |
	a8 [fis ] b [ a g fis ] |
	e8 [ d ] cis4. d8 |
	d4 a4. a8 |
	a4 a4. a8 |
	b4 b4. b8 |
	cis8 [ d  ] d4. cis8 |
	d4  fis4. fis8 |
	fis4 fis4. fis8 |
	fis4 e4. e8 |
	e8 [ d ]  d4. cis8 |
	d4 fis4. fis8 |
	g4 a4. a8 |
	b4 b4. b8 |
	cis8 [ d ] d4 cis |
	d4 d4. d8 |
	cis4 c4. c8 |
	b4 e,4. e8 |
	e8 [ fis ] g8 [ b a g ] |
	fis4^\markup { arpeggio } fis fis |
	fis4 fis fis  |
	e4 a s4 |
	b4 e,8 [ fis ] g4 |
	g4 fis fis |
	fis4 e e |
	e4 e e |
	d8 [b' ] s2 |
	\key d \minor d,4 bes4. bes8 |
	bes8. [ e16 ] bes [ ( g a e ) ] c8 [ a' ] |
	a8. [ d16 ] a [ ( fis g d ) ] bes8 [ g'8 ] |
	g8. [ e'16 ] cis [ ( a bes g ) ] cis,8 [ a'8 ] |
	f8. [ d16 ] f [ a d cis ] d [ ( e f ) a, ] |
	f'8. [ d,16 ] g [ bes es d ] es [ ( c f, a,) ] |
	es''8. [ cis16 ] d [ a bes fis ] g [ ( d es g ) ] |
	cis8 [ d8 ] d8. [ b16 ] cis [( e g ) a, ] |
	d,16 [ ( a' cis g' ) ] f [ d ( cis d ) ] d, [ d' ( cis d ) ] |
	e,16 [ ( g cis a' ) ] g [ d ( cis d ) ] e, [ d' ( cis d ) ] |
	f,16 [ ( a cis bes') ] a [ d, (cis d ) ] f, [ d' ( cis d ) ] |
	g,16 [ ( bes d bes' ) ] e, [ d ( cis d ) ] a [ d cis e ] |
	f16 [ d a ( g ] f  ) [ a d, ( c ] b ) [ g' d' f ] |
	e16 [ c g ( f ] e ) [ g c, ( bes ] a ) [ f' c' es ] |
	d16 [ bes f ( es ] d ) [ f bes, ( a ] g ) [ cis e bes' ] |
	a16 [( f d ) bes' ] g [ e cis e ] a, [ g' f e ] |
	d16 [ a' b cis ] d [ f g a ] bes16 [ g,32 ( f e f g16 ) ] |
	c,16 [ g' a bes ] c [ e f g ] a [ f,32 ( e d e f16 ) ] |
	bes,16 [ d''32 ( c bes c d16 ) ] g, [ bes32 ( a g a bes16 ) ] e,16 [ g32 ( f e f g16 ) ] |
	cis,16 [ e32 ( d cis d e cis ) ] g16 [ bes32 ( a g a bes g ) ] e [ ( d cis d e f g e ) ] |
	f16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
	e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
	d,16 [ a' ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
	e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
	f16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
	e16 [ a ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
	d,16 [ a' ] s16 a16  s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ] |
	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  |
	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  |
	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  |
 	s16 a [ s16 a16 ] s16 a16 [ s16 a16 ] s16 a16 [ s16 a16 ]  |
	f16 [ ( a ) ]
	\tuplet 3/2 { d,16 [ ( f a ) ] }
	\tuplet 3/2 { f16 [ ( a d ) ] }
	\tuplet 3/2 { a16 [ ( d f ) ] }
	\tuplet 3/2 { bes,16 [ ( d g ) ] }
	\tuplet 3/2 { g,16 [ ( d' bes' ) ] } |
	\tuplet 3/2 { e,,16 [ ( c' bes' ) ] }
	\tuplet 3/2 { c,,16 [ ( e g ) ] }
	\tuplet 3/2 { e16 [ ( g c ) ] }
	\tuplet 3/2 { g16 [ ( c e ) ] }
	\tuplet 3/2 { a,16 [ ( c f ) ] }
	\tuplet 3/2 { f,16 [ ( c' a' ) ] }  |
	\tuplet 3/2 { d,,16 [ ( bes' a' ) ] }
	\tuplet 3/2 { bes,,16 [ ( d f ) ] }
	\tuplet 3/2 { d16 [ ( f bes ) ] }
	\tuplet 3/2 { f16 [ ( bes d ) ] }
	\tuplet 3/2 { g,16 [ ( bes es ) ] }
	\tuplet 3/2 { es,16 [ ( bes' g' ) ] } |
	\tuplet 3/2 { e,16 [ ( cis' bes' ) ] }
	\tuplet 3/2 { f,16 [ ( d' a' ) ] }
	\tuplet 3/2 { g,16 [ ( e' g ) ] }
	\tuplet 3/2 { gis,16 [ ( d' f ) ] }
	\tuplet 3/2 { a,16 [ ( d e ) ] }
	\tuplet 3/2 { a,16 [ ( cis e ) ] } |
	\tuplet 3/2 { d,16 [ a'' (g  ] }
	\tuplet 3/2 { f16 ) [  f ( e  ] }
	\tuplet 3/2 { d16 ) [  d (c  ] }
	\tuplet 3/2 { bes16 ) [  bes (a  ] }
	\tuplet 3/2 { g16 ) [  bes ( c  ] }
	\tuplet 3/2 { d16 [ e f ) ] }|
	\tuplet 3/2 { c,16 [ g''( f  ] }
	\tuplet 3/2 { e16 ) [  e (d  ] }
	\tuplet 3/2 { c16 ) [ c ( bes ] }
	\tuplet 3/2 { a16 ) [ a ( g  ] }
	\tuplet 3/2 { f16 ) [  a (bes  ] }
	\tuplet 3/2 { c16 [  d es ) ] } |
	\tuplet 3/2 { bes,16 [ f'' (es  ] }
	\tuplet 3/2 { d16 ) [  d (c  ] }
	\tuplet 3/2 { bes16 ) [  bes ( a  ] }
	\tuplet 3/2 { g16 ) [  g ( f  ] }
	\tuplet 3/2 { e16 ) [  e ( d  ] }
	\tuplet 3/2 { cis16 ) [  cis ( b  ] } |
	a16 ) [ ( b32 cis d e f g ] a [ b cis d e f g f ] e [ d cis b a g f e ]  |
	d8 ) r8 a'4. a8 |
	e'4 e4. e8 |
	f4 d4. c8 |
	bes4 a g16 [ ( f e f ) ] |
	g16 [ ( e ) f ( d ) ] bes'4 a |
	d4 c bes |
	cis,16 [ ( e g bes ] a [ g e' g, ])  f4 |
	s8 e8 e4. d8 |
	d2.\fermata \bar "|."
    }
melodyTwo =  \relative f' {
	\voiceThree
	f2 |
	bes4 a2 |
	a4 s2 |
	g4 f4 s4 |
	s4 f2 |
	bes4 a2 |
	a4 s2 |
	d4 cis8. s16 s4 |
	d8. s16 s2|
	bes8 s8 a8 s8 s4 |
	a8 s8 s2 |
	e8. [ d16 ] e8. [ g16 ] f8. [ e16 ] |
	d'8 s8 s2 |
	bes8 s8 a8 s8 s4 |
	a8 s8 s2 |
	f8. [ g16 ] e2 |
  	d8 s8 s2 |
    s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2 s8 s16 d16 |
    d4 e s4 |
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
	s2. |
	a8 [ d ] d16 [ ( cis ) d ( b )] cis8 s8 |
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
	s4 f,2 |
 	e2 cis'4 |
	d,2 a'4 |
	bes8 [ a g f  e d ] |
	f2. |
	fis2. |
	g4 f e |
	f4 e g |
	f2. |
	fis2. |
	g4 cis d |
	d4 d cis |
	d4 a bes |
	c4 bes a |
	bes4 a a |
	a4 e2 |
	f4 a c |
	bes2 s4 |
	s4 d4 d |
	d4 cis2 |
	a4 d c  |
	bes4 b d |
	c4 es d |
	f4 e2 |
	f2. |
	e2. |
	d2. |
	cis4 d cis |
	d4 c d  |
	c4 s2 |
	f,4 g f |
	e4 e2 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	bes'4 a2 |
	a4 f2 |
	d'4 d cis |
	d4 d s4 |
	d4 c s4 |
	f,4 f s4 |
	s4  e2 |
	\key d \major
	s2.|
	s4 cis4 s4 |
	s2. |
	s2. |
	s4 fis4 s4 |
	s2. |
	s2. |
	g8 [ fis ] s2|
	s2. |
	e4 e4. g8 |
	fis4 b4. g8 |
	fis8 [ d ] e [ fis ] g [ e ] |
	fis8 [ d ] d'4. d8 |
	cis8 s8 s2 |
	s2 d8 [ b ] |
	cis8 [ d ] d4 cis |
	s2 s8 b8 |
	cis8 s2 cis8 |
	fis,8 s2 e8 |
	e16 s16 s8 s2 |
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
	s2. |
	s2. |
	s2. |
	d'16  d, [ d d ] d [ a' a a ] b  [ b cis cis ]  |
	fis,16 d [ d d ] d s16 s8 s4 |
	g'16 d,16 [ d d ] d s16 s8 s4 |
	s4 e'16 [ d d d ] d [ cis cis cis ] |
	d4 d4. d8 |
	s2. |
	s2. |
	s4 cis8 [ a b cis ] |
	d4 d4. d8 |
	d4 cis4. cis8 |
	c8 [ d ] d [ c b a ] |
	g8 [ fis ] e2 |
	fis4 fis4. fis8 |
	fis4 fis4. fis8 |
	g4 g4. g8 |
	g8 [ fis ] e [ d ] e4  |
	s4 d'4. d8 |
	a4 a4. a8 |
	d4 a4. a8 |
	a4 s2 |
	s4 d4. d8 |
	d4 d4. d8 |
	d4 e4. e8 |
	e8  [ fis ] e2 |
	fis4 fis4. fis8 |
	e4 fis4. fis8 |
	g8 [ d ] d4. d8 |
	d4 cis4. cis8 |
	s4 a4 a |
	b4 b b |
	b4 cis cis |
	d4 d cis |
	d4 a8 [ b8 ] c4 |
	b4 b8 [ cis ] d4 |
	d4 cis cis |
	s8 d8 cis4. d8 |
	\key d \minor s4 f,2 |
    e8. s16 s4 s8 e8 |
	d8. s16 s4 s8 bes8 |
	s4 s4 s8 e8 |
	s2. |
	bes'8. s16 s2 |
	f8. s16 s2 |
	g8 [ f ] e8. s16 s4|
	s2.|
	s2.|
	s2.|
	s2.|
	s2.|
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
    s4 f2 |
    bes4 a2 |
    a4 f2 |
    g4 f s4 |
    s4 f4 fis |
    g4 fis g |
   	s2. |
    s2. |
    s2. |
  }
melodyThree =  \relative d' {
	\voiceFive
	s2 |
	g4 g2 |
	f4 f2 |
	s2. |
	s2. |
	g4 g2  |
	f4 f2 |
	e4 e8. s16 s4 |
	s2.|
	g8. [ f16 ] g8. [ bes16 ] a8. [ g16 ] |
	f8. [ e16 ] f8. [ a16] g8. [ f16]  |
	s2 s8 s16 cis'16 |
	d,8. [ e16 ] f8. [g32 a ] bes8. [ a16 ] |
	g8. [ f16 ] g8. [ bes16 ] a8. [ g16 ] |
	f8. [ e16 ] f8. [ a16 ] g8. [ e16 ] |
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
	s4 e8 s8 s4 |
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
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2 g4 |
	f4 s2 |
	s4 d a' |
	g2 f4 |
	f2 g4 |
	a4 e2 |
	d4 a'4 s4 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s4 a4 g |
	g4 g f |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	g4 g2 |
	f4 s2 |
	g4 f e |
	a4 a s4 |
	g4 g s4 |
	s2. |
	s2. |
	\key d \major
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
	s4 g4. s8 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2 s8 gis8  |
	a8 s2 fis8 |
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
	s4 g8 s8 s4 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s4 a4. a8  |
	d,4 d4. d8  |
	g4 g4. g8  |
	fis4 e8 [ fis ] g4  |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s4 e4. e8 |
	r4 d4 d |
	d4 d d |
	d4 e e |
	e4 e e |
	d4 d d |
	d4 e e |
	e4 e8 [ fis ] g4 |
	fis8 [ e ] e2 |
	\key d \minor s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	d8. s16 s2 |
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
	s2. |
	g4 g2 |
	f4 s2 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
   }
melodyFour =  \relative f' {
	\voiceTwo
	d2 |
	d4 cis2 |
	d4 bes2 |
	g4 a cis |
	d8 s8 d2 |
	d4 cis2 |
	d4 bes2 |
	g4 a8. s16 s4  |
	d8. [ e16 ] f8. [ g32 a ] bes8. [ a16] |
	d,8 r8 cis8 r8 s4 |
	d8 r8 bes8 r8 r8. g16 |
	a8 r8 r4 r8. a16 |
	d8 s8 s2 |
	d8 r8 cis8 r8 s4 |
	d8 r8 bes8 r8 r8. bes16 |
	a8. [ g16 ] a2 |
	d8 s8 s4 r8. d'16  |
	cis4 c r8. c16 |
	b4 bes4 r8. bes16 |
	a8. [ b16 ] cis8. [ d16 ] e8. [ cis16 ] |
   	d8. s2 d16 |
	cis4 c r8 r16 c16 |
	b4 bes r8 r16 gis16  |
	a4 a r8 r16 a,16 |
	d8 s8 s2 |
	d8 s8 s2 |
	d8 s8 s2 |
	s8 g,8 a16 s8. s4 |
	d16 s16 s8 s2 |
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
	d'8 [ a8 ] d,8 [ d'8 ] bes16 [ ( a bes ) g ] |
	c8 [ g8 ] c,8 [ c'8 ] a16 [ ( g a ) f ] |
	bes8 [ f8 ] bes,8 [ bes'8 ] g16 [ ( f g) e ]  |
	f16 [( e ) f ( d ) ] a8 s8 s4 |
	d'16 [ ( cis d ) a ] f [( e f ) d ] bes [ g' d' bes' ] |
	c,16 [( b c ) g ] e [ ( d e ) c ] a [ f' c' a' ]  |
	f,16 [ (es) f ( d ) ] d [( c ) d ( bes ) ] s4 |
	s2. |
	d16 s16 s8 s2 |
	c16 s16 s8 s2  |
	bes16 s16 s8 s2  |
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
	s2. |
	s2. |
	s2. |
	s2. |
	s4 d2 |
	d2 e4 |
	d2 d4 |
	g,2 a4 |
	d4 a bes |
	c4 bes a |
	bes4 a g |
	a2. |
	d2. |
	d2. |
	d4 e f |
	g4 a2 |
	d,2. |
	d2. |
	d2 cis4 |
	d4 a2 |
	d4 d d |
	g,2 a4 |
	bes2 bes4 |
	a4 a2 |
	d4 d2 |
	d4 d e |
	f4 fis g |
	gis4 a2  |
	d,4 bes' a |
	gis4 a g |
	fis4 g f |
	e4 f e |
	d a b |
	c4 g a |
	bes4 bes a |
	gis4 a2 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	d4 cis2  |
	d4 bes2 |
	g4 a a |
	d4 d c8 [ f' ]  |
	b,,4 c bes8 [ es' ] |
	a,,4 bes a8 [ d' ] |
	gis,,8 [ d'' ] a,2 |
	\key d \major d4 d2 |
	cis4 a2 |
	b4 g2|
	a4 cis 2 |
	d4 d4. d8 |
	cis8 [ b ] a4. a8 |
	b8 [ a ] g4. g8 |
	a4 a2 |
	d4 d4. d8|
	cis4 a4. a8 |
	b4 g4. g8 |
	a4 a4. a8 |
	d8 s8 d8 [ e fis g ] |
	a8 [ b cis a b cis ] |
	d8 [ cis ] b [a ] g [ fis ] |
	e8 [ d ] a'2 |
	d,8 r8 r4 r8 d8 |
	cis16 [ d cis b ] a [ ( cis e g ) ] r8 ais,8 |
	b16 [ cis d b ] g [ ( b d fis ) ] r8 gis,8  |
	a16 s16 s8 s2 ] |
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
	s8 a'16 [ a ] a s16 s8 s4 |
	s8 a16 [ a ] a s16 s8 s4  |
	s8 a16 [ a ] a s16 s8 s4  |
	s8 a16 [ a ] a s16 s8 s4 |
	s4 s16 r16 r16 d16 d [ a a d ] |
	cis16  s4 r16 r16 cis16 cis [ a a cis ]  |
	gis16 s4 r16 r16 b16 b [ d d d ]|
	cis16 s4 a16 [ a a ] b [ b cis cis ]  |
	r16  d, [ d d ] d [ a' a a ] a  [ g g g ] |
	r16  d16 [ d d ] d  d' [ d d ] e [ e fis fis ] |
	s16 d,16 [ d d ] d g'  [ g g ] g [ fis fis fis ] |
	fis [ e e e ] s16 fis,16 [ fis fis ] g [ a a a ] |
	d,4 s2 |
	d'4 d8 [ ( cis b ) ais ] |
	b4 b8 [ a g fis ] |
	g4 r8 g8 fis e |
	d8 [ fis ] b [ a g fis ] |
	g8 [ e ] a [ g fis e ] |
	fis8 d g,4 r4 |
	r4 a2 |
	a4 d4.d8 |
	c4 c2 |
	b4 e2 |
	a,4 s2 |
	d4 d4. d8 |
	c4 c4. c8 |
	b4 cis4. cis8 |
	d4 a s4  |
	fis'8 e d4. d8 |
	e4 fis4. fis8  |
	g4 gis4. gis8 |
	a4 a2 |
	d,4 d4. d8 |
	a'4 d,4. d8 |
	g4 gis4. gis8 |
	a4 a,4. a8 |
	d4 d cis |
	b4 b a |
	g4 g g |
	gis4 a a |
	d4 d d |
	g,4 g gis  |
	a4 a ais |
	b8 g a2 |
	\key d \minor
	d4 d2|
	c4 s4 s8 c8 |
	bes8. s16 s4 s8 s8 |
	a4 s4 s8 cis8 |
	d8. s16 s2 |
	g,8. s16 s2 |
	bes8. s16 s2 |
	a8 [ g ] a8. s16 s4 |
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
	d16 [ s16 a'16 ] s16 bes16 [ s16 a16 ] s16 g16 [ s16 f ] s16  |
	c16 [ s16 bes'16 ] s16 a16 [ s16 g16 ] s16 f16 [ s16 e ] s16 |
	bes16 [ s16 a'16 ] s16 g16 [ s16 f16 ] s16 e16 [ s16 d ] s16  |
	a16 [ s16 f'16 ] s16 g16 [ s16 bes16 ] s16 a16 [ s16 g ] s16  |
	d16 [ s16 a'16 ] s16 gis16 [ s16 g16 ] s16 fis16 [ s16 f ] s16  |
	c16 [ s16 g'16 ] s16 fis16 [ s16 f16 ] s16 e16 [ s16 es ] s16  |
	bes16 [ s16 e16 ] s16 f16 [ s16 fis16 ] s16 g16 [ s16 gis ] s16  |
	<a, a'>16 [ s16 <b a'>16 ] s16 <c a'>16 [ s16 <cis a'>16 ] s16 <d b'>16 [ s16 <e cis'>16 ] s16  |
	<f d'>16 [ s16 <d c'>16 ] s16 <g bes>16 [ s16 <f bes>16 ] s16 <e bes'>16 [ s16 <d bes'>16 ] s16 |
	<e bes'>16 [ s16 <c bes'>16 ] s16 <f a>16 [ s16 <e a>16 ] s16 <d a'>16 [ s16 <c a'>16 ] s16 |
	<d a'>16 [ s16 <b a'>16 ] s16 <e g>16 [ s16 <d g>16 ] s16 <cis g'>16 [ s16 <b g'>16 ] s16 |
   	<cis g'>16 [ s16 <cis e>16 ] s16 <cis a'>16 [ s16 <a g'>16 ] s16 <b f'>16 [ s16 <cis e>16 ] s16 |
	d16 s16 s8 s2 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s4 d2 |
	d4 cis2 |
	d4 bes2 |
	g4 a cis |
	d4 d c |
	bes4 a g |
	s2 d'4 |
	g,4 a2 |
	d2. |
    }
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree \\ \melodyFour >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
        { \clef treble \key d \minor \time 3/4
        \set Score.currentBarNumber = #2
        \partial 2 \melody  }
    >>
	\layout { }
 	 \midi { }
}
