\version "2.24.4"

\paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

#(set-global-staff-size 19)

\header {
  title = "4. Canon par mouvement contraire et droit"
  subtitle = "sur les 8 premières notes fondamentales de l'aria des Variations Goldberg"
  subsubtitle = "14 Canons "
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
       r4 g4 | % 3
       fis4 e | % 4
       d4 b | % 5
       c4 d | % 6
       g,4 g'4 | % 7
       fis4 e | % 8
       d4 b | % 9
       c4 d | % 10
       g,2 \bar "|." }}


     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r4 d,4 | % 1
       e4 fis | % 2
       g4 b | % 3
       a4 g | % 4
       d'4 d,4 | % 5
       e4 fis | % 6
       g4 b | % 7
       a4 g | % 8
       d'4 d,4 | % 9
       e4 fis | % 10
       g2 \bar "|."}}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }