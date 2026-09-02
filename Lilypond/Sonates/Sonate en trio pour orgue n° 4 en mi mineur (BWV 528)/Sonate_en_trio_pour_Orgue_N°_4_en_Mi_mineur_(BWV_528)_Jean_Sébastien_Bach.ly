\version "2.27.1"

\language "deutsch"

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 15\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
 
  systems-per-page = 4
  
  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

\header {
  title = "Sonate en trio pour orgue n° 4 en mi mineur"
  opus = "BWV 528"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}

\include "./parts/Sonate_en_trio_pour_Orgue_N°_4_en_Mi_mineur_(BWV_528)_1._Adagio_Jean_Sébastien_Bach.ily"
\include "./parts/Sonate_en_trio_pour_Orgue_N°_4_en_Mi_mineur_(BWV_528)_2._Andante_Jean_Sébastien_Bach.ily"
\include "./parts/Sonate_en_trio_pour_Orgue_N°_4_en_Mi_mineur_(BWV_528)_3._Allegro_Jean_Sébastien_Bach.ily"

staffSettings = {
		\set Staff.midiInstrument = "church organ"
                \tupletSpan 8
}

\book {

	\score {
		<<
			\override Score.MetronomeMark.transparent = ##t
			\new GrandStaff 
			
			<<
			  \set GrandStaff.instrumentName = "Claviers "
				\accidentalStyle piano
				\new Staff = "right" {
					\staffSettings
		    			\key e \minor
					\clef violin
					\time 4/4
					\sintro				
					\time 3/4 <<{dis''4^"Vivace"}>>
					\sopranA
				}
				\new Staff = "left" {
				\staffSettings
					\key e \minor
					\clef violin
					\time 4/4 
					\aintro

					\time 3/4 h8 \tempo 8=186
					\altA
				}
    			>>
	 		\new Staff = "feet" {
	 		  \set Staff.instrumentName = "Pédalier "
				\accidentalStyle modern
				\staffSettings
				\key e \minor
				\clef bass
				\time 4/4
				\bintro

				\time 3/4 h,8
				\bassA
    			}
		>>
		\header
		{
			piece = \markup { \larger "1. Adagio"}
		}
		\layout{}
		
  \midi {
    \tempo 8 = 68
    }


	}

	\score {
		<<
			\new GrandStaff <<
				\accidentalStyle piano
				\new Staff = "right" {
					\staffSettings
		    			\key h \minor
					\clef violin
					\time 4/4
					\sopranB
				}
				\new Staff = "left" {
					\staffSettings
					\key h \minor
					\clef violin
					\time 4/4 
					\altB
				}
    			>>
    			\new Staff = "feet" {
    				\accidentalStyle modern
				\staffSettings
				\key h \minor
				\clef bass
				\time 4/4
				\bassB
    			}
		>>
		\header
		{
			piece = \markup { \larger "2. Andante" }
		}
		\layout{
			indent = #0
	  	}
	  	
  \midi {
    \tempo 8 = 78
    }


	}

	\score {
		<<
			\new GrandStaff <<
				\accidentalStyle piano
				\new Staff = "right" {
					\staffSettings
		    			\key e \minor
					\time 3/8
					\set Timing.beamExceptions = \beamExceptions {
  % Indique à LilyPond de couper les triolets de double-croches par groupes de 3
  \tuplet 3/2 { 16[ 16 16] } \tuplet 3/2 { 16[ 16 16] } \tuplet 3/2 { 16[ 16 16] }
}
					\clef violin
					\sopranC
				}
				\new Staff = "left" {
					\staffSettings
					\key e \minor
					\time 3/8 
					\set Timing.beamExceptions = \beamExceptions {
  % Indique à LilyPond de couper les triolets de double-croches par groupes de 3
  \tuplet 3/2 { 16[ 16 16] } \tuplet 3/2 { 16[ 16 16] } \tuplet 3/2 { 16[ 16 16] }
}
					\clef violin
					\altC
				}
    			>>
    			\new Staff = "feet" {
    				\accidentalStyle modern
				\staffSettings
				\key e \minor
				\clef bass
				\time 3/8
				\set Timing.beamExceptions = \beamExceptions {
  % Indique à LilyPond de couper les triolets de double-croches par groupes de 3
  \tuplet 3/2 { 16[ 16 16] } \tuplet 3/2 { 16[ 16 16] } \tuplet 3/2 { 16[ 16 16] }
}
				\bassC
    			}
		>>
		\header
		{
			piece = \markup { \larger "3. Un poco allegro" }
		}
		\layout{
			indent = #0
		}
  \midi {
    \tempo 8 = 118
    }
	}
}
