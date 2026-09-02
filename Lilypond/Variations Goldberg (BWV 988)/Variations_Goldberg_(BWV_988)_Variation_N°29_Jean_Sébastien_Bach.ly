\version "2.24.4"
\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #6
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "Variations Goldberg"
  subtitle = "Air avec 30 variations"
  piece = "Variation N°29, à 1 ou bien 2 clavier·s"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 988"
  tagline = ##f
}
hideTupletNum = \temporary \override TupletNumber.transparent = ##t
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
sopranoOne = \relative a'' {
	\repeat volta 2 {
		\stemUp
 		r8 r16 g,16 r16 g16 r16 g16 r16 g16 r16 g16 |
		r8 r16 d'16 r16 d16 r16 d16 r16 d16 r16 d16 |
		r8 r16 g16 r16 g16 r16 g16 r16 g16 r16 g16 |
		fis16 s16 s8 s2 |
		g8 s16 g16 r16 g16 r16 g16 r16 g16 r16 f16 |
		s8 s16 e16 r16 e16 r16 e16 r16 e16 r16 e16 |
		s8 s16 d16 r16 d16 r16 d16 r16 d16 r16 c16 |
		b16 b16\rest b8\rest \stemNeutral \hideTupletBracket
		\tuplet 3/2 { b16\rest a16 [ b ] } \hideTupletNum
		\tuplet 3/2 { c16^[ b a ] }
		\tuplet 3/2 { b16 [ a g ] }
		\tuplet 3/2 { e'16 [ d c ] } \undo \hideTupletNum |
		\tuplet 3/2 { d16 b16\rest g16 } \hideTupletNum
		\tuplet 3/2 { fis16 [ c16 ] b'16\rest } \undo \hideTupletNum
		\tuplet 3/2 { b16\rest b16\rest g16 } \hideTupletNum
		\tuplet 3/2 { a16 [ fis16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest b16 }
		\tuplet 3/2 { cis16  [a16 ] b16\rest } |
		\tuplet 3/2 { b16\rest b16\rest d16 }
		\tuplet 3/2 { cis16 [ g16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest d16 }
		\tuplet 3/2 { e16 [ cis!16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest fis'16 }
		\tuplet 3/2 { d16 [ b16 ] b16\rest } |
		\oneVoice
		\tuplet 3/2 { r16 r16 c!16 }
		\tuplet 3/2 { b16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ e16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ cis16 ] r16 } |
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ cis16 ] r16 }
		\clef "bass"
		\tuplet 3/2 { r16 r16 d16 }
		\tuplet 3/2 { cis16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 b16 }
		\tuplet 3/2 { a16 [ fis16 ] r16 } |
		\tuplet 3/2 { r16 r16 b16 }
		\tuplet 3/2 { a16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ b16 ] r16 } |
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { fis16 [ e16 ] r16 } |
		\tuplet 3/2 { r16 g'16 [ a16 ] }
		\tuplet 3/2 { e'16 [ a,16 g16 ] }
		\tuplet 3/2 { r16 fis16 [ a16 ] }
		\tuplet 3/2 { d16 [ a16 fis16 ] }
		\tuplet 3/2 { r16 e16 [ g16 ] }
		\tuplet 3/2 { cis16 [ g16 e16 ] } |
		\voiceOne
		r8 r16 d'16 r16 d16 r16 d16 r4 |
		\clef "treble"
	}
  	\repeat volta 2 {
  	    \oneVoice
		\tuplet 3/2 { r16 r16 b''16  }
		\tuplet 3/2 { a16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 g16  }
		\tuplet 3/2 { fis16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 e16  }
		\tuplet 3/2 { d16 [ b16 ] r16 } |
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ e16 ] r16 } |
		\tuplet 3/2 { r16 r16 f16 }
		\tuplet 3/2 { e16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 \clef "bass" d16 }
		\tuplet 3/2 { c16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 b16  }
		\tuplet 3/2 { a16 [ fis16 ] r16 } |
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ dis16 ] r16 }
		\tuplet 3/2 { r16 r16 e16  }
		\tuplet 3/2 { dis16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 c!16 }
		\tuplet 3/2 { b16 [ g16 ] r16 } \clef "treble" |
		\voiceOne
		r8 r16 e'''16 r16 e16 r16 e16 r16 e16 r16 e16 |
		r8 r16 e16 r16 e16 r16 e16 r16 e16 r16 e16 |
		\oneVoice \undo \hideTupletNum \tupletUp
		\tuplet 3/2 { r16 fis16 [ g16 ] } \hideTupletNum
		\tuplet 3/2 { a16 [b16 c16 ~ ] }
		\tuplet 3/2 { c16 [ b16 a16] }
		\tuplet 3/2 { g16 [ fis16 e16 ] }
		\tuplet 3/2 { dis16 [ c16 b16 ] }
		\tuplet 3/2 { a16 [g16 fis16 ] } |
		\voiceOne
		e16 [ e'16 ] r16 e16 r16 c16 r16 c16 r16 g16 r16 g16 \clef "bass" |
		\oneVoice \undo \hideTupletNum \tupletUp
		\tuplet 3/2 { r16 e,16 [ f16 ] }
		\tuplet 3/2 { fis16 [ g16 gis16 ] } \hideTupletNum
		\tuplet 3/2 { r16 b16 [ c16 ] }
		\tuplet 3/2 { d16 c16 b16 ] } \clef "treble"
		\tuplet 3/2 { c16 [ d16 e16 ]  }
		\tuplet 3/2 { fis16[  g16 a16 ] } \clef "bass" |
		\tuplet 3/2 { r16 d,,16 [ es16 ] }
		\tuplet 3/2 { e16 [ f16 fis16 ] }
		\tuplet 3/2 { r16 a16 [ b16 ] }
		\tuplet 3/2 { c16 [ b16 a16 ] }
		\clef "treble"
		\tuplet 3/2 { b16 [ c16 d16 ] }
		\tuplet 3/2 { e16 [ fis16 g16 ] } |
		\tuplet 3/2 { c,16 r16 f16 }
		\tuplet 3/2 { e16 [c16 ] r16 }
		\tuplet 3/2 { r16 r16 \clef "bass" d16  }
		\tuplet 3/2 { c16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 b16 }
		\tuplet 3/2 { a16 [ fis!16 ] r16 } \clef "treble" |
		\tuplet 3/2 { r16 r16 b'16 }
		\tuplet 3/2 { a16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ b16 ] r16 } |
		\tuplet 3/2 { r16 r16 e'16 }
		\tuplet 3/2 { d16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ e16 ] r16 } |
		\tuplet 3/2 { r16 r16 a'16 }
		\tuplet 3/2 { g16 [ e16 ] r16 }
		\tuplet 3/2 { r16 r16 f16 }
		\tuplet 3/2 { e16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 }
		\tuplet 3/2 { c16 [ a16 ] r16 } |
		\tuplet 3/2 { r16 a16 [ b16 ] }
		\tuplet 3/2 { c16 [ d16 e16 ~] }
		\tuplet 3/2 { e16 [ d16 c16 ] }
		\tuplet 3/2 { b16 [ a16 g16 ~] }
		\tuplet 3/2 { g16 [ fis16 g16 ] }
		\tuplet 3/2 { a16 [ b16 c16 ] }|
		\grace c8 b \voiceOne r16 g'16 r16 g16 r16 g16 r4
 }
}
sopranoTwo = \relative c'' {
  \hideTupletBracket
	\repeat volta 2 {
		\stemDown
		r8 r16 <b, d>16 r16 <b d>16 r16 <b d>16 r16 <b d>16 r16 <b d>16 |
		r8 r16 <fis' a>16 r16 <fis a>16 r16 <fis a>16 r16 <fis a>16 r16 <fis a>16 |
		r8 r16 <b e>16 r16 <b e>16 r16 <b e>16 r16 <b e>16 r16 <cis e>16 |
		<a d>16 b16\rest b8\rest \tupletUp
		\tuplet 3/2 { b16\rest c'16 [ b ] }
		\tuplet 3/2 { c, [ b' a ]}
		\tuplet 3/2 { b, [ a' g] }
		\tuplet 3/2 { a, [ g' fis ] } |
		<b, d>8 b16\rest <b d>16 r16 <b d>16 r16 <b d>16 r16 <b d>16 r16 <b d>16 |
		b8\rest b16\rest <g c>16 r16 <g c>16 r16 <g c>16 r16 <g c>16 r16 <g c>16 |
		b8\rest b16\rest <fis a>16 r16 <fis a>16 r16 <fis a>16 r16 <fis a>16 r16 <fis a>16 |
		<d g>16 s16 s8 s2 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 \clef "bass" |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		r8 r16 <fis, a>16 r16 <fis a>16 r16 <fis a>16 r4 \clef "treble" |
 }
 \repeat volta 2 {
	 	s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 \clef "treble"  |
		r8 r16 <g' b>16 r16 <g b>16 r16 <g b>16 r16 <g b>16 r16 <g b>16 |
		r8 s16 <g b>16 r16 <g b>16 r16 <g b>16 r16 <g b>16 r16 <g b>16 |
		s1*3/4 |
		s16 <g b>16 r16 <g b>16 r16 <e g>16 r16 <e g>16 r16 <b e>16 r16 <b e>16 |
	 	s1*3/4 |
		s1*3/4 |
		s1*3/4 \clef "treble" |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
	 	s1*3/4 |
		s8 r16 <b' d>16 r16 <b d>16 r16 <b d>16 r4 |
 }
}
soprano = << \sopranoOne \\ \sopranoTwo>>
bassOne = \relative g {
	\repeat volta 2 {
		\stemUp \hideTupletBracket
		g8 [ g,8 ] \clef "treble" fis''16 r16 fis16 r16 fis16 r16 fis16 r16 \clef "bass" |
		fis,8 [ fis,8 ] \clef "treble" cis'''16 r16 cis16 r16 cis16 r16 cis16 r16 \clef "bass" |
		e,,8 [ e,8 ] \clef "treble" fis'''16 r16 e16 r16 fis16 r16 e16 r16 \clef "bass" |
		\stemDown
		d,,16\rest d'16 [ a16 fis16 ] d16. [ d'32 e,16. c'32 ] d,16. [ b'32 c,16. a'32 ]
		\stemUp |
		b,8_[b'8] \clef "treble" fis''16  r16 fis16  r16 fis16 r16 d16 r16 \clef "bass" |
		c,,8_[c'8] \clef "treble" d'16 r16 d16 r16 d16 r16 c16 r16 \clef "bass" |
		d,,8_[ d'8 ] \clef "treble" cis'16 r16 cis16 r16 cis16 r16 a16 r16 \clef "bass" |
		\stemDown
		d,,16\rest g16 [ d16 b16 ] g16. [ g'32 fis16. d'32 ] g,16. [ e'32 a,16. fis'32 ]
		\stemNeutral |
		\tuplet 3/2 { b,16 [ d16 ] d,16\rest } \hideTupletNum
		\tuplet 3/2 { d16\rest d16\rest a'16 } \undo \hideTupletNum
		\tuplet 3/2 { b16 [ d16 ] d,16\rest } \hideTupletNum
		\tuplet 3/2 { d16\rest d16\rest  \clef "treble" c'16 }
		\tuplet 3/2 { d16 [ g16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest e,16 } |
		\tuplet 3/2 { fis16 [ a ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest e,16 }
		\tuplet 3/2 { fis16 [ a16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest g16 }
		\tuplet 3/2 { a16 [ d16 ] b16\rest }
		\tuplet 3/2 { b16\rest b16\rest a16 } |
		\oneVoice
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 }
		\tuplet 3/2 { cis16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 \clef "bass" b16 } |
		\tuplet 3/2 { a16 [ cis16 ] r16 }
		\tuplet 3/2 { r16 r16 b16  }
		\tuplet 3/2 { a16 [ cis16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 } |
		\tuplet 3/2 { d16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 }
		\tuplet 3/2 { d16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 } |
		\tuplet 3/2 { fis16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 } |
		cis8 [ cis'8 ] d8 [ fis,8 ] g8 [ a8 ] |
		\voiceThree
		d,8 [ d'8 ] cis'16  r16 cis16 r16 d,,4 |
 }
 	\repeat volta 2 {
		\clef "treble"
		\oneVoice
		\tuplet 3/2 { d'''16 [ fis16] r16 }
		\tuplet 3/2 { r16 r16 e16  }
		\tuplet 3/2 { d16 [ fis16]  r16 }
		\tuplet 3/2 { r16 r16 c16  }
		\tuplet 3/2 { b16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 a16  } |
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16 }
		\tuplet 3/2 { e16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 } |
		\tuplet 3/2 { c16 [ e16 ] r16 }
		\clef "bass"
		\tuplet 3/2 { r16 r16 b16  }
		\tuplet 3/2 { a16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 } |
		\tuplet 3/2 { dis16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 cis16 }
		\tuplet 3/2 { b16 [ dis16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 fis16  } |
		\voiceThree
		e8 [ e'8 ] \clef "treble" dis''16 r16 dis16 r16 g,16 r16 dis'16 r16 \clef "bass" |
		c,,8_[ c'8 ] \clef "treble" dis'16 r16 dis16 r16 b16 r16 dis16 r16 \clef "bass" |
		\oneVoice a,8 [ dis,8 e8 a8 b8 b,8 ] |
		\voiceThree
		s8 \clef "treble" dis''16 r16 b16 r16 b16  r16 fis16 r16 fis16 r16 \clef "bass" |
		\oneVoice c,8 [ b'8 a8 gis8 a8 c,8 ] |
		b8 [ a'8 g8 fis8 g8 b,8 ] |
		\tuplet 3/2 { a16 [ a'16 ] r16 }
		\tuplet 3/2 { r16 r16 b16  }
		\tuplet 3/2 { a16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 g16 }
		\tuplet 3/2 { fis16 [ a16 ] r16 }
		\tuplet 3/2 { r16 r16 e16 } |
		\tuplet 3/2 { d16 [ d'16 ] r16 }
		\tuplet 3/2 { r16 r16 e16  }
		\tuplet 3/2 { d16 [ fis16 ] r16 }
		\tuplet 3/2 { r16 r16 c16 }
		\tuplet 3/2 { b16 [ d16 ] r16 }
		\tuplet 3/2 { r16 r16 a16 } |
		\tuplet 3/2 { g16 [ g'16 ] r16 } \clef "treble"
		\tuplet 3/2 { r16 r16 a16 }
		\tuplet 3/2 { g16 [ b16 ] r16 }
		\tuplet 3/2 { r16 r16 f16 }
		\tuplet 3/2 { e16 [ g16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 } |
		\tuplet 3/2 { c16 [ c'16 ] r16 }
		\tuplet 3/2 { r16 r16 d16 }
		\tuplet 3/2 { c16 [ e16 ] r16 }
		\tuplet 3/2 { r16 r16 b16 }
		\tuplet 3/2 { a16 [ c16 ] r16 }
		\tuplet 3/2 { r16 r16 g16  } |
		fis8 [ \clef "bass" a,8 b8 c8 ] d8 [ d,8 ] |
		g8_[ g,8 ] \clef "treble" \voiceThree fis'''16 r16 fis16 r16 \clef "bass" s4 \clef "treble" |
 }
}
bassTwo = \relative a {
	\repeat volta 2 {
		\stemDown
		s4 \clef "treble"
		<a c>16 r16 <a c>16  r16 <a c>16  r16 <a c>16 r16
		\clef "bass" |
		s4 \clef "treble"
		<e' g>16 r16 <e g>16  r16 <e g>16  r16 <e g>16 r16
		\clef "bass" |
		s4 \clef "treble"
		<a d>16 r16 <g cis>16  r16 <a d>16  r16 <g cis>16 r16
		\clef "bass" |
		s1*3/4 |
		s4 \clef "treble"
		<a c>16 r16 <a c>16  r16 <a c>16  r16 <g b>16 r16
		\clef "bass" |
		s4 \clef "treble"
		<f b>16 r16 <f b>16  r16 <f b>16  r16 <e a>16 r16
		\clef "bass" |
		s4 \clef "treble"
		<e g>16 r16 <e g>16  r16 <e g>16  r16 <d fis>16 r16
		\clef "bass" |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s4 <e, g>16  r16 <e g>16  r16 s4 |
 }
 	\repeat volta 2 {
	 	s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s4 \clef "treble"
		<fis' a>16 r16 <fis a>16 r16 g,16 r16 <fis' a>16 r16 \clef "bass" |
		s4 \clef "treble"
		<fis a>16 r16 <fis a>16 r16 b,16 r16 <fis' a>16 r16 \clef "bass" |
		s1*3/4 |
		e,8\noBeam \clef "treble"
		<fis' a>16 r16 <dis fis>16 r16 <dis fis>16 r16 <a dis>16 r16 <a dis>16 r16 \clef "bass" |
	 	s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
		s1*3/4 |
	 	s1*3/4 |
		s4  \clef "treble"
		<a' c>16 r16 <a c>16 r16
		\clef "bass"  g,4
		\clef "treble" |
 }
}
bass = << \bassOne \\ \bassTwo>>
\score {
 \context PianoStaff <<
 \set PianoStaff.midiInstrument = "harpsichord"
 \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano }
 \new Staff = "lower" { \clef bass \key g \major \time 3/4 \bass }
 >>
 \layout{ }
 \midi { \tempo 4 = 84 }
}
