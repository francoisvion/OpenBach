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
        piece = "5. Menuet II"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006"
        date = "1720"
  tagline = ##f
}
melodyOne = \relative b' {
	\repeat volta 2 {
		b2. ~ |
		b2. ~ |
		b2. |
		a2. |
		e8 [ (gis) gis (b) b8 (e8) ] |
		dis8 [ (b) b (dis) dis (fis) ] |
		fis8 [ gis a fis ] b4 |
		a8 [ (gis) a (gis) fis (e) ] |
		b2. ~ |
		b2. |
		e2. ~ |
		e2. |
		b8 [ (dis) dis (fis) fis (b) ] |
		cis,8 [ (dis e gis) ] ais, [ fis' ] |
		e8 [ (dis) cis8 (b) ] fis [ ais ] |
		b,2. |
	}
	\repeat volta 2 {
		dis'4 e8 [ (dis) cis (b) ] |
		e8 [ fis gis a b gis ] |
		fis8 [ (eis fis) eis dis cis ] |
		fis8 [ (gis a) cis, ] fis,4 |
		eis8 [ (cis' b') gis a fis ] |
		gis8 [ cis, d b eis, (cis' ] |
		b'8) [ gis a fis cis eis ] |
		fis8 [ (cis fis,) cis' fis gis ] |
		a4 b8 [ a gis fis ] |
		gis8 [ (a b) d, gis, d' ] |
		cis8 [ e a fis gis e ] |
		dis8 [ (cis) e (dis) cis (b) ] |
		gis'4 a8 [ (gis fis e) ] |
		fis8 [ dis ] b'2 |
		gis,8 [ b cis a fis dis'] |
		e2. |
	}
}
melodyTwo =  \relative g' {
	\repeat volta 2 {
		gis4 a8 [ gis fis e ] |
		fis8 [ gis ] \appoggiatura  g8 a2 |
		gis8 [ fis a gis fis e ] |
		d8 [ e ] fis4 b, |
		s2.*4 |
		gis'4 a8 [ gis fis e ] |
		fis8 [ gis ] \appoggiatura  g8 a2 |
		gis8 [ (e) e (gis) gis (b) ] |
		ais8 [ b ] cis4 fis, |
		s2.*4 |
	}
 	\repeat volta 2 {
		a4 r4 r4 |
		<g b>4 d'4 r4 |
		b4 r4 r4 |
		a4 r4 s4 |
		s2.*4 |
		dis4 r4 r4 |
		e4 s2 |
		s2.*2 |
		<e, b'>4 s2 |
		a8 s8 a2  |
		s2.*2 |
	}
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
