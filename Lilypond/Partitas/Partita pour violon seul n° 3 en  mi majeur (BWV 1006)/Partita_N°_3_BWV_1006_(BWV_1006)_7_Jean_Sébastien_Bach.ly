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
        piece = "7. Gigue"
        composer = "Jean Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006"
        date = "1720"
  tagline = ##f
}
melody =  \relative b' {
	\repeat volta 2 {
 	\partial 8 b'8 |
    gis8 [(e) b ] e,16 [ fis gis a b cis ] |
    dis16 [ (e fis8) fis ] a,16 [ (gis a8) fis' ] |
    b,,16 [ cis dis e fis gis ] a [ gis a cis b a ] |
    gis16 [ fis gis a b gis ] e8. [ fis16 gis a ] |
    b16 [ gis e gis b d ] cis [ e a e cis a ] |
    b16 [ gis e gis b d ] cis [ e a e cis a ] |
    dis16 [ fis a fis dis b ] e [ a gis fis gis e ] |
    b16 [ (dis fis8) a ] gis16 [ fis e fis gis e ] |
    ais,16 [ (cis e8) gis ] fis16 [ e dis cis b a ] |
    gis16 [(b dis8) fis ] e16 [ dis cis dis e cis ] |
    fis,16 [ cis' b cis dis b ] e, [ gis cis dis e fis ] |
    gis16 [ fis e dis cis e ] b' [ (ais gis fis e dis) ] |
    e16 [ (dis e8) e ] cis,16 [ e gis e cis e ] |
    ais16 [ (cis e8) e ] ais,,16 [ cis fis cis ais cis ] |
    fis16 [ e' (dis cis b ais) ] fis'8 [ e16 dis cis dis ] |
    b8 [ fis16 e dis cis ] b4 s8 |
	}
 	\repeat volta 2 {
	\partial 8 fis''8 |
    dis8 [ b fis16 gis ] a [ b cis dis e fis ] |
    gis16 [ (a b8) b ] d,16 [ (cis d8) b' ] |
    eis,,16 [ fis gis a b d ] cis [ dis eis fis gis b ]  |
    a16 [ (gis) b (a) gis (fis) ] gis8 [ cis, gis' ] |
    a16 [ fis cis fis a fis ] d [ b fis b d b ] |
    gis'16 [ e b e gis e ] cis [ a e a cis a ] |
    fis'16 [ e fis gis a b ] cis,8 [ d16 cis b cis ] |
    a8 [ e16 d cis b ] a4 cis'8 |
    dis,16 [ fis a cis b a ] gis [ b dis fis e dis ] |
    cis,16 [ e gis b a gis ] fis [ a cis e dis cis ] |
    b16 [ dis fis a gis fis ] b8 [ a16 gis fis e ] |
    dis16 [ cis dis e fis dis ] b [ (cis dis e fis gis) ] |
    a16 [ (gis a8) a ] fis,16 [ a cis a fis a ] |
    dis16 [ (fis a8) a ] dis,,16 [ fis b fis dis fis ] |
    b,16 [ a'' (gis fis e dis) ] b'8 [ a16 gis fis gis ] |
    e8 [ b16 a gis fis ] e4 s8 \bar "|."
	}
}
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violine"
		\set Staff.midiInstrument = "violin"
        { \clef treble \key e \major \time 6/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
