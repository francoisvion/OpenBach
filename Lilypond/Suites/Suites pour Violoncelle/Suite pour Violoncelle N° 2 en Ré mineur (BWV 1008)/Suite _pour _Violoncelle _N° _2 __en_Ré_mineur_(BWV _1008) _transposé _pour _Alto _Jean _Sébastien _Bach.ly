\version "2.24.4"

\include "header.ily"
\header {
  subsubtitle = "Transposé pour Alto"
}

\include "parts/bwv-1008-1.ily"
\include "parts/bwv-1008-2.ily"
\include "parts/bwv-1008-3.ily"
\include "parts/bwv-1008-4.ily"
\include "parts/bwv-1008-5-1.ily"
\include "parts/bwv-1008-5-2.ily"
\include "parts/bwv-1008-6.ily"

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "alto" \transpose c c { \prelude } }
	\layout { }
	\header { piece = "1. Prélude" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \allemande } }
	\layout { } %system-count = #11
	\header { piece = "2. Allemande" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \courante } }
	\layout { }
	\header { piece = "3. Courante" }
	\midi {}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \sarabande } }
	\layout {  } %system-count = #5
	\header { piece = "4. Sarabande" }
	\midi {}
}
\pageBreak

\score { { \clef "alto" \transpose c c { \menuetI } }
	\layout { }
	\header { piece = "5. Menuet 1" }
	\midi { \tempo 4 = 140}
}
%\pageBreak

\score { { \clef "alto" \transpose c c { \menuetII } }
	\layout { }
	\header { piece = "5. Menuet 2" }
	\midi { \tempo 4 = 140}
}
\pageBreak

\score { { \clef "alto" \transpose c c { \gigue } }
	\layout { }
	\header { piece = "6. Gigue" }
	\midi {\tempo 8 = 160}
}

}
