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
       r2 |
       r2 |
       r4 r8 d8 |
       dis8 [ e ] f [ fis ] |
       g16 [ fis g a ] b8 r8  |
       r8 fis8 b,16 [ cis d e ] |
       fis4 r8 d8 |
       dis8 [ e ] f [ fis ] |
       g16 [ fis g a ] b8 r8  |
       r8 fis8 b,16 [ cis d e ] |
       fis4 r8 d8 |
       dis8 [ e ] f [ fis ] |
       g16 [ fis g a ] b8 r8  |
       r8 fis8 b,16 [ cis d e ] |
       fis4 r8 d8 |
       dis8 [ e ] f [ fis ] |
       g2 \bar "|." }}
     violinTwo = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violon 2"
       \set Staff.midiInstrument = "violin"
       r4 r8 b8 |
       ais8 [ a ] gis [ g ] |
       fis16 [ g fis e ] d8 r8 |
       r8 g8 d'16 [ c b a ] |
       g4 r8 b8  |
       ais8 [ a ] gis [ g ] |
       fis16 [ g fis e ] d8 r8 |
       r8 g8 d'16 [ c b a ] |
       g4 r8 b8  |
       ais8 [ a ] gis [ g ] |
       fis16 [ g fis e ] d8 r8 |
       r8 g8 d'16 [ c b a ] |
       g4 r8 b8  |
       ais8 [ a ] gis [ g ] |
       fis16 [ g fis e ] d8 r8 |
       r8 g8 d'16 [ c b a ] |
       g2  \bar "|." }}
     violinThree = \new Voice { \relative f' {
       \set Staff.instrumentName = "Violon 3"
       \set Staff.midiInstrument = "violin"
	r2 |
	r2 |
	r2 |
	r2 |
	r2 |
	r2 |
	r4 r8 d8 |
	c8 [ bes ] a [ d16 c ] |
	b8 [ e ] d16 [ cis d e ] |
	fis4 r8 b8 ~ |
	b16 [ b,8 cis16] d16 [e d8 ] |
	c8 [ bes ] a [ d16 c ] |
	b8 [ e ] d16 [ cis d e ] |
	fis4 r8 b8 ~ |
	b16 [ b,8 cis16] d16 [e d8 ] |
	c8 [ bes ] a [ d16 c ] |
	b2 \bar "|." }}
     viola = \new Voice { \relative c' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
       s2 |
       s2 |
       s2 |
       s2 |
       r4 r8 b'8 |
       cis8 [ dis ] e [ b16 c ] |
       d8 [ a ] b16 [ c b a ] |
       g4 r8 d8 ~ |
       d16 [ d'8 c16 ] b16 [ a b8 ] |
       cis8 [ dis ] e [ b16 c ] |
       d8 [ a ] b16 [ c b a ] |
       g4 r8 d8 ~ |
       d16 [ d'8 c16 ] b16 [ a b8 ] |
      cis8 [ dis ] e [ b16 c ] |
       d8 [ a ] b16 [ c b a ] |
       g4 r8 d8 ~ |
       d2  \bar "|."}}
     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r4^\markup { soggetto } g4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g'4  |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
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
