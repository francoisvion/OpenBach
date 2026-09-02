\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "5. Gavotte N°1"
  subtitle = "Suite pour Violoncelle N°6"
  composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
  opus = "BWV 1012"
  tagline = ##f
}
melodyOne =  \relative fis' {
	\repeat volta 2 {
		\partial 2  \clef alto fis4 fis|
		fis4 e8 [ d ] e [ fis ] g4 |
		d8 [ (cis b a) ] a'4 a |
		a4 b8 [( a )] g [(fis e fis)] |
		g8 [(fis e d) ] fis4 fis |
		fis4 e8 [ d ] e [ fis ] g4 |
		d8 [(cis b a) ] d4 d |
		d4 cis8 [ d ] cis [ b ] e4 |
		cis2 s2 |
	}
	\repeat volta 2 {
		\partial 2 a'4 a |
		a4 b8 [ a ] g [ fis ] b4 |
		a8 [ (g fis e) ] a, [ g' (fis e) ] |
		g,8 [ dis' (e g) ] a, [ (fis') b, (dis) ] |
		e,8 [ b' (e fis) ] g4 g |
		cis,,8 [ e a b ] cis [ d e fis ] |
		g8 [ (fis e d) ] cis [ (d e) b ] |
		ais8 [ (e') b (d) ] e, [ (cis') fis, (ais) ] |
		b2 d4 d |
		d4 cis8 [ (b) ] cis [ (d) ] e4 |
		d8 [ (cis b a) ] b [( cis d cis) ] |
		e8 [ (d) fis (e) ] g [ (fis) ] a4 |
		\appoggiatura fis8 e2 fis4 fis |
		fis4 e8 [ d ] e [ fis ] g4 |
		d8 [ (cis b a) ] a'4 a |
		a4 b8 [ (a) ] g [ (fis e fis) ] |
		g8 [ (fis e d) ] fis4 fis |
		fis8 [ (a g fis) ] e [ (d cis b) ] |
		cis8 [ b' (a g ] fis [ e d cis) ] |
		b8 [ a ] a'4 fis e8 [ d ] \clef bass |
		d2 s2 |
	}
  }
melodyTwo =  \relative d {
	\repeat volta 2 {
		\partial 2  d4 s4  |
		g,4 s4 g'4 s4 |
		e2 g,4 s4 |
		fis'4 s4 a4 s4 |
		d,4 s4 d4 s4 |
		g,4 s4 g'4 s4 |
		s2 fis4 s4 |
		e4 s4 e4 s4 |
		a,2 s2 |
	}
	\repeat volta 2 {
		\partial 2 fis'4 s4 |
		b,4 s4 b'4 s4 |
		e,4 s2. |
		s1 |
		s2 e4 d4 |
		s1 |
		d4 s2. |
		s1 |
		b2 b4 a4 |
		gis4 s2. |
		a4 s2. |
		s1 |
		a'2 d,4 s4 |
		g,4 s4 g'4 s4 |
		e2 g,4 s4  |
		fis'4 s4 a4 s4 |
		d,4 s4 b4 s4 |
		g4 s2. |
		e'8 s8 s2. |
		s4 fis4 a2 |
		d,,2 s2 |
    }
}
melodyThree =  \relative a {
	\repeat volta 2 {
		\partial 2  a4 s4 |
		<d, b'>4 s4 b'4 s4 |
		s2 <e, cis'>4 s4 |
		d'4 s2.  |
		a4 s4 a4 s4 |
		<d, b'>4 s4 b'4 s4 |
		s1 |
		s1 |
		e,2 s2 |
	}
	\repeat volta 2 {
		\partial 2 cis'4 s4 |
		<fis, dis'>4 s2. |
		b4 s2. |
		s1 |
		s2 b4 b |
		s1 |
		a4 s2. |
		s1 |
		fis2 fis4 fis |
		e4 s2. |
		e4 s2. |
		s1 |
		s2 a4 s4 |
		<d, b'>4 s4 b'4 s4 |
		s2 <e, cis'>4 s4 |
		d'4 s2.|
		a4 s4 <d, b'>4 s4 |
		<d b'>4 s2. |
		s1 |
		s4 d'4 s2 |
		<a, fis'>2 s2|
	}
}
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
