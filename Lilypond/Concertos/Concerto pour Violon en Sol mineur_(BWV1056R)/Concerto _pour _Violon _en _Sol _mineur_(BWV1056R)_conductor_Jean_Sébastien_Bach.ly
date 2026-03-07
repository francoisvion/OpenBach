\version "2.24.4"

\include "violino.ily"
\include "violine1.ily"
\include "violine2.ily"
\include "viola.ily"
\include "violoncello.ily"

instrument = ""

\book {
  \include "header.ily"
  \score {
	<<
	  \new Staff \with {
		instrumentName = #"Violon"
		shortInstrumentName = #"Vln."
	  } {\largoViolino}
	  \new Staff \with {
		instrumentName = #"Violon I"
		shortInstrumentName = #"V.I."
	  } {\largoViolineI}
	  \new Staff \with {
		instrumentName = #"Violon II"
		shortInstrumentName = #"V.II."
	  } {\largoViolineII}
	  \new Staff \with {
		instrumentName = #"Alto"
		shortInstrumentName = #"Vla."
	  } { \largoViola}
	  \new Staff \with {
		instrumentName = #"Violoncelle"
		shortInstrumentName = #"C."
	  } {\largoVioloncello}
	>>
	\header {piece = "Largo"}
	\layout { }
	\midi {\tempo 4 = 30}
  }
}