\version "2.24.4"

\header{
  title = "Contrepoint 17"
  subtitle="L'Art de la Fugue"
  opus = "BWV 1080"
  composer="Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

#(set-global-staff-size 16)

\paper{
	after-title-space=3\cm
	ragged-bottom=##t
}

\include "contrepoint17.ly"

\score{<<	
	\keepWithTag #'rectus \music
	\keepWithTag #'inversus \music
	>>
	\layout{}
	\midi{}
}

