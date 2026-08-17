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
        piece = "1. Preludio"
        composer = "Jean Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006"
        date = "1720"
  tagline = ##f
}
melodyOne = \relative e'' {
    r8 e'16  [ dis ] e8 [ b gis b ] |
    e,16 [ (fis e dis ] e8) [ b gis b ] |
    e,16 [ b' fis b ] gis [ b a b ] gis [ b fis b ] |
    e,16 [ e' dis cis ] b [ e dis cis ] b [ a gis fis ] |
	e16_\markup { piano } [ b' fis b ] gis [ b a b ] gis [ b fis b ]  |
	e,16 [ e' dis cis ] b [ e dis cis ] b [ a gis fis ]   |
    e16_\markup { forte } [ fis gis a ] b [ cis dis e ] fis [ gis a fis ] |
    gis16 [ b e, fis ] gis [ a b cis ] dis [ e cis dis ] |
    e16 [ b a b ] gis [ b a b ] gis [ b fis b ] |
    e,16 [ e' dis cis ] b16 [ e, cis' e, ] b' [ e, a e]  |
	gis16_\markup { (piano) } [ b fis b ] gis [ b a b ] gis [ b fis b]  |
	e,16 [ e' dis cis ] b16 [ e, cis' e, ] b' [ e, a e]  |
    gis16_\markup { forte }  [ e e ] e16 s16 e16 [ s16 e16  s16 e16 s16 e16 ] |
    s16 e16 [ s16 e16 s16 e16 s16 e16 s16 e16 s16 e16 ] |
    s16 e16 [ s16 e16 s16 e16 s16 e16 s16 e16 s16 e16 ] |
    s16 e16 [ s16 e16 s16 e16 s16 e16 s16 e16 s16 e16 ] |
	s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
    s16 e16 s8. e16 s8. e16 s8 |
	s16 e16 s8. e16 s8. e16 s8 |
    e,16 [ fis e fis ] gis [ b e, fis ] gis [ b e, fis ] |
    gis16 [ a gis a ] b [ e gis, a ] b [ e gis, a ] |
    b16 [ cis b cis ] d [ gis b, cis ] d [ gis b, cis ] |
    d16 [ b' gis e ] d [ b gis e ] d [ cis d b ] |
    cis16 [ dis cis dis ] eis [ gis cis, dis ] eis [ gis cis, dis ] |
    eis16 [ fis eis fis ] gis [ cis eis, fis ] gis [ cis eis, fis ] |
    gis16 [ a gis a ] b [ eis gis, a ] b [ eis gis, a ] |
    b16 [ gis' eis cis ] b' [ gis a fis ] eis [ gis cis, b ] |
    a16 [ cis a fis ] fis' [ dis e cis ] bis [ dis gis, fis ] |
    e16 [ gis e cis ] e [ gis cis gis ] e' [ cis gis' cis, ] |
    bis16 [ dis bis gis ] gis' [ (fisis) gis (fisis) ] gis [ dis e cis ] |
    bis16 [ dis bis gis ] fis' [ eis fis eis ] fis [ dis e cis ] |
    bis16 [ dis c gis ] a [ (gis) a (gis) ] a [ dis, e cis ] |
    bis16 [ fis' cis fis ] dis [ fis cis fis] bis, [fis' dis fis] |
    gis,16 [ fis' dis' fis, ] bis [fis dis' fis,] bis [fis dis' fis, ] |
    gis,16 [ e' cis' e,] e' [ e, cis' e, ] e' [e, cis' e, ] |
    gis,16_\markup { piano } [ fis' dis' fis, ] bis [fis  dis' fis, ] bis [fis  dis' fis, ] |
	gis,16 [ e' cis' e,] e' [e,  cis' e, ] e' e,  cis' e,] |
    gis,16_\markup { forte }  [ fisis' cis' fisis,] e' [fisis,  cis' fisis, ] e' [fisis,  cis' fisis,] |
    gis,16_\markup { piano }  [ fisis' cis' fisis,] e' [fisis,  cis' fisis, ] e' [fisis,  cis' fisis,] |
    gis,16_\markup { forte }  [ gis' cis gis] dis' [gis,  cis gis ] dis' [gis,  cis gis] |
    gis,16_\markup { piano }  [ fis' bis fis] dis' [fis,  bis fis ] dis' [fis,  bis fis] |
    cis16_\markup { forte }  [ cis' b a] gis [cis  gis fis ] e [gis  e dis] |
    cis16 [ cis' gis fis ] e [ gis e dis ] cis [ e cis b ] |
    ais16 [ fis' cis' fis,] e' [fis,  cis' fis, ] e' [fis, cis' fis,] |
    ais,16 [ fis' e' fis,] cis' [fis,  e' fis, ] cis' [fis, e' fis,] |
    b,16 [ b'' ais gis ] fis [ b fis e ] dis [ fis dis cis ] |
    b16 [ b' fis e ] dis [ fis dis cis ] b [ dis b a ] |
    gis16 [d' e d] gis [d b' d,] gis [d e d] |
    gis,16 [d' e d] gis, [d' fis, d'] gis, [d' e, d'] |
    cis16 [ e a gis ] a [e d e] cis [e b e] |
    a,16 [ a' gis fis ] e [a, fis' a, ] e' [a, d a ] |
    cis16_\markup { piano }  [e b e] cis [e d e] cis [e b e] |
    a,16 [ a' gis fis ] e [ a, fis' a,] e' [a, d a] |
    cis16_\markup { forte }  [ a16 a ] a 	s16  a16 [ s16 a16 s16 a16 s16 a16 ] |
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] |
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] |
	s16  a16 [ s16 a16 s16 a16 s16  a16  s16 a16 s16 a16] |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
	s16 a16 s8. a16 s8. a16 s8  |
    a,16 [ b a b ] cis [ e a, b ] cis [ e a, b ] |
    cis16 [ d cis d ] e [ a cis, d ] e [ a cis, d ] |
    e16 [ fis e fis ] g [ cis e, fis ] g [ cis e, fis ] |
    g16 [ e' cis d ] e [ cis ais b ] cis [ ais fis e ] |
    d16 [ cis b cis ] d [ fis b, cis ] d [ fis b, cis ] |
    d16 [ e d e ] fis [ b d, e ] fis [ b d, e ] |
    fis16 [ gis fis gis ] a [ dis fis, gis ] a [ dis fis, gis ] |
    a16 [ fis' dis e ] fis [ dis bis cis ] dis [ bis gis fis ] |
    eis16 [ b'' gis a ] b [ gis eis fis ] gis [ eis cis b ] |
    a16 [ cis' a b ] cis [ a fis gis ] a [ fis dis cis ] |
    b16 [ d' b cis ] d [ b gis a ] b [ gis eis gis ] |
    cis,16 [ dis cis dis ] eis [ gis cis, dis ] eis [ gis cis, dis ] |
    eis16 [ fis eis fis ] gis [ b eis, fis ] gis [ b eis, fis ] |
    gis16 [ a gis a ] b [ d gis, a ] b [ d gis, a ] |
    b16 [ d b gis ] eis [ b' gis eis ] cis [ b' a gis ] |
    fis16 [ gis a fis ] b, [ a' gis fis ] cis [ gis' fis eis ] |
    d16 [ e fis d ] gis, [ fis' e d ] ais [ e' d cis ] |
    b16 [ cis d b ] eis, [ d' cis b ] fis [ cis' b a ] |
    gis16 [ a b a ] gis [ b a b ] gis [ b fis b ] |
    eis,16 [ fis gis a ] b [eis, d' eis, ] cis' [eis, b' eis, ] |
    fis16 [ a fis cis ] a [cis fis cis ] a' [ cis, fis cis] |
    eis16 [ gis eis cis ] eis [ gis cis gis ] eis' [ cis gis' b, ] |
    a16 [ cis a fis ] a [ cis fis cis ] a' [ fis cis' fis, ] |
    eis16 [ gis eis cis ] cis' [ (bis) cis (bis) ] cis [ gis a fis ] |
	eis16 [ gis eis cis ] b' [ (ais) b (ais) ] b [ gis a fis ] |
    eis16 [ gis eis cis ] d [ (cis) d (cis) ] d [ gis, a fis ] |
    eis16 [ (gis cis) b' ] b [ (gis) a (fis) ] eis [ gis cis, b ] |
    a16 [ (cis fis) cis' ] cis [ (a) b (gis) ] fis [ a d, cis ] |
    b16 [ d g, fis ] eis [ gis cis, b ] a [ cis fis gis ] |
    a16 [fis b fis ] cis' [fis, d' fis, ] cis [ fis gis eis ] |
    fis16 [(a) gis (a)] a [(a) gis (a)] fis [(a) e (a)] |
    dis,16 [(a') e (a)] fis [(a) gis (a)] a [(a) fis (a)] |
    gis16 [ a gis fis ] e [(e') dis (e)] cis [(e) b (e)] |
    ais,16 [(e') b (e)] cis [(e) dis (e)] e [(e) cis (e)] |
    dis16 [ e dis cis ] b [ cis dis e ] fis [ gis a fis ] |
    b16 [b, a b ] gis [(b) fis (b)] e, [(b') d, (b')] |
    cis,16 [ e fis gis ] a [ b cis d ] e [ fis gis e ] |
    a16 [a, gis a] fis [(a) e (a)] dis, [(a') cis, (a')] |
    b,16 [ dis e fis ] gis [ a b cis ] dis [ e fis dis ] |
    gis16 [e, d e ] cis [(e) b (e)] a, [(e') gis, (e')] |
    a,16 [ (e' cis') b ] cis [ e a gis ] a [ fis cis e ] |
    b,16 [ (fis' dis') cis ] dis [ fis a gis ] a [ fis dis fis ] |
    b,,16 [ (gis' b) a ] b [ e gis fis ] gis [ e b e ] |
    b,16 [ (ais' cis) b ] cis [ e ais gis ] ais [ e cis e ] |
    dis16 [ b' ais gis ] fis [ b fis e ] dis [ fis dis cis ] |
    b16 [ b' a gis ] fis [ a fis e ] dis [ fis dis cis ] |
    b16 [ a' gis fis ] e [ gis e dis ] cis [ e cis b ] |
    a16 [ gis' fis e ] dis [ fis dis cis ] b [ dis b a ] |
    gis16 [ e' cis b ] a [ cis a gis ] fis [ a fis e ] |
    dis16 [ fis a cis ] b [ dis fis gis ] a [ gis a fis ] |
    gis16 [ e gis b ] e [ b gis e ] b [ (fis' e') dis ] |
    e16 [ b gis e ] d [(e) cis (e)] d [(e) b (e)] |
    cis16 [e a e] cis [(e) b (e)] cis [(e) a, (e')] |
    b16 [e gis e] b [(e) a, (e')] b [(e) gis, (e')] |
    a,16 [e' fis e ] dis [(e) e] (e) fis [(e) gis (e)] |
    <fis, dis' a'>4. b'8 <b, gis'>4 |
    a,16 [a'' (gis a32 fis) ] fis4. e8 |
    e16 [e' dis cis ] b [dis a dis] gis, [dis' fis, dis'] |
    e,16 [ e dis cis ] b [ e a, e'] gis, [e' fis, e'] |
	e,16 [( gis b dis)] e [( gis b dis)] e8 r8 \bar "|."
}
melodyTwo =  \relative d'' {
	s1*3/4*12 |
    s4 dis16 [ s16 e16 s16 fis16 s16 dis16 s16 ] |
    e16 [ s16 gis16 s16 fis16 s16 gis16 s16 a16 s16 fis16] s16  |
    gis16_\markup { piano } [ s16 e16 s16 dis16 s16 e16 s16 fis16 s16 dis16] s16  |
    e16 [ s16 gis16 s16 fis16 s16 gis16 s16 a16 s16 fis16] s16  |
    gis16_\markup { forte }  [ s16 gis16 e ] gis [ s16 gis16 e ] gis [ s16 gis16 e ] |
    gis16 [ s16 gis16 dis ] gis [ s16 gis16 dis ] gis [ s16 gis16 dis ]  |
    gis16 [ s16 gis16 d ] gis [ s16 gis16 d ] gis [ s16 gis16 d ] |
    a'16 [ s16 a16 cis, ] a' [ s16 a16 cis, ] a' [ s16 a16 cis, ] |
    a'16 [ s16 a16 b, ] a' [ s16 a16 b, ] a' [ s16 a16 b, ] |
    gis'16 [ s16 gis16 b, ] gis' [ s16 gis16 b, ] gis' [ s16 gis16 b, ] |
    gis'16 [ s16 gis16 a, ] gis' [ s16 gis16 a, ] gis' [ s16 gis16 a, ] |
    fis'16 [ s16 fis16 a, ] fis' [ s16 fis16 a, ] fis' [ s16 fis16 a, ] |
    fis'16 [ s16 fis16 gis, ] fis' [ s16 fis16 gis, ] fis' [ s16 fis16 gis, ]  |
    e'16 [ s16 e16 gis, ] e' [ s16 e16 gis, ] e' [ s16 e16 gis, ]  |
    e'16 [ s16 e16 fis, ] e' [ s16 e16 fis, ] e' [ s16 e16 fis, ]  |
	dis'16 [ s16 dis16 fis, ] dis' [ s16 dis16 fis, ] dis' [ s16 dis16 fis, ]  |
    s1*3/4*34 |
 	s4 gis16 [ s16 a16 s16 b16 s16 gis16 ] s16  |
    a16 [s16  cis16 s16  b16 s16  cis s16  d16 s16  b ] s16 |
    cis16_\markup { forte } [ s16 a16 s16  gis16 s16  a16 s16  b16  s16  gis16 ] s16 |
    a16 [ s16 cis16 s16  b16 s16  cis16 s16  d16 s16  b16 ] s16 |
	cis16 [ s16 cis16 a ] cis [ s16 cis16 a] cis [ s16 cis16 a ] |
	cis16 [ s16 cis16 gis ] cis [ s16 cis16 gis] cis [ s16 cis16 gis ] |
	cis16 [ s16 cis16 g ] cis [ s16 cis16 g] cis [ s16 cis16 g ] |
	d'16 [ s16 d16 fis, ] d' [ s16 d16 fis,] d' [ s16 d16 fis, ] |
	d'16 [ s16 d16 e, ] d' [ s16 d16 e,] d' [ s16 d16 e, ] |
	cis'16 [ s16 cis16 e, ] cis' [ s16 cis16 e, ] cis' [ s16 cis16 e, ] |
	cis'16 [ s16 cis16 d, ] cis' [ s16 cis16 d, ] cis' [ s16 cis16 d, ] |
	b'16 [ s16 b16 d, ] b' [ s16 b16 d, ] b' [ s16 b16 d, ] |
	b'16 [ s16 b16 cis, ] b' [ s16 b16 cis, ] b' [ s16 b16 cis, ] |
	a'16 [ s16 a16 cis, ] a' [ s16 a16 cis, ] a' [ s16 a16 cis, ] |
	a'16 [ s16 a16 b, ] a' [ s16 a16 b, ] a' [ s16 a16 b, ] |
	gis'16 [ s16 gis16 b, ] gis' [ s16 gis16 b, ] gis' [ s16 gis16 b, ] |
	s1*3/4*55 |
    b4. s8 e4 |
	s4 b'2 |
	s1*3/4*3   \bar "|."
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
