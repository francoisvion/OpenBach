\version "2.24.4"

\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

#(set-global-staff-size 19)

\header {
  subsubtitle = "14 Canons "
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  title = "3. Canon par mouvement droit et contraire"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ##f
}

global= {
       \time 2/4
       \key g \major
     }

     violinTwo = \new Voice { \relative c'{
       \set Staff.instrumentName = "Violon 1"
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r4 d4 | % 3
       e4 fis | % 4
       g4 b | % 5
       a4 g | % 6
       d'4 d,4 | % 7
       e4 fis | % 8
       \break
       g4 b | % 9
       a4 g | % 10
       d'4 d,4 | % 11
       e4 fis | % 12
       g2 \bar "|." }}
 

     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Alto"
       \set Staff.midiInstrument = "viola"
       \clef alto
        r4 g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g'4 | % 5
	fis4 e | % 6
	d4 b | % 7
	c4 d | % 8
	g,4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,2 \bar "|." }}


     \score {
        \new StaffGroup <<
           \new Staff << \global \violinTwo >>
           \new Staff << \global \viola >>
        >>
        \layout { }
        \midi { }
     }