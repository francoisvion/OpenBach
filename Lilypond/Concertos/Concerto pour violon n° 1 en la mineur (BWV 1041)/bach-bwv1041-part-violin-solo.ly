\version "2.24.4"

#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "common/variables.ily"
\include "common/definitions.ily"
\include "common/parts-dimension.ily"


\header {
  title = "Concerto pour violon n° 1 en la mineur"
  opus = "BWV 1041"
  mutopiacomposer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

thisInstrName = " " %\thisInstrNameI  %----------- /common/variables.ily
Part = \thisInstrNameI  %\thisInstrName %------------[fixed for parts]
thisClef = \clef treble          %----------- [manual entry]

\include "common/paper.ily"

\include "mov1/music.ily"
theseNotes = \soloviolin       %--------------- /mov_/music.ily
thisTempo = \thisTempoMovI  %--------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }
%---------------Second Mov: Andante
\include "mov2/music.ily"
theseNotes = \soloviolin       %--------------- /mov_/music.ily
thisTempo = \thisTempoMovII  %-------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovII %----- /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }
%--------------Third Mov: Allegro assai
\include "mov3/music.ily"
theseNotes = \soloviolin       %--------------- /mov_/music.ily
thisTempo = \thisTempoMovIII  %------------- /common/variables.ily
thisIdentifier = \thisIdentifierMovIII %---- /common/variables.ily
\bookpart { \include "common/parts-staff-single-instr.ily" }