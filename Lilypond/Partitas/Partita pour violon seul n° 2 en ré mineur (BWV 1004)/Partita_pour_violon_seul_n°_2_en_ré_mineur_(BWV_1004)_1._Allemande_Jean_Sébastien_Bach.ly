\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "1. Allemande"
  subtitle = "Partita pour violon seul n° 2 en ré mineur"
  subsubtitle = "6 sonates pour violon"
  opus = "BWV 1004"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
melodyOne=  \relative d' {
	\voiceOne
	\repeat volta 2 {
		\partial 16
		d16 |
		d8. [ e16 ] f [ g a bes ] cis, [ bes' ( a g ) ] e'8. [ g,16 ] |
		f16 [ ( cis ) d ( a ) ] bes [ ( d ) f ( g ) ] cis, [ a cis e ]
		\times 2/3 { a16 [ ( g f ) ] }
		\times 2/3 { g16 [ ( f e ) ] } |
		f16 [ d f a ]
		\times 2/3 { bes16 [ ( a g ) ] }
		\times 2/3 { a16 [ ( g f ) ] }
		e16 [ g bes d ]
		\times 2/3 { c16 [ ( bes a ) ] }
		\times 2/3 { bes16 [ ( a g ) ] } |
		a16 [ f a c ] f [ ( g a ) c, ] d [ a bes d ] g [ ( a bes ) d, ] |
		e16 [ bes c g ] a [ ( bes c ) e, ] f [ a, bes g' ] c, [ e g bes ] |
		a16 [ ( g f ) a ] d [ f, e d ] cis [ e' f g ] a, [ g' f e ] |
		f16 [ ( e d )  e, ] d [ c b a ] gis [ b' c d ] e,  [ d' ( c b ) ] |
		c16 [ ( b a ) b ] c [ ( f32 e d16 ) c ] b [ ( a g ) a ] b [( e32 d c16 ) b ] |
		a16 [ ( g f g32 a ) ] d,16 [ c' b a ] gis ( [ fis e fis ] gis [ a b c ] ) |
		d16 ( [ e f e ] d [ c b a ] ) gis' ( [ a b a ] gis [ fis e d ] ) |
		c16 [ ( d32 e f16 ) a ] b, [ ( c32 d e16 ) g ] a, [ ( b32 c d16 ) f ] g, [ ( a32 b c16 ) e ] |
		f,16 [ ( g32 a b16 ) d ] e, [ ( fis32 gis a16 ) c ] d, [ ( cis d f ) ] bes [ ( c d bes ) ] |
		f16 [ ( e f ) bes ] d [ e f d ] bes [ ( a bes ) d ] f [ ( g32 a bes16 )  a16 ] |
		gis16 [ b32 ( a gis16 ) f32 ( e ] d16 ) [ f32 ( e d16 ) b32 ( a ] gis16 )[ b ( e ) gis ] b [ e, d' ( c32 b ) ] |
		c16 [ ( b32 a gis16 ) a ]
		\times 2/3 { c,16 [ ( d e ) ] }
		\times 2/3 { d16 [ ( c b ) ] }
		a8. [ b16 ] cis [ d e g, ] |
		f16 [ ( d f a ]  d [ f gis ) d, ] <e cis' a'>4. r16 s16 \break |
	}
    \repeat volta 2 {
    	\partial 16
    	e'16 |
		e8. [ f16 ] e [ d cis b ] a [ ( g32 a bes16 ) a ] g [ f e f ] |
		g16 [ ( f ) e ( d ) ] f' [ a, bes d, ] c [ g' ( bes es ) ] a, [ c f es ] |
		d16 [ a ( bes d ) ] es, [ g a b ] c [ d es c ]
		\times 2/3 { a'16 [ ( g fis ) ] }
		\times 2/3 { g16 [ ( fis e ) ] } |
		fis16 [ ( c32 d es16 ) d ] c [ ( bes32 a d16 ) c ] bes [ ( c32 d es16 ) g ] a, [ ( bes32 c d16 ) f ] |
		g,16 [ ( a32 bes c16 ) es ] f, [ ( g32 a bes16 ) d ] es, [ g'32 ( f es16 ) c32 ( bes ] a16 ) [ c32 ( bes a16 ) fis32 ( e ] |
		d16 ) [ fis ( a c ) ]
		\times 2/3 { es16 [ ( d c ) ] }
		\times 2/3 { fis16 [ ( e d ) ] }
		bes'16 [ ( a32 g fis16 ) g ]
		\times 2/3 { bes,16 [ ( c d ) ] }
		\times 2/3 { c16 [ ( bes a ) ] } |
		g8. [ a16 ] bes [ c d f, ] e [ c e g ] bes [ ( e32 f g16 ) bes, ] |
		a16 [ f a c ] f [ a, g f ] c [ g' c d ] e [ bes a g ] |
		f16 [ d f a ] d [ f, e d ] a [ e' a bes ] c [ g f es ] |
		d16 [ bes d f ] bes [ a g f ] e' [ ( f32 g f16 ) e ] d [ ( c bes ) g' ] |
		a,32 [ ( g f e f16 ) bes, ] c [ e g a ] bes [ ( a ) g ( f ) ] a' [ e f d ] |
		b16 [ ( d f ) a ] g [ e cis g' ] d, [ ( a' cis ) g' ] f [ cis d bes ] |
		g16 [ (bes d ) f ] es [ c a es' ] bes, [ ( f' a ) es' ] d [ a bes g ] |
		e16 [ ( g bes ) d ] c [ a fis c' ] bes [ a g f ] es [ d es g ] |
		bes16 [ ( a bes ) es ] g [ ( fis g ) bes ] cis, [ ( a32 b cis16 ) e ] g, [ bes32 ( a g16 ) f32 ( e ] |
		f16) [ a32 ( g f16 ) e32 (d ] a16 ) [ e' d' cis ] d4. r16 s16 |
    }
}
melodyTwo=  \relative d' {
	\voiceTwo
	\repeat volta 2 {
		s16 |
		d8. s16 s2.|
		s1  |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s2 a4. s8 |
	}
    \repeat volta 2 {
		s16 |
		e''8. s16 s2. |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s1 |
		s2 d,4. s8 |
    }
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
        { \clef treble \key d \minor \time 4/4  \melody  }
    >>
	\layout { }
 	 \midi { }
}
