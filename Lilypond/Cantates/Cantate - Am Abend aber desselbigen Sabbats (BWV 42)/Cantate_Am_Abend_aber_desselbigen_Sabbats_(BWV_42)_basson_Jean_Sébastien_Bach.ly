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
  instrument = "Basson"
  tagline = ##f
}

\addQuote "sinfVlnI" { \sinfVlnI }
\addQuote "sinfObI" { \sinfObI }

sinfCues = {
    \cueDuringWithClef #"sinfVlnI" #DOWN "G" { s1*2^"Vln.I" s4 } s2. |
    s1*5 |
    \cueDuringWithClef #"sinfObI" #DOWN "G" { s2^"Ob.I" } s2 |
}

\score {
    \new Staff <<
	\sinfFg
	\sinfCues
    >>

    \header {
	piece = \markup{\larger\larger\bold{SINFONIE}}
    }

    \layout {
    }
}
