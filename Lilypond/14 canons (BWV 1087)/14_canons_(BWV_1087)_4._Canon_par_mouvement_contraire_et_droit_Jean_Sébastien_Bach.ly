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
       r2 |
       r2 |
       r4 g4 |
       fis4 e |
       d4 b |
       c4 d |
       g,4 g'4 |
       fis4 e |
       d4 b |
       c4 d |
       g,2 \bar "|." }}
     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Violoncelle"
       \set Staff.midiInstrument = "cello"
       \clef bass
       r4 d,4 |
       e4 fis |
       g4 b |
       a4 g |
       d'4 d,4 |
       e4 fis |
       g4 b |
       a4 g |
       d'4 d,4 |
       e4 fis |
       g2 \bar "|."}}
     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
