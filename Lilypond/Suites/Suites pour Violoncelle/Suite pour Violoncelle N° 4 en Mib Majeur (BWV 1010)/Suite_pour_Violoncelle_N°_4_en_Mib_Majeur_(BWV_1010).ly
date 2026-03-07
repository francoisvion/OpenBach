\version "2.24.4"

\header {
  title = "Suite pour Violoncelle N° 4"
  opus = "BWV 1010"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

\include "Suite_pour_Violoncelle_N°_4_(BWV_1010)_1._Prélude.ly"
\include "Suite_pour_Violoncelle_N°_4_(BWV_1010)_2._Allemande.ly"
\include "Suite_pour_Violoncelle_N°_4_(BWV_1010)_3._Courante.ly"
\include "Suite_pour_Violoncelle_N°_4_(BWV_1010)_4._Sarabande.ly"
\include "Suite_pour_Violoncelle_N°_4_(BWV_1010)_5._Bourrée_1.ly"
\include "Suite_pour_Violoncelle_N°_4_(BWV_1010)_5._Bourrée_2.ly"
\include "Suite_pour_Violoncelle_N°_4_(BWV_1010)_6._Gigue.ly"

\paper {
	ragged-last-bottom = ##f
}

\book {

\score { { \clef "bass" \transpose c c, { \prelude } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "1. Prélude" }
	\midi { \tempo 2 = 55}
}
\pageBreak

\score { { \clef "bass" \transpose c c, { \allemande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "2. Allemande" }
	\midi {\tempo 4 = 90 }
}
\pageBreak

\score { { \clef "bass" \transpose c c, { \courante } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "3. Courante" }
	\midi {\tempo 4 = 96 }
}
\pageBreak

\score { { \clef "bass" \transpose c c, { \sarabande } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "4. Sarabande" }
	\midi {\tempo 4 = 100}
}

\score { { \clef "bass" \transpose c c, { \bourreeI } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "5. Bourrée 1" }
	\midi {\tempo 2 = 60 }
}

\score { { \clef "bass" \transpose c c, { \bourreeII } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "5. Bourrée 2" }
	\midi {\tempo 2 = 65}
}
\pageBreak

\score { { \clef "bass" \transpose c c, { \gigue } }
	\layout { %{ Use LilyPond defaults %} }
	\header { piece = "6. Gigue" }
	\midi {\tempo 4. = 120}
}
}