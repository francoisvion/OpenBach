melodyOne =  \relative c {
    \set Staff.midiInstrument = "cello"
    \key c \minor
    \time 3/2
    \repeat volta 2{
		\partial 8 c8 |
		c4. d8 es [ (f g as) ] g [ (f g es) ] |
		<b f'>4. es8 es [ (d c b) ] c4. d8 |
		g,4. c16 [ b16 ] c4 d4 f8 [ (es d c) ] |
		<c f bes>4. f8 \appoggiatura d'8 cis4 d4 d,4. g8 |
		es4. d8 c [(d es f)] as [(bes d c)] |
		<es, c'>4. bes'8 as [( f es d)] d [( es a,8. f'16)] |
		es8 [(d c bes)] c'4. d8 c [( b c as)] |
		d4. c8 c [(bes as fis)] g4. b8 |
		as8 [( fis e d)] es'4 d8 [cis ] d4 es |
		<g, f'>4. es'8 d [ c b c] fis,4. \trill g8 |
		a,8 [ fis' d' es ] \appoggiatura d8 <d, c'>4 c8. [b'16] b4. \trill as8 |
		as4 s2 g2 s8
	}
    \repeat volta 2{
		es'8 |
		<b es>4. f'8 es [ d cis d16 es ] a,4. bes8 |
		f4. es8 d [(es f as) ] g4 f4 |
		f8 [(es d c) ] bes'4 <d, as'>4 <es d'>4. es'8 |
		e,4. \trill f8 as [( bes c d )] es4 d4 |
		c8 [( bes as f )] es [( des es c )] des [( f g as )] |
		as8 [ g f es ] <as f'>4. g'8 c,4. bes8 |
		bes4. as8 bes [ c d es] es4. d16 [ es16 ] |
		f4. c8 d4 as4 as8 [ bes d, c' ] |
		bes8 [(as f es )] as [( b as b )] b4. \trill as16 [( b )] |
		c4. b8 d [( cis )] d4 c8 [( bes )] as [(f )] |
		f4. g8 es4 f,8 [ d' ] d4. \trill c8 |
		c4. g16 [ f] es [ f g8] <g es' d'>2 r8
    }
}
melodyTwo =  \relative c, {
    \repeat volta 2{
		\partial 8 s8 |
		c4. s8 s1 |
		d4. s8 s1 |
		es4. s8 s1 |
		f4. s8 r4 es'4 g,2 |
		<c, g'>2 s1 |
		g'4. s8 s1 |
		s1. |
		es'4. s8 s1 |
		d8 s4. r4 f4 es d |
		c4. s8 s1 |
		s2 g4 s4 d'2 |
		g4 ~ g16 [( f es d)] es8. [ c16] g2 r8
	}
	\repeat volta 2 {
		s8 |
		g4. s8 s1 |
		a4. s8 s2 b4 g4 |
		c8 s8 s4 r4 bes4 as4. s8 |
		g4. s8 s2. e'4 |
		f8 s4. s1 |
		s2 c4. s8 es4. s8 |
		s1. |
		g4. s4. es4 f s4 |
		es8 s4. s1 |
		d4. s4. es4 f8 s8 d8 s8 |
		b4 g c s4 g4. s8 |
		s2 s4 c,2 s8
	}
}
courante = << \melodyOne \\ \melodyTwo >>
