\version "2.24.4"

\include "violino.ily"

instrument = "Violon"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoViolino}
  \layout { }
  \midi {\tempo 4 = 30}
}
