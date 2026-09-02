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
        piece = "4. Menuet I"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
arrangement = "Hajo Dezelski"
  tagline = ##f
}
melodyOne = \relative g'' {
	\repeat volta 2 {
	    gis4 gis8 [ fis ] gis4 |
		e4 fis8 [ (dis) ] e4 |
		b4 cis dis |
		e8 [ dis e fis e fis ] |
		gis4 fis fis8 [ (gis16 a) ] |
		gis8 [ fis gis a b gis ] |
		e4 a gis |
		<dis fis>2. |
	}
	\repeat volta 2 {
		b'4 b8 [ ais8 ] b4 |
		dis,4 e8 [ (cis) ] dis4 |
		b'4  b8 [ ais ] b4 |
		b,2. |
		a'4 gis fis |
		e4 e8 [ fis ] gis4 |
		gis8 [ fis ] a4 gis |
		fis8 [ e fis dis e fis ] |
		gis4 cis, bis \trill |
		cis4. e8 [ dis fis ] |
		r8 a,8 [ b cis ] d4 ] |
		r8 e,8 [ d' b cis a ] |
		fis8 [ gis a b cis a ] |
		r8 fis [ cis' a b gis ] |
		e8 [ fis gis a b gis ] |
		a8 [ e fis a dis, fis ] |
		gis8 [ b cis e fis a ] |
		e8 [ dis e dis cis b ] |
		gis'4 gis8 [ fis ] gis4 |
		e4 fis8 [ dis ] e4 |
		r4 r8 gis,8 [ b d ] |
		r8 e, [ d' b cis a ]  |
		r8 e'8 [ dis fis a] r8 ] |
		r8 b,8 [ fis' a] <b, gis'>4 |
		<a cis fis>4 <gis b> <fis a dis> |
		<gis b e>2. |
	}
}
melodyTwo =  \relative e'' {
	\repeat volta 2 {
		e4 dis b |
		cis4 r4 r4 |
		gis4 a fis |
		e4 r4 r4 |
		<e b'>4 <dis b'> b |
		<e b'>4 r4 r4 |
		<a cis>4 <fis dis'> <e e'> |
		b2. |
		}
 	\repeat volta 2 {
		dis'4 cis b |
		a4 r4 r4 |
		<gis e'>4 <fis dis'> <e cis'> |
		<dis fis>2. |
		<dis bis' fis'>4 r4 r4 |
		<cis gis' cis>4 cis'8 [ dis ] e4 |
		dis4 cis bis |
		cis4 r4 <a cis> |
		<e gis cis>4 fis gis |
		<cis, e gis>4. s4. |
		gis'4 r4 r8 e8 |
		a,4 r4 r4 |
		dis4 r4 r4 |
		gis,4 r4 r4 |
		cis4 r4 r4 |
		fis,4 r4 b4  |
		e,4 a4 r4 |
		b4 r4 r4 |
		e'4 dis b |
		cis4 r4 r4 |
		gis8 [ b ] e,4 r4 |
		a,4 r4 r4 |
		fis'4 r4 r8 e8 |
		dis4 r4 e4 |
		a,4 b b |
		<e, e'>2. |
	}
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Laute"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
        { \clef treble \key e \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
