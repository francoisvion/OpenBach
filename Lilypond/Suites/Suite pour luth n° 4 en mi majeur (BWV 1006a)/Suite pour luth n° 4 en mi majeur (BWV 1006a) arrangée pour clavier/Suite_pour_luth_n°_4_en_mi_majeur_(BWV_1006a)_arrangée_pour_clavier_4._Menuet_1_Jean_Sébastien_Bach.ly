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
        piece = "4. Menuet I"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
comment = "For no particular instrument"
  tagline = ##f
}
sopranoOne = \relative g' {
	\repeat volta 2 {
	    gis4  \appoggiatura a8 gis8 [ fis ] gis4 |
		\appoggiatura fis8 e4 fis8 [ (dis) ] e4 |
		b4 cis dis |
		e8 [ dis e fis e fis ] |
		gis4 fis fis8 [ (gis16 a) ] |
		gis8 [ fis gis a b gis ] |
		e4 a gis |
		\appoggiatura gis8 fis2. |
	}
	\repeat volta 2 {
		b4 \appoggiatura cis8 b8 [ ais8 ] b4 |
		\appoggiatura e,8 dis4 e8 [ (cis) ] dis4 |
		b'4 \appoggiatura cis8 b8 [ ais ] b4 |
		\appoggiatura cis,8 b2. |
		a'4 gis fis |
		e4 e8 [ fis ] gis4 |
		gis8 [ fis ] a4 gis |
		fis8 [ e fis dis e fis ] |
		gis4 cis, bis \trill |
		cis4. e8 [ dis fis ] |
		r8 a,8 [ ( b cis ] d4 )] |
		s2.*5 |
		gis,8 [ (b cis e fis a) ] |
		e8 [ (dis e dis cis b) ] |
		gis'4 \appoggiatura a8 gis8 [ fis ] gis4 |
		\appoggiatura fis8 e4 fis8 [ (dis) ] e4 |
		r4 r8 gis,8 [(  b d) ] |
		s2. |
		r8  e8 [ dis (fis a)] r8 ] |
		r8 b,8 [ ( fis' a )] \appoggiatura a8 gis4 |
		fis4 b, dis |
		<b e>2. |
	}
}
sopranoTwo = \relative c' {
	\repeat volta 2 {
	    s2.*6 |
		cis4 dis e |
		dis2. |
	}
	\repeat volta 2 {
		s2.*2 |
		e4 dis cis |
		s2. |
		bis4 r4 r4 |
		cis4 s2 |
		s2.*17 |
		s2 b4 |
		cis4 b a |
		gis2. |
	}
}
bassOne =  \relative e' {
	\repeat volta 2 {
		s2.*4 |
		b4 b b |
		b4 r4 r4 |
		s2.*2 |
		}
 	\repeat volta 2 {
		s2.*3 |
		fis2. |
		fis4 r4 r4 |
		gis4 s2 |
		s2. |
		s2 cis4 |
		<gis cis>4 s2 |
		<e gis>4. r8 r4 |
		s2. |
		r8 e8[( d' b cis a) ] |
		fis8 [ (gis a b cis) a ] |
		r8 fis [ (cis' a b gis) ] |
		e8 [ (fis gis a b) gis ] |
		a8 [ (e fis a dis, fis) ] |
		s2. |
		s2. |
		s2. |
		s2. |
		s2. |
		r8 e [( d' b cis a) ]  |
		s2. |
		s2. |
		a4 gis fis4 |
		e2. |
	}
}
bassTwo =  \relative e' {
	\repeat volta 2 {
		e4 dis b |
		cis4 r4 r4 |
		gis4 a fis |
		e4 r4 r4 |
		e4 dis b |
		e4 r4 r4 |
		a4 fis e |
		b2. |
		}
 	\repeat volta 2 {
		dis'4 cis b |
		a4 r4 r4 |
		gis4 fis e |
		dis2. |
		dis4 r4 r4 |
		cis4 cis'8 [ dis ] e4 |
		dis4 cis bis |
		cis4 r4 a |
		e4 fis gis |
		cis,4. s4. |
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
		a,4 gis b, |
		e2. |
	}
}
soprano = << \sopranoOne \\ \sopranoTwo >>
bass = << \bassOne \\ \bassTwo >>
\score {
        \new PianoStaff <<
           \set PianoStaff.instrumentName = "Clavier  "
		   \set PianoStaff.midiInstrument = "harpsichord"
           \new Staff = "upper"  { \clef treble \key e \major \time 3/4 \soprano  }
           \new Staff = "lower"  { \clef bass \key e \major \time 3/4 \bass }
     >>
	\layout { }
 	 \midi { }
}
