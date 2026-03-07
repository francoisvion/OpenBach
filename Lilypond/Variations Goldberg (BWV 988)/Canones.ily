\version "2.13.18"
mystaffsize = #18
%default settings page,font,layout
\include "./_common/myLayout.ily"
\include "./_common/myFont.ily"
\include "./_common/common.ily"
\bookpart {
	
\header {
	title="Verschiedene Canones"
	subtitle="über die ersteren acht Fundamental-Noten vorheriger Arie."
	composer="J.S.Bach"
}

%\markup {\override #'(baseline-skip . 3.5) \column { 
%	\fill-line { "" \abs-fontsize #18 "Verschiedene Canones" ""}
%	\fill-line { "" \huge "über die ersteren acht Fundamental-Noten vorheriger Arie." "von J.S.Bach"}
%	\hspace #1
%}}

\markup \large "1. Canon simplex"
\score {
\relative c' { 
	\key g \major
	\clef bass
	\time 2/4
	r4 \repeat volta 2  { g fis e d h c d g, }
	r4
	\override Staff.BarLine.stencil = ##f 
	% gespiegelt
	s4
	\override TextScript.extra-offset = #'(-3 . 5.25)
	s2-\markup{\epsfile #X #7.3 #"mbass.eps"}}
}

\markup \large "2. all' roverscio"
\score {
\relative c { 
	\key g \major
	\clef tenor
	\time 2/4
	r4 \repeat volta 2  { d e fis g h a g d' }
	r4
	\override Staff.BarLine.stencil = ##f 
	s4
	\override TextScript.extra-offset = #'(-3 . 5.5)
	s2-\markup{\epsfile #X #7.3 #"mtenor.eps"}}
}

\markup \large "3. Beede vorigen Canones zugleich, "
\markup \large "motu recto e contrario"
\score {
\relative c' { 
	\key g \major
	\clef baritone
	\once\override Score.TimeSignature.stencil = ##f 
	\skip 16
	\once\override Staff.BarLine.stencil = ##f 
	\once \override Staff.Clef.full-size-change = ##t
	\clef bass
	\key g \major
	\time 2/4
	r4 \repeat volta 2  { g fis e d h^\markup{\teeny \musicglyph #"scripts.segno" } c d g, }}
}

\markup \large "4. motu contrario e recto"
\score {
\relative c { 
	\key g \major
	\clef alto
	\once\override Score.TimeSignature.stencil = ##f 
	\skip 16
	\once\override Staff.BarLine.stencil = ##f 
	\once \override Staff.Clef.full-size-change = ##t
	\clef tenor
	\key g \major
	\time 2/4
	r4 \repeat volta 2  { d e fis g h^\markup{\teeny \musicglyph #"scripts.segno" } a g d' }}
}

\markup \large "5. Canon duplex à 4"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c' { 
	\key g \major
%	\clef alto
	\clef treble
	\time 2/4
	r8 g'16 fis g a h c 
	\repeat volta 2  { 
	d16 a fis d e fis g a
	h8 fis ^\markup{\teeny \musicglyph #"scripts.segno" } g4~
	g16 a32 h c16 h a g h a 
	g16 a g fis g a h c }}

\relative c' { 
	\key g \major
	\clef bass
	\time 2/4
	r4 g
	\repeat volta 2  { 
	fis4 e d h^\markup{\teeny \musicglyph #"scripts.segno" } c4 d g, g'}}
>>
\layout {system-count = #'1 }
}

\markup \large "6. Canon simplex über besagtes Fundament à 3"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c' {
	\key g \major
%	\clef alto
	\clef treble
	\time 2/4
	r16 e d c 
	\repeat volta 2  { 
	h8 b a[ d cis c]
	h4^\markup{\teeny \musicglyph #"scripts.segno" } r16 d e f
	e16 c a8~a16 h32 c h16 a 
	g16 e'd c }}

\relative c' { 
	\key g \major
	\clef bass
	\time 2/4
	r4
	\repeat volta 2  { 
	g4 fis e d h c d g, }}
>>
\layout {system-count = #'1 }
}

\markup \large "7. Idem à 3"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c' { 
	\key g \major
%	\clef alto
	\clef treble
	\time 2/4
	r16 d e fis g^\markup{\teeny \musicglyph #"scripts.segno" }  h a g 
	\repeat volta 2  { 
	d'4~d16 e f cis 
	d4~d16 h, c d 
	e16 g fis e h'8 a 
	g16 d e fis g h a g }}

\relative c' { 
	\key g \major
	\clef bass
	\time 2/4
	r4 g 
	\repeat volta 2  { 
	fis4 e d h c d g, g'}}
>>
\layout {system-count = #'1 }
}

\markup \large "8. Canon simplex à 3, il soggetto in Alto"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c' {
	\key g \major
%	\clef alto
	\clef treble
	\time 2/4
	r4 g' 
	\repeat volta 2  { 
	fis4 e d h c d g, g'}}

\relative c' { 
	\key g \major
	\clef bass
	\time 2/4
	r8 e16[ d c8 b] 
	\repeat volta 2  { 
	a8[ fis g a] d,4^\markup{\teeny \musicglyph #"scripts.segno" } r8 e
	a,8[ a' g f] 
	e8[ e'16 d c8 b] }}
>>
}

\pageBreak 

\markup \large "9. Canon in unisono post semifusam à 3"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c' {
	\key g \major
%	\clef soprano
	\clef treble
	\time 2/4
	g'16 h^\markup{\teeny \musicglyph #"scripts.segno" } d g d h g d' 
	\repeat volta 2  { 
	d,16 fis a cis, e g cis r d a fis d g h d g, e'c a c fis, a d32 c h a g16 h d g d h g d' }}

\relative c' { 
	\key g \major
	\clef bass
	\time 2/4
	r4 g 
	\repeat volta 2  { 
	fis4 e d h c d g, g'}}
>>
\layout {system-count = #'1 }
}

\markup \large "10. Alio modo, per syncopationes et per ligaturas à 2"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c' { 
	\key g \major
%	\clef alto
	\clef treble
	\time 2/4
	r4 r8 h'~ 
	\repeat volta 2  { 
	h8 a4 g8~g16 fis g a h d c h a g fis e d c h a g a h8 r8 h'\laissezVibrer }}

\relative c' { 
	\key g \major
	\clef bass
	\time 2/4
	r4 g 
	\repeat volta 2  { 
	fis4 e d h c d g, g'}}
>>
}

\markup \large "Evolutio"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c' {
	\key g \major
%	\clef soprano
	\clef treble
	\time 2/4
	r4 d
	\repeat volta 2  { e4 fis g h a g d' d, }}

\relative c { 
	\key g \major
	\clef bass
	\time 2/4
	r4 r8 g~ 
	\repeat volta 2  { 
	g8 a4 h8~h16 c h a g e fis g a h c d e fis g a h a g8 r g,\laissezVibrer }}
>>
}

\markup \large "11. Canon duplex übers Fundament à 5"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f }
<<
\relative c' { 
	\key g \major
	\clef treble
	\time 2/4
	r4 r8 h'
	\repeat volta 2  { 
	ais8[ a gis g] fis16 g fis e d8 r^\markup{\teeny \musicglyph #"scripts.segno" }
	r8 g d'16 c h a g4 r8 h}}

\relative c' {
	\key g \major
%	\clef alto
	\clef bass
%	\time 2/4
	r4 r8 h 
	\repeat volta 2  { 
	cis8[ dis e h16 cis] d8 a h16 c h^\markup{\teeny \musicglyph #"scripts.segno" } a 
	g4 r8 d8~d16 d'8 c16 h a h8 }}

\relative c' { 
	\key g \major
	\clef bass
%	\time 2/4
	r4 g 
	\repeat volta 2  { 
	fis4 e d h c d g, g'}}
>>
\layout {system-count = #'1 }
}

\markup \large "12. Canon duplex über besagte Fundamental-Noten à 5"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c'' { 
	\key g \major
%	\clef soprano
	\clef treble
	\time 4/4
	r16 g' fis e d^\markup{\teeny \musicglyph #"scripts.segno" } h c d g, d h8~h8. cis16
	\repeat volta 2  { 
	d16 e fis g a8 d, r16 fis e d e8 cis' 
	r16 g' fis e d8 d, r16 h' c d f,8 f'
	r16 e d c c a' c,8 r16 a c fis g8 a
	h16 g fis e d h c d g, d h8~h8. cis16}}

\relative c' {
	\key g \major
%	\clef alto
	\clef treble
%	\time 4/4
	r2 r8 g' fis e 
	\repeat volta 2  { 
	d8 h^\markup{\teeny \musicglyph #"scripts.segno" } cis d g, g' cis,4 
	d4 r r8 h c d e g fis e d4. c8 a4 r r8 g' fis e }}

\relative c' { 
	\key g \major
	\clef bass
%	\time 4/4
	r2 g 
	\repeat volta 2  { 
	fis2 e d h c d g, g'}}
>>
\layout {system-count = #'2 }
}

\pageBreak 

\markup \large "13. Canon triplex à 6"
\score {
\new PianoStaff \with {\override BarLine.allow-span-bar = ##f}
<<
\relative c' { 
	\key g \major
%	\clef alto
	\clef treble
	\time 2/2
	r4 d2 e4 
	\repeat volta 2  { 
	fis4 g^\markup{\teeny \musicglyph #"scripts.segno" } r8 e d c  h c d2 e4}}

\relative c' {
	\key g \major
%	\clef tenor
	\clef bass
	g2 a4 c
	\repeat volta 2  { 
	h2^\markup{\teeny \musicglyph #"scripts.segno" } a g a4 c }}

\relative c' { 
	\key g \major
	\clef bass
	r4 g fis e 
	\repeat volta 2  { 
	d4 h^\markup{\teeny \musicglyph #"scripts.segno" } c d g, g' fis e}}
>>
}

\markup \large "14. Canon à 4 per Augmentationem et Diminutionem"
\score {
\relative c' { \override Staff.BarLine.allow-span-bar = ##f
	\key g \major
%	\clef soprano
	\clef treble
	\time 4/4
	r16 d e fis 
	\repeat volta 2  { 
	g16 h a g d'8 d, r16 a h cis
	d16 fis e d a' g fis d' r16 e32 fis g16 g,~g a32 h e,16 fis32 g
	fis16 g' fis e d h c d g, fis g a h d c h
	e16 f e d c a h c fis, cis d e fis a g fis
	h16 d, e fis
	}}
}
\markup \fill-line {"" \huge "Et c:"}


\paper{
%spacing issues
	%ragged-last-bottom = ##f
	%ragged-bottom = ##t
	%page-count = #8
	%ragged-last = ##t
	systems-per-page = ##f
	indent = #0
	%print-all-headers = ##f
}
}
