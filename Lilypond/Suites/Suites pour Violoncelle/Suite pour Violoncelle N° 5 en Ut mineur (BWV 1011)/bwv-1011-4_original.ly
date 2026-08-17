sarabande =  \relative g {
    \set Staff.midiInstrument = "cello"
    \key c \minor
    \time 3/4
	\repeat volta 2 {
		g8 [(es b c)] as4 |
		d'8 [(bes e, f)] b,4 |
		e'8 [(bes e, f) g, (g') ] |
		f8 [(es b c)] c,4 |
		c'8 [(es bes' as) es' (d) ] |
		d,8 [(f c' bes) d (c)] |
		bes8 [(as d, es) bes (d) ] |
		es,2. |
	}
	\repeat volta 2 {
		c''8 [(as d, es)] des,4 |
		c''8 [(as e f)] g,4 |
		es''8 [(c e, f) c, (d'')] |
		c8 [(bes e, f)] f,4 |
		es8 [(c' f es) c' (b)] |
		d,,8 [(d' g f) d' (cis)] |
		d8 [(bes fis g) b, (c) ] |
		g8 [(d' g fis) d' (cis) ] |
		f8 [(d fis, g) a, (f'') ] |
		es8 [(as, e f) b, (g') ] |
		f8 [(es b c) g (cis') ] |
		c,,8 [ (g' f' es) ] d'4 |
    }
}
