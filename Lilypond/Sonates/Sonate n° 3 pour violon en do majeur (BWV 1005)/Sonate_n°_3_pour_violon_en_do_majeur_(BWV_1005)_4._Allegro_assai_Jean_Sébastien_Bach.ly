\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "4. Allegro assai"
  subtitle = "Sonate n° 3 pour violon en do majeur"
  subsubtitle = "6 sonates pour violon"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1005"
  tagline = ##f
}
melody = \relative c'' {
	\repeat volta 2 {
		c16 [ (d e f ] g8) [ c,8 ] d16 [ c b a ] |
		g [ (a b c ] d [ e f) a ] g [ f e d ] |
		c [ (d e f ] g8) [ c,8 ] d16 [ c b a ] |
		g [ (a b d ] c) [ b a g ] f [ e f d ] |
		e [ c' (b c ] d [ c b c) ] g' [ c, (b c) ] |
		e, [ c' g' c, ] a' [ c, bes' c, ] a' [ c, g' c, ] |
		f, [ c' (b c ] d [ c b c) ] a' [ c, (b c) ] |
		f, [ c' a' c, ] f, [ c' e, c' ] f, [ c' d, c' ] |
		e, [ c' (b c ] d [ c b c) ] g' [ c, (b c) ] |
		e, [ c' g' c, ] a' [ c, bes' c, ] a' [ c, g' c, ] |
		f, [ c' (b c ] d [ c b c) ] a' [ c, (b c) ] |
		f, [ c' a' c, ] f, [ c' e, c' ] f, [ c' d, c' ] |
		e, [ c' (b c) ] g' [ c, (b c) ] a [ c (b c) ] |
		d, [ c' (b c) ] f [ c (b c) ] g [ c (b c) ] |
		c, [ (d e f) ] g [ c d e ] f [ e d c ] |
		d [ (c b a ] g8) [ d'8 ] f,16 [ e f d ] |
		e [ (g a b ] c8) [ g'8 ] bes,16 [ a bes g ] |
		a [ b (cis bes') ] g [ f e d ] cis [ b a g ] |
		f [ (e d e ] f8) [ d'8 ] a16 [ g f e ] |
		d [ (c b c ] d) [ a' f e ] d [ c b a ] |
		g [ f' (e d) ] g, [ e' (d c) ] g [ g' (f e) ] |
		d [ b (a g) ] f' [ b, (a g) ] d' [ c (b a) ] |
		g [ f' (e d) ] g, [ e' (d c) ] g [ g' (f e) ] |
		d [ b (a g) ] g' [ b, (a g) ] d' [ c (b a) ] |
		g [ f' (e f) ] b [ f (e f) ] d' [ f, (e f) ] |
		g, [ e' d' e, ] c' [ e, b' e, ] c' [ e, g, e' ] |
		a, [ g' (fis g) ] cis [ g (fis g) ] e' [ g, (fis g) ] |
		a, [ fis' e' fis, ] d' [ fis, cis' fis, ] d' [ fis, a, fis' ] |
		d [ c' (b c ] d [ c b c) ] a' [ c, (b c) ] |
		d, [ c' (a' c,) ] b [ a' c, a' ] b, [ a' a, a' ] |
		d,, [ b' (a b ] c [ b a b) ] a' [ b, (a b) ] |
		d, [ b' g' b, ] a [ g' b, g' ] cis, [ g' d g ] |
		d, [ cis' (b cis ] d [ cis b cis) ] g' [ cis, (b cis) ] |
		d, [ cis' g' cis, ] e [ g cis, g' ] a, [ g' cis, g' ] |
		d, [ d' g e ] fis [ d g e ] fis [ d g e ] |
		fis [ e d e ] fis [ g a b ] c [ b c a ] |
		d, [ c' (bes a) ] d, [ bes' (a g) ] d [ d' (c bes) ] |
		a [ fis (e d) ] c' [ fis, (e d) ] a' [ g (fis e) ] |
		d [ c (bes a) ] d [ bes (a g) ] es' [ d (c bes) ] |
		a [ fis (e d) ] c' [ fis, (e d) ] fis' [ d e fis ] |
		g [ (a bes c ] d8) [ g,8 ] bes16 [ a g fis ] |
		g [ d (c b) ] d [ (c b a) ] g4 |
	}
	\repeat volta 2 {
		g16 [ (a b c ] d8) [ g,8 ] a16 [ g fis e ] |
		d [ (e fis g ] a [ b c) e ] d [ c b a ] |
		g [ (a b c ] d8) [ g,8 ] a16 [ g fis e ] |
		d [ (e fis) a ] g [ fis e d ] c [ b c a ] |
		b [ g' (fis g ] a [ g fis g) ] d' [ g, (fis g) ] |
		b, [ g' d' g, ] e' [ g, f' g, ] e' [ g, d' g, ] |
		c, [ g' (fis g ] a [ g fis g) ] e' [ g, (fis g) ] |
		c, [ g' e' g, ] c, [ g' b, g' ] c, [ g' a, g' ] |
		b, [ g' (fis g ] a [ g fis g) ] d' [ g, fis g ] |
		b, [ g' d' g, ] e' [ g, f' g, ] e' [ g, d' g, ] |
		c, [ g' (fis g ] a [ g fis g) ] e' [ g, fis g ] |
		c, [ g' e' g, ] c, [ g' d g ] e [ g d g ] |
		cis, [ a' (gis a ] b [ a gis a) ] e' [ a, gis a ] |
		cis, [ a' e' a, ] f' [ a, g' a, ] f' [ a, e' a, ] |
		d, [ a' (gis a ] b [ a gis a) ] f' [ a, (gis a) ] |
		d, [ a' f' a, ] d, [ a' cis, a' ] d, [ a' b, a' ] |
		cis, [ a' (gis a ] b [ a gis a) ] e' [ a, (gis a) ] |
		cis, [ a' e' a, ] f' [ a, g' a, ] f' [ a, e' a, ] |
		d, [ a' (gis a ] b [ a gis a) ] f' [ a, (gis a) ] |
		d, [ a' f' a, ] d, [ a' e a ] f [ a d, a' ] |
		g [ (a bes c ] d8) [ bes'8 ] f,16 [ e f d ] |
		e [ (g a b ] c [ d e f) ] g [ a bes g ] |
		a [ (g f e ] f8) [ a8 ] e,16 [ d e c ] |
		d [ f (g a ] bes [ c d e) ] f [ g a f ] |
		g [ (f e d ] cis [ d e) a, ] g [ f g e ] |
		a [ (g f e ] d [ e f) c ] bes [ a bes g ] |
		a [ g' (f e) ] a, [ f' (e d) ] a [ a' (g f) ] |
		e [ cis (b a) ] g' [ cis, (b a) ] e' [ (d cis b) ] |
		a [ g'_\markup {piano } (f e) ] a, [ f' (e d) ] a [ a' (g f) ] |
		e [ cis (b a) ] a' [ cis, (b a) ] e' [ d (cis b) ] |
		a [ g'_\markup {forte } (fis g) ] cis [ g (fis g) ] e' [ g, (fis g) ] |
		a, [ f' e' f, ] d' [ f, cis' f, ] d' [ f, a, f' ] |
		gis, [ f' (e f) ] b [ f (e f) ] d' [ f, (e f) ] |
		gis, [ f' d' f, ] gis, [ e' d e ] c [ e b e ] |
		a, [ e' (fis gis ] a) [ b c a ] c [ (b a gis) ] |
		a [ (c b a) ] e' [ (d c b ] a [ g f e )] |
		f [ a b cis ] d [ e f d ] f [ (e d c) ] |
		g' [ d (c b) ] d [ (c b a ] g [ f e d )] |
		e [ g a b ] c [ d e f ] g [ e (d c) ] |
		a' [ c, (bes a) ] c [ (bes a g ] f [ e d c) ] |
		d [ f g a ] b [ c d e ] f [ e (d c) ] |
		b' [ f (e d ] c [ b a g) ] f [ e f d ] |
		e [ g d g ] e [ g c g ] e' [ g, c g ] |
		b [ d a d ] b [ d g d ] b' [ d, g d ] |
		e [ g d g ] c, [ g' b, g' ] a, [ g' a g ] |
		fis [ e d e ] fis [ g a b ] c [ d e fis ] |
		g [ d b d ] g, [ d' a d ] b [ d g, d' ] |
		f [ d b d ] g, [ d' a d ] b [ d g, d' ] |
		e [ c b c ] g [ c e c ] g' [ c, e c ] |
		d [ b a b ] g [ b d b ] g' [ b, d b ] |
		a, [ g' c b ] a [ c g c ] fis, [ c' e, c' ] |
		d,, [ c' a' g ] fis [ a e a ] d, [ a' c, a' ] |
		b, [ d g fis ] g [ d e c ] d [ b c a ] |
		b [ g c a ] b [ g c a ] b [ g d' b ] |
		g [ f' (es d) ] g, [ es' (d c) ] g [ g' (f es) ] |
		d [ b (a g )] f' [ b, (a g) ] d' [ c (b a) ] |
		g [ f (es d) ] g [ es (d c) ] gis' [ g (f es) ] |
		d [ b (a g) ] f' [ b, (a g) ] b' [ g a b ] |
		c [ (d e f ] g8) [ c,8 ] e16 [ d c b ] |
		c [ g (f e) ] g [ (f e d) ] c4 \bar "|."
	}
}
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key c \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
