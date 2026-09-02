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
        piece = "5. Menuet II"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
  tagline = ##f
}
soprano = \relative b {
	\repeat volta 2 {
		b4 r4 r4 |
		b4 r4 r4 |
		b4 r4 r4 |
		a4 r4 r4 |
		e8 [ (gis) gis (b) b (e) ] |
		dis8 [ (b) b (dis) dis (fis) ] |
		fis8 [ gis a fis ] b4 |
		a8 [ (gis) a (gis) fis (e) ] |
		b4 r4 r4 |
		b4 r4 r4 |
		e4 r4 r4 |
		e4 r4 r4 |
		b8 [ (dis) dis (fis) fis (b) ] |
		cis,8 [ (dis e gis) ais, fis' ] |
		e8 [ (dis cis8 b) fis ais ] |
		s2. |
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
		\appoggiatura gis8 a4 b8 [ a gis fis ] |
		gis8 [ (a b) d,] r8 d8 ] |
		cis8 [ e <dis a'>8 fis gis e ] |
		dis8 [ (cis) e dis cis b ] |
		<b e gis>4 a'8 [ (gis fis e) ] |
		fis16 [ (e16 dis8) ] <dis b'>2 |
		r8 b8 [ cis a fis dis'] |
		<b e>2. |
	}
}
bassOne =  \relative g {
	\repeat volta 2 {
		gis4 a8 [ gis fis e ] |
		fis8 [ gis ] \appoggiatura  gis8 a2 |
		gis8 [ fis a gis fis e ] |
		d8 [ e ] \appoggiatura  e8 fis4 b, |
		s2.*4 |
		gis'4 a8 [ gis fis e ] |
		fis8 [ gis ] \appoggiatura  gis8 a2 |
		gis8 [ (e) e (gis) gis (b) ] |
		ais8 [ b ] \appoggiatura  b8 cis4 fis, |
		s2.*3 |
		\appoggiatura  ais8 b2. |
	}
 	\repeat volta 2 {
		b4 r4 r4 |
		b4 r4 r4 |
		s2.*4 |
		s2 <gis b>4 |
		a4 r4 r4 |
		<fis b>4 r4 r4 |
		b4 r4 b4 |
		a4 a4 b4 |
		s2.*2 |
		s4 fis2 |
		s2.  |
		gis2. |
	}
}
bassTwo =  \relative e, {
	\repeat volta 2 {
		e4 r4 r4 |
		dis4 r4 r4 |
		e4 r4 r4 |
		b4 r4 r4 |
		r4 e4 gis4 |
		b4 dis4 gis4 |
		dis4 b4 dis4 |
		e4 b4 e,4 |
		e'4 r4 r4 |
		<b dis>4 r4 r4 |
		cis4 r4 r4 |
		fis,4 r8 e'8 [ dis cis] |
		dis4 r4 r4 |
		e4 cis4 fis4 |
		b,4 dis,4 fis4 |
		b,2. |
	}
 	\repeat volta 2 {
		a''4 r4 r4 |
		gis4 e d |
		cis4 gis'4 b4 |
		a4 fis,4 r4 |
		eis'4 r4 r4 |
		r4 r4 eis4 |
		r4 fis4 cis4 |
		fis,4 fis' e |
		dis4 r4 r4 |
		e4 r4 gis |
		gis4 fis4 e4 |
		b4 cis dis |
		e4 fis gis4 |
		a4  a,2  |
		gis4 a4 b4 |
		e,2. |
	}
}
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
