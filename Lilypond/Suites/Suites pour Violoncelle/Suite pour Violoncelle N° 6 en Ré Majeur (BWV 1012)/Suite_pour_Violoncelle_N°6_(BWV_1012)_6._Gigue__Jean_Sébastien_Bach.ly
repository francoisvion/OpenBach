\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "6. Gigue"
  subtitle = "Suite pour Violoncelle N°6"
  composer = "Jean Sébastien Bach (1685-1750) (1685-1750)"
  opus = "BWV 1012"
  tagline = ##f
}
melodyOne =  \relative a' {
	\repeat volta 2 {
		\partial 8 \clef alto a8  |
		d,4. e8 [ fis g ] |
		<a, fis'>8 [ d a' ] a16 [( g fis g a8) ] |
		d,8 [ a d ] e [ fis g ] |
		fis8 [ d a ] d,4 a''8 |
		fis8 [( a,) a' ] e [( a,) g' ] |
		d8 [( a) fis' ] e [ (a,) g' ] |
		fis8 [ (a,) a' ] e [ (a,) g' ] |
		d8 [ (a) fis' ] cis [ (a) e' ] |
		<a, fis'>8 [ e' fis ] b,16 [ (cis d8) b ] |
		gis16 [ (fis gis a b8) ] e, [ d16 cis d b ] |
		<e a e'>8 [ d' e ] a,16 [ b cis b a g ] |
		fis16 [ e fis g a fis ] d [ fis gis a b cis ] |
		<fis, d'>8 [ cis' d ] fis16 [ (gis a8) fis ] \clef bass |
		<fis, d'>8 [ cis' d ] b16 [ (cis d) b (cis d) ] |
		gis,,16 [ (b e gis b d) ] \clef alto b' [ (a gis a b e,) ] \clef bass |
		<b, g' d'>8 [ cis' d ] d4 e8 |
		<e, a>4. b'8 [ cis d ] |
		<e, cis'>8 [ a e' ] e16 [ (d cis d e8) ] |
		<e, a>8  [ e a ] b [ cis d ] |
		cis8 [ a e ] a,4 a'8 \clef alto |
		e'8 [ e e ] b16 [ (a b cis d8) ] |
		gis8 [ gis gis ] e,16 [ (d e fis gis8) ] |
		gis16 [ (fis gis a b8) ] b16 [ (a b cis d8) ] |
		b'16 [ gis b gis b gis ] e4. |
		a16 [ e a e a e ] e8 [ e e ] \clef bass |
		a,8 [ a a ] d, [ d d ] |
		cis,16 [ e'' (d cis b a) ] e [ d' (cis b a gis) ] |
		a,16 [ e' a cis e gis ] a4 s8 |
	}
	\repeat volta 2 {
		\partial 8 \clef alto e8 |
		e4 fis16 [ g ] g8-. [ fis-. e-. ] |
		e8 [ ais, g' ] e [ ais,16 (b cis b] |
		cis16 [ d cis d e fis ] g8) [ fis e ] |
		d8 [ b fis ] b,4 d'8 |
		g16 [ (fis e d c b) ] c8 [ e, g' ] |
		fis16 [ (e d cis b ais) ] b8 [ d, fis' ] |
		g,,8 [ b''16 (a g fis) ] e [ (d cis d e d) ] |
		cis16 [ (b ais b cis ais) ] fis4 fis'8 |
		d8 [ (fis,) fis' ] cis [ (fis,) e' ] |
		b8 [ (fis) d' ] cis [ (fis,) e' ] |
		d8 [ (fis,) fis' ] cis [ (fis,) e' ] |
		b8 [ (fis) d' ] cis [ (fis,) fis' ] |
		g16 [ (fis e fis g8) ] ais [ b e, ] |
		fis16 [ (e d e fis8) ] ais [ b d, ] |
		cis16 [ (d e fis g b,) ] fis8 [ b ais ] \clef bass |
		b8 [ fis16 (e d cis) ] b8 [ d' a, ] |
		gis8 [ d'' fis,, ] e [ e''16 (d cis b) ] |
		cis8 [ a16 (b cis d) ] \clef alto e [ (fis gis a b) d, ] |
		eis,8 [ (cis') b' ] cis,, [ b''16 (a b gis) ] |
		a16 [ (fis cis b a gis) ] fis [ (gis a b cis d) ] |
		e16 [ fis g8 cis,, ] a [ a''16 (g fis e) ] \clef bass |
		fis8 [ d,16 (c b a) ] g [ d' (e fis g a) ] \clef alto |
		b16 [ d (e fis g a) ] b [ (cis d cis b a) ] |
		g16 [ (fis e d cis b) ] a4 \trill a8 |
		d4. \clef bass fis,16 [ (e fis g a8) ] |
		a4. d,16 [ (cis d e fis8) ] |
		fis16 [ (e fis g a8) ] a [ b16 (a g a) ] |
		fis16 [ a, (b cis d e) ] fis [ (g a b c d) ] |
		<d, b'>8 [ a' b ] e,16 [ (fis g8) e ] |
		cis16 [ (b cis d e8) ] a, [ g16 fis g e ] |
		fis8 [ a'16 (g fis e) ] d [ (e fis e d cis) ] |
		b16 [ a b cis d b ] g [ b (cis d e fis) ] |
		<b, g'>8 [ fis' g ] b16 [ (cis d8) b ] |
		<b, g'>8 [ fis' g ] e16 [ fis g e fis g ] |
		cis,,16 [ (e a cis e g) ] \clef alto e' [ d cis d e a, ] |
		g'16 [ (fis e fis g e) ] cis' [ b a b cis a ] |
		d16 [ a d a d a ] a8 [ a a ] \clef bass |
		d,8 [ d d ] g, [ g g ] \clef alto |
		fis,16 [ a'' (g fis e d) ] a [ g' (fis e d cis) ] \clef bass |
		d16 [ a fis d a fis ] d4 s8 |
      }
}
melodyTwo =  \relative fis {
		\repeat volta 2 {
			\partial 8 s8 |
			fis4. a8 s4 |
			d,8 s8 s2 |
			fis8 s4 a8 s4 |
			s2.*5 |
			d,8 s8 s2 |
			s2. |
			cis8 s8 s2 |
			s4. cis16 s16 s4  |
			b8 s8 r2 |
			a8 s8 s2 |
			s2. |
			e8 s4 e'4 d8 |
			cis4. e8 s4 |
			a,8 s8 s2 |
			cis8 s4 e8 s4 |
			s2. |
			<gis d'>8  [ d' d] s4. |
			<e, d'>8 [ d' d ] s4. |
			s2. |
			d8 [ d d ] d16 [ (b d b d b) ] |
			cis8 [ cis cis ] cis16 [ a cis a cis a ] |
			fis16 [ d fis d fis d ] b [ gis b gis b gis ] |
			s2.*2 |
		}
	\repeat volta 2 {
		\partial 8 \clef alto s8 |
		a'4. s4. |
		s2.*24 |
		a4. s4. |
		s2.*2 |
		g,8 s8 s2 |
		s2.*2 |
		s4. fis16 s16 s4 |
		e8 s4 s4. |
		d8 s4 s4. |
		s2.*2 |
		fis''8 [ fis fis ] fis16 [ d fis d fis d ] \clef bass |
		b16 [ g b g b g ] e16 [ cis e cis e cis ] \clef alto |
		s2.*2 |
   }
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 6/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
