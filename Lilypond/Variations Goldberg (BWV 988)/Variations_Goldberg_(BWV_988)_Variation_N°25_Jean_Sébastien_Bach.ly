\version "2.24.4"
\paper {
	line-width = 18.0\cm
	ragged-bottom = ##f
	ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "Variations Goldberg"
  subtitle = "Air avec 30 variations"
  piece = "Variation N°25, à 2 claviers"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
soprano = \relative d'' {
	\repeat volta 2 {
		r16 d16 [ \grace es16 d32 cis d16 ] \once \override Slur #'direction = #UP \appoggiatura d16 bes'8 ~ [ bes32 a g f ] es16 [ d8 cis!16 ~ ] |
		cis16 [ c \grace d!16 c32 b c16 ]  \appoggiatura  f16 as8 ~ [ as32 g f es ] des16 [ c8 b!16 ~ ] |
		b16 [ bes  \appoggiatura  c16 bes32 a bes16 ] fis' [ g8 cis,16 ~ ] cis [ d8 g,16 ] |
		g16 [ a32 bes a8 ] r4 r4 |
		r16 d,16 [ \grace ees16 d32 cis d16 ] d'8 ~ [ d32 c! bes a ] g [ f as16 ~ as32 d, f16 ~ ] |
		f16 [ es  \appoggiatura  f16 es32 d es16 ] es'8 ~ [ es32 d c bes ] a32 [ g bes16 ~ bes32 e,32 g16 ~] |
		g16 [ fis \grace g16 fis32 e fis16 ]
		\times 2/3 { b16 [ c es! ] }
		\times 2/3 { cis16  [d fis,! ] }
		\times 2/3 { bes16 [ a d,] }
		\times 2/3 { es16 [ b c ~ ] } |
		c16 [ bes!32 a bes8 ] r4 r4 |
		r32 d32 [ e fis g bes a16 ~ ] a16 [ bes8 b16 ] c16 [ cis8 d16 ] |
		dis16 [ e ~ e32 bes' a g ] fis [ e d8 d16 ] d' [ cis8 c16 ] |
		b16 [ bes ~ bes32 a gis16 ~ ] gis [ a ~ a32 d, c bes ] c [ a bes g! f e f d' ] |
		f,32 \prallprall [ e f16 e8 ] r32 d32 [ cis d e f g a ] bes [ a d16 ~ d32 cis e16 ~ ] |
		e16 [ a, \grace bes16 a32 gis a16 ] \once \override Slur #'direction = #UP  \appoggiatura a16 a'8 ~ [ a32 bes (a gis ) ] a-. [ d, c bes c-. c (bes a ) ] |
		a16 [ bes \grace c16 bes32 a bes16 ] bes'8 ~ [ bes32 es,! d cis ] d [ c'! b8 d,16 ] |
		cis16 [ bes!8 a16 ] es'!16 [ d ~ d32 cis! e g ] bes16 [ a ~ a64 g f e d32 cis ] |
	}
	\alternative {
		{cis8\( [ d\) ] r4 r4 }
		{cis8\( [ d\) ] r4 r4 }
	}
 	\repeat volta 2 {
		r16 a'16 [ \appoggiatura  bes16  a32 gis a16 ] es! [ d ~ d32 e fis g ] a [ c, es8 d16 ~ ] |
		d16 [ f  \appoggiatura g16 f32 es f16 ] as, [ g ~ g32 a b c ] d [ f, as8 g16 ~ ] |
		g16 [ c8 b16 ] c32 [ es des8 c16 ~ ] c32 [ f es16 ~ es32 f es d ] |
		es32 [ a! ( bes16 es, d ) ] r4 r4 |
		r16 bes16 [ \appoggiatura ces16 bes32 as bes16 ] bes [ bes' ~ bes32 ces bes as ] bes16 [ des, ~ des32 ces bes16 ~ ] |
		bes16 [ ces  \appoggiatura des16 ces32 bes ces16 ] ces [ ces' ~ ces32 fes, es d] es [ des' c8 es,16 ] |
		d!16 [ ces8 bes16 ] fes' [ es ~ es32 d f as ] ces16 [ bes ~ bes64 as64 ges64 f64 es32 d ] |
		d8\( [ es8\) ] r4 r4 |
		r16 g,16 [ \appoggiatura as16 g32 fis g16 ] \once \override Slur #'direction = #UP \appoggiatura g16 es'8 ~ [ es32 d c bes ] as!16 [ g8 fis!16 ] ~ |
		fis16 [ f \grace g16 f32 e f16 ] des'8 ~ [ des32 c bes as ] ges16 [ f8 e!16 ~ ] |
		e16 [ es  \appoggiatura f16 es32 d es16 ] c'8 ~ [ c32 bes as g ] fis16 [ es' ~ es32 d cis16 ] |
		cis16 [ (d) es, (d) ] r32 e32 [ fis g a bes c d ] es! [ d g16 ~ g32 fis a16 ~ ] |
		a16 [ d,  \appoggiatura es16 d32 cis d16 ] d'8 ~ [ d32 c! bes a ] g [ d' f,16 ~ f32 es d c ] |
		d32 [ as' g f es d c b ] c [ f es d c bes a! g ] a [ d c bes a g fis e ] |
		fis32 [ bes a g fis e d cis ] d [ g fis e d c bes a ] bes [ es d c bes a g fis ] |
	}
	\alternative {
		{ \grace fis16  g4 r4 r4 |}
		{ g4 r4 r4 \bar "|." |}
	}
}
bassOne = \relative c' {
	\repeat volta 2 {
		\stemUp
		bes4 r8 d8 [ c! bes ] |
		a4 r8 c8 [ bes! as ] |
		g4 r8 bes8 [ a g ~ ] |
		g8 [ fis16 e ] fis [ a8 c16 ~ ] c [ fis,8 a16 ~ ] |
		a16 [ fis g8 ] r8 g8 d16 [ f g as ] |
		as8 [ g ] r8 a e16 [ g a bes ] |
		bes8 [ a ] r8 a [ g fis ~ ] |
		fis8 [ g16 fis ] g [ d8 es16 ~ ] es32 [ d g16 ~ g32 fis! c'16  ~ ] |
		c16 [ bes32 a bes8 ] r8 g' [ g g ] |
		g8 [ fis ] r8 f [ f f ] |
		f8 [ e ] r8 es [ es d ] |
		d8 [ cis ] r4 r4 |
		r8 d8 [ d es ] es4 |
		r8 e8 [ e f ] f4 |
		r8 fis8 [ fis g ] g4 ~ |
	}
	\alternative {
		{ g8 [ fis16 e ] fis4 fis4\rest }
		{ g8 [ fis16 e ] fis4 r4 }
	}
	\repeat volta 2 {
		r8 f8 [ f fis fis g ] |
		g8 [ d ] r8 f8 [ f es ] |
		es8 [ d es e f ges ~] |
		ges8 [ f16 ges ] as [ d,8 es32 f ] ges [ es f8 ces16 ] |
		ces16 [ bes es8 ] es [ fes ] fes4 |
		r8 f! [ f ges ] ges4 |
		r8 g! [ g as ] as4 ~ |
		as8 [ g!16 f ] g8. [ a32 b ] c [ f, as8 g16 ] |
		f8 [ es ] r8 \clef "bass" g [ f es ] |
		d4 r8 f8 [ es des ] |
		c4 r8 es16 [ d ] c8 [ bes ] |
		a8. [ a16 ] d8 [ c bes a ] |
		d,8 [ fis fis g g as ] |
		r8 g [ g a! a bes ] |
		r8 a [ a bes bes c ~ ] |
	}
	\alternative {
		{c8 [ bes16 a ] bes4 r4 |}
		{c8\repeatTie [ bes16 a ] bes8 r8 r4 |}
	}
}
bassTwo = \relative g {
	\repeat volta 2 {
		\stemDown
		g4 r8 g8 [ g g ] |
		g8 [ fis ] b, \rest f' [ f f ] |
		f8 [ e ] b8\rest es8 [ es es ] |
		d4 r8 es8 [ d  c ] |
		bes4 r8 bes8 [ b b ] |
		b8 [ c ] r8 c8 [ cis cis ] |
		cis8 [ d ] r8 d [ d d ] |
		g,4 r8 g [ bes d ] |
		g8. [ d'16 ] g8 [ f! es! d ] |
		cis8 [ a d c bes a ] |
		g8 [ c ] f, [ fis g gis ] |
		a8 [ bes a g f e ] |
		f4 r8 fis8 [ fis g ] |
		g4 r8 gis8 [ gis a ] |
		a4 r8 a8 [ cis a ] |
	}
	\alternative {
		{ d4. c8 [ bes a ] | }
		{ d4. a8 d,4 | }
	}
	\repeat volta 2 {
		\clef "treble"
		d'4 r8 c [ c bes ] |
		bes8 [ g16 a ] bes8 [ b b c ] |
		c4 r8 g8 [ as a ] |
		bes4 r8 ces8 [ bes as] |
		ges4 r8 g8 [ g  as ] |
		as4 r8 a8 [ a bes ] |
		bes4 r8 bes8 [ d bes ] |
		es4 r8 f8 [ es  d ] |
		c4 r8 \clef "bass" c8 [ c c ] |
		c8 [ b ] r8 bes8 [ bes! bes ] |
		bes8 [ a! ] r8 as8 [ as g ] |
		g8 [ fis ] r8 fis8 [ g c, ] |
		bes4 r8 bes8 [ bes b ] |
		b16 [ d c8 ] r8 c8 [ c cis ] |
		cis16 [ e d8 ] r8 d8 d [ d ] |
	}
	\alternative {
		{ g4 ~ g8 [ d ] g,16 [ a' bes c ] |}
		{ g4 ~ g16 [ fis g d ] g,4 |}
	}
}
bass = << \bassOne \\ \bassTwo>>
\score {
	\context PianoStaff <<
	\set PianoStaff.midiInstrument = "harpsichord"
	\new Staff = "upper" { \clef "treble" \key g \minor \time 3/4 \soprano }
	\new Staff = "lower" { \clef "bass" \key g \minor \time 3/4 \bass }
	>>
	\layout{ }
	\midi { }
}
