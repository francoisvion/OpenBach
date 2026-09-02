\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "2. Allemande"
  subtitle = "Suite pour Violoncelle N°6"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 1012"
  tagline = ##f
}
melodyOne =  \relative f' {
	\repeat volta 2 {
		\partial 16 fis16 |
		fis4 ~ fis32 [e (g fis e d e64 cis d32)] d8 [( cis16. \trill d64 e) ] d32 [(cis b a b64 cis b cis cis32 b64 cis) ] |
		d8. [a'16] ~ a32 [ (g fis e d64 cis d e fis e g fis )] g16 ~ [(g64 fis64 e fis g32 fis g b) ] g8. \trill [ (fis32 g )] |
		fis8 \trill [( e16 fis32 d) ] d'8. [ d16 ] gis,,32 [ (e' b' d cis b ais64 b d cis)] cis8 [ais,16. e'32] |
		b16 [e32 (g fis e d e64 cis)] d16. [b64 ( cis d32 e fis a64 gis)] fis,16. [gis32 ( a b cis a)] dis,16. \trill [ a''32 (b a gis a)] |
		a16 [ gis fis e ] e8. [ e16] e16 [ ( fis32 gis a gis  a fis)] d16. \trill [ cis 32 ( b d fis a)] |
		gis 32 [( a b a gis fis e fis 64 d )] cis16. \trill [( b32 a gis a cis)] fis16. [( e32 d cis d fis)] b32 [(gis a fis e cis d b)] |
		a32 [( fis gis b e16.) d,32] cis16. [ e'32 ( d cis b a)] d,32 [ fis' ( e d cis gis a d)] b8. [a16] |
		a16. [( b32 cis d e g)] fis32 [( e d cis d b a' gis)] a16. [( e32 cis16 b32 a)] a,8. s16   \clef bass |
	}
		\repeat volta 2 {
		\partial 16 e''16 |
		e8 ~ [ e32 g (fis e] d [ cis b cis d cis b cis64 a)] a'8. [ g32 ( fis] e32 [ d cis b a g fis g)]  |
		a16. \trill [ b64 (cis d32 b g fis)] e16 [ g'32 (fis g e cis a)] d,16 [ a'32 (b cis d e fis64 g)] fis16. [ d,64 ( e fis32 d e fis)] |
		c,8. [ a''16] b32 [( a b c b c c b64 c)] b,8. [b16] c32 [( b c d c64 d d32. c64 d e)] |
		a8 [ gis16. \clef alto fis'32] ( fis32 [ eis gis fis a gis b d,)] eis,16. [ cis'32 ( b' a b gis)] a16. [ gis32 ( fis e d e64 cis)] \clef bass |
		d16. [ cis32 ( b a g a64 fis)] g16 [g64 d64 ( e fis g32 a b cis64 d )] d16 [ eis,8 \trill fis32 [(gis)] cis,32 [( b16 d32 cis16 d32 b)] |
		\clef alto a'32 [ fis' (gis a) b, (a' gis b)] fis8 [ eis16. fis32] fis16. [(cis32 fis gis a gis)] a32 [( b c a dis, e dis e)] |
		dis16 ~ \trill [dis64 a64 (b c) c16 ~ c64 a64 ( b c)] c16 [ b32 a' g32. fis128 g a32 fis] g8. [ a32 ( b)] a32 [( g fis e d cis e d)] |
		\clef bass d,16 [b32 (cis d e fis d)] gis32 [( b e, fis g a b cis)] d32 [( cis b cis d b cis a)] \clef alto a'16. [g,32 ( a g fis g)] |
		fis16. [ a'32 ( g fis e d)] c32 [ ( b c a') c, (b c a)] dis,32 [(fis b dis fis a g fis)] g16 [ e,32 (fis g a b d)] |
		cis32 [( e a, cis e g fis e )] fis16 [ d,32 ( e fis g a c,)] g16. [ fis''32 (b a g fis)] e32 [(cis d b a fis g e)] \clef bass  |
		d32 [( b cis e a cis e gis)] a16 [ fis,,32 (a' g fis e d)] g,32 [(b' a g fis cis d g)]e8. [d16] |
		d16. [ e32 (fis g a c )] b32 [( a g fis g e d' cis)] d16. [ a32 fis16 \trill e32 d ] d,8. s16 |
		}
}
melodyTwo = \relative a, {
	\repeat volta 2 {
		\partial 16 s16 |
		<d a'>4 s4 e4 s4 |
		fis8. s16 b8 r8 <e, b'>8. s16 a4 |
		<d, a'>8 s8 fis'8. [ fis16 ] s2 |
		s2 \stemUp <cis a'>16 \stemDown s16 s8 s4 |
		<e, a>8 s8 cis'8. [cis16] <fis, cis'>16 s16 s8 s4 |
		<e d'>16 s8. s4 <d cis'>16 s8. s4 |
		s2. e4 |
		a16. s32 s8 s2. \clef bass  |
	}
	\repeat volta 2 {
		\partial 16 \clef bass s16 |
		<a, e' cis'>8 s4. <g e' cis'>8. s16 s4 |
		s1 |
		s2 \stemUp <g' d'>8. \stemDown s16 s4 |
		\clef alto s2. <fis cis'>16. s32 s8 \clef bass |
		<b, fis'>16. s32 s8 s2. \clef alto  |
		s4 cis'8 s8 s2 |
		<b, fis'>8. s16 s4 <e b'>8. s16 s4 |
		s1 |
		s1 |
		s1 |
		s2. a,4 |
		s1 |
	}
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Violoncelle"
		\set Staff.midiInstrument = "cello"
        { \clef alto \key d \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
