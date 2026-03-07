\include "Cantate_Am_Abend_aber_desselbigen_Sabbats_(BWV_42)_sinf.ly"

\paper {
    two-sided = ##t
    indent = 0
    page-breaking = #ly:page-turn-breaking
}

\header {
  title = "Am Abend aber desselbigen Sabbats"
  subtitle = "Cantate"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 42"
  instrument = "Hautbois 1"
  tagline = ##f
}


% %{

\addQuote "sinfVlnI" { \sinfVlnI }

sinfCues = {
    \cueDuring #"sinfVlnI" #DOWN { s1*2^"Vln.I" s4 }
}

\score {
    \new Staff <<
	\sinfObI
	\sinfCues
    >>

    \header {
	piece = \markup{\larger\larger\bold{SINFONIE}}
    }

    \layout {
    }
}
