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
        piece = "4. Menuet I"
        composer = "Jean Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006"
        date = "1720"
  tagline = ##f
}
melodyOne = \relative g'' {
	\repeat volta 2 {
	    gis4  gis8 [ fis ] gis4 |
		e4 fis8 [ (dis) ] e4 |
		b4 cis dis |
		e8 [ dis e fis e fis ] |
		gis4 fis fis8 [ (gis16 a) ] |
		gis8 [ fis gis a b gis ] |
		e4 a gis |
		fis2. |
	}
	\repeat volta 2 {
		b4 b8 [ ais8 ] b4 |
		dis,4 e8 [ (cis) ] dis4 |
		b'4 b8 [ ais ] b4 |
		\appoggiatura c,8 b2. |
		a'4 gis fis |
		e4 e8 [ fis ] gis4 |
		gis8 [ fis ] a4 gis |
		fis8 [ e fis dis e fis ] |
		cis4 cis bis |
		cis4. e8 [ dis fis ] |
		gis,8 [ (a b cis d) e, ] |
		a,8 [ (e' d' b cis a) ] |
		fis8 [ (gis a b cis) a ] |
		gis,8 [ (fis' cis' a b gis) ] |
		e8 [ (fis gis a b) gis ] |
		a8 [ (e fis a dis, fis) ] |
		gis8 [ (b cis e fis a) ] |
		e8 [ (dis e dis cis b) ] |
		gis'4 gis8 [ fis ] gis4 |
		e4 fis8 [ (dis) ] e4 |
		gis,8 [ b e, (gis b) d ] |
		a,8 [ (e' d') b cis a ] |
		fis8 [ e' dis (fis a) e, ] |
		dis8 [ (b' fis') a ] gis4 |
		fis4 b, dis |
		e2. |
	}
}
melodyTwo =  \relative e'' {
	\repeat volta 2 {
		e4 dis b |
		cis4 r4 r4 |
		gis4 a fis |
		e8 r8 r4 r4 |
		e'4 dis b |
		e8 r8 r4 r4 |
		cis4 dis e |
		b2. |
		}
 	\repeat volta 2 {
		dis4 cis b |
		a4 r4 r4 |
		g4 fis e |
		d2. |
		d4 r4 r4 |
		cis4 cis'8 [ dis ] e4 |
		d4 cis bis |
		cis4 r4 a |
		e4 fis gis |
		cis,4. s4. |
		s2. |
		s2. |
		s2. |
		s2. |
		c8 r8 r4 r4 |
		s2. |
		s2. |
		s2. |
		e'4 dis b |
		cis4 r4 r4 |
		s2. |
		s2. |
		s2. |
		s2 e,4 |
		a4 gis b, |
		e2. |
	}
}
melodyThree =  \relative e'' {
	\repeat volta 2 {
		s2.*8 |
		}
 	\repeat volta 2 {
		s2.*2 |
		e4 dis cis |
		s2. |
		bis4 s4 s4 |
		<gis cis>4 s2 |
		s2. |
		s2 cis4 |
		gis'4 s2 |
		gis,4. s4. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		s2 b4 |
		cis4 s4 fis,4 |
		b2. |
	}
}
melody = << \melodyOne \\ \melodyTwo  \\ \melodyThree >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
