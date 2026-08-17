\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
        title = "Partita III BWV 1006"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "2. Loure"
        composer = "Jean Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006"
        date = "1720"
  tagline = ##f
}
melodyOne = \relative b' {
	\repeat volta 2 {
	   \partial 4.  b8  b'4 |
	   gis4. a8 fis4 \trill gis e gis |
	   fis4. gis8 a4 a8 [ (fis) ] dis4 \trill e |
	   cis4. dis8 e4 a,4. gis8 a4 |
	   a4 (gis8.) [ a16 ] fis4 a8 [ (gis) fis (e) ] gis'4 |
	   cis,4. dis8 bis4 cis gis' fis8 [ (e) ] |
	   dis4 (cis8.) [ dis16 ] b4 b (ais8.) [ cis16 ] dis4 |
	   dis4 (e8.) [ gis16 ] fis4 fis (gis8.) [ b16 ] ais4 |
	   b4 ais8 [ (gis)] ais16 [(b cis8) ] ais4 gis8 [ (fis) ] cis'4 |
	   e,4. fis8 dis4 e8 [ (dis) ] e4 cis' |
	   b8 [ (ais8.) gis16 (fis dis) ] e4 e (dis8.) [ fis16 ] ais,4 |
	   \times 2/3 { fis8 [ ( ais cis) ] } e4
	   \times 2/3 { dis8 [ (e cis) ] }
	   b4. s4.|
	}
	\repeat volta 2 {
		\partial 4. fis'8 gis4 |
		a4. b8 a4 gis \trill fis8 [ e ] a4 |
		fis4. fis8 [ (a gis) ] fis [ (eis dis cis) ] b'4 |
		b4. a8 [ gis16 \trill (fis gis8) ] a4 fis gis8 [ (a) ] |
		fis4 (eis) fis fis4. gis8 a4 |
		dis,4. cis8 b4 e4. fis8 gis4 |
		gis4 (fis8.) [ gis16 ] a4 a4 (gis8.) [ fis16 ] e4 |
		dis4. e8 cis4 gis'4. dis8 b'4 |
		b4 (ais8.) [ cis16 ] fisis,4 e4 (dis8.) [ cis'16 ] b4 |
		b8 [ (ais) b (ais) gis ais16 (fisis16) ] gis4. gis16 [ (a16)] a8. \trill [(gis32 a) ] |
		b4. a8 gis4 a gis8 [ fis ] a4 |
		b,8 [ ( dis fis b)] a [ gis] gis4 fis8. [ b,16 ] cis8. \trill [( b32 cis )] |
		d4. e8 d4 cis cis8 [ ( dis)] (dis) [ ( e ) ] |
		e4 (d4.) \trill e8 e4. s4. |
	}
}
melodyTwo =  \relative c' {
	\repeat volta 2 {
		\partial 4. s4. |
		r2. r4 r8 e8 e'4 |
		dis4. e8 cis4 b4 r4 gis4 |
		a2 gis4 fis2 b,4 |
		e4 s1 s4 |
		r4 r4 fis4 e r4 r4 |
		r4 r4 eis4 fis4 r4 fis4 |
		gis2 ais4 b2 cis4 |
		dis4 e cis fis r4 r4 |
		r4 r4 fis,4 <ais, fis'>4 r4 r4 |
		r4 r4 <ais fis'>4 <b fis'>4 r4 e4 |
		r4 r4 fis4 <b, fis'>4. s4. |
	}
 	\repeat volta 2 {
		\partial 4. s4. |
		r4 r8 cis'8 d4 e4. dis8 cis4 |
		d4 cis b cis r4 r4 |
		<eis, cis'>4. r8 r4 <fis cis'>4 d' b |
		cis2 r4 <fis, a>4. r8 r4 |
		r4 r4 a4 <gis b>4. r8 <e b'>4 |
		<a cis>4 r4 <fis cis'>4 bis2 cis4  |
		fis,4 gis a <gis bis>4. r8 r4 |
		cis2 r4 fisis,4. r8 <gis dis'>4 |
		cis4 dis r4 <gis, b>4. r8 r4 |
		r4 r4 <eis cis'>4 <fis cis'>r4 <e cis'>4 |
		d8 r8 r4 <e b'>4 b'4. r8 r4 |
		r4 r8 fis8 gis4  a fis e |
		<b fis'>2 r4 e4. s4. |
	}
}
melody = << \melodyOne  \\ \melodyTwo >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 6/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
