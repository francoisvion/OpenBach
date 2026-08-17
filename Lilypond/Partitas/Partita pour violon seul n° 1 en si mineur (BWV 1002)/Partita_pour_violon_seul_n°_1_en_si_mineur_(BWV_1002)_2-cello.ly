\version "2.24.0"
\include "2.ly"
iiCelloGlobal =   {
  \clef "bass"
  \key g\major
  \time 2/2
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \repeat "volta" 2 {
    \partial 16
    s16 | s1*11 | s16*15
  }
  \repeat "volta" 2 {
    s16 | s1*11 | s16*15 \bar "|."
  }
}
iiCelloScripts =  {
}
iiCelloStaff =  \context Staff <<
   \transpose c' f, \iiStaff
  \iiCelloGlobal
  \iiCelloScripts
>>
\score {
  \iiCelloStaff
  \layout { }
  \midi {
    \tempo 4 = 76
    }
  \header {
    piece = "Double"
    opus = ""
  }
}
