\version "2.24.4"

\include "viola.ily"

instrument = "Alto"
\include "header.ily"
\header {piece = "Largo"}
\score {
  \new Staff {\largoViola}
  \layout { }
  \midi {\tempo 4 = 30}
}
