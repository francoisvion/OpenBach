\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "5. Gavotte N°2"
  subtitle = "Suite pour Violoncelle N°6"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 1012"
  tagline = ##f
}
melodyOne =  \relative a {
	\repeat volta 2 {
		\partial 2 \clef alto <a fis'>8 [e'] fis4 |
		a,4 a b cis |
		d8 [cis d e] <a,, fis' d'> [ e'' ] fis4 |
		a,4 a b cis |
		d2 s2 |
	}
	\repeat volta 2 {
		\partial 2 \clef bass a8 [ fis] g4 |
		b4 d d8 [(c) b (a)] |
		b2 a4 d |
		b4 d cis8 [b cis d ] |
		<cis e>2 \clef alto  <a fis'>8 [e'] fis4 |
		a,4 a b cis |
		d8 [ cis d e] <a,, fis' d'> [ e'' ]  fis4 |
		a,4 a b cis |
		d2 d8 [ a d e] |
		fis8 [ a, g' a,] fis' [ a, e' a,] |
		fis'8 [ a, a' a,] g' [ a, e' a,] |
		fis'8 [ a, e' d] cis [ d e cis] |
		d8 [ a b a] d [( a d) e] |
		fis8 [ a, g' a,] fis' [ a, e' a,]|
		fis'8 [ a, a' a,] g' [ a, e' a,] |
		fis'8 [ a, e' d] cis [ d e cis] |
		a2 <a fis'>8 [e'] fis4 |
		a,4 a b cis  |
		d8 [cis d e] <a,, fis' d'> [ e'' ]  fis4 |
		a,4 a b cis_\markup { Gavotte I da Capo } |
		d2 s2 |
    }
}
melodyTwo =  \relative d {
	\repeat volta 2 {
		\partial 2 \clef alto d8 s4. |
		r4 fis4 g e |
		d8 s4. d,8 s4. |
		r4 fis'4 g e |
		d2 s2 |
	}
	\repeat volta 2 {
		\partial 2 \clef bass fis4 d4 |
		g4 d fis d |
		g4 d fis d |
		g4 fis e d |
		d2 \clef alto d8 s4. |
		r4 fis4 g e |
		d8 s4. d,8 s4.  |
		r4 fis'4 g e |
		d2 d |
		d4 d d d |
		d4 d d d |
		d2 d |
		d1 |
		d4 d d d |
		d4 d d d |
		d2 d |
		d2 d8 s4. |
		r4 fis4 g e |
		d8 s4. d,8 s4. |
		r4 fis'4 g e |
		d2 s2 |
    }
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Violoncelle"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
