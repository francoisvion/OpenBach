\version "2.24.4"

\include "violine2.ily"

instrument = "Violon II"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoViolineII}
  \layout { }
  \midi {\tempo 4 = 30}
}