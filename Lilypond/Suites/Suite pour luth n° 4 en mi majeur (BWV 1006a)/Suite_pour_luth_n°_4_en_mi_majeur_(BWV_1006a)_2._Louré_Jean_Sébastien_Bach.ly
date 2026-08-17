\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
        title = "Suite E-Dur - BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "2. Loure"
        composer = "Jean Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
arrangement = "Hajo Dezelski"
  tagline = ##f
}
melodyOne = \relative b' {
	\repeat volta 2 {
	   \partial 4.  b8  b'4 |
	   gis4. a8 fis4 \trill gis4 e4 gis |
	   fis4. gis8 a4 a8 [ (fis) ] dis4 \trill e |
	   cis4. dis8 e4  s2. |
	   s1 s4 gis4 |
	   cis,4.-\mordent dis8 bis4 cis4 gis' fis8 [ (e) ] |
	   dis4 (cis8.) [ dis16 ] b4 b (ais8.) [ cis16 ] dis4 |
	   dis4 (e8.) [ gis16 ] fis4 fis (gis8.) [ b16 ] ais4 |
	   b4 ais8 [ (gis8)] ais8. [(b32 cis) ] ais4 gis8 [ (fis) ] cis'4 |
	   e,4. fis8 <b, dis>4 e8 [ (dis8) ] e4 cis'4 |
	   ais8. [ gis16 fis8. dis16] e4 e (dis8.) [ fis16 ] ais,4 |
	   \times 2/3 { fis8 [ ( ais cis) ] } e4
	   \times 2/3 { dis8 [ (e cis) ] }
	   b4. s4. |
	}
	\repeat volta 2 {
		\partial 4. fis'8 gis4 |
		a4. b8 a4 gis e4 a |
		fis4. fis8 [ (a gis) ] fis [ (eis dis cis) ] b'4 |
		b4. a8 gis16 \trill [(fis gis8) ] a4 fis gis8 [ (a) ] |
		fis4 (eis) \trill fis fis4. gis8 a4 |
		dis,4. \trill cis8 b4 e4. fis8 gis4 |
		gis4 (fis8.) [ gis16 ] a4 a4 (gis8.) [ fis16 ] e4 |
		dis4. e8 cis4 <dis gis>4. dis8 b'4 |
		b4 (ais8.) [ cis16 ] fisis,4 e4 (dis8.) [ cis'16 ] b4 |
		b8 [ais b ais gis16 ais fisis8 ] <dis gis>4. gis16 [ (a16)] a8. \trill [(gis32 a) ] |
		b4. a8 gis4 a4 gis8 [ (fis) ] a4 |
		b,8 [ ( dis fis b) a  (gis)] gis4 (fis8.) [ b,32 (cis) ] cis8. \trill [( b32 cis )] |
		d4. e8 d4 cis4 r8 dis8 r8 e8 |
		e4 (dis4.) \trill e8 e4. s4. |
	}
}
melodyTwo =  \relative b {
	\repeat volta 2 {
		\partial 4. s4. |
		s1*6/4*11 |
	}
 	\repeat volta 2 {
		\partial 4. s4. |
		 s1*6/4*2 |
		 s1*6/4 |
		 s2 s4 cis'4. s4. |
		 s2. b4. s8 b4  |
		 cis4 s4 cis4 dis4 s2 |
		 s2. bis4. s4. |
		 e2 s4 s4 s4 dis4 |
		 e4 dis8 [ cis b ais ] b4. s4. |
		 s2 cis4 cis2 cis4 |
		 s1 ( dis8.) s16 s4|
		 s1*6/4*2 |
	}
}
melodyThree =  \relative a' {
	\repeat volta 2 {
		\partial 4. s4. |
		s1*6/4 |
		s1*6/4  |
		s2. a4. gis8 a4 |
		a4 (gis8.) [ a16 ] fis4 a8 [ (gis) fis (e)] s4|
		s2 gis4 gis4 s2  |
		s1*6/4  |
		s1*6/4  |
		s2. cis2 s4   |
		s2 fis,4 <fis cis'>2 s4   |
		s2 <fis cis'>4 <fis b>2 s4   |
		s2 <fis ais>4 <dis fis>4.  s4.  |
	}
 	\repeat volta 2 {
		\partial 4. s4. |
		 s1*6/4*2 |
		 <gis cis>2 s4 cis4 <a d>4 <b d>4|
		 <gis cis>2 r4 <fis a>4. s4. |
		 s1*6/4*3 |
		 s2 s4 ais2 s4 |
		 s1*6/4 |
		 s1 s4 fis'4 |
		 fis,2 b4 <b e>4 s2 |
		 s1 a4 gis |
		 fis2 s4 <gis b>4. s4. |
	}
}
melodyFour =  \relative e' {
	\repeat volta 2 {
		\partial 4. r8 r4 |
		s2. s4 s8 e8 e'4 |
		dis4. e8 cis4 b2 gis4 |
		a2 gis4 fis2 b,4 |
		e2 s4 e2 s4 |
		s2 fis4 e4 s2 |
		s2 eis4 fis2 fis4 |
		gis2 ais4 b2 cis4 |
		dis4 e cis fis,2 s4 |
		s2 b,4 ais2 s4 |
		s2 ais4 b2 e4 |
		s2 fis,4 b4. s4. |
	}
 	\repeat volta 2 {
		\partial 4. r8 r4 |
		s4. cis'8 dis4 e4. dis8 cis4 |
		d4 cis b cis s2 |
		eis,2 s4 fis4 d b |
		cis2 s4 fis,4. s4. |
		s2 a'4 gis4. fis8 e4 |
		a4. gis8 fis4 bis,2 cis4  |
		fis,4 gis a gis4. s4. |
		cis'2 s4 fisis,2  gis4 |
		cis,4 dis dis4 gis,4. s4. |
		s2 eis'4 fis2 e4 |
		dis2 e4 b2 s4 |
		s4. fis'8 gis4  a fis e |
		b2 s4 e,4. s4. |
	}
}
melody = << \melodyOne \\ \melodyTwo \\ \melodyThree  \\ \melodyFour >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Laute"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
        { \clef treble \key e \major \time 6/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
