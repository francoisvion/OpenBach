\version "2.24.4"

\include "violine1.ily"

instrument = "Violon I"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoViolineI}
  \layout { }
  \midi {\tempo 4 = 30}
}