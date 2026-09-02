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
        piece = "3. Gavotte en Rondeau"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006"
        date = "1720"
  tagline = ##f
}
melodyOne = \relative b' {
	\repeat volta 2 {
	    \partial 2  b4 gis'4 |
		gis4 \trill fis8 [ e ] fis4 a |
		a2 b8 [ (gis) a (fis) ] |
		b,8 [ (fis'16 gis) a8 fis ] gis [ (e) fis (dis) ] |
		e8 [ (b gis e) ] gis [ b e gis ] |
		a,8 [ gis' (fis e) ] fis [ gis a fis ] |
		a2 b,4 gis' |
		cis,4 fis fis, dis' |
		e2 s2 |
	}
    	s2 b4 gis' |
		cis,4 cis8 [ (bis) ] cis [ (e) dis (bis) ] |
		bis4 (cis) cis8 [ (dis e gis) ] |
		cis,8 [ (dis e a) ] dis, [ (fis) e (cis) ] |
		bis8 [ (dis) gis, (fis) ] e [ gis cis e ] |
		gis8 [ (a b) cis, ] eis, [ cis' gis' b ] |
		b8 [ (gis) a (fis) ] a, [ (bis dis fis) ] |
		fis8 [ dis e dis ] gis,4 bis |
		cis,2 b'4 gis' |
		gis4 \trill fis8 [ e ] fis4 a |
		a2 b8 [ (gis) a (fis) ] |
		b,8 [ (fis'16 gis a8) fis ] gis [( e) fis (dis) ] |
		e8 [ (b gis e) ] gis [ b e gis ] |
		a,8 [ gis' (fis e) ] fis [ gis a fis ] |
		a2 b,4 gis' |
		cis,4 fis fis, dis' |
		e2 e,8 [ fis gis a ] |
		b4 b b e |
		b2 cis8 [ a dis (e) ] |
		b8 [ gis dis' (e) ] a, [ fis dis' (e) ] |
		gis,8 [ (fis e) fis ] gis [ b e gis ] |
		fis4 fis fis b |
		fis2 gis8 [ e ais (b) ] |
		fis8 [ dis ais' (b) ] e, [ cis ais' (b) ] |
		e,8 [ (dis) cis (b) ] e4 e ] |
		e2 e4 e |
		e2 ais8 [ (e) cis' (e,) ] |
		fis,8 [ (e') ais (e)] ais [ (e) cis' (e,) ] |
		e2 fis,4 dis' |
		dis4 \trill cis8 [ b ] cis4 e |
		e4 dis8 [ cis ] dis [ (e) fis (dis) ] |
		b8 [ gis e e' ] cis4. \mordent b8 |
		b2 b4 gis' |
		gis4 \trill fis8 [ e ] fis4 a |
		a2 b8 [ (gis) a (fis) ] |
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] |
		e8 [( b gis e) ] gis [ b e gis ] |
		a,8 [ gis' (fis e) ] fis [ gis a fis ] |
		a2 b,4 gis' |
		cis,4 fis fis, dis' |
		e2 e,8 [ gis b e ] |
		fis,8 [ e' (d cis) ] d [ fis, gis d' ] |
		cis8 [ b a gis ] fis [ cis' fis a ] |
		b,8 [ a' (gis fis) ] gis [ eis fis bis, ] |
		cis8 [ fis (eis fis) ] gis [ a b gis ] |
		a8 [ (cis, fis,) gis ] a [ b cis e ] |
		d8 [ (fis, b,) cis ] d [ e fis a ] |
		gis8 [ (b e,) fis ] gis [ a b d ] |
		cis8 [ (b a) cis ] fis [ eis fis cis ] |
		ais8 [ (cis e) g ] fis [ e d cis ] |
		d8 [ (cis b) fis' ] b [ ais b d, ] |
		eis,8 [ (cis' b') d ] cis [ b a gis ] |
		a8 [ (gis fis) a ] b, [ d a' (gis) ] |
		a,8 [ cis gis' (fis) ] gis, [ b fis' (e) ] |
		fis,8 [ a e' (d) ] eis, [ d' cis b ] |
		a8 [ cis fis gis ] gis4. fis8 |
		fis2 e4 gis |
		gis4 \trill fis8 [ e ] fis4 a |
		a2 b8 [ (gis) a (fis) ] |
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] |
		e8 [ (b gis e) ] gis [ b e gis ] |
		a,8 [ gis' (fis e) ] fis [ gis a fis ] |
		a2 b,4 gis' |
		cis,4 fis fis, dis' |
		e2 gis8 [ fis ] gis4 |
		cis,8 [ bis ] cis4 fis8 [ e ] fis4 |
		bis,2 e,8 [ (gis) cis (e) ] |
		fis,8 [ (a) dis (fis) ] gis, [ (b) eis (gis) ] |
		gis4 (fis) e8 [ (dis) e (cis) ] |
		dis8 [ (b) ] e4 dis8 [ (cis) ] fis4 |
		e8 [ (dis cis b) ] dis [ (cis) ] dis4 |
		gis8 [ fisis ] gis4 cis,8 [ bis ] cis4 |
		ais'2 gis8 [ fisis (gis b) ] |
		gis8 [ fisis (gis b) ] gis [ fisis (gis b) ] |
		gis2 r4 gis4 |
		gis2 r4 gis4 |
    	gis2 r4 gis4 |
		gis2 r4 gis4 |
		e1  |
		e2 s2 |
		dis,8 [ (eis fisis gis ] ais [ b cis dis) ] |
		e [ (dis cisis dis ] e [ dis cisis dis) ] |
		fisis,8 [ (ais cis e) ] dis [ (fisis ais cis) ] |
		b8 [ (ais16 gis fisis8) gis ]
		\times 2/3 { b,8 [ (cis dis) ] }
		\times 2/3 { cis8 [ (b ais) ]} |
		gis2 b4 gis' |
		gis4 \trill fis8 [ e ] fis4 a |
		a2 b8 [ (gis) a (fis) ] |
		b,8 [ (fis'16 gis a8) fis ] gis [ (e) fis (dis) ] |
		e8 [ (b gis e) ] gis [ b e gis ] |
		a,8 [ gis' (fis e) ] fis [ gis a fis ] |
		a2 b,4 gis' |
		cis,4 fis fis, dis' |
		e2 s2 \bar "|."
}
melodyTwo =  \relative e' {
	\repeat volta 2 {
		\partial 2 e4 s4  |
		a4 s2. |
		b2 s2 |
		s1*3 |
		b2 e,4 s4 |
		<a cis>4 s4 b,4 s4 |
		e2 s2 |
	}
	   s2 e4 s4 |
	   a4 r4 gis4 r4 |
	   fis2 e4 r4 |
	   fis4 r4 s2 |
	   s1*4 |
	   s2 e4 s4 |
	   a4 s2. |
	   b2 s2 |
	   s1*3 |
	   b2 e,4 s4 |
	   a4 s4 b,4 s4 |
	   e2 s2 |
	   r4 e8 [ (fis) ] gis [ (fis) gis (fis) ] |
	   gis8 [ (fis gis e)] s2 |
	   s1*2 |
	   r4 b'8 [ (cis) ] dis [ (cis) dis (cis) ] |
	   dis8 [ (cis dis b)] s2 |
	   s1 |
	   s2 cis8 [ (dis) e (dis) ] |
	   cis8 [ (b ais b) ] cis [ (dis) e (cis) ] |
	   e,2 s2 |
	   s1 |
	   fis2 b,4 s4 |
	   e4 s2. |
	   fis4 s2. |
	   s2 fis2 |
	   <b, fis'>2 e4 s4 |
	   a4 s2. |
	   b2 s2 |
	   s1*3 |
	   b2 e,4 s4 |
	   a4 s4 b,4 s4 |
	   e2 s2 |
	   s1*14 |
	   s2 cis'2 |
	   <fis, cis'>2 <gis b>4 s4 |
	   a4 s2. |
	   b2 s2 |
	   s1*3 |
	   b2 e,4 s4 |
	   <a cis>4 s4  b,4 s4 |
	   e2 e'8 [ dis ] e4 |
	   a,8 [ gis ] a4 dis8 [ cis ] dis4 |
	   gis,2 s2|
	   s1 |
	   a2 ais8 s4. |
	   s4 gis4 e <fis cis'>|
	   <b, fis' b>4 s4 <b fis'>8 s4. |
	   <e d'>8 s4. e8 s4. |
	   <d cis'>2 b'8 s4. |
	   cis8 s4. dis8 s4. |
	   e8 [ (cis) e (cis) ] gis [ (cis) e (cis) ] |
	   dis8 [ (b) dis (b) ] gis [ (b) dis (b) ] |
	   e8 [ (cis) e (cis) ] gis [ (cis) e (cis) ] |
	   dis8 [ (b) dis (b) ] gis [ (b) dis (b) ] |
	   dis8 [ (b) dis (b) ] cis [ (b) cis (b) ] |
	   ais8 [ (cis ais cis) ] fisis, [ (ais fisis ais) ] |
	   s1*4 |
	   s2 e4 s4 |
	   a4 s2. |
	   b2 s2 |
	   s1*3 |
	   b2 e,4 s4 |
	   a4 s4 b,4 s4 |
	   e2 s2 \bar "|."
}
melody = << \melodyOne \\ \melodyTwo  >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
