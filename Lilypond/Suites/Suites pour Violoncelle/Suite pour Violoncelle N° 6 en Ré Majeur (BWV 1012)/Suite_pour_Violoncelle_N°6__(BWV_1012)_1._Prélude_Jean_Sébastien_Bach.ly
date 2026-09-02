\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "1. Prélude"
  subtitle = "Suite pour Violoncelle N°6"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 1012"
  tagline = ##f
}
melodyOne =  \relative d {
    s8_\markup { (forte) } d8 s4 d8 s4 d8 s4 d8 s8 |
    s8_\markup { piano } d8 s4 d8 s4 d8 s4 d8 s8 |
    b'8_\markup { forte } [ d,8 (g) ] b [ (cis d) ] a [ (d, fis) ] a [ (cis d) ] |
    b8_\markup { piano }  [ d,8 (g) ] b [ (cis d) ] a [ d, (fis) ] a [ (cis d) ] |
    g,8_\markup { forte } [ (e8 fis) ] g [ (d fis) ] g [ (cis, fis) ] g [ (a, g') ]  |
    fis8 [ (d e) ] fis [ (cis e) ] fis [ (b, d) ] fis [ (a, d) ] |
    e8 [ (gis, d') ] e [ (a, cis) ] d [ (a cis) ] d [ (gis, b) ] |
    cis8 [ a (cis) ] e [ (fis gis) ] a [ cis, (e) ] gis [ (a b) ] |
    cis8 [ e, (gis) ] a [ (cis d) ] e [ a, (cis) ] \clef alto e [ (fis gis) ] |
    a8 [ a, (b) ] cis [ (e) b ] cis [ (a') e ] cis [ (e) cis ] |
    a8 [ (a') b, ] cis [ (e) b ] cis [ (a') e ] cis [ (e) cis ] |
    s8 a8 s4 a8 s4 a8 s4 a8 s8  |
    s8_\markup { (piano) }    a8 s4 a8 s4 a8 s4 a8 s8  |
    fis'8_\markup { (forte) } [ a,8 (d) ] fis [ (gis a) ] e [ a, (cis) ] e [ (gis a) ] |
    fis8_\markup { piano }  [ a,8 (d) ] fis [ (gis a) ] e [ a, (cis) ] e [ (gis a) ] |
    d,8_\markup { (forte) } [ (b8 cis) ] d [ (a cis) ] d [ (gis, cis) ] d [ (e, d') ]|
    cis8 [ (a b) ] cis [ (gis b) ] cis [ (fis, a) ] cis [ (e, a) ] |
    c8 [ (dis,) c' ] b [ (c) a ] fis' [ (a,) c ] b [ (c) a ] |
    g8 [ e (g) ] b [ (cis dis) ] e [ g, (b) ] dis [ (e fis) ] |
    g8 [ b, (dis) ] e [ (g a) ] b [ e, (g) ] b [ (cis dis) ] |
    e8 [ e, (fis) ] g [ (b) fis ] g [ (e') b ] g [ (b) g ] |
    e8 [ (e') fis, ] g [ (b) fis ] g [ (e') b ] g [ (b) g ] |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s4 e8 s4 e8 s8 |
    s8 e8 s4 e8 s8 s2. |
    d8 [( b fis') ] d [ (b fis') ] d [ (b cis) ] d [ (e fis) ] |
    g,8 [ (b d) ] fis [ (b ais) ] b [ (g e) ] d' [ (cis b) ] |
    ais8 [ (e) cis' ] ais [ (e) cis' ] ais [ (e) fis ] g [ (fis e) ] |
    d8 [ (b') fis ] d [ (b') fis ] d [ (b') a ] gis [ (a b) ] |
    eis,8 [ d (cis) ] d [ gis, (fis) ] gis [ d' (cis) ] d [ (eis d) ] |
    cis8 [ e (d) ] cis [ e (b) ] \clef bass ais [ (b cis) ] g [ (fis e) ] |
    d8 [ (fis b) ] a [ (g fis) ] g [ (e d) ] cis [ (d e) ] |
    ais,8 [ (cis fis) ] e [ (d cis) ] d [ (b a) ] gis [ (a b) ] |
    eis,8 [ (b' d) ] eis, [ (b' d) ] b' [ (cis d) ] cis [ (ais b) ] |
    fis,8 [ (b d) ] fis, [ (b d) ] b' [ (cis d) ] cis [ (ais b) ] |
    g,8 [ (b e) ] b' [ (cis d) ] cis [ (ais b) ] \clef alto eis [ (ais, b) ] |
    fis'8 [ cis (d) ] b' [ (a g) ] fis [ (e d) ] c [ (e b) ] \clef bass |
    ais8 [ (g fis) ] e [ (d cis) ] d [ (fis b) ] fis [ (b ais) ] |
    b8 [ (fis e) ] d [ (fis cis) ] d [ (b d) ] fis [ (b fis) ] |
    d8 [ (b' fis) ] d [ (fis cis) ] d [ (b d) ] fis [ (a gis) ] |
    a8 [ (e d) ] cis [ (e b) ] cis [ (a cis) ] e [ (a e) ] |
    cis8 [ (g' e) ] cis [ (e b) ] cis [ (a cis) ] e [ (fis g) ] |
    fis8 [ (a g) ] fis [ (a e) ] fis [ (d e) ] fis [ (a b) ] |
    c8 [ (a g) ] fis [ (a e) ] fis [ (d fis) ] a [ (b c) ] |
    b8 [ (g) a ] b [ (d) a ] b [ (g') d ] b [ (d) a ] |
    b8_\markup { (piano) } [ (g) a ] b [ (d) a ] b [ (g') d ] b [ g d ] |
    s8_\markup { forte }  g,8 s4 g8 s4 g8 s4 g8 s8 |
    s8_\markup { (piano) } g8 s4 g8 s4 g8 s4 g8 s8 |
    e'8_\markup { (forte) } [ g, (c) ] e [ (fis g) ] d [ g, (b) ] d [ (fis g) ] |
    e8 [ g, (c) ] e [ (fis g) ] d [ g, (b) ] d [ (fis g) ] |
    c,8 [ (a b) ] c [ (a g) ] fis [ (a b) ] c [ (a fis) ] |
    d8 [ (fis a) ] c [ (d fis) ] a [ (d a) ] fis [ (d c) ] |
    b8 [ (g a) ] b [ (d a) ] b [ (g a) ] b [ (g' a,) ] |
    b8 [ (g a) ] b [ (d a) ] b [ (g a) ] b [ (g' e) ] |
    cis8 [ a (b) ] cis [ (e fis) ] g [ (e d) ] cis [ (e b) ] |
    cis8 [ a (b) ] cis [ (e fis) ] g [ (a b) ] cis [ (d e) ] |
    fis,8 [ d (e) ] fis [ (a) e ] fis [ d (e) ] fis [ (d') e, ] |
    fis8 [ d (e) ] fis [ (a) e ] fis [ d (e) ] a [ (d) b ] |
    gis8 [ (e fis) ] gis [ (b cis) ] d [ (b a) ] gis [ (b fis) ] |
    gis8 [ (e fis) ] gis [  ( \clef alto b cis) ] d [ (e fis) ] gis [ (a b) ] |
    cis,8 [ (a b) ] cis [ (e fis) ] g [ (e d) ] cis [ (e b) ] |
    cis8 [ (a b) ] cis [ (e fis) ] g [ (a b) ] cis [ (d e) ] |
    a,,8 [ (fis') d' ] fis, [ (d) e ] fis [ (d') e, ] fis [ (d') d, ] \clef soprano |
    a8 [ (g') e' ] g, [ (e fis) ] g [ (e' fis,) ] g [ (e' e,) ] |
    a,8 [ (a') fis' ] a, [ (fis) g ] a [ (fis') g, ] a [ (fis') fis, ] |
    a,8 [ (b') g' ] b, [ (g) a ] b [ (g') a, ] b [ (g') g, ] |
    a,8 [ (cis') g' ] fis [ (e d) ] cis [ (fis e) ] d [ (cis b) ] |
    a8 [ fis' (e ] fis) [ g, (fis ] g) [ e' (d ] e) [ fis, (e ] |
    fis8) [ d' (cis ] d) [ e, (d ] e) [ cis' (b ] cis) [ a fis ] |
    d8 [ (b' a) ] b [ (g e) ] cis [ (a' g) ] a [ (fis d) ] |
    b8 [ (g' fis) ] g [ (e cis) ] a8. [ b16 (cis32 d32 e32 fis32) ] g8 [ e cis ] \clef bass |
    a8 [ (fis' e) ] fis [ (d b) ] g8. [ a32 (b32 cis16 d16) ] e8 [ (cis a) ] |
    fis8 [ (d' cis) ] d [ (b g) ] e8. [ (fis32 g32 a16 b16) ] cis8 [ (a fis) ] |
    d8 [ b' (g) ] e [ (cis) a' ] b, [ g' (e) ] cis [ (a) fis' ] |
    g,8 [ e' (cis) ] a [ (fis) d' ] e, [ (g a) ] cis [ (e fis) ] |
    g8 [ (a cis) ] \clef alto e [ (g a) ] cis4. ~ cis16 [b a (g fis e) ] |
    a16 [ (g fis e d cis) ] fis [ (e d cis b a) ] \clef bass d [ (cis b a gis fis) ] b [ (a gis fis e d) ] |
    cis16 [ (e a cis e a) ] e [ (cis a e cis a) ] cis [ (e a cis e a) ] e [ (cis a e cis a) ] |
    g16 [ (e' a cis e a) ] e [ (cis a e cis a) ] g [ (e' a cis e a) ] e [ (cis a e cis a) ] |
    fis16 [ a (b c b a) ] d, [ a' (b c b a) ] fis' [ a( b c b a) ] fis' [ a, (b c b a) ] |
    b16 [ (d c b a g) ] b [ (a g fis e d) ] e [ (g fis e d cis) ] fis [ (e d cis b a) ] |
    f'16 [ (e d e f) d ] gis, [ d' (e f e d) ] b' [ d, (e f e d) ] d' [ d, (e f e d) ] \clef alto |
    s8 a'8 s4 a8 s4 a8 s4 a8 s8  |
    s8 a8 s4 a8 s4 a8 s4 a8 s8 |
    s8 d,8 s4 d8 s4 d8 s4 d8 s8  |
    s8 d8 s4 d8 s4 d8 s4 d8 s8  |
    gis16 [ (a b cis d e) ] d [ (e) cis (e) d (e)] d [ (e) cis (e) d (e)] d [ (e) cis (e) b (e)]|
    g,16 [ (a cis d e d) ] cis [ (e) b (e) cis (e)] cis [ (e) b (e) cis (e)] cis [ (e) b (e) a, (e')] \clef alto |
    fis,8 [ e' (a) ] d, [ (cis b) ] e, [ d' (g) ] cis, [ (b a) ] |
    d,8 [ a' (fis') ] b [ (gis a) ] a [ (fis g) ] g [ (e f) ] |
    f8 [ (d es) ] es [ (cis d)] \clef bass <gis, d'>8 r8 r8 <g d'>8 r8 r8 |
    <fis d'>8 r8 r8 <f d'>8 r8 r8 <e d'>8 r8 r8 <e cis'>8 r8 r8 |
    d8 [ (fis a) ] d [ (a fis) ] d [ (fis a) ] c [ (a fis) ] |
    d8 [ (g b) ] d [ (b d) ] \clef alto g [ (d g) ] b [ (g e) ] |
    cis8 [ (e d) ] e [ (g fis) ] g [ (b a) ] b [ (d cis) ] |
    d8 [ (a fis) ] a [ (fis d) ] fis [ (d a) ] \clef bass d [ (a fis) ] |
    a8 [ fis d ] fis [ d a ] d, [ a' fis' ] d'4 \fermata s8 \bar "|."
    }
melodyTwo =  \relative a, {
    d8  [s8 d8] d8  [s8 fis8] d8  [s8 a'8] d,8 [s8 d'8]  |
    d,8 [s8 d8] d8 [s8 fis8] d8 [s8 a'8] d,8 [s8 d'8] |
	s1*12/8*9 |
    a8  [s8 a8] a8  [s8 cis8] a8  [s8 e'8] a,8 [s8 a'8]  |
    a,8  [s8 a8] a8  [s8 cis8] a8  [s8 e'8] a,8 [s8 a'8] |
	s1*12/8*9 |
    e8  [s8 dis8] e8  [s8 fis8] g8  [s8 fis8] e8 [s8 dis8] |
    e8  [s8 dis8] e8  [s8 fis8] g8  [s8 fis8] e8 [s8 dis8] |
    e8  [s8 g8] dis8  [s8 fis8] e8  [s8 g8] dis8 [s8 fis8]|
    e8  [s8 g8] fis8  [s8 a8] g8  [s8 e8] g8 [s8 a8] |
    g8  [s8 fis8] g8  [s8 a8] b8  [s8 a8] g8 [s8 fis8] |
	g8  [s8 fis8] g8  [s8 a8] b8  [s8 a8] g8 [s8 fis8] |
    g8  [s8 b8] fis8  [s8 a8] g8  [s8 b8] fis8 [s8 a8] |
    g8  [s8 e8] fis8  [s8 dis8] e8  [s8 g8] fis8 [s8 dis8] |
    e8  [s8 g8] d8  [s8 fis8] cis8  [s8 e8] b8 [s8 d8] |
    ais8  [s8 cis] ais8  [s8 cis8] fis,  [g' ( fis] e [d cis)] |
	s1*12/8*21 |
    g,8  [s8 g8] g8  [s8 b8] g8  [s8 d'8] g,8 [s8 g'8] |
    g,8  [s8 g8] g8  [s8 b8] g8  [s8 d'8] g,8 [s8 g'8] |
	s1*12/8*34 |
    a8  [s8 a8] a8  [s8 cis8] a8 [s8 e'8] a,8 [s8 a'8] |
    a,8  [s8 a8] a8  [s8 cis8] a8 [s8 e'8] a,8 [s8 a'8]] \clef bass|
    d,,8  [s8 d8] d8  [s8 fis8] d8  [s8 a'8] d,8 [s8 d'8] |
    d,8  [s8 d8] d8  [s8 fis8] d8  [s8 a'8] d,8 [s8 d'8]|
    s1*12/8*4 |
	s2. b,8 s4 bes8 s4 |
    a8 s4 gis8 s4 a8 s4 a8 r8 s8 |
    s1*12/8*5 |
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Cello"
	\set Staff.midiInstrument = "cello"
        { \clef bass \key d \major \time 12/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
