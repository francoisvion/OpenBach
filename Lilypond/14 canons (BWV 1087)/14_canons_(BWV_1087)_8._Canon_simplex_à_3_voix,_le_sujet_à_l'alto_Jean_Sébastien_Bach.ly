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
       r2 | % 1
       r2 | % 2
       r8 d16 [ e ] fis8 [ gis ] | % 3
       a8 [ c ] b [ a ] | % 4
       e'4 r8 d8 | % 5
       a'8 [ a,] b [cis ]  | % 6
       d8 [ d,16 e] fis8 [gis ] | % 7
       a8 [ c ] b [ a ] | % 8
       e'4 r8 d8 | % 9
       a'8 [ a,] b [cis ]  | % 10
       d8 [ d,16 e] fis8 [gis ] | % 11
       a8 [ c ] b [ a ] | % 12
       e'4 r8 d8 | % 13
       a'8 [ a,] b [cis ]  | % 14
       d2 \bar "|." }}


     viola = \new Voice { \relative g' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
        r4 g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g' | % 5
	fis4 e | % 6
	d4 b | % 7
	c4 d | % 8
	g,4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,4 g' | % 13
	fis4 e | % 14
	d2 \bar "|." }}

     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r8 e16 [ d ] c8 [ bes ] | % 1
       a8 [fis ] g [ a ] | % 2
       d,4 r8 e8 | % 3
       a,8 [ a' ] g [ f ] | % 4
       e8 [ e'16 d ] c8 [ bes ] | % 5 
      a8 [fis ] g [ a ] | % 2
       d,4 r8 e8 | % 3
       a,8 [ a' ] g [ f ] | % 4
       e8 [ e'16 d ] c8 [ bes ] | % 5 
      a8 [fis ] g [ a ] | % 2
       d,4 r8 e8 | % 3
       a,8 [ a' ] g [ f ] | % 4
       e8 [ e'16 d ] c8 [ bes ] | % 5 
       a8 [fis ] g [ a ] | % 14
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