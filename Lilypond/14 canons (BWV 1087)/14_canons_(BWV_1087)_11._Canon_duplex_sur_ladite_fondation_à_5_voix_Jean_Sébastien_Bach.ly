\version "2.24.4"

\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

#(set-global-staff-size 19)

\header {
  title = "11. Canon duplex sur ladite fondation à 5 voix"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 canons"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}

global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r4 r8 d8 | % 3
       dis8 [ e ] f [ fis ] | % 4
       g16 [ fis g a ] b8 r8  | % 5
       r8 fis8 b,16 [ cis d e ] | % 6
       fis4 r8 d8 | % 7
       dis8 [ e ] f [ fis ] | % 8
       g16 [ fis g a ] b8 r8  | % 9
       r8 fis8 b,16 [ cis d e ] | % 10
       fis4 r8 d8 | % 11
       dis8 [ e ] f [ fis ] | % 12
       g16 [ fis g a ] b8 r8  | % 13
       r8 fis8 b,16 [ cis d e ] | % 14
       fis4 r8 d8 | % 15
       dis8 [ e ] f [ fis ] | % 16
       g2 \bar "|." }}

     violinTwo = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r4 r8 b8 | % 1
       ais8 [ a ] gis [ g ] | % 2
       fis16 [ g fis e ] d8 r8 | % 3
       r8 g8 d'16 [ c b a ] | % 4
       g4 r8 b8  | % 5
       ais8 [ a ] gis [ g ] | % 6
       fis16 [ g fis e ] d8 r8 | % 7
       r8 g8 d'16 [ c b a ] | % 8
       g4 r8 b8  | % 9
       ais8 [ a ] gis [ g ] | % 10
       fis16 [ g fis e ] d8 r8 | % 11
       r8 g8 d'16 [ c b a ] | % 12
       g4 r8 b8  | % 13
       ais8 [ a ] gis [ g ] | % 14
       fis16 [ g fis e ] d8 r8 | % 15
       r8 g8 d'16 [ c b a ] | % 16
       g2  \bar "|." }}
 

     violinThree = \new Voice { \relative f' {
       \set Staff.instrumentName = "Violon 3"
       \set Staff.midiInstrument = "violin"
	r2 | % 1
	r2 | % 2
	r2 | % 3
	r2 | % 4
	r2 | % 5
	r2 | % 6
	r4 r8 d8 | % 7
	c8 [ bes ] a [ d16 c ] | % 8
	b8 [ e ] d16 [ cis d e ] | % 9
	fis4 r8 b8 ~ | % 10
	b16 [ b,8 cis16] d16 [e d8 ] | % 11
	c8 [ bes ] a [ d16 c ] | % 12
	b8 [ e ] d16 [ cis d e ] | % 13
	fis4 r8 b8 ~ | % 14
	b16 [ b,8 cis16] d16 [e d8 ] | % 11
	c8 [ bes ] a [ d16 c ] | % 12
	b2 \bar "|." }}

     viola = \new Voice { \relative c' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
       s2 | % 1
       s2 | % 2
       s2 | % 3
       s2 | % 4
       r4 r8 b'8 | % 5 
       cis8 [ dis ] e [ b16 c ] | % 6
       d8 [ a ] b16 [ c b a ] | % 7
       g4 r8 d8 ~ | % 8
       d16 [ d'8 c16 ] b16 [ a b8 ] | % 9
       cis8 [ dis ] e [ b16 c ] | % 10
       d8 [ a ] b16 [ c b a ] | % 11
       g4 r8 d8 ~ | % 12
       d16 [ d'8 c16 ] b16 [ a b8 ] | % 13
      cis8 [ dis ] e [ b16 c ] | % 14
       d8 [ a ] b16 [ c b a ] | % 15
       g4 r8 d8 ~ | % 16
       d2  \bar "|."}}
       
     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r4^\markup { soggetto } g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g'4  | % 5
	fis4 e | % 6
	d4 b | % 7
	c4 d | % 8
	g,4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,4 g'4 | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,2 \bar "|." }}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \violinThree >>
           \new Staff << \global \viola >>
	   \new Staff << \global \cello >>

        >>
        \layout { }
        \midi { }
     }