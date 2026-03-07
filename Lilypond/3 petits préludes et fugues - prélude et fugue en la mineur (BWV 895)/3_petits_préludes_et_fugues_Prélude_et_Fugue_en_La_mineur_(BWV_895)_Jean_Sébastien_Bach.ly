\version "2.24.4"

\header {
  title = "Prélude et Fugue en La mineur"
  subtitle = "3 petits préludes et fugues"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 895"
  tagline = ##f
}

\include "prélude.ly"
\include "fugue.ly"

\paper {
	top-margin = 8\mm
	line-width = 18.6\cm
	top-system-spacing.basic-distance = #8
}

% Preludio
\score {
	\new PianoStaff <<
		\context Staff = prelUpper <<
			\prelGlobal \prelI \\ \prelII >>
		\context Staff = prelLower <<
			\prelGlobal \clef "bass" \prelIII \\ \prelIV >>
	>>
	
  \midi {
    \tempo 4 = 54
    }

  \layout { }
  \header { piece = "Prélude" }
}

% Fuga
\score {
	\new PianoStaff <<
		\context Staff = "fugaUpper" <<
			\fugaGlobal \fugaI \\ \fugaII >>
		\context Staff = "fugaLower" <<
			\fugaGlobal \clef "bass" \fugaIII \\ \fugaIV \\ \fugaV >>
	>>
	
  \midi {
    \tempo 4 = 72
    }
  \layout { %{ Use LilyPond defaults %} }
  \header { piece = "Fugue à 4 voix" }
}