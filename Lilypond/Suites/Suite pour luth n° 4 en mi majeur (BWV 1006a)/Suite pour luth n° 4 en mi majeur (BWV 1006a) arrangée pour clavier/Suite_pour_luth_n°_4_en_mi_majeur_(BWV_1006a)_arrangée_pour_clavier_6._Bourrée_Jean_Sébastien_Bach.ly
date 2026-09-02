\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
        title = "Suite BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "6. Bourrée"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
comment = "For no particular instrument"
  tagline = ##f
}
soprano = \relative b {
	\repeat volta 2 {
		\partial 4 b4_\markup { (forte) } |
		cis4 a8 [ (b ] cis [ dis) ] e4 |
		r8 b8 e4 \appoggiatura fis8 e8 [ (dis ] e4) |
		s1 |
		s2. gis8 [ e ] |
		fis8 [ (dis b cis ] dis [ e fis a) ] |
		gis8 [ (e b dis ] e [ fis gis_\markup { (piano) } b) ] |
		fis8 [ (dis b cis ] dis [ e fis a) ] |
		gis8 [ (e b dis ] e [ fis gis b) ] |
		e,8_\markup { forte } [ (dis cis dis) ] e [ (dis cis b) ] |
		s1 |
		e8_\markup { (piano) } [ (dis cis dis) ] e [ (dis cis b) ] |
		s1 |
		dis8_\markup { forte } [ (cis b cis) ] dis [ e fis a, ] |
		gis8 [ b e dis ] e [ (ais b) cis, ] |
		s1 |
		s1 |
	}
  	\repeat volta 2 {
		\partial 4 fis4 |
		gis4 e8 [ (fis ] gis [ ais) ] b4 |
		r8 fis8  b4 \appoggiatura cis8 b8 [ (ais ] b4) |
		r8 e,8 a4 r8 dis,8 [ gis fis ] |
		fis8 [ (e dis e) ] cis4 e8 [ cis ] |
		gis8 [ (a b cis ] d [ gis b) d, ] |
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
		e8 [ (dis cis dis) ] b4 b |
		cis4 a8 [ (b ] cis [ dis e fis) ] |
		dis8 [ fis a fis ] dis [ (b) a (fis') ] |
		gis,8 [ e' ] b'4 a8 [ gis fis gis]  |
		e8 [ b gis b ] s2 |
	}
}
bassOne = \relative gis {
	\repeat volta 2 {
		\partial 4 s4 |
		s1*2 |
		r8 gis8 [  a b ] cis [ a ] b4 |
		a8 [ (gis fis gis) ] e4 s4 |
		s1*5 |
		ais8 [ (gis fis gis ] ais [ b cis dis) ] |
		s1 |
		ais8 [ (gis fis gis ] ais [ b cis e) ] |
		s1*2 |
		fis,8 [ dis' (cis b) ] fis [ cis' (b ais) ] |
		b8 [ fis dis fis ] b,4 s4 |
	}
  	\repeat volta 2 {
		\partial 4 s4 |
		s1*15 |
		s2. gis'4 |
		e4 s2. |
		s1*2 |
		s2 e4 s4 |
	}
}
bassTwo = \relative e {
	\repeat volta 2 {
		\partial 4 e4 |
		a4 r4 r2 |
		gis8 r8 r4 r2 |
		fis4 r4 r4 dis4 |
		e4 b gis e |
		b'4 r4 r4 dis4 ] |
		e4 r4 r4 e,4 |
		dis4 r4 r4 b4 |
		e4 r4 r4 dis4 |
		cis4 e cis e |
		fis4 r4 r4 fis4 ] |
		gis4 b ais gis |
		fis4 r4 r4 ais4|
		b4 dis b dis |
		e4 gis cis, dis8 [ e ] |
		fis4 r4 fis, r4 |
		b,2. s4 |
	}
  	\repeat volta 2 {
		\partial 4 b''4 |
		e4 r4 r2 |
		dis8 r8 r4 r2 |
		cis4. cis8 bis4 r4 |
		cis4 gis e cis |
		b4 r4 r4 e,4 |
		a4 r4 r4 cis4 |
		e4 r4 r4 e,4 |
		a4 r4 r4 fis4 |
		b4 r4 gis4 r4 |
		a4 r4 fis4 r4 |
		d'4 b cis cis, |
		fis2. fis4 |
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
bass = << \bassOne \\ \bassTwo >>
\score {
        \new PianoStaff <<
           \set PianoStaff.instrumentName = "Clavier  "
		   \set PianoStaff.midiInstrument = "harpsichord"
           \new Staff = "upper"  { \clef treble \key e \major \time 4/4 \soprano  }
           \new Staff = "lower"  { \clef bass \key e \major \time 4/4 \bass }
     >>
	\layout { }
 	 \midi { }
}
