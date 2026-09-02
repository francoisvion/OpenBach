\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "Fugue"
  subtitle = "Prélude, Fugue et Allegro en Mib Majeur"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 998"
  tagline = ##f
}
	sopranoOne=	\relative c' {
		r4 ees4 ( d ees |
		f4 bes, c d |
		ees4 ) r8 d8 [ ees g f ees ] |
		d8 [ aes' g f ] ees [ d c f ] |
		d4 f bes e, |
		f8 [ c f g ] aes4 d, |
		ees8 [ f g a ] bes [ f ees d ] |
		c4 r8 d8 ees [c' bes aes ] |
		g8 [ f ees aes ] d,16 [ f ees d ] bes'8 [ des, ] |
		c4 r16 aes'16 [ g f ] bes4 r8 c8 |
		c8 [(bes)] r8 aes aes [(g)] r8 ees |
		ees8 [(d)] g4 aes bes |
		bes8 [(aes)] r8 bes,8 bes [(aes)] r8 f'8 |
		f8 [(e)] r8 f8 ees [ d c f ] |
		ees8 [ d f ees ] r8 bes' [ aes g ] |
		f8 [ ees d g ] ees4 f |
		f8 [(ees)] r8 des des [(c)] r8 e8 |
		e8 [(f)] r8 ees ees [(d)] r8 f |
		fis8 [(g)] r8 f8 f [(ees)] r8 g |
		g8 [(aes)] r8 g8 g [(f)] r8 ees |
		ees [(d)] bes'4 g aes |
		bes ees, f g |
		aes4 r8 aes8 g [ c bes aes ] |
		aes8 [ g16 f] g4 aes bes |
		ees,4 r8 aes8 aes [(g)] r8 g8 |
		g8 [(f)] r8 bes8 bes [(aes)] r8 aes8 |
		aes8 [(g)] r8 f8 f [(ees)] r16 f16 [g aes] |
		ees16 [ d c bes ] bes'8 [ aes ] g4 f |
		ees4 s2. |
		s4 s16 bes16-. [ s16 bes16-. ] s16 c16-. [ s16 c16-. ] s16 d16-. [ s16 d16-. ] |
		g,16 [ ees' g, ees' ] r16 d16 [ bes d ] r16 ees [ bes ees ] r16 f [ bes, f' ] |
		r16 g16 [ ees g ] bes [ aes g f ] ees [ d ees g ] f [ ees d c ] |
		d4 r16 f16 [ d f ] g [ ees bes ees ] r16 g [ ees g ] |
		f16 [ d bes d ] r16 f16-. [ s16 f-. ] s16 g16-. [ s16 g-. ] s16 a-. [ s16 a-. ] |
		s4 r16 a16 [ f a ] r16 bes [ f bes ] r16 c [ a c ] |
		r16 d16 [ bes d ] ees [ d c bes ] aes [ g aes c ] bes [ aes g f ] |
		g4 r16 g16 [ ees g ] ees [ aes ees aes ] des, [ bes' des, bes'] |
		c,16 [ ees f g ] aes [ g f aes ] f [ bes f bes ] ees, [ c' ees, c' ] |
		d,16 [ f ( g aes ] g [ f ees d )] ees [ bes' ( c des ] c [ bes aes g )] |
		f16 [ d' aes d ] g, [ ees' bes ees ] aes, [ ees' c ees ] bes [ ees des ees ] |
		r16 c16 [ bes c ] aes [ c g c ] f, [ c' e, c'] f, [ c' aes c ] |
		r16 bes16 [ aes bes ] g [ bes f bes ] e, [ bes' d, bes'] e, [ bes' g bes ] |
		aes16 [g f ees ] d [ ees d ees ] d [ ees d ees ] d [ ees d ees ] |
		f16 [ aes g f ] ees [ d c bes ] a4 b4 |
		c4 r16 ees [ c ees ] c [ f c f ] bes, [ g' bes, g' ] |
		a,16 [ c d ees ] f [ c a c ] bes [ d f g ] a [ ees c ees ] |
		d16 [ f bes c ] d [ bes g f ] e [ g bes d ] c [ a f ees ] |
		d16 [ fis a c ] bes [ g ees d ] cis [ e g bes ] a [ fis d c ] |
		b16 [ d fis a ] g [ ees c bes ] a [ g' a, g'] bes, [ g' bes, g' ] |
		c, [ g' c, g' ] d [ g fis g ] ees [ g c, g'] a, [ fis' a, fis' ] |
		g,16 [ bes' aes bes ] g [ bes f bes ] e, [ bes' f bes ] g [ bes c, bes' ]  |
		r16 bes16 [ aes g ] f [ ees des c ] des [ e f aes, ] g [ bes f' e ] |
		f,16 [ aes' g aes ] f [ aes ees aes ] d, [ aes' ees aes ] f [ aes bes, aes' ] |
		r16 aes16 [ g f ] es [ des c bes ] c [ d es g, ] f [ es' d aes' ] |
		g16 [ es bes g ] s2. |
		s1 |
		aes16 [ f' c aes ] f [ aes c d ] ees [ c aes g ] f [ aes c d ] |
		ees16 [ c a g ] fis [ a c d ] ees [ c a g ] fis [ es' d c ] |
		bes16 [ g' d bes ] g [ bes des ees] fes [ des bes aes ] g [ bes des ees ] |
		fes16 [ des bes aes ] g [ bes des ees ] fes  [ des bes aes ] g [ f' ees des ] |
		c16 [ bes aes g ] es'4 d es |
		f4 r16 bes,16 [ c des ] c4 r16 d16 [ c d ]  |
		s1 |
		s4 r16 bes'16 [ bes, bes' ] c, [ bes' c, bes' ] d, [ aes' d, aes' ]  |
		g16 [ es bes g ] r8 g'8 g8 [( f)] r8 d8 |
		d8 [ [( ees)] r8 bes'8 bes ( a) r8 ees8  |
		ees8 ( d) r16 f16 [ d f ] g [ ees bes ees ] r16 g [ ees g ] |
		f16 [ d bes d ] r16 f16 [ f, f' ] g, [ f' g, f' ] a, [ ees' a, ees' ] |
		s4 r8 d8 d8 [ c ] r8 a'8 |
		a8 [ bes ] r8 aes8 aes ( g ) r8 e8 |
		e8 ( f) f16 [ aes ees aes ] d, [ aes' bes, aes'] ees [ g d g ] |
		c,16 [ g' aes, g' ] f [ aes f aes ] f [ g f g ] ees [ g ees g ] |
		ees [ f ees f ] d [ f g aes ] bes [ des, bes' des, ] c [ ees f g ] |
		aes8 r8 < f aes>8 r8 <f aes>4.  (g16 [ f ]) |
		g16 [ (a g a) ] a8. [ bes16 ] bes8 r8 r4 |
		s1 |
		s4 r8 d,8 ees [ g f ees ] |
		d8 [ aes' g f ] ees [ d c f ] |
		d4 f bes e, |
		f8 [ c f g ] aes4 d, |
		ees8 [ f g a ] bes [ f ees d ] |
		c4 r8 d8 ees [ c' bes aes ] |
		g8 [ f ees aes ] d,16  [ f ees d ] bes'8 [ des, ] |
		c4 r16 aes'16 [ g f ] bes4 r8 c8 |
		c8 [( bes)] r8 aes8 aes [(g)] r8 ees8 |
		ees8 [(d)] g4 aes bes |
		bes8 [( aes)] r8 bes, bes [( aes)] r8 f'8 |
		f8 [( e)] r8 f8 ees8 [ d c f ] |
		ees8 [ d f ees ] r8 bes' [ aes g ] |
		f8 [ ees d g ] ees4 f |
		f8 [( ees)] r8 des8 des [( c )] r8 e8 |
		e8 [( f )] s8 ees8 ees [( d )] r8 f |
		fis8 [( g )] r8 f8 f [( ees )] r8 g |
		g8 [( as)] r8 g8 g [( f )] r8 ees |
		ees8 [( d )] bes'4 g aes |
		bes4 ees, f g |
		aes4 r8 aes8 g [ c bes aes ] |
		aes8 [ g16 f ] g4 aes bes |
		ees,4 r8 aes8 aes [( g)] r8 g8 |
		g8 [( f )] r8 bes8 bes8 [( aes)] r8 aes |
		aes8 [( g)] r8 f8 f [( ees)] r16 f16 [ g aes ] |
		ees16 [( d c bes)] bes'8 [ aes ] g4 f |
		ees4 \fermata  r4 r2 \bar "|." |
			}
	sopranoTwo=	\relative c' {
		s1*9 |
		s2 r16 f16 [ ees d ] c8 [ ees ] |
		ees8 [ d16 c ] d8 [ f ] f [(ees)] s4 |
		s4 r8 ees8 des8 [ c bes ees ] |
		des8 [ c ] s2. |
		s1 |
		s2. s8 ees8 |
		d8 [ (c) c (bes) ] s2|
		s1 |
		s4 s8 c8 c [(bes)] r8 c8 |
		c8 [( b )] r8 d8 d [( c )] r8 des |
		des8 [( c )] r8 s4. s4 |
		s2 r8 ees8 [ des c ] |
		bes8 [ des c bes ] aes4 bes |
		c4 r8 bes8 bes [( c )] r8 d8 |
		d8 [( ees )] r8 ees8 ees [( des)] r8 des |
		des8 [( c)] r8 f8 f [( ees)] r8 ees |
		ees8 [( d)] r8 g8 g[(f)] r8 f |
		f8 [( ees)] r8 d8 d [(ees)] s4 |
		s4 ees4 ees d |
		bes4 s2.|
		s1*4 |
		s4 s8 f'16-. s16 f16-. s16 f16-. s16 ees16-. [ s16 ees16-. ] s16 |
		d16 [ bes' d, bes' ]  ees,4 d ees |
		f4 s2 d4 |
		r16 ees16 [ bes g ] s2. |
		s1*5 |
		r4 c4 b c |
		d4 s2. |
		s1*20 |
		s4 s8 ees8 ees8 [(d)] s4 |
		s4 r8 d8 d [( c )] s4 |
		s1*2 |
		s2. r8 ees8 |
		ees8 [( d)] r8 f8 f [( e )] r8 bes |
		bes8 [( aes)] s2. |
		s4 d8 [ c ] s2 |
		s1 |
		s4 c8 r8 bes4. r8 |
		r4 ees4 s2 |
		s1*8 |
		s2 r16 f16 [ ees d ] c8 [ ees ] |
		ees8 [ d16 c ] d8 [ f ] f [(ees)] s4 |
		s4 r8 ees8 des8 [ c bes ees ] |
		des8 [( c )] s2.|
		s1 |
		s2. s8 ees8 |
		d8 [ (c) c (bes) ] s2|
		s1 |
		s4 s8 c8 c [( bes)] s8 c8 |
		c8 [( b )] r8 d8 d [( c)] r8 des8 |
		des8 [( c)] r8 s8 s2 |
		s2 r8 ees8 [ des c ] |
		bes8 [ des c bes ] s2 |
		s4 r8 bes8 bes [( c )] r8 d |
		d8 [( ees)] r8 ees8 ees [( des )] r8 des |
		d8 [( c )] r8 f8 f [( ees )] r8 ees |
		ees8 [( d)] r8 g g [( f )] r8 f |
		f8 [( ees )] r8 d d [( ees)] s4 |
		s4 ees4 ees d |
		bes4 s2. |
			}
soprano = << \sopranoOne \\ \sopranoTwo >>
	bassOne=	\relative c' {
		r1 |
		r1 |
		r4 bes4 ( g as |
		bes4 ees, g a |
		bes8 ) [ c bes aes ] g [ des' c bes ] |
		aes4 r8 g8 f [ c' bes aes ] |
		g4 r4 r8 d'8 [ c bes ] |
		a8 [ g f bes ] g4 f |
		bes4 c bes r8 bes8 |
		aes4 r4 g a |
		bes4 bes, g r8 g'8 |
		g8 [( f)] ees,4 f g |
		aes4 r8 g'8 g [( f)] r8 aes8 |
		aes8 [(g )] a4 bes c |
		c8 [ bes aes g ] f4 r8 s8 |
		s2 aes8 [ g f bes ] |
		aes8 [( g)] r8 bes8 bes [( aes)] r8 bes8 |
		bes8 [( a)] r8 s8 s2 |
		s1 |
		s4. bes8 bes [(aes)] r8 g8 |
		g8 [( f )] r4 s2 |
		s1 |
		s4 f4 g aes |
		bes4 ees,, f g |
		aes4 aes' bes c |
		bes4 d, ees f |
		g4 aes bes c |
		f,4 <ees~ bes'>8 [ <ees c'>8 ] bes'4 aes |
		g4 r16 bes16 [ g bes] c [ aes ees aes ] r16 c [ aes c ] |
		bes16 [ g ees g ] r16 s16 bes16-. s16 bes16-. [ s16 bes16-. ] s16 aes16-. [ s16 aes-. ] s16 |
		s4 aes4 g aes |
		<g bes>4 ees g a |
		r16 bes16 [ f d ] s2. |
		s1 |
		s1 |
		bes4 bes' c bes, |
		r16 s8. ees,4 f g |
		aes4 f g a |
		bes4 bes' g aes |
		bes4 ees, f g |
		aes4 r4 des r4 |
		g,4 r4 c r4 |
		f,4 fis g aes |
		s4 g4 a16 [ g f ees ] d [ aes' g f ] |
		r16 f16 [ees d ] c4 d e |
		f4 ees d c |
		bes4 bes' g a |
		bes4 g e fis |
		g4 ees c d |
		ees4 bes c d |
		g,4 bes c e |
		f4 aes, bes c |
		f,4 aes bes d |
		ees4 g, aes bes |
		s4 ees16 [ g bes c ] des [ bes g f ] ees [ g bes c ] |
		des16 [ bes g f ] e [ g bes c ] des [ bes g f ] e16 [ des' c bes ] |
		s1 |
		s1 |
		s1 |
		s1 |
		s4 f16 [ g f g ] f [ g f g ] f [ g f g ] |
		aes16 [ bes aes bes ] g4 r16 bes16 [ aes g ] f4 |
		ees'16 [ bes g bes ] r16 bes [ g bes ] c [ aes ees aes ] r16 c [ aes c ] |
		bes16 [ g ees g ] g,4 aes bes |
		ees,4 ees' bes' r8 aes8 |
		aes8 [( g )] ees4 f r8 a8 |
		a8 [( bes)] s4 r4 s4  |
		s1 |
		d16 [ bes f d ] r8 bes'8 bes8 [( a )] s4 |
		bes,4 b c c, |
		f4 s2. |
		s2 b'8 [ g c bes ] |
		a8 [ f bes aes ] g [ ees aes g ] |
		f8 [ ( ees) ees (d) ] d [ c d bes ] |
		ees8 [ d c f, ] d''16 [ bes a bes ] ees [ bes a bes ] |
		f'16 [ aes, g f ] g [ bes c des ] c [ bes a g ] f [ a bes d ] |
		ees16 [ bes g ees ] bes'4 ( g aes |
		bes4 ees, g a |
		bes8 ) [ c bes aes ] g [ des' c bes ] |
		aes4 r8 g8 f8 [ c' bes aes ] |
		g4 r4 r8 d'8 [ c bes ] |
		a8 [ g f bes ] g4 f |
		bes4 c bes r8 bes8 |
		aes4 r4 s2|
		bes4 bes, g r8 g'8 |
		g8 [( f)] ees,4 f g |
		s4 r8 g'8 g [( f)] r8 aes8 |
		aes8 [( g)] a4 bes c |
		c8 [ bes aes g ] f4 r8 ees'8 |
		s2 aes,8 [ g f bes ] |
		aes8 [( g )] r8bes bes [( aes)] r8 bes |
		bes8 [( a )] r8 s8 s2 |
		s1 |
		s4. bes8 bes [( aes)] r8 g8 |
		g8 [( f)] r4 s2 |
		s2 aes4 bes |
		c4 f, g aes |
		bes4 ees,, f g |
		aes4 aes' bes c |
		bes4 d, ees f |
		g4 aes bes c |
		f,4 <ees ~ bes'>8 [ <ees c' >8 ] bes'4 aes |
		g4 r4 r2 |
			}
	bassTwo=	\relative c' {
		s1*5 |
		s1 |
		r4 ees,4 ( d ees |
		f4 bes, c d |
		ees4) aes2 g4 |
		r16 g16 [ f ees ] f4 s2|
		s2. aes,4 |
		bes4 s2. |
		s4 c aes bes |
		c4 f, g a |
		bes4 ees, d ees |
		f4 bes, c d |
		ees4 g aes g |
		f4 a bes aes |
		g4 b c bes |
		aes4 aes, aes' aes, |
		bes8 [bes' c d ] ees [ c bes aes ] |
		g4 aes r8 des8 [ c bes ] |
		f'8 [ ees ] d4 ees f |
		g4 s2.|
		s4 f4 g a |
		bes4 bes, c d |
		ees4 f, g aes ~ |
		aes4 g8 [ aes ] bes4 bes, |
		ees4 ees' r4 ees, |
		r4 g4 aes bes |
		ees,4 f' <ees, ees'> d' |
		<ees, ees'>4 g c f, |
		bes4 bes, r4 bes' |
		r4 d4 ees f |
		bes,4 r4 bes, r4 |
		s4 g''4 f s4 |
		ees4 s2.|
		s1*6 |
		b4 c f, g |
		c,4 c' s2 |
		s1*9 |
		ees,4 r4 ees g |
		bes4 g e' c |
		f4 r4 f, a |
		c4 a fis' d |
		g4 r4 g, bes |
		des4 bes g' ees|
		aes8 r8 a,4 bes c |
		d,4 ees aes bes |
		ees,4 ees'r4 ees, |
		r4 s2. |
		s2. bes'4 |
		ees,4 ees' f f,|
		bes4 bes' r4 bes, |
		r4 d,4 ees f |
		bes,4 bes' f' f, |
		s1*5 |
		s2 bes4 g |
		d4 ees aes bes |
		ees,4 s2. |
		s1*3 |
		r4 ees'4 ( d ees |
		f4 bes, c d |
		ees4 ) aes2 g4 |
		r16 g16 [ f ees ] f4 g a |
		s2. aes,4 |
		bes4 s2. |
		aes4 c4 aes bes |
		c4 f, g a |
		bes4 ees, d ees |
		f4 bes, c d |
		ees4 g aes g |
		f4 a bes aes |
		g4 b c bes |
		aes4 aes, aes' aes, |
		bes8 [ bes' c d ] ees [ c bes aes ] |
		g4 aes r8 des8 [ c bes ] |
		f'8 [ ees ] d4 ees f |
		g4 s2. |
		s4 f4 g a |
		bes4 bes, c d |
		ees4 f, g aes ~ |
		aes4 g8 [ aes ] bes4 bes, |
		ees4 \fermata s2. |
			}
bass = << \bassOne \\ \bassTwo >>
\score {
	\context PianoStaff <<
	\set PianoStaff.midiInstrument = #"acoustic grand"
	\time 4/4
	\new Staff = "RH" {
			\clef treble
			\key ees \major
			\soprano
		}
	\new Staff = "LH" {
			\clef bass
			\key ees \major
			\bass
		}
		>>
	\midi {
	}
	\layout  {
	}
}
