\version "2.24.4"

\header{
  title = "Contrepoint 16 à 3"
  subtitle="L'Art de la Fugue"
  opus = "BWV 1080"
  composer="Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}


#(set-global-staff-size 16)

\include "contrepoint16.ly"

\score{<<	
	\keepWithTag #'rectus \music
	\keepWithTag #'inversus \music
	>>
	\layout{}
}

