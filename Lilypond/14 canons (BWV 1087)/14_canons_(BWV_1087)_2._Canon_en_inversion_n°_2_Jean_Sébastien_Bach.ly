\version "2.24.4"

\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

#(set-global-staff-size 19)

\header {
  title = "2. Canon en inversion"
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
 
     viola = \new Voice { \relative c' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
       	r2 | % 1
	r2 | % 2
	r2 | % 3
	r2 | % 4
	r4 d'4 | % 5 ---
	g,4 a | % 6
	b4 g | % 7
	fis4 e | % 8
	\break
	d4 d' | % 9 ---
	g,4 a | % 10
	b4 g | % 11
	fis4 e | % 12
	d4 d' | % 13 ---
	g,4 a | % 14
	b4 g | % 15
	fis4 e | % 16
	d2 \bar "|." }}

     cello = \new Voice { \relative c {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r4 d4 | % 1
       e4 fis | % 2
       g4 b | % 3
       a4 g | % 4
       d'4 r4 | % 5
       r2 | % 6
       r2 | % 7
       r2 | % 8
       r4 d,4 | % 9
       e4 fis | % 10
       g4 b | % 11
       a4 g | % 12
       d'4 d, | % 13
       e4 fis | % 14
       g4 b | % 15
       a4 g | % 16
       d'2  \bar "|."}}

     \score {
        \new StaffGroup <<
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }