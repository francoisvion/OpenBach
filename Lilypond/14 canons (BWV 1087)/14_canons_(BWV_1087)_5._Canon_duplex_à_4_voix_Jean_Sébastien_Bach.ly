\version "2.24.4"

\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

#(set-global-staff-size 19)

\header {
  title = "5. Canon duplex à 4 voix"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 Canons "
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1087"
  tagline = ""
}

global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative g'{
       \set Staff.instrumentName = "Violine 1"
       \set Staff.midiInstrument = "violin"
       r8 g16 [ fis ] g [ a b c ] | % 1
       d16 [ a fis d ] e [ fis g a ] | % 2
       b8 [ fis ] g4 ~  | % 3
       g16 [ a32 b c16 b ] a16 [ g b a ] | % 4
       g16 [a g fis ] g [ a b c ]  | % 5
       d16 [ a fis d ] e [ fis g a ]  | % 6
       b8 [ fis ] g4 ~  | % 7
       g16 [ a32 b c16 b ] a16 [ g b a ] | % 8
       g16 [a g fis ] g [ a b c ]   | % 9
       d16 [ a fis d ] e [ fis g a ]  | % 10
       b8 [ fis ] g4 ~ | % 11
       g16 [ a32 b c16 b ] a16 [ g b a ] | % 12
       g2 \bar "|." }}

     violinTwo = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 2"
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r8 d16 [ e ] d [ c b a ]  | % 3
       g16 [ c e g ] fis [ e d c ] | % 4
       b8 [ e ] d4 ~ | % 5
       d16 [ c32 b a16 b ] c [ d b c ] | % 6
       d16 [ c d e ] d [ c b a ]  | % 3
       g16 [ c e g ] fis [ e d c ] | % 4
       b8 [ e ] d4 ~ | % 5
       d16 [ c32 b a16 b ] c [ d b c ] | % 6
       d16 [ c d e ] d [ c b a ]  | % 3
       g16 [ c e g ] fis [ e d c ] | % 4
       b2  \bar "|." }}
 

     viola = \new Voice { \relative c'' {
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
	g,2 \bar "|." }}

     cello = \new Voice { \relative d {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r2 | % 1
       r2 | % 2
       r4 d4 | % 3
       e4 fis | % 4
       g4 b | % 5
       a4 g | % 6
       d'4 d,4 | % 7
       e4 fis | % 8
       g4 b | % 9
       a4 g | % 10
       d'4 d,4 | % 11
       e4 fis | % 12
       g2  \bar "|."}}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }