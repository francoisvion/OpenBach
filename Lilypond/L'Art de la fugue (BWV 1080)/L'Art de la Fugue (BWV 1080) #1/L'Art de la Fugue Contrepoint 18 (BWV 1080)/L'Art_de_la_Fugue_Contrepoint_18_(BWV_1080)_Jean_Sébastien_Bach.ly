\version "2.24.4"

\header{
  title = "Contrepoint 18"
  subtitle = "L'Art de la Fugue"
  opus = "BWV 1080"
  composer = "Jean Sébastien Bach (1685 - 1750)"
  tagline = ##f
}

#(set-global-staff-size 16)

\paper{
	ragged-bottom=##t
}

\include "contrepoint18.ly"

\score{<<	
	\keepWithTag #'rectus \music
	\keepWithTag #'inversus \music
	>>
	\layout{}
	\midi{}
}