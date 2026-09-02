\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "3. Sicilienne"
  subtitle = "Sonate n° 1 pour violon en sol mineur"
  subsubtitle = "6 sonates pour violon"
  opus = "BWV 1001"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
melodyOne =  \relative b'' {
	r4. r8 r8 bes8 bes [ a g ] g [( f)] r8 |
	s8 f8 [( g)] s8 es16 [ c d8 ] s8 d16 [ f es d ] c8 s8 s8 |
	s8 c16 [ bes c8 ] s8 c8 [(f)] s8 es16 [ d  es8] a,,16 [( c f a32 c es16 g )]  |
	f8 [ es16 d c bes ] d8 [ c32 d es16 d8 ] s2 s8 bes'8 |
	bes8 [(a)] s8 s8 s8 a8 a [(g)] s8 s8  bes8 [ (a) ]  |
	s8 fis16 [ (a)  g8 ] s8  g16 [ (bes)  a8] s8 a16 [ (bes) bes (c) ] c32 [ (bes a g fis e d c bes a bes c) ]  |
	fis,8 [ d''16 (a) c8 ] g,16 [ bes' (a) fis (g) d ] es8 [c] s8 s8 s8 aes'8 |
	fis8 [ g16 (d) es (d) ] s16 c16 [ bes (a) g (fis)] bes,32 [ (d e fis g a bes c d c es d) ] r8 c16 [(bes a g) ] |
	g8. s16 s4. bes8 bes [(a)] s4. b8 |
	b8 [(c)] s4. c'8 c [(bes)] s4. bes8 |
	bes8 [(a)] s4. aes8 aes [(g)] s4. g8  |
	f8 r8 d8 es8 r8  f8 es16 [ (d) es (d) c (bes) ] bes [ (a) c (bes) d (c) ] |
	es8 s16 g16 [ c8 ] bes16 [ (a g f) es8 ] es [ (d16) f bes8 ] aes16 [ (f d bes) aes'8 ] |
	d,16 [ (bes) c (a) d, f' ] c [ (a) bes (g) c, es' ] bes [ (g) a (f) bes, d' ] es, [( d') g8 f16 (es) ] |
	s2. f8. [ g16 f8 ] f [ es16 (d c b )] |
	es8. [ f16 es8 ] es [ d16 (c bes a )] g [ f es d es8 ] d [ es f ] |
	c'16 [ bes es8 d] es, [ g'16 es bes8 ]  e8. [ f16 e8 ] e16 [ (g f e d c) ] |
	f8. [ d16 es8] s4. es16 [(d) g8 f] s8 s8 c8 |
	bes8 s2 bes'8 bes [(a)] s4 s8 bes8  |
	a8 [ (bes)] r8 r4. r2. \bar "|."
}
melodyTwo =  \relative d'' {
	s4. s8 s8 s8  d [ c bes ] bes [a] s8 |
	s8 c8 [bes] s8 a8 [bes] s8 bes8. [ bes16 ] a8 s8 s8 |
	s8 a16 [ g a8] s8 a8 [b] s8 g16 [ f g8 ] s4 s8 |
	d8 s8 es8 f [ es f ] bes,8. [ d16 f8 ]  es16 [( d c bes )] d'8 |
	f,8. [ bes16 a8 ] g16 [( fis e d )] s8 d8 s2 s8
	d8 [ c' bes ] d, [ bes' c ] d, [ c' d ] es16 s16 s4 |
	s2. g,8 s8 s4. c8 |
	c8 [ bes fis] g [ c, d] s4. c8 [d] r8 |
	s8. s16 s4. g8 g [(f)] s4. f8 |
	f8 [ es ] c16 [d] f [ (es d c)] r8 g'8. [ d16 g8]  f16 [ (e d c) ] r8 |
	es'8 [(f)] s4. d8 d [(es)] s4. c8  |
	d,8 [ g,16 g'' bes,8]  c,8 [ f16 c' a8 ] bes,8 [ g' es ] s4. |
	c8 s2 a8 bes8 s2 bes8 |
	g''8 s1*11/8 |
	f,8. [ a16 c8 ] bes16 [( a g f) ] es8 d8 r8 r8 <g, d'>8 r8 r8 |
	g'8 s4 f8 s4  bes,8 [ g]  bes'8 bes s4 |
	g8. [ es16 f8 ] s1 s8 |
	c'8 s4 f,16 [( c'' bes a g f)] s8 a,8 [ bes ] s4 es,8 |
	d8 s2 d'8 d [c] s4 s8 es8  |
	es8 [ d ] s8 s4. s2. \bar "|."
 }
melodyThree = \relative bes {
	bes8. [ d16 f8 ] es16 [(d c bes)] d'8 f,8 s8 s8 s8 s8 es8 |
	d8 s4 c8 s8 bes8 f'8 s8 s8 s8  a,8 [ c ] |
	f8 s8 s8 es8 s8 d8 c8 s8 bes8 s8 s8 s8 |
	bes'8 s2 s8 bes8 s2 s8  |
	d8 [c] s8 s8 s8  c8 [c bes] s8 s8 d8 [ c ] |
	s1*12/8 |
	s2. c,8. [ es16 g8 ] f16 [ es d c ] s8 |
	d8 s4. g8  s2. s8 |
	g,8. [ bes16 d8 ] c16 [ (bes a g )] r8 d'8. [ es16 d8 ] c16 [ (b a g )] r8 |
	s2 s8 es''8 es [ d ] s4 s8 e8 |
	s8 s16 f,16 [ f'8 ] es16 [ (d c bes )] s8 s8 s16 bes,16 [es8 ] d16 [ ( c bes a) a'8 ] |
	c8 s4  bes8 s4 f8 s4 f8 s4  |
	g8 s2  f8 f8 s2 <f d'>8 |
	es8 r8 s4 s1  |
	d'8 [(c)] s8 s8 s8  c8 c  s8 s8 b8 s4 |
	c,8 s4 a8 s2 g''8  f [ es16 c d8 ] |
	s2 s8  f8   <g, bes>8 s4 <g c>8 s4  |
	<a, f'>8 s8 s1 s4  |
	bes8. [ d16 f8 ] es16 [( d c bes)] s8 s2 s4]  |
	f8 s8 s1 s4 \bar "|."
}
melodyFour =  \relative d' {
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s2 s4 d8 s2 s8  |
	s2 s4  g,8. [g'16 f8] es8 s4 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s1*12/8 |
	s2 s8 d8 c8 s4 bes8 s4 |
	s2 s4. es8 [ d ] d32 [ es f16 d' bes ] s8 |
	s2. f8. [ a16 c8 ] bes16 [ (a g f ) ] r8 |
	bes,8 s8 s1 s4 \bar "|."
}
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree \\ \melodyFour>>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
        { \clef treble \key d \minor \time 12/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
