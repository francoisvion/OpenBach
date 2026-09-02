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
  subtitle = "Sonate n° 3 pour violon en do majeur"
  subsubtitle = "6 sonates pour violon"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 1005"
  tagline = ##f
}
melodyOne =  \relative c'' {
  \tempo Allabreve
    s1*4 |
    r2 c2 |
    e4 d8 [ c ] b4 cis |
    d2 a4 b |
    c4 b c d8 [ c ] |
    b4 c8 [ d ] e2 ~ |
    e2 d ~ |
    d4 b e d |
    a'4 g8 [f ] e4 fis |
    g2 d4 e|
    f4 e f g8 [ f ] |
    e4 d e f |
    g4 f g a8 [ g ] |
    f4 g a2 |
    gis2 g2 |
    fis2 f |
    e2 fis2 |
    r4 g8 [ f ] e4 d |
    cis4 a'8 [ g ] a4 cis, |
    d4 f8 [ e8 ] d4 c4 |
    b4 g'8 [ f ] g4 b, |
    c4 d e2 |
    a,2 d2 |
    r8 g,8 [ a b ] c2 |
    d,2 e |
    f4 e f g8 [ f ] |
    e2 fis |
    g2 d' |
    cis2 c |
    b2 bes |
    a2 b|
    e,4 c'8 [ b ] a4 g |
    fis4 d'8 [ c ] d4 fis, |
    g4 bes8 [ a ] g4 f |
    e4 c'8 [ bes ] c4 e, |
    f4 a8 [ g ] f [ g e f ] |
    d8 [ a' d c ] b [ a g f ] |
    e4 c'8 [ b ] a [ c e  g, ] |
    f8 [ a f' e ] d [ c b a ] |
    g8 [ a16 (b c8)  d ] e [ f g bes, ] |
    a8 [ e' a g ] f [ (g16 a) ] d,8 [ (e16 f) ] |
    b,8 [ d e f ] g2 |
    a,8 [ a' g f ] e4 fis |
    d8 [ g f e ] d4 e |
    e4 f8 [ e ] f4 g8 [ f ] |
    e4 s2. |
    e4 r4  d4 r4 |
    d4 c8 [ b ] c4 d8 [ e ] |
    f4 f8 [ e ] f4 g8 [ f ] |
    e4 r4 r2 |
    e4 r4 r4 e4 |
    f4 r4 r2 |
    fis4 r4 r4 fis4 |
    g4 r4 g2 |
    g2 f2 |
    f2 e2 |
    e4 d8 [ e ] f [ g a c, ] |
    b8 [ d ( c b ] a [ g f ) d' ] |
    g8 [ b, c e, ] d [ (c' f) b, ] |
    c8 [ d es f ] g [ a b c ] |
    fis,8 [ es ( d c ] b [ c ) fis, a, ] |
    g8 [ c e g ] c [ e g e ] |
    c8 [ g e c ] g4 b' |
    c8 [ g'16 (f  e8 ) g ] c, [ e g, c ] |
    e,8 [ g c, e ] g, [ e'' d c ] |
    d16 [ (g fis e ] d8) [ g ] b, [ d g, b ] |
    d,8 [ g b, d ] g, [ d'' c b ] |
    c8 [ a'16 (g fis8 ) a ] c, [ fis a, c ] |
    fis,8 [ a d, fis ] a [ c fis a ] |
    g,,8 [ d' fis c' ] b [ g e g ] |
    cis,8 [ e16 (f g8 ) e8 ] bes' [ g cis e ] |
    f, [ a g' cis, ] d [ a bes d ] |
    gis,8 [ b16 (c d8 ) b ] f' [ d gis b ] |
    e,,8 [ c' e gis ] a8 [ c fis, a ] |
    dis,8 [ fis16( g  a8) fis ] dis [ b c dis, ] |
    e8 [ b' dis a' ] g [ (b16 a  g8) e ] |
    cis8 [ (bes16 a g8) e ] cis [ (d16 e) ] a,8 [ (b16 cis) ] |
    d8 [ a' cis g' ] f [ ( a16 g f8) d ] |
    b8 [ (aes16 g  f8) d ] b [ (c16 d) ] g,8 [ (a16 b) ] |
    c8 [ g' b f' ] e [ (g16 f) e8 c ] |
    f8 [ (d16 c b8) d ] gis, [ (a16 b) ] e,8 [ (fis16 gis )] |
    a,8 [ e' gis d' ] c [ a f a ] |
    b,8 [ d gis e' ] d [ b gis b ] |
    c,8 [ e gis f' ] e [ c a c ] |
    d,8 [ a''16 (g  f8 ) e ] d [ bes'16 (a  bes8) d, ] |
    e,8 [ d'16 (e  f8) d ] gis [ d b' d, ] |
    e,8 [ c'16 (d e8) c ] a' [ e c' e, ] |
    e,8 [ b'16 (c d8 ) b ] gis' e d' e, ] |
    e,8 [ a16 (b c8) dis ] fis [ a c dis ] |
    e8 [ b gis e ] e,4 e' |
    f4 e8 [ d ] c4 d4 |
    e2 b4 c4 |
    d4 c4 d4 e8 [ d ] |
    c2 f2 ~ |
    f4 e8 [ f ] g [ e f g ] |
    cis,4 b8 [ a ] a'2 |
    bes4 a8 [ g ] f4 g |
    a2 e4 f4 |
    g4 f g a8 [ g ] |
    f2 bes2~ |
    b4 a8 [ g ] a8 [ bes a g ] |
    fis2 g ~ |
    g4 f8 [ e ] f2 |
    e2 a |
    b,4 c d e |
    f4 e f g8 [ f ] |
    e2 e4 d8 [ c]  |
    b4 c  d2 |
    a2 f |
    e2 fis |
    g2 g |
    a4 g8 [ f ] e4 fis |
    g2 d4 e |
    f4 e f g8 [ f ] |
    e2 e4 fis |
    g4 fis g a8 [ g ] |
    f2 f4 g8 [f] |
    e2 e4 f8 [ e ] |
    d2 d' |
    r2 g2 |
    fis2 f |
    e2 fis |
    g2 g |
    g4 f8 [ e ] f4 g8 [ f] |
    e2 e |
    dis2 d |
    cis2 c |
    b2 cis |
    d4 c8 [ b ] a4 b |
    c4 b c d8 [ c ] |
    b2 bes |
    a2 b |
    c2 <d g> |
    a'4 g8 [ f ] e4 fis |
    g2 d4 e |
    f4 e f g8 [ f ] |
    e2 s2 |
    b2 s2 |
    f2 bes2 ~ |
    bes2 a2 ~ |
    a2 d4 e |
    f4 e f g8 [ f ] |
    e4 cis d2 |
    d2 cis |
    d2 s2 |
    r2 g2 |
    b4 a8 [ g ] fis4 g |
    a2 e4 fis |
    g4 fis g a8 [ g ] |
    fis4 g8 [ a ] b2 |
    e,2 a |
    r8 a8 [ g8 fis8 ] <bes, g'>2 |
    <a f'>2 s2 |
    e'4 dis e fis8 [ e ] |
    dis2 <d b'> |
    a'4 g8 [ a ] g4 a |
    b2 fis4 g |
    a4 g a b8 [ a ] |
    g2 g ~ |
    g4 a8 [ g ] fis4 g8 [ e ] |
    b'4. c8 b4 a |
    g2 fis \trill |
    e4 g8 [ f ] e [ g d g ] |
    cis,8 [ bes' g e ] cis [ e a, cis ] |
    d,8 [ a' cis g' ] f [ e d c ] |
    b8 [ aes f d ] b [ d g, f' ] |
    c8 [ e a, g' ] d [ f b, a' ] |
    e8 [ g c, bes' ] f [ a d, c' ] |
    g8 [ b d g ] d [ b g e ] |
    cis8 [ a' g f ] e [ c fis c ] |
    b8 [ g' f e ] d [ bes e bes ] |
    a8 [ c d e ] f [ a, b f' ] |
    c8 [ e fis gis ] a [ cis, dis a' ] |
    e8 [ g a b ] c [ e, fis c' ] |
    g8 [ b cis dis ] e [ gis, ais e' ] |
    b8 [ d e fis ] g [ b, cis g' ] |
    d8 [ fis a d ] a [ fis d b ] |
    gis8 [ e' d c ] b [ g cis g ] |
    fis8 [ d' c b ] a [ f b f ] |
    e8 [ g a b ] c [ e, fis c' ] |
    g8 [ b e, d' ] a [ c fis, e' ] |
    b8 [ d g, f' ] c [ e a, g' ] |
    d8 [ fis a, d ] fis, [ a d, c' ] |
    s2 g'4 a |
    b4 a8 [ g ] fis4 g |
    a2 e4 fis |
    g4 fis g a8 [ g ] |
    fis4 g a a |
    g4 a b b |
    a4 b c c |
    b4 c d d |
    e4 d8 [ c ] b4 cis |
    d4 d a b |
    c4 b c d8 [ c ] |
    b4 a b b |
    b4 b a a |
    a4 a g g |
    g4 g fis fis |
    g2 d,2^\markup { al riverso } |
    s1*3 |
    r2 g2 |
    fis4 g8 [ a ] b4 a |
    g2 c4 b |
    a4 b8 [ a ] g4 a |
    b2 g' |
    e4 f8 [ g ] a4 g |
    f2 bes4 a |
    g4 a8 [ g ]  f4 g |
    a2 s2 |
    r2 g2 |
    aes2 a |
    bes2 r4 b4 |
    c4 bes a g |
    fis4 e8 [ d ] g2 |
    g4 a8 [ bes ] a4 g  |
    f2 f |
    <b, e>2 e |
    fis2 s2 |
    r2 <b, g'>2 |
    g'2 f4 e8 [ d ] |
    gis2 r4 g4 |
    g4 f8 [ e ] f2 |
    f4 e8 [ d ] e4 f8 [ e ] |
    d4 e8 [ f ] g4 f |
    e2 a4 g |
    fis4 g8 [ f ] e4 fis |
    g2 g4 f |
    e4 f8 [ e ] d4 e |
    f4 g8 [ f ] e4 f8 [ e ] |
    d4 e8 [ d ] c2 ~ |
    c4 d8 [ c ] b4 a8 [ b ] |
    c4 d8 [ es ] f4 es |
    d2 g4 f |
    e f8 [ e ] d4 e |
    f2 f4 f |
    f4 r e r |
    es4 d8 [ c ] a'4 g |
    fis4 g8 [ fis ] e [ g fis a ] |
    g4 d e c |
    c4. d8 b4. \trill c8 |
    c4 c,8 [ d ] e [ c f d ] |
    g8 [ e c e ] g [ bes a g ] |
    a8 [ f d e ] fis [ d g e ] |
    a8 [ fis d fis ] a [ c b a ] |
    b8 [ d g, a ] b [ g c a ] |
    d8 [ b g b ] d [ f e d ] |
    e8 [ c g c ] e [ g fis e ] |
    fis8 [ c a c ] fis [ a g fis ] |
    g8 [ d b d ] g [ b a g ] |
    a8 [ fis c fis ] a [ c b a ] |
    b8 [ g d g ] b [ d g, b ] |
    c8 [ a g f ] e [ c' fis, c' ] |
    b8 [ g f e ] d [ bes' e, bes' ] |
    f8 [ bes a g ] a [ f b f ] |
    e8 [ g a b ] c [ a c g ] |
    f8 [ a b c ] d [ b d a ] |
    g8 [ b c d ] e [ c e bes ] |
    a8 [ c d e ] f [ d f c ] |
    b8 [ d e f ] g [ e g d ] |
    c8 [ a f' d ] b [ g e' c ] |
    a8 [ f d' b ] g [ e c' a ] |
    f8 [ d' c b ] a [ f b f ] |
    e8 [ c' b a ] g [ es a es ] |
    d8 [ bes' a g ] fis [ d g d ] |
    c8 [ a' g f ] e [ c fis c ] |
    b8 [ g' fis e ] d [ c b a ] |
    b8 [ g d' fis, ] g [ d b' g ] |
    d'8 [ b g' d ] b [ g d b ] |
    g8 [ a' g f ] c'4 d |
    e4 d8 [ c ] b4 c |
    d2 a4 b  |
    c4 b c d8 [ c ] |
    b4 c d d |
    c4 d e e |
    d4 e f f |
    e4 fis g g |
    a4 g8 [ f ] e4 fis |
    g4 g d e |
    f4 e f g8 [ f ] |
    e4 d e e |
    e4 e d d |
    d4 d c e8 [ d ] |
    r4 g4 g fis |
    g2 g,2 |
    a4 g8 [ f ] e4 f |
    g2 d4 e |
    f4 e f g8 [ f ] |
    e4 d c' d |
    e4 d8 [ c ] b4 c |
    d2 a4 b |
    c4 b c d8 [ c ] |
    b2 e2 ~ |
    e2 d ~ |
    d4 b g'2  |
    a4 g8 [ f ] e4 fis |
    g2 d4 e |
    f4 e f g8 [ f ] |
    e4 d e f |
    g4 f g a8 [ g ] |
    f4 g a2 |
    gis2 g |
    fis g |
    e2 fis |
    r4 g8 [ f ] e4 d |
    cis4  a'8 [ g ] a4 cis, |
    d4 f8 [ e ] d4 c |
    b4 g'8 [ f ] g4 b,|
    c4 d e2 |
    a,2 d |
    r8 g,8 [ a b ] c2 |
    d,2 e |
    f4 e f g8 [ f ] |
    e2 fis |
    g2 d' |
    cis2 c |
    b2 bes |
    a2 b |
    e,4 c'8 [ b8 ] a4 g4 |
    fis4 d'8 [ c8 ] d4 fis,4 |
    g4 bes8 [ a8 ] g4 f |
    e4 c'8 [ bes8 ] c4 e,4 |
    f4 a8 [ g ] f [ g e f ] |
    d8 [ a' d c ] b [ a g f ] |
    e4 c'8 [ b ] a [ c e g, ] |
    f8 [ a f' e ] d8 [ c b a ] |
    g8 [ a16 ( b16 c8 )  d ] e [ f g bes, ] |
    a8 [ e' a g ] f [ ( g16 a)  ] d,8 [ (e16 f) ] |
    b,8 [ d e f ] g2 |
    a,8 [ a' g f ] e4 fis |
    g,8 [ g' f e ] d4 e |
    e4 f8 [ e ] f4 g8 [ f ] |
    e4 g,8 [ f ] g4 a8 [ g ] |
    e'4 f,8 [ e ] d'4 g,8 [ f ] |
    d'4 c8 [ b ] c4 d8 [ e ]  |
    f4 f8 [ e ] f4 g8 [ f ] |
    e4 c,8 [ d ] e [ g f a ]  |
    e'4 r4 r4 e4 |
    f4 r4 r2 |
    fis4 r4 r4 fis4  |
    g4 r4 g2 |
    g2 f2 |
    f2 e2 |
    e4 d8 [ e ] f [ g a c, ] |
    b8 [ d ( c b ] a [ g f) d' ] |
    g8 [ b, c e, ] d8 [ (c' f) b, ] |
    c8 [ d es f ] g8 [ a b c ] |
    fis,8 [ es ( d c ] b [ c)  fis, a, ] |
    g8 [ c e g ] c [ e g e ] |
    c8 [ g e c ] g4 b' |
    g'2^\fermata s2 \bar "|."
     }
melodyTwo =  \relative g' {
    r2 g2 |
    a4 g8 [ f ] e4 f |
    g2 d4 e |
    f4 e f g8 [ f ] |
    e4 f8 [ g ] a2 |
    gis2 g |
    fis2 f |
    e4 d e fis |
    g4 f g e |
    f4 e f d |
    e2 e |
    a,2 a |
    g2 g |
    d'1 |
    a2 a' |
    e2 a, |
    d2 f |
    e2 r2 |
    d2 r2 |
    a'2 d, |
    g2 r2 |
    g4 r4 r4 g4 |
    f4 r4 r2 |
    f4 r4 r4 f4 |
	r2 c2 |
    d4 c8 [ b ] a4 b |
    c2 g4 a |
    bes4 a bes c8 [ bes ] |
    a2 b |
    c4 b c d8 [ c ] |
    b4 a bes2 |
    a2 r2 |
    g2 r2 |
    d'2 g,2 |
    c4 r4 r2 |
    c4 r4 r4 c4 |
    bes4 r4 r2 |
    bes4 r4 r4 bes4 |
	a4 s2. |
    b4 s2. |
    c4 s2. |
    d4 s2. |
    e4 s2. |
    f4 s2. |
    f8 r8 r4 e4 d |
    cis8 r8 r4 c4 r4 |
    b4 r4  bes4 r4 |
    a4 r4 r2 |
    g4 s2. |
    f'4 f8 [ e ] f4 g8 [ f ] |
	e4 r4 a4 r4  |
    d,4 r4 g4 r4 |
   	c4 c,8 [ d ] e8 [ g f a ] |
    g4 bes,8 [ a8 ] bes4 g'4 |
    a,4 d8 [ e ] f [ g f g ] |
    a4 c,8 [ b ] c4 a' |
    b4 b, e d |
    cis4 a d c |
    b4 g c bes |
    a4 s2. |
	g8 s8 s2. |
    s1 |
	aes4 s2. |
    s1 |
    s1 |
    s2. f'4 |
	c8 s4. s2 |
    s1*26 |
    r2 a'2 |
    c4 b8 [ a ] gis4 a |
    b2 fis4 gis |
	a4 g a bes8 [ a ]  |
	g4 s2. |
	g2 f4 e8 [ d ] |
    g4 a d,2 |
	f4 e8 [ d ] cis4 d |
	e2 e |
	d2 g |
	e2 es |
	d2 s2 |
	d2 d |
	e4 d e fis |
	g2 r4 g4 |
	a4 g a b |
    c4 b c, d |
	e4 d8 [ c ] b4 c |
    d2 a4 b |
    c4 b c d8 [ c ] |
    b4 c8 [ d ] e4 d |
    cis2 c |
    b2 bes |
    a2 d2 ~ |
    d4 c8 [ b ] c2 |
    b2 e2 ~ |
    e4 d8 [ c ] d2 ~ |
    d4 c8 [ b ] c2 ~ |
    c4 b8 [ a ] b4 g |
    c4 d4 e2 |
	d2 r2 |
	a'2 d,2 |
	g2 e2 |
    cis2 d |
    d4 c8 [ b ] c4 d8 [ c ] |
    b2 b2 |
    a2 a |
    g2 a |
    d2 d |
    a2 d |
    g,2 g |
    d'2 g, |
    c2 bes |
    a4 r4 a2 |
    g2 r2 |
    r2 a'4 b |
    s2 e,4 f |
    s2 b,4 a4 |
    d4 c d e8 [ d ] |
    c4 bes c d8 [ c ] |
    bes2 bes |
	a2 g |
    g4 a bes2 |
    g2 a |
	d2 d' |
	e4 d8 [ c ] b4 c |
	d2 a4 b |
	c4 b c d8 [ c ] |
	b2 e ~ |
	e2 g,  |
	a4 g8 [ f ] e4 fis |
    g2 g, |
    d'2 <g, b'> |
    c2 c |
    b2 b |
    a2 c |
    g2 b |
    a2 b |
	e2 e4 d |
	c2 s2 |
    g2 r4 a4 |
    b2 dis |
	e4 s2. |
	s1*20 |
    b'8 [ e d c ] b [ d, c' d, ]|
    d'8 [ d, c' b ] a [ d, b' d, ] |
	c'8 [ d, b' d, ] c' [ d, d' c ]|
    b8 [ d, a' d, ] b' [ d, ] cis'4 |
    d8 [ d, d' d, ] c' [ d, d' d, ]|
    e'8 [ d, e' d, ] d' [ d, e' d, ] |
    fis'8 [ d, fis' d, ] e' [ d, fis' d, ] |
    g'8 [ d, g' d, ] fis' [ d, f' d, ] |
    e'8 [ d, ] fis'4  g8 [ d, g' d, ] |
    fis'8 [ d, fis' d, ] f' [ d, f' d, ] |
    e'8 [ d, e' d, ] es' [ d, ] e'4 |
    d8 [ d, c' d, ] d' [ d, e' d ] |
    cis8 [ d, b' d, ] c' [ d, d' c ] |
    b8 [ d, a' d, ] bes' [ d, c' bes ] |
    a8 [ d, b' d, ] c' [ d, d' c ] |
    g,2 s2 |
	s1*4 |
	d'2 dis |
	e2 e |
	f2 r4 fis4 |
    g4 f e d |
    c2 a |
    d2 g, |
	c2 r4 c4 |
    f2 fis |
    g2 <c, g'> |
    f2 d |
    g2 s2 |
    c,2 es  |
    d2 r2 |
    e2 r4 a, |
    d2 d |
    d2 c4 b8 [ a ] |
    dis2 r4  dis4 |
    e4 s2. |
	cis4 b8 [ a ] d2 |
    d4 e8 [ f ] e4 d  |
    cis2 d |
    b2 c |
	f4 e g,2 |
	c2 s2 |
	a'2 d4 c |
	b4 c8 [ b ] a4 b |
	c2 r4 bes4 |
	a4 bes8 [ a  ] g4 a8 [ g ] |
	f4 g8 [ f ] e4 f8 [ e ] |
	d2 g, |
	aes2 a |
    bes2 r4 b4 |
    c2 r4 cis4 |
    <d f>2 d4 c |
    b4 c8 [ d ] c4 bes |
    a2 r2 |
    c2 r2 |
    r4b4 c a |
    g2 g |
    s1*28 |
	s2 e'8 [ g, f' g, ] |
    g'8 [ g, f' e ] d [ g, e' g, ] |
    f'8 [ g, e' g, ] f' [ g, g' g, ] |
    e'8 [ g, d' g, ] e' [ g,] fis'4 |
	g8 [ g, g' g, ] f' [ g, g' g, ] |
    a'8 [ g, g' g, ] g' [ g, a' g, ] |
    b'8 [ g, bes' g, ] a' [ g, b' g, ] |
	c'8 [ g, c' g, ] b' [ g, bes' g, ] |
    a'8 [ g,] b'4 c8 [ g, c' g, ] |
    b'8 [ g, b' g, ] bes' [ g, bes' g, ] |
	a'8 [ g, a' g, ] aes' [ g, ] aes'4 |
    g8 [ g, f' g, ] g' [ g, a' g ] |
    f8 [ g, e' g, ] f' [ g, g' f ] |
    e8 [ g, d' g, ] e' [ g, g' f ] |
	e8 [ g, d' g, ] f' [ g, es' g, ] |
    g2 g' |
	r2 c,2 |
	b2 bes |
	a4 g a b |
    c4 b a2 |
    g2 g4 a |
    b4 c d2 |
    a2 a |
    g2 s2 |
    f'4 e f d |
    e2 e |
    a,2 a |
    g2 g |
    d'1 |
    a2 a' |
    e2 a, |
    d2 f |
    e2 r2  |
    d2 r2 |
    a'2 d, |
    g2 r2 |
    g4 r4 r4 g4 |
    f4 r4 r2|
    f4 r4 r4 f4 |
    r2 c2 |
	d4 c8 [ b ] a4 b |
    c2 g4 a |
    bes4 a bes c8 [ bes ] |
    a2 b |
	c4 b c d8 [ c ] |
    b4 a bes2 |
    a2 s2 |
    g2 s2 |
    d'2 g, |
	c4 r4 r2  |
    c4 r4 r4 c4 |
    bes4 r4 r2 |
	bes4 r4 r4 bes4 |
    a4 s2. |
    b8 s4. s2 |
    c4 s2. |
	d8 s4. s2 |
    e8 s4. s2  |
    f8 s4. s2  |
	f8 r8 r4 e4 d4 |
    cis8 s4. c4 s4 |
    b8 s4. bes4 s4 |
    a4 s2. |
    g4 s2. |
    f'4 s2. |
    e4 s4 a4 s4 |
    d,4 s4 g4 s4 |
    c4 s2. |
    g4 bes,8 [ a ] bes4 g' |
    a,4 d8 [ e ] f [ g f g ] |
    a4 c,8 [ b ] c4 a' |
    s4 b,4 e d |
    cis4 a d c |
    b4 g c bes |
    a4 s2. |
    g8 s4. s2 |
	s1 |
	aes8 s4. s2 |
	s1 |
	s1 |
	s2. f'4 |
    c2 s2 \bar "|."
    }
melodyThree =  \relative g'' {
    s1*10 |
    r2 g2 |
    <e, cis'>2 <a c>2 |
    <d, b'>2 bes'2 |
    a4 g a b |
    <e, c'>2 c' |
    b2 <e, cis'> |
	d'2 c4 d |
    e4 d8 [ c ] b4 cis |
    d2 a4 b |
    c4 b c d8 [ c ] |
    b2 r2 |
    s1*3 |
    e,4 f g2 |
    fis2 f |
    e2 es2 |
    s1*3 |
    s2 g |
    a4 g8 [ f ] e4 fis |
	g2 d4 e |
    f4 e f g8 [ f ] |
    s1*10 |
    s2 c'4 bes |
    e,8 s4. < e a >4 s4 |
    g4 s4 g4 s4 |
    <f c' >4 s2. |
    <g c>4 g8 [ f ] g4 a8 [ g ] |
    a4 s2. |
    s1 |
    c4 s4 b4 s4 |
    s1 |
    c4 s2 c4 |
    <a c>4 s2. |
	d4 s2 c4 |
    s2 b2 |
    <e, a>2 a |
    <g d'>2 <g c>2 |
    <f c'>4 s2. |
    f8 s4. s2 |
	s1 |
    es8 s4. s2 |
    s1*3 |
    e8 s4. s2 |
    s1*31 |
    s2 d'2 |
    d4 s4 bes2 |
    a2 <e a>4 a4 |
    cis4 d8 [ cis ] b4 cis |
    d4 c d es8 [ d ] |
    cis2 c |
    c4 bes8 [ a ] bes [ d c bes ] |
    a2 a4 b4 |
    c4 b c d8 [ c ] |
    s1*2 |
    s2 <e, a >4 s4 |
    gis4 s4 g2 |
	fis2 s2 |
    s1*9 |
    s2 g2 |
    <g e'>4 d'8 [ c ] b4 c |
    d2 a4 b |
    c4 b c d8 [ c ] |
    b4 a b c8 [ b ] |
    <e, a>2 a |
    <gis b>2 <e a>2   |
	fis4 e fis gis  |
	a2 e4 fis |
	g4 fis g a8 [ g ] |
	fis2 f |
	e2 fis |
	g4 f8 [ e ] d4 e |
	f4 e f g8 [ f ]  |
    e2 d4 e |
    <f d'>4 <g d'> <a c >2 |
	<d, b'>2 s2 |
	s1 |
	c'4 b c d8 [ c ] |
	g4 f g a8 [ g ] |
	s1 |
	s1 |
    s2 g2  |
    <a d >2  <d, bes'>2 |
    <g bes>4 g4 f g8 [ f ] |
    e4 f g a8 [ g ] |
    fis2 s2 |
    s1*4 |
    s2 d'2 |
    cis2 c |
    b2 d,4 e |
    f4 e f g8 [ f ] |
    <e b'>2 <e a>2 |
    fis4 e fis gis  |
    <a c>2 <e c'>2 |
    <e b'>2 <fis dis'>2 |
    <fis cis'>2 <fis dis'>2 |
    e'4 d  c b |
    <e, a>2 r2 |
    <e b'>2 s4 <e c'>4 |
	<e b'>2 a |
    s1*36 |
    <d, b'>2 s2 |
    b4 c8 [ d ] e4 d |
    c2 f4 e |
    d4 e8 [ d ] c4 d |
    e4 d8 [ c ] b4 c |
    s1*3 |
    s2 b'2 |
    <e, c'>2 <e cis'> |
    d'2 <g, d'>2 |
    <g es'> s4 <g e'>4 |
	f'4 e d c |
	b4 c8 [ d ] e4 d |
	c2 f4 e |
	d4 e8 [ d ] c4 d |
    <g, e'>2 c  |
    c2 bes4 a8 [ g ] |
	cis2 r4 <e, cis'>4 |
    d'4 c bes a |
    gis4 fis8 [ e ] <e a>2 |
    a4 b8 [ c ] b4 a |
    g4 f e d |
    <e a>2 a |
    b2 s4 bes4 |
    <e, a>2 a4 b8 [ c ] |
    <g d'>2 <g c>2 |
    s2 <d b'>2 |
    g4 a8 [ b ] c4 b |
    s1*5 |
    s2 g2 |
    g2 <f c'>2 |
    f2 s4 <g d'>4 |
    <g c>2 s4 <g bes>4 |
    a4 b8 [ c ] b4 <d, a'> |
    <g d'>4 r4 <g c> r4 |
    fis2 s2 |
    <d a'>2 s2 |
    r4 g4 <g c> fis |
    g2 d |
    s1*42 |
    c'4 b c a |
    <d, b'>2 s2 |
    s1*3 |
    s2 e4 fis |
    g2 g4 g |
    fis2 f |
    e4 d e fis |
    g4 f g e |
    s1 |
    s2 e'4 d |
    <e, cis'>2 <a c>2 |
    <d, b'>2 bes'2 |
    a4 g a b |
    <e, c'>2 c'2 |
    b2 <e, cis'>2 |
    d'2 c4 d |
    e4 d8 [ c ] b4 cis |
    d2 a4 b |
    c4 b c d8 [ c ] |
    b2 s2 |
    s1*3 |
    e,4 f g2 |
    fis2 f |
    e2 es |
    s1*3 |
    s2 g  |
    a4 g8 [ f ] e4 fis |
    g2 d4 e |
    f4 e f g8 [ f ] |
    s1*10 |
    s2 c'4 bes |
    e,8 s4. <e a>4 s4 |
    d'8 s4. g,4 s4 |
    <f c'>4 s2. |
    <g c>4 s2. |
    a4 s4 f4 s4 |
    s1 |
    c'4 s4 b4 s4 |
    s1 |
    c4 s2 c4 |
    <a c>4 s2. |
    d4 s2 c4 |
    b4 s4 b2 |
    <e, a>2 a2 |
    <g d'>2 <g c>2 |
    <f c'>4 s2. |
    f8 s8 s2. |
    s1 |
    es8 s8 s2. |
    s1*3 |
    <e c'>2 s2 \bar "|."
    }
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key c \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
