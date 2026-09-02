\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "4. Sarabande"
  subtitle = "Suite pour Violoncelle N°6"
  composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
  opus = "BWV 1012"
  tagline = ##f
}
melodyOne =    \relative fis' {
	\repeat volta 2 {
		fis2 fis2. g4 |
		e4 (cis) d2. b'4 |
		a4 (fis) g2. a4 |
		g4 (fis) g (e) fis2 |
		fis2 gis2. a4 |
		<d, b'>4 (cis) d2. e4 \clef bass |
		d4 (cis) cis (b) b (d) |
		d4 (cis) cis1|
	}
	   \repeat volta 2 {
		   <cis e>2	<cis e>2. e4 |
		   e4 ( cis) dis a8 [(b )] c4 e,4 \clef alto |
		   fis'4 s2 fis8 [(g)] b4 s4 |
		   a4 (fis) g2. g4 |
		   g4 ( fis) c'2 s2|
		   s2. c4 b2 |
		   d,4 (e) e (fis) fis (g) |
		   g2 g2. b4 |
		   b4 (g) g (e) e (cis) |
		   cis4 (a) a (g) g (a') |
		   a4 (fis) fis (d) d (b) |
		   b4 (g) g (fis) fis (g') |
		   <cis, g'>4 (d) d (cis) cis (b) |
		   <b g'>4 (cis)  cis (b) b <e, a> |
		   a4 (g') g (fis) fis (gis) |
		   gis4 (a) a2. s4 |
		   <d, a'>4 (fis) fis (d) d (cis) |
		   <cis a'>4 s4 cis2. d4 |
		   <d a'>4 (f) f (d) d (cis) |
		   cis4 (d8) [e] e2. d4 |
		   d4 e8 [ ( fis16 g)] g4 (fis) fis (e) |
		   e4 (fis) fis (e) e (d) \clef bass |
		   d2 d cis |
		   cis4 (d) d1 |
	}
      }
melodyTwo =  \relative d {
    \repeat volta 2 {
		d2 s1 |
		g,2 fis'2. s4 |
		a,2 e'2. s4 |
		d2 s1|
		b2 s1|
		gis2 e'2. s4|
		a,2 d e |
		a,2 s1 |
	}
    \repeat volta 2 {
		a2 g2. s4 |
		fis'4 s4 s1 \clef alto |
		dis4 s1 dis4 |
		e2 s1 |
		a2. d4 e g, |
		fis4 e' d s4 g,2 |
		b,2 c d|
		<g, d'>2 b'2. s4 |
		g4 b b s2. |
		s1. |
		fis4 a a s2. |
		s1.|
		e4 fis fis e e d |
		d4 e e d d cis |
		cis4 s4 d2 b4 s4 |
		a4 s1 g'4 |
		a,4 a' a fis fis e |
		a,4 (g') g (e) e (f) |
		a,4 a' a f f e |
		a,4 s4 ais2. s4 |
		b4 r4 r2 d4 r4 |
		<g, g'>4 a' a g g fis \clef bass |
		g,2 a r2 |
		d,2 fis'1 |
	}
}
melodyThree =  \relative a {
    \repeat volta 2 {
		a2 a2. s4 |
		g2 s1 |
		<fis d'>2 cis'2. s4 |
		a2 s1|
		<d, b'>2 d'2. s4 |
		e,2 s1|
		e2 s1 |
		e2 s1 |
	}
   \repeat volta 2 {
	 e2 e2. s4|
	 a4 s4 s1|
	 cis4 (a) b s2. |
	 b2 b2. s4 |
	 s1.|
	 s1 d2 |
	 g,2 g c |
	 c4 (a) s1 |
	 d4 s4 s1 |
	 s1. |
	 d4 s4 s1 |
	 s1. |
	 s1. |
	 s1. |
	 e,4 s4 a2 <d,b'>4 s4 |
	 <e cis'>4 s4 cis'2. cis4 |
	 fis,4 s4 s1 |
	 e4 s4 s1 |
	 f4 s4 s1 |
	 e4 s4 <fis cis'>2. s4 |
	 fis4 s2. cis'4 s4 |
	 b4 s4 s1|
	 fis4 (e) e (g) g (fis) |
	 <a, fis'>2 s1 |
	}
}
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef alto \key d \major \time 3/2 \melody  }
    >>
	\layout { }
 	 \midi { }
}
