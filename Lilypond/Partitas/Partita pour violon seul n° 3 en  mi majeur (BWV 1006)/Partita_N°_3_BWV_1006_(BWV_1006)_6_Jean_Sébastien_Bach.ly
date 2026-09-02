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
        piece = "6. Bourrée"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006"
        date = "1720"
  tagline = ##f
}
melody = \relative e' {
	\repeat volta 2 {
		\partial 4 <e b'>4 |
		<a cis>4 a8 [ (b ] cis [ dis) ] e4 |
		gis,8 [ (b ] e4) e8 [ (dis ] e4) |
		fis,8 [ gis a b ] cis [ a ] b4 |
		a8 [ (gis fis gis) ] e4 gis'8 [ e ] |
		fis8 [ (dis b cis ] dis [ e fis a) ] |
		gis8 [ (e b dis ] e [ fis gis b) ] |
		fis8_\markup { (piano) } [ (dis b cis ] dis [ e fis a) ] |
		gis8 [ (e b dis ] e [ fis gis b) ] |
		e,8_\markup { forte } [ (dis cis dis) ] e [ (dis cis b) ] |
		ais8 [ (gis fis gis ] ais [ b cis dis) ] |
		e8_\markup { (piano) } [ (dis cis dis) ] e [ (dis cis b) ] |
		ais8 [ (gis fis gis ] ais [ b cis e) ] |
		dis8_\markup { forte } [ (cis b cis) ] dis [ e fis a, ] |
		gis8 [ b e dis ] e [ (ais b) cis, ] |
		e,8 [ dis' (cis b) ] fis [ cis' (b ais) ] |
		b8 [ fis dis fis ] b,4 s4 |
	}
  	\repeat volta 2 {
		\partial 4 <b' fis'>4 |
		<e gis>4 e8 [ (fis ] gis [ ais) ] b4 |
		dis,8 [ (fis ] b4) b8 [ (ais ] b4) |
		cis,8 [ e a cis, ] bis [ dis gis fis ] |
		fis8 [ (e dis e) ] cis4 e8 [ cis ] |
		gis8 [ (a b cis ] d [ gis b d,) ] |
		cis8 [ (b a b ] cis [ e a) cis, ] |
		gis8_\markup { piano } [ (a b cis ] d [ gis b) d, ] |
		cis8 [ (b a b ] cis [ e a) cis, ] |
		d8_\markup { (forte) } [ b gis fis ] eis [ (gis b) d ] |
		cis8 [ a fis e ] d [ (cis d) cis' ] |
		b8 [ a' (gis fis) ] cis [ gis' (fis eis) ] |
		fis8 [ cis a cis ] fis,4 a'8 [ gis ] |
		dis8 [ fis b, (cis ] dis [ e fis) a ] |
		gis8 [ b e, (fis ] gis [ a b) d, ] |
		cis8 [ e a, cis ] fis [ (gis a) fis ] |
		e8 [ (dis cis dis) ] b4 <e, b'>4 |
		<a cis>4 a8 [ (b ] cis [ dis e fis) ] |
		dis8 [ fis a fis ] dis [ (b) cis (a) ] |
		<<
		{ gis8 [ e' ] b'4 a8 [ gis fis gis] } \\
		{ s2 b,4 r4 }
		>> |
		e8 [ b gis b ] e,4 s4 |
	}
}
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 2/2 \melody  }
    >>
	\layout { }
 	 \midi { }
}
