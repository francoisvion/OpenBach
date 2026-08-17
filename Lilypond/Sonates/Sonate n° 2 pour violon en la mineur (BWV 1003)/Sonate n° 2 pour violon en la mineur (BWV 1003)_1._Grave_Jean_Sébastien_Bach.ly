\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "1. Grave"
  subtitle = "Sonate n° 2 pour violon en la mineur"
  subsubtitle = "6 sonates pour violon"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1003"
  tagline = ##f
}
melodyOne = \relative e'' {
	e4 gis,,32 [ f'' ( e d64 c b16 \trill a16 ) ] a16 [gis a8 ~ ] a16 [ a32 ( b c d e16 )] |
	f16. [ e32 d16 c32 (b ) ] b8 [ (a32) \trill gis32 a16] gis8 \trill [ fis16 (e) ] d16. [ f32 ( e d c d64 b ) ] |
	c32 [ (a c e a c e f ) ] f8. \trill ( [ e32 f ) ] g16. [ (f32 e16 d32 c )] c8 [ bes32 \trill ( a bes16) ] |
	a8. [a'16]  g32 [( f16 e32 d16 e32 c ) ] b32. [ g64 ( a32 b c d e64 f g b, ) ] c8. \trill [ b32 (c ) ] |
	d8. [ g,16]
	\times 2/3 { f16 [ (e d ) ] }
	\times 2/3 { a'16 [ (g f ) ] }
	e16. [
	\times 2/3 { g64 ( a b }
	c16.)
	\times 2/3 { g64 ( a b ]}
	c [ d e16) b32 ( c d e g64 fis ) ] |
	fis16 [ (a c d32 b) ] c16 [f,32 e f8] e8 r16 a16 b,8. [ c16 ] |
	c8 ~ [ c32 g ( a b ] c [ d e f e d c b64 a ) ] gis32 [ e gis b d a f a,] gis16. [ f''32 ( e d c d64 b )] |
	c8 [ b16 ( a ) ] fis'8. [ fis16 ] fis8. [ g32 a ] g16 [ fis g e ] |
	e16  [ (dis ) cis ( b ) ] b'16 [ b,32 ( c d e f d )]  gis,16 [ f' ~ f32  g ( f e]  d32 [ cis d16 ) b'16 ( d,16 ) ] |
	cis16. [ e32 (fis g a b) ] c32 [ b c16 dis, a']  b8. [ a16]  a  [ ( g a fis) ] |
	ais,8 ~ [ ais32 b ( cis dis ] e [ cis ais g fis e fis ais,)] e''8. [ fis16 ] dis8. [ e16 ] |
	e4 ~ e16 [ f32 ( e d c b c64 a ) ] gis8 ~ [ gis32 a ( b a ] gis32 [ fis e d c16 d32 b) ] |
	a'8 ~ [ a32 ( e fis gis ] a [ b c d e f g bes64 a ) ] bes16 (a) a ( g )]  g [( f ) g ( e )] |
	f16 [ a32 g a8 ] cis,,32 [ ( bes'' ( a g f e d e64 cis ] d32 ) [ a (bes g e cis d bes)] a [ ( d fis a c es d a ) ] |
	bes32 [( fis g bes d fis g bes ) ] f16 [ (e \trill ) gis,32 (d' cis d ) ] cis16. [ d32 (e f g e )] bes16. [ cis,64 ( d e32 f g e )] |
	f32 [ (gis a d f gis a bes ) ] d,8 [ (cis16. ) d32 ] d16. [ c64 ( bes a32 g f g64 a)] d,32 [ ( f a d f a g64 e f32) ] |
	f8 ~ [ f64 d (e f g a b c )] d16 [ ( b32 g f16 \trill e )] b8 ~ [ b32 ( d (c b ] a [ gis a c e c a f)] |
	d'16 [e32 (f) gis,16 e'] d8 [ c16. \trill b64 c ] b8 ~ [ b32 gis' (a b) ] a [( gis fis e d b gis e )]  |
	cis16 [ g'32 ( a  bes16 a)] g32 [ ( fis g16) e' g,] fis32. [(a64 b32 c d e f g )]  f32 [( e f d ) gis,16 f' ] |
	e8. [ d16 ] d16 [ (c) d (b) ] a'8. [ b32 ( c)]  b32 [ ( gis a f e cis e a,)] |
	a64 [ b c16.] s8 b8. \prall [ a16]  a,16 [(a'32 gis a c f16 )] g,,16 [( g'32 fis g b e64 dis e32 )]  |
	f,32 [( e' a gis a c b d] gis, [ a e c a f a cis)] d4 dis \trill |
    	e1 \bar "|."
}
melodyTwo =  \relative c'' {
	 c4 s2 s4 |
	 a8 s8 s2 s4 |
	 s2 c8 s8 s4 |
	 f,8 s4 s8 f8 s8 e4 |
	 b8 s8 s4 c8 s8 s4 |
 	 s4 s8 a'8 g [ f ] g4 |
	 c,8 s4 s8 b16 s16 s8 s4 |
	 e8 s4 s8 c'8. s16 s8 b16 [ g ] |
	 fis8 s8 s2.  |
	 g8 s4 f8 g [ a ] b r8 |
	 e8 s8 s4 b,8 s4.  |
	 e4 s4 d8 s4. |
	 e8 s8 s4 <e cis'>8 s4 a8 |
	 <d, a'>8 r8 s2. |
	 s2 a'8 s8 s4 |
	 s4 <a, e'>8 s8 d8 s8 s4 |
	 <d b'>8 s8 s4 e'8 s4. |
	 b,8 s8 a8 s8 e'8 s8 s4 |
	 s2 c8 s4 b8 |
	 a'8 s8 s4 c8. s16 s4 |
	 e,8 [ d16 d'] e,4 s2 |
	 s2 f4 fis |
	 e1 |
}
melodyThree =  \relative a' {
	 <a, a'>4 s4 f'8 r8 e8 r8  |
	 d8 s8 dis8 s8 s4 gis,8 s8 |
	 s2 e'8 s8 s4 |
	 s1 |
	 g8 s8 s2. |
	 a8 s8 s8 c8 c8 s8 s4 |
	 e,8 s8 s2. |
	 a,8 s4 s8 dis8. s16 s8 e8 |
	 b8 s8 s2. |
	 s2 e'8 s4. |
	 s2 <g, b>8 s8 fis8 s8 |
	 s1 |
	 c8 s8 s4 a8 s4. |
	 s1 |
	 s1 |
	 s1 |
	 g8 s8 s4 c8 s8 s4 |
	 a'8 s8 a8 s8 s2 |
	 s1 |
	 c,8 [ d ] e s8 dis8. s16 s4 |
	 s1 |
	 s1 |
	 s1 |
}
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
	\set Staff.midiInstrument = "violin"
        { \clef treble \key a \minor \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
