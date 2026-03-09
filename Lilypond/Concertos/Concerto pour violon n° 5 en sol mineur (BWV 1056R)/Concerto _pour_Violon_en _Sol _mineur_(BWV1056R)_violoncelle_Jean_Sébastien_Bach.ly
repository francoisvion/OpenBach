\version "2.25.33"

\include "violoncello.ily"

instrument = "Violoncelle"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoVioloncello}
  \layout { }
  \midi {\tempo 4 = 30}
}