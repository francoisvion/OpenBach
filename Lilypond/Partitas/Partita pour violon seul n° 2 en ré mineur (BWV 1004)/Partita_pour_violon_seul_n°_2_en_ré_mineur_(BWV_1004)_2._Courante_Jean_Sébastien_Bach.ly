\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "2. Courante"
  subtitle = "Partita pour violon seul n° 2 en ré mineur"
  subsubtitle = "6 sonates pour violon"
  opus = "BWV 1004"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
melody =  \relative f' {
	\repeat volta 2 {
		\partial 16 a16
		\stemUp
		<< {<f a>4
		\times 2/3 { cis8 [ ( bes' a ) ] }
		\times 2/3 { g8 [ ( f e ) ] } } \\
		{ \stemDown d4 s2 \stemUp }
		>> |
		<< { f4
		\times 2/3 { a,8 [ ( g' f ) ] }
		\times 2/3 { e8 [ ( d cis ) ] } } \\
		{ \stemDown d4 s2 \stemUp }
		>>|
		d8. [ bes16 ] g8. [ f'16 ] e8. [ d16 ] |
		cis8. [ a16 ] cis8. [ e16 ] a8. [ g16 ] |
		\times 2/3 { f8 [ ( d e ] }
		\times 2/3 { f8 [ g a ] }
		\times 2/3 { bes8 [ c d ) ] } |
		c8. [ a16 ] f8. [ c16 ] a8. [ es'16 ] |
		\times 2/3 { d8 [ ( bes c ] }
		\times 2/3 { d8 [ e f ] }
		\times 2/3 { g8 [ a bes ) ] } |
		\times 2/3 { a8 [ ( f g ] }
		\stemDown
		\times 2/3 { a8 [ bes c ] }
		\times 2/3 { d8 [ es c ) ] } |
		\times 2/3 { d8 [ ( bes c ] }
		\times 2/3 { d8 [ e f ] }
		\times 2/3 { g8 [ a bes ) ] } |
		e,,8. [ c'16 ] g'8. [ bes16 ] a8. [ g16 ] |
		\times 2/3 { a8 [ ( g f ) ] }
		\times 2/3 { e8 [ ( f g ) ] }
		\times 2/3 { c,8 [ ( d e ) ] } |
		\times 2/3 { f8 [ ( c bes ) ] }
		\times 2/3 { a8 [ ( bes c ) ] }
		\stemUp
		\times 2/3 { f,8 [ ( g a ) ] } |
		d,8. [ fis16 ] a8. [ c16 ] bes8. [ a16 ] |
		\times 2/3 { bes8 [ ( d c  ] }
		\times 2/3 { bes8 [ a g ] }
		\times 2/3 { f8 [ e d ) ] } |
		cis8. [ e16 ] a8. [ g'16 ] f8. [ e16 ] |
		\times 2/3 { f8 [ ( a, g ] }
		\times 2/3 { f8 [ e d ] }
		\times 2/3 { c8 [ b a ) ] } |
		\stemDown
		\times 2/3 { gis8 [ ( d'' e ) ] }
		\times 2/3 { f8 [ ( e d ) ] }
		\times 2/3 { c8 [ ( d b ) ] } |
		\times 2/3 { a,8 [ ( c' d ) ] }
		\times 2/3 { e8 [ ( d c ) ] }
		\times 2/3 { b8 [ ( c a ) ] } |
		\stemUp
		\times 2/3 { gis8 [ ( d e ) ] }
		\times 2/3 { f8 [ ( e d ) ] }
		\times 2/3 { c8 [ ( d b ) ] } |
		\times 2/3 { c8 [ ( e a ) ] }
		\stemDown
		\times 2/3 { c8 [ ( e a ) ] }
		\times 2/3 { b8 [ ( gis a ) ] } |
		\times 2/3 { f8 [ ( cis d ) ] }
		\times 2/3 { bes8 [ ( gis a ) ] }
		\stemUp
		\times 2/3 { f8 [ ( cis d ) ] } |
		\times 2/3 { gis,8 [ \stemDown b'' a ] }
		\times 2/3 { gis8 [ ( f e ] }
		\times 2/3 { d8 [ c b ) ] } |
		\times 2/3 { c8 [ ( e d ] }
		\times 2/3 { c8 [ b a ) ] }
		\stemUp
		\times 2/3 { e8 [ ( a gis ) ] } |
		a,2 ~ a8. s16 |
	}
    \repeat volta 2 {
		\partial 16 e''16
		<< { <cis e>4
		\times 2/3 { gis8 [ ( f' e ) ] }
		\times 2/3 { d8 [ ( cis b ) ] } } \\
		{ \stemDown a4 s2  }
		>>|
		\times 2/3 { cis8 [ ( a e ) ] }
		\stemUp
		\times 2/3 { a,8 [ bes' ( a ] }
		\times 2/3 { g8 [ f e ) ] } |
		f8. [ d'16 ] e,8. [ g'16 ] f8. [ e16 ] |
		f8. [ d16 ] a8. [ f16 ] d8. [ f16 ] |
		\stemDown
		\times 2/3 { a,8 [ ( es'' d ) ] }
		\times 2/3 { c8 [ ( bes a ) ] }
		\times 2/3 { g'8 [ ( f es ) ] } |
		d8. [ bes16 ] f8. [ d16 ] bes8. [ d'16 ] |
		\times 2/3 { fis,8 [ c'' ( bes ] }
		\times 2/3 { a8 [ g fis ] }
		\times 2/3 { es8 [ d c ) ] } |
		\times 2/3 { bes8 [ ( g a ] }
		\times 2/3 { bes8 [ c d ) ] }
		\times 2/3 { es8 [ ( d es ) ] } |
		\times 2/3 { a,8 [ ( f g ] }
		\times 2/3 { a8 [ bes c ) ] }
		\times 2/3 { d8 [ ( c d ) ] } |
		es,8. [ d'16 ] g8. [ bes,16 ] c8. [ es16 ] |
		\stemUp
		\times 2/3 { fis,8 [ ( a g ] }
		\times 2/3 { fis8 [ es d ] }
		\times 2/3 { c8 [ bes a ) ] } |
		\times 2/3 { bes8 [ ( d g ) ] }
		\stemDown
		\times 2/3 { bes8 [ ( d g ) ] }
		\times 2/3 { d8 [ ( g fis ) ] } |
		\times 2/3 { g8 [ ( d c ] }
		\stemUp
		\times 2/3 { bes8 [ a g ] }
		\times 2/3 { f8 [ e d ) ] } |
		e8. [ g16 ] \stemDown bes8. [ d16 ] c8. [ bes16 ] |
		\times 2/3 { a8 [ ( f g ] }
		\times 2/3 { a8 [ b cis ] }
		\times 2/3 { d8 [ e f ) ] } |
		\times 2/3 { g8 [ ( a g ] }
		\times 2/3 { f8 [ e d ] }
		\times 2/3 { cis8 [ b a ) ] } |
		\times 2/3 { f'8 [ ( g f ] }
		\times 2/3 { e8 [ d c ] }
		\times 2/3 { b8 [ a g ) ] } |
		\times 2/3 { e'8 [ ( f e ] }
		\times 2/3 { d8 [ c bes ) ] }
		\times 2/3 { a8 [ ( c es ) ] } |
		\times 2/3 { d8 [ ( es d ] }
		\times 2/3 { c8 [ bes a ) ] }
		\times 2/3 { gis8 [ ( d' b' ) ] } |
		<< { cis,4 \trill
		\times 2/3 { a,8 [ a' (  b ] }
		\times 2/3 { cis8 [ d e ) ] } } \\
		{ \stemDown a,4 s2  }
		>> |
		\stemUp
		\times 2/3 { g8 [ ( fis g ) ] }
		\times 2/3 { cis,8 [ ( g' a ] }
		\times 2/3 { bes8 [ a g ) ] } |
		\stemDown
		\times 2/3 { f8 [ ( g a ) ] }
		\times 2/3 { d,8 [ d' ( e  ] }
		\times 2/3 { f8 [ g a ) ] } |
		\times 2/3 { c,8 [ ( b c ) ] }
		\times 2/3 { fis,8 [ ( c' d ] }
		\times 2/3 { es8 [ d c ) ] } |
		\times 2/3 { bes8 [ ( fis g ) ] }
		\times 2/3 { es'8 [ ( cis d ) ] }
		\times 2/3 { bes'8 [ ( fis g ) ] } |
		<< { <g cis>4 ~ \stemDown
		\times 2/3 { cis8 [ ( d cis ) ] }
		\times 2/3 { d8 [ ( c bes ) ] } } \\
		{ \stemDown a,4 s2 \stemUp }
		>> |
		\times 2/3 { a'8 [ ( g f ) ] }
		\times 2/3 { e8 [ ( f d ) ] }
		\times 2/3 { a8 ( [ d cis ) ] } |
		d8. [ bes16 ]
		\stemUp
		gis4 ~
		\times 2/3 { gis8 [ ( a b ) ] } |
		\times 2/3 { cis,8 [ ( e g ) ] }
		bes4 ~
		\times 2/3 { bes8 [ a ( g ) ] } |
		\stemDown
		\times 2/3 { f8 [ ( a cis ) ] }
		\times 2/3 { d8 [ ( f a ) ] }
		\stemUp
		\times 2/3 { a,,8 [ ( d cis ) ] } |
		d2 ~ d8. s16 |
    }
}
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
        { \clef treble \key d \minor \time 3/4 \autoBeamOff \melody  }
    >>
	\layout { }
 	 \midi { }
}
