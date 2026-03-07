\version "2.24.4"

\include "Suite_pour_Violoncelle_N°_3_(BWV_1009)_1._Prélude.ly"
\include "Suite_pour_Violoncelle_N°_3_(BWV_1009)_2._Allemande.ly"
\include "Suite_pour_Violoncelle_N°_3_(BWV_1009)_3._Courante.ly"
\include "Suite_pour_Violoncelle_N°_3_(BWV_1009)_4._Sarabande.ly"
\include "Suite_pour_Violoncelle_N°_3_(BWV_1009)_5._Bourrées.ly"
\include "Suite_pour_Violoncelle_N°_3_(BWV_1009)_6._Gigue.ly"

\header {
  title = "Suite pour Violoncelle N° 3"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 1009"
  tagline = ##f
}

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

\score { { \clef "bass" \transpose c c { \prelude } }
	\layout { }
	\header { piece = "1. Prélude" }
	\midi {\tempo 4 = 120}
}
\pageBreak

\score { { \clef "bass" \transpose c c { \allemande } }
	\layout { system-count = #12  }
	\header { piece = "2. Allemande" }
	\midi {}
}
\pageBreak

\score { { \clef "bass" \transpose c c { \courante } }
	\layout { system-count = #12 }
	\header { piece = "3. Courante" }
	\midi {\tempo 2. = 70}
}
%\pageBreak

\score { { \clef "bass" \transpose c c { \sarabande } }
	\layout {  }
	\header { piece = "4. Sarabande" }
	\midi {}
}

\score { { \clef "bass" \transpose c c { \bourree } }
	\layout { }
	\header { piece = "5. Bourrées" }
	\midi {\tempo 4=150}
}

\score { { \clef "bass" \transpose c c { \gigue } }
	\layout { }
	\header { piece = "6. Gigue" }
	\midi {\tempo 4.=65}
}

}