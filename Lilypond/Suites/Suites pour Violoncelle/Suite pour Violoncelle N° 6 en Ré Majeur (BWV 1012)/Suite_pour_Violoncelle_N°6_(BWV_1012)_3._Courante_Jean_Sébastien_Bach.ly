\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "3. Courante"
  subtitle = "Suite pour Violoncelle N°6"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1012"
  tagline = ##f
}
melody =   \relative a, {
	\repeat volta 2 {
		\partial 8 d'8 \ff |
		d8 [ d,16 (e fis8) d  a' fis ] \clef alto |
		d'8 [ a fis' d a' c, ] |
		b8 [ e16 (fis g8) e b' d, ] |
		cis8 [ a16 (b cis8) a e' g, ] \clef bass |
		fis8 [ d16 (e fis8) d a' c, ] |
		b8 [ g16 (a b8) g e' g, ] |
		fis8 [ a d g, a cis ] |
		d4 d,8 [ fis' ] g16 [ (fis e d) ] |
		e8 [ cis16 (d e8) a, a' e ] |
		fis8 [ d16 (e fis8) d a' fis ] |
		d'8 [ b16 (cis d8) b fis' a, ] |
		gis8 [ b ] e, [ cis'16 (d ] e [ d cis b) ] |
		cis8 [ a ] e, [ d''16 (e ] fis [ e d cis) ] |
		d8 [ b ] e,, [ cis''16 (d ] e [ d cis b) ] |
		cis16 [ (b a gis) ] a [ (gis a b) ] cis [ (b a gis) ] |
		a16 [ (gis fis e) ] fis [ (e fis gis) ] a [ (gis fis e) ] |
		fis16 [ (e d cis) ] d [ (cis d e) ] fis [ (e d cis) ] |
		d16 [ (cis b a) ] b [ (cis d e) ] fis [ (gis a fis) ] |
		gis16 [ (fis e d) ] e [ (fis gis a) ] b [ (cis d b) ] |
		cis8 [ a16 (b ] cis8) a e' cis ] |
		a'8 [ fis,16 (gis a8) fis cis' a ] |
		a'8 [ cis,,16 (d e8) cis a' e ] |
		fis16 [ (e d cis) ] d [ (b gis' fis) ] a [ (gis fis e) ] |
		b'16 [ (a gis fis) ] gis [ (e cis' b) ] d [ (cis b a) ] \clef alto |
		e'16 [ (d cis b) ] cis [ (a fis' e) ] g [ (fis e d) ] |
		b'8 [ gis16 (a b8) e, gis d ] \clef bass |
		cis8 [ a16 (b cis8) e, gis d ] |
		a2 r4 |
    }
	\repeat volta 2 {
		\partial 8 \clef alto a''8 |
		a8 [ e16 (d cis8)  e a, cis ] \clef bass |
		e,8 [ a cis, e a, g ] |
		fis8 [ g'16 (fis e8) d' cis g' ] |
		fis8 [ d ] d, [ fis'16 (e ] g [ fis e d) ] |
		e8 [ cis ] a, [ e''16 (d ] fis [ e d cis) ] |
		d8 [ fis, ] b, [ cis16 (d) ] e [ (d e fis) ] |
		e16 [ (fis g fis) ] g [ (a) g (a) ] b [ (cis d b) ] |
		cis8 [ g ] a, [ b16 (cis) ] d [ (cis d e) ] |
		d16 [ (e fis e) ] fis [ (g) fis (g) ] a [ (b cis a) ] |
		b8 [ fis ] g, [ a16 (b) ] cis [ (b cis d) ] |
		cis16 [ (d e d) ] e [ (fis) e (fis) ] g [ (a b g) ] |
		e16 [ d' cis b ] ais [ g' (fis e) ] \clef alto b' [ ais gis fis ] |
		b8 [ a16 (g ] fis [ e d cis) ] d [ (cis) e (ais,) ] |
		b4 b,8 [ b'16 (cis d8)  b ] |
		gis'8 [ d8 ] b'8 [ a16 (gis ] a [ gis fis e) ] |
		a8 [ cis,16 (d e8) a, g' cis, ] |
		fis8 [ c ] a' [ g16 (fis] g) [fis e d ] |
		g8 [ b,16 (c d8) g, b fis ] \clef bass |
		e8 [ cis'16 (d e8) a, g' d, ] |
		cis8 [ cis'16 (d e8) a, g' a,, ] |
		d8 [ fis'16 (e) ] g [ (fis e d) ] e [ (d cis b) ] |
		cis16 [ (b a g) ] a [ (g fis e) ] fis [ (e d cis) ] |
		d8 [ b16 (cis) ] d [ (e fis e) ] g [ (fis) a (gis) ] |
		a8 [ cis,16 (d) ] e [ (fis g fis) ] a [ (gis) b (ais) ] |
		b8 [ d,16 (e fis8) b dis, b' ] |
		c8 [ e,16 (fis g8) c e, cis' ] |
		d8 [ fis,16 (g ] a8) [ a16 (b ] c8 ) [ a'16 (c,) ] |
		g,8 [\clef alto  b'16 (a ] b8) [ b16 (cis ] d8) [ b'16 (d,) ] |
		cis16 [ g cis e ] a8 [ g,16 (fis ] a [ g fis e) ] |
		fis8 [ d' ] a' [ (fis,16 e ] g [ fis e d) ] |
		e8 [ cis' ] a'16 [ g, (fis e) ] d [ (e fis g) ] |
		fis16 [ (g a b) ] a [ (b a g) ] fis [ (g a b) ] |
		a16 [ (b cis d) ] cis [ (d cis b) ] a [ (b cis d) ] |
		cis16 [ (d e fis) ] e [ (fis e d) ] cis [ (d e fis) ] |
		e16 [ (fis g a) ] g [ (fis e d) ] cis [ (b a g) ] \clef bass |
		fis8 [ d16 (e ] fis8) [ d8 ] a'8 [ fis8 ] |
		d'8 [ b,16 (cis ] d8) [ b8 ] fis'8 [ d8 ] |
		d'8 [ fis,,16 (g ] a8) [ fis8 ] d'8 [ a8 ] |
		b16 [ (a g fis) ] g [ (e cis' b) ] d [ (cis b a) ] |
		e'16 [ (d cis b) ] cis [ (a) fis' (e) ] g [ (fis e d) ] |
		a'16 [ (g fis e) ] fis [ (d) b' (a) ] c [ (b a g) ] |
		e'8 [ cis16 (d ] e8) a,8 cis8 g8 ] |
		fis8 [ d16 (e fis8) a,8 cis8 g8 ] |
		d2 r8 s8 |
    }
}
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
