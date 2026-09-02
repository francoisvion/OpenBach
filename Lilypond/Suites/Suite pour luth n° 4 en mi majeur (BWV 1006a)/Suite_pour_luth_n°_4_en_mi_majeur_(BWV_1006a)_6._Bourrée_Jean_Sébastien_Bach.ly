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
        piece = "6. Bourrée"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
arrangement = "Hajo Dezelski"
  tagline = ##f
}
melodyOne = \relative b' {
	\repeat volta 2 {
		\partial 4 b4_\f |
		<a cis>4 a8 [ b ] cis [ dis ] e4 |
		r8 b8 e4 e8 [ dis ] e4 |
		r8 gis,8 [  a b ] cis [ a ] b4 |
		a8 [ gis fis gis ] e4 gis'8 [ e ] |
		fis8 [ dis b cis ] dis [ e fis a ] |
		gis8 [ e b dis ] e [ fis gis_\p b ] |
		fis8 [ dis b cis ] dis [ e fis a ] |
		gis8 [ e b dis ] e [ fis gis b ] |
		e,8_\f [ dis cis dis ] e [ dis cis b ] |
		ais8 [ gis fis gis ] ais [ b cis dis ] |
		e8_\p [ dis cis dis ] e [ dis cis b ] |
		ais8 [ gis fis gis ] ais [ b cis e ] |
		dis8_\f [ cis b cis ] dis [ e fis a, ] |
		gis8 [ b e dis ] e [ ais b cis, ] |
		fis,8 [ dis' cis b ] fis [ cis' b ais ] |
		b8 [ fis dis fis ] b,4 s4 |
	}
  	\repeat volta 2 {
		\partial 4 fis''4 |
		<e gis>4 e8 [ fis ] gis [ ais ] b4 |
		r8 fis8  b4 b8 [ ais ] b4 |
		r8 e,8 a4 r8 dis,8 [ gis fis ] |
		fis8 [ e dis e ] cis4 e8 [ cis ] |
		gis8 [ a b cis ] d [ gis b d, ] |
		cis8 [ b a b ] cis [ e a cis, ] |
		gis8_\p [ a b cis ] d [ gis b d, ] |
		cis8 [ b a b ] cis [ e a cis, ] |
		d8_\f [ b gis fis ] eis [ gis b d ] |
		cis8 [ a fis e ] d [ cis d cis' ] |
		b8 [ a' gis fis ] cis [ gis' fis eis ] |
		fis8 [ cis a cis ] fis,4 a'8 [ gis ] |
		dis8 [ fis b, cis ] dis [ e fis a ] |
		gis8 [ b e, fis ] gis [ a b d, ] |
		cis8 [ e a, cis ] fis [ gis a fis ] |
		e8 [ dis cis dis ] b4 <gis b> |
		<e cis'>4 a8 [ b ] cis [ dis e fis ] |
		dis8 [ fis a fis ] dis [ b a fis' ] |
		gis,8 [ e' ] b'4 a8 [ gis fis gis]  |
		e8 [ b gis b ] e,4 s4 |
	}
}
melodyTwo = \relative e {
	\repeat volta 2 {
		\partial 4 e4 |
		a4 r4 r2 |
		gis'8 r8 r4 r2 |
		fis4 r4 r4 dis4 |
		e4 b gis e |
		b'4 r4 r4 dis4 ] |
		e4 r4 r4 e4 |
		dis4 r4 r4 b4 |
		e4 r4 r4 dis4 |
		cis4 e cis e, |
		fis4 r4 r4 fis4 ] |
		gis4 b ais gis |
		fis4 r4 r4 ais4|
		b4 dis b dis |
		e4 gis cis, dis8 [ e ] |
		fis4 r4 fis, r4 |
		b2. s4 |
	}
  	\repeat volta 2 {
		\partial 4 b4 |
		e4 r4 r2 |
		dis'8 r8 r4 r2 |
		cis4. cis8 bis4 r4 |
		cis4 gis e cis |
		b4 r4 r4 e,4 |
		a4 r4 r4 cis4 |
		e4 r4 r4 e,4 |
		a4 r4 r4 fis4 |
		b4 r4 gis4 r4 |
		a4 r4 fis4 r4 |
		d'4 b cis cis |
		fis,2. fis4 |
		b4 r4 r4 dis4 |
		e4 r4 r4 gis,4 |
		a4 r4 r4 fis4 |
		b4 a gis e |
		a4 r4 r4 gis'4 |
		fis4 dis b dis  |
		e4 gis b b, |
		e,2. s4 |
	}
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Laute"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
        { \clef treble \key e \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
