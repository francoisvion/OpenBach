\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
        title = "Suite E-Dur - Suite BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "7. Gigue"
        composer = "Jean-Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
arrangement = "Hajo Dezelski"
  tagline = ##f
}
melodyOne =  \relative b'' {
	\repeat volta 2 {
		\partial 8 b8_\f  |
    gis8 [e b ] e,16 [ fis gis a b cis ] |
    dis16 [ e fis8 fis ] a,16 [ gis a8 fis' ] |
    b,,16 [ cis dis e fis gis ] a [ gis a cis b a ] |
    gis16 [ fis gis a b gis ] e8. [ fis16 gis a ]|
    b16 [ gis e gis b d ] cis16 [ e a e cis a ] |
    b16_\p [ gis e gis b d ] cis16 [ e a e cis a ] |
    dis16_\f [ fis16 a fis dis b ] r16 a'16 [ gis fis gis e ] |
    b16 [ dis fis8 a ] gis16 [ fis e fis gis e ] |
    ais,16 [ cis e8 gis ] fis16 [ e dis cis b a ] |
    gis16 [b dis8 fis ] e16 [ dis cis dis e cis ] |
    fis,16 [ cis' b cis dis b ]  e,16 [ gis cis dis e fis ] |
    gis16 [ fis e dis cis e ] b' [ ais gis fis e dis ] |
    e16 [ dis e8 e ] r4 r8 |
    ais,16 [ cis <cis e>8 <cis e>8 ] r4 r8 |
    r16  e[ dis cis b ais ] fis'8 [ e16 dis cis dis ] |
    b4. b4 s8 |
	}
 	\repeat volta 2 {
	\partial 8 fis'8 |
    dis8 [ b fis16 gis ] a [ b cis dis e fis ] |
    gis16 [ a b8 b ] d,16 [ cis d8 b' ] |
    eis,,16 [ fis gis a b d ] cis [ dis eis fis gis b ]  |
    a16 [ gis b a gis fis ] gis8 [ cis, gis' ] |
    a16 [ fis cis fis a fis ] d [ b fis b d b ] |
    gis'16 [ e b e gis e ] cis [ a e a cis a ] |
    fis'16 [ e fis gis a b ] cis,8 [ d16 cis b cis ] |
    a4. <cis, e a>4 cis'8 |
    r16 fis,16 [ a cis b a ] r16 b16 [ dis fis e dis ] |
    r16 e,16 [ gis b a gis ] r16 a16 [ cis e dis cis ] |
    b16 [ dis fis a gis fis ] <e b'>8 [ a16 gis fis e ] |
    dis16 [ cis dis e fis dis ] b [ cis dis e fis gis ] |
    a16 [ gis <fis a>8 <fis a> ] r4 r8 |
    dis16 [ fis <fis a>8 <fis a> ] r4 r8 |
    r16  a [gis fis e dis ] <e b'>8 [ a16 gis <dis fis> gis ] |
    e4. <gis, b e>4 s8 |
	}
}
melodyTwo =  \relative e {
	\repeat volta 2 {
 	\partial 8 r8 |
    e4 r8 gis4 r8  |
    fis4 r8 e4 r8 |
    r4 r8 b'4 r8 |
    e,4 r8 r4 r8 |
    gis4 r8 a4 r8 |
    gis4 r8 a4 r8 |
    fis4 b8 e4 e,8 |
    dis'8 [ dis dis ] e4 r8 |
    cis8 [ cis cis ] dis4 r8  |
    b8 [ b b ] cis [ e gis, ]  |
    ais8 [ dis b ] cis4 r8  |
    e8 [ cis e ] fis [ ais b ]  |
	cis16 [  b cis8 cis] cis,16 [ e gis e cis e ] |
    fis,4 r8 ais16 [ cis e cis ais cis ] |
    dis4 r8 dis8 [ e fis ] |
    b,8 [ fis'16 e dis cis ] b4 s8 |
	}
 	\repeat volta 2 {
	\partial 8 r8 |
    b4 r8 b4 r8 |
    e,4 r8 gis4 r8 |
    b4 r8 eis4 r8  |
    fis8 [ e d ] cis [ eis cis ] |
    fis,4 r8 b4 r8 |
    e,4 r8 a4 r8 |
    d4 r8 e4 r8 |
    a8 [ e16 d cis b ] a4 r8 |
    dis4 r8 gis4 r8 |
    cis,4 r8 fis4 r8 |
    b4 a8 gis4 a8|
    b8 [ fis e ] dis [ cis b ] |
    fis'4 r8 fis16 [ a cis a fis a ] |
    b,4 r8 dis16 [ fis b fis dis fis ] |
    gis,4 r8  <gis' b>8 [ a b ] |
    e,8 [ b16 a gis fis ] e4 s8 |
	}
}
melody = << \melodyOne \\ \melodyTwo >>
\score {
 	\context Staff <<
        \set Staff.instrumentName = "Laute"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
        { \clef treble \key e \major \time 6/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
