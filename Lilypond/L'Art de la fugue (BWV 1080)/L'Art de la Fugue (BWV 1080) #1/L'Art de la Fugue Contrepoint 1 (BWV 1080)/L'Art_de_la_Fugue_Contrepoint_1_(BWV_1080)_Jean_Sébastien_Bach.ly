\version "2.24.4"

\paper {
 
}

\header{
  title = "Contrepoint 1"
  subtitle="L'Art de la Fugue"
  opus = "BWV 1080"
  composer="Jean Sébastien Bach (1685 - 1750)"
  tagline = ##f
}

\include "structure.ily"
\include "soprano.ily"
\include "alto.ily"
\include "tenor.ily"
\include "bass.ily"

part-soprano = \new Staff {
  << \structure \clef soprano \soprano >>
}
part-alto = \new Staff {
  << \structure \clef alto \alto >>
}
part-tenor = \new Staff {
  << \structure \clef tenor \tenor >>
}
part-bass = \new Staff {
  << \structure \clef bass \bass >>
}

pianoPart = {
  \new PianoStaff <<
    \new Staff  = "upper" <<
      \clef treble
      \set Staff.soloText = #"soprano"
      \set Staff.soloIIText = #"alto"
      \set Staff.aDueText = #"sopranoalto"
      \partcombine <<\structure \soprano>> <<\structure \alto>>
    >>
    \new Staff = "lower" <<
      \structure
      \clef bass
      \set Staff.soloText = #"tenor"
      \set Staff.soloIIText = #"bass"
      \set Staff.aDueText = #"tenor + bass"
      \partcombine \tenor \bass
    >>
  >>
}

fullTraditionalScore = {
  <<
    \new StaffGroup
    <<
      \part-soprano
      \part-alto
      \part-tenor
      \part-bass
    >>
    \pianoPart
  >>
}

midiScore = <<
      \structure
      \new Staff \with {
        midiInstrument = "violin"
      } \soprano
      \new Staff \with {
        midiInstrument = "viola"
      } \alto
      \new Staff \with {
        midiInstrument = "cello"
      } \tenor
      \new Staff \with {
        midiInstrument = "contrabass"
      } \bass
    >>

scoreContent = {
  \fullTraditionalScore
}

\score{
  \scoreContent
  \layout {
    \accidentalStyle Score.modern-cautionary
    \set Score.skipBars = ##t
  }
}
\score {
  \midiScore
  \midi {\tempo 4=120}
}

