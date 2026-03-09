\version "2.24.4"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Suite E-Dur - BWV 1006a"
        subtitle = "\"Nach der Partita III für Violine BWV 1006\""
        piece = "4. Menuet I"
        composer = "Jean Sébastien Bach (1685-1750) (1685-1750)"
opus = "BWV 1006a"
arrangement = "Hajo Dezelski"
  tagline = ##f
}

melodyOne = \relative g'' {
	\repeat volta 2 { % begin repeat
	    gis4 gis8 [ fis ] gis4 | % 1
		e4 fis8 [ (dis) ] e4 | % 2
		b4 cis dis | % 3
		e8 [ dis e fis e fis ] | % 4
		gis4 fis fis8 [ (gis16 a) ] | % 5
		gis8 [ fis gis a b gis ] | % 6
		e4 a gis | % 7
		<dis fis>2. | % 8
	} % end repeat
	
	
	\repeat volta 2 { % begin repeat
		b'4 b8 [ ais8 ] b4 | % 9
		dis,4 e8 [ (cis) ] dis4 | % 10
		b'4  b8 [ ais ] b4 | % 11
		b,2. | % 12
		a'4 gis fis | % 13
		e4 e8 [ fis ] gis4 | % 14
		gis8 [ fis ] a4 gis | % 15
		fis8 [ e fis dis e fis ] | % 16
		gis4 cis, bis \trill | % 17
		cis4. e8 [ dis fis ] | % 18
		r8 a,8 [ b cis ] d4 ] | % 19
		r8 e,8 [ d' b cis a ] | % 20
		fis8 [ gis a b cis a ] | % 21
		r8 fis [ cis' a b gis ] | % 22
		e8 [ fis gis a b gis ] | % 23
		a8 [ e fis a dis, fis ] | % 24
		gis8 [ b cis e fis a ] | % 25
		e8 [ dis e dis cis b ] | % 26
		gis'4 gis8 [ fis ] gis4 | % 27
		e4 fis8 [ dis ] e4 | %28
		r4 r8 gis,8 [ b d ] | % 29
		r8 e, [ d' b cis a ]  | % 30
		r8 e'8 [ dis fis a] r8 ] | % 31
		r8 b,8 [ fis' a] <b, gis'>4 | % 32
		<a cis fis>4 <gis b> <fis a dis> | % 33
		<gis b e>2. | % 34	
	} % end repeat
    
}

melodyTwo =  \relative e'' {
	\repeat volta 2 { % begin repeat
		e4 dis b | % 1
		cis4 r4 r4 | % 2
		gis4 a fis | % 3
		e4 r4 r4 | % 4
		<e b'>4 <dis b'> b | % 5
		<e b'>4 r4 r4 | % 6
		<a cis>4 <fis dis'> <e e'> | % 7
		b2. | % 8
		} % end repeat

 	\repeat volta 2 { % begin repeat
		dis'4 cis b | % 9
		a4 r4 r4 | % 10
		<gis e'>4 <fis dis'> <e cis'> | % 11
		<dis fis>2. | % 12
		<dis bis' fis'>4 r4 r4 | % 13
		<cis gis' cis>4 cis'8 [ dis ] e4 | % 14
		dis4 cis bis | % 15
		cis4 r4 <a cis> | % 16
		<e gis cis>4 fis gis | % 17
		<cis, e gis>4. s4. | % 18
		gis'4 r4 r8 e8 | % 19
		a,4 r4 r4 | % 20
		dis4 r4 r4 | % 21
		gis,4 r4 r4 | % 22
		cis4 r4 r4 | % 23
		fis,4 r4 b4  | % 24
		e,4 a4 r4 | % 25
		b4 r4 r4 | % 26
		e'4 dis b | % 27
		cis4 r4 r4 | % 28
		gis8 [ b ] e,4 r4 | % 29
		a,4 r4 r4 | % 30
		fis'4 r4 r8 e8 | % 31
		dis4 r4 e4 | % 32
		a,4 b b | % 33
		<e, e'>2. | % 34
 
	} % end repeat

}

melody = << \melodyOne \\ \melodyTwo >>

% The score definition

\score {
 	\context Staff << 
        \set Staff.instrumentName = "Laute"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
        { \clef treble \key e \major \time 3/4 \melody  }
    >>
	\layout { }
 	 \midi { }

}
