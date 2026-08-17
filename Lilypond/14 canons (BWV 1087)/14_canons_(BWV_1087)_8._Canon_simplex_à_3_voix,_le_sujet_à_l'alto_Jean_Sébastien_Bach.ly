\version "2.24.4"
\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}
#(set-global-staff-size 19)
\header {
  title = "8. Canon simplex à 3 voix, le sujet à l'alto"
  subtitle = "sur les huit premières notes fondamentales de l'Aria des Variations Goldberg"
  subsubtitle = "14 canons"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}
global= {
       \time 2/4
       \key g \major
     }
    violinOne = \new Voice { \relative c'{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r2 |
       r2 |
       r8 d16 [ e ] fis8 [ gis ] |
       a8 [ c ] b [ a ] |
       e'4 r8 d8 |
       a'8 [ a,] b [cis ]  |
       d8 [ d,16 e] fis8 [gis ] |
       a8 [ c ] b [ a ] |
       e'4 r8 d8 |
       a'8 [ a,] b [cis ]  |
       d8 [ d,16 e] fis8 [gis ] |
       a8 [ c ] b [ a ] |
       e'4 r8 d8 |
       a'8 [ a,] b [cis ]  |
       d2 \bar "|." }}
     viola = \new Voice { \relative g' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
        r4 g4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g' |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g'4 |
	fis4 e |
	d4 b |
	c4 d |
	g,4 g' |
	fis4 e |
	d2 \bar "|." }}
     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r8 e16 [ d ] c8 [ bes ] |
       a8 [fis ] g [ a ] |
       d,4 r8 e8 |
       a,8 [ a' ] g [ f ] |
       e8 [ e'16 d ] c8 [ bes ] |
      a8 [fis ] g [ a ] |
       d,4 r8 e8 |
       a,8 [ a' ] g [ f ] |
       e8 [ e'16 d ] c8 [ bes ] |
      a8 [fis ] g [ a ] |
       d,4 r8 e8 |
       a,8 [ a' ] g [ f ] |
       e8 [ e'16 d ] c8 [ bes ] |
       a8 [fis ] g [ a ] |
       d,2 \bar "|."}}
     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
