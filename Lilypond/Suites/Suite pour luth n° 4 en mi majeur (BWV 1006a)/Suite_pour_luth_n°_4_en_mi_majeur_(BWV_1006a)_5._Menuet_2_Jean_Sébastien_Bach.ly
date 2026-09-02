\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
        title = "Suite E-Dur - Suite BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "5. Menuet II"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
arrangement = "Hajo Dezelski"
  tagline = ##f
}
melodyOne = \relative b' {
	\repeat volta 2 {
		b4 s2  |
		b4 s2 |
		b4 s2 |
		a4 s2 |
		e8 [ gis gis b b e ] |
		dis8 [ b b dis dis fis ] |
		fis8 [ gis a fis ] b4 |
		a8 [ gis a gis fis e ] |
		b4 s2 |
		b4 s2 |
		e4 s2 |
		e4 s2 |
		b8 [ dis dis fis fis b ] |
		cis,8 [ dis e gis ais, fis' ] |
		e8 [ dis cis8 b fis ais ] |
		b2. |
	}
	\repeat volta 2 {
		dis4 e8 [ dis cis b ] |
		e8 [ fis gis a b gis ] |
		fis8 [ (eis fis) eis dis cis ] |
		fis8 [ (gis a) cis, ] fis,4 |
		r8 cis' [  b' gis a fis ] |
		gis8 [ cis, d b] r8 cis8 ] |
		b'8 [ gis a fis] r8 eis8 ] |
		fis8 [cis] r8 cis8 [ fis gis ] |
		a4 b8 [ a gis fis ] |
		gis8 [ (a b) d,] r8 d8 ] |
		cis8 [ e a8 fis gis e ] |
		dis8 [ (cis) e dis cis b ] |
		gis'4 a8 [ (gis fis e) ] |
		fis16 [ (e16 dis8) ] b'2 |
		r8 b,8 [ cis a fis dis'] |
		<gis, b e>2. |
	}
}
melodyTwo =  \relative e' {
	\repeat volta 2 {
		e4 s2 |
		dis4 s2 |
		e,4 s2 |
		b'4 s2 |
		r4 e,4 gis4 |
		b4 dis4 gis4 |
		dis4 b4 dis4 |
		e4 b4 e,4 |
		e'4 s2 |
		<b dis>4 s2 |
		cis4 s2|
		fis,4 r8 e'8 [ dis cis] |
		dis4 s2 |
		e4 cis4 fis4 |
		b,4 dis4 fis4 |
		b,2. |
	}
 	\repeat volta 2 {
		<a' b>4 s2 |
		<gis b>4 e d |
		cis4 gis'4 b4 |
		a4 fis,4 r4 |
		eis'4 s2 |
		s2 eis4 |
		r4 fis4 <cis gis' b>4 |
		<fis, b'>4 fis' e |
		<dis fis b>4 s2 |
		<e b'>4 r4 <gis b>4 |
		a4 <fis dis'>4 <e b'>4 |
		b4 cis dis |
		<e b'>4 fis gis4 |
		a4  <a, fis' dis'>2  |
		gis4 a4 b4 |
		e,2. |
	}
}
melodyThree =  \relative g' {
	\repeat volta 2 {
		gis4  a8 [ gis fis e ] |
		fis8 [ gis ]  a2 |
		gis8 [ fis a gis fis e ] |
		d8 [ e ] fis4 b, |
		s2.*4 |
		gis'4 a8 [ gis fis e ] |
		fis8 [ gis ]  a2 |
		gis8 [ e e gis gis b ] |
		ais8 [ b ] cis4 fis, |
		s2.*4 |
	}
 	\repeat volta 2 {
		s2.*16 |
	}
}
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Laute"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
        { \clef treble \key e \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
