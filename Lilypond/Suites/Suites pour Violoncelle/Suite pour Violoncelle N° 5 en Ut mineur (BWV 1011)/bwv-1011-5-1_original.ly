melodyOne =    \relative e {
    \set Staff.midiInstrument = "cello"
    \key c \minor
    \time 4/4
    \repeat volta 2 {
		\partial 2 <es as>4 d'4 |
		bes4 c8 [(as)] bes4 c8 [(f,)] |
		g4 es8 [(b)] c4 bes'8 [(es,)] |
		f4 d8 [(a)] b [(d)] g4 |
		<g, es'>4 \trill d'8 [(c)] g' [(es) d' (as)] |
		bes8 [(f) c' (e,)] bes' [(f) c' (d,)] |
		as'8 [(es) bes' (d,)] as' [(es) c' (as)] |
		d8 [(as) es' (g,)] d' [(as) f' (a,)] |
		es'8 [(bes) f' (es)] d [(c) b (as)] |
		<g b>4 c8 [(as)] b4 d8 [(b)] |
		c4 d8 [(b)] <g c>4 f'8 [(d)] |
		es4 <d, as'>4 c'8 [(b)] as [fis] |
		<d as'>2
	}
	\repeat volta 2 {
		<d c'>4 as'4 |
		<g, e'>4 f'8 [ (d)] e4 d'8 [( e, )]  |
		f4 g8 [ (e) ] f4 d'8 [ (f,) ] |
		as4 bes8 [ (f) ] <e as>4 d'8 [ (as) ] |
		c8 [ (bes as f) ] as [ (g f es) ] |
		d8 [ (as) es' (c) ] d [ (as) c' (d,) ] |
		es8 [ (g,) f' (d) ] es [ (g,) c' (es,) ] |
		f8 [ (bes,) g' (es) ] f [ (bes,) c' (f,) ] |
		bes8 [ (as) f (es) ] <es bes'>4 <es as>4 |
		f8 [(es f d)] <es d'>4 <es c'>4 |
		es8 [ (d es c)] <as d>4 bes'4 |
		bes8 [ (f g es) ] g [ (f es d) ] |
		<bes es>2 <bes g'>4 es4 |
		c'4 d8 [(bes)] c4 d8 [(as)] |
		c8 [(b) as (f)] b [(as) cis (b)] |
		d8 [ (cis) es (cis)] d [ es, (d c) ] |
		g8 [ (d') d' (cis) ] f [ (g,) as (f) ] |
		es'8 [ (f,) g (es) ] d' [ (es,) f (d) ] |
		d'8 [(cis b as)] d [( es,) f (d)]  |
		c'8 [ (d,) es (c) ] as' [ (c,) d (b) ] |
		<bes d as'>8 [ f' es d ] c4 es8 [ (c) ] |
		<c d>4  es8 [ (c) ] d4 f8 [ (d) ] |
		es4 f8 [ (d) ] <c es>4 bes'8 [ (f) ] |
		g4 c,4 <c es>8 [(d) g, (b) ] |
		c2
	}
}
melodyTwo =    \relative g, {
    \repeat volta 2 {
		\partial 2 c4 s4 |
		f4 s4 d4 s4 |
		s1*2 |
		c,4 s2. |
		s1*4 |
		c'4 s4 es4 s4 |
		d4 s4 c4 s4 |
		r4 bes4 <c g'>4 d8 s8 |
		g,2
	}
	\repeat volta 2 {
		g4 s4 |
		c,4 s4 bes'4 s4 |
		as4 s2. |
		e'4 s4 c4 s4 |
		f4 s2. |
		s1*3 |
		s2  c4 bes4 |
		as4 s4 as4 g4 |
		<f as>4 s4 f4 d'4 |
		es4 s4 bes4 s4 |
		es,2 es4 s4 |
		d'4 s4 r4 e4 |
		f4 s4 f4 s4 |
		fis4 s2. |
		s1*2  |
		<g, d'>2 s2 |
		s1 |
		f8 s4. es4 s4 |
		f4 s4 aes4 s4] |
		g4 s4 f4 s4 |
		r4 es4 f8 s4. |
		c2
	}
}
gavotteI = << \melodyOne \\ \melodyTwo >>
