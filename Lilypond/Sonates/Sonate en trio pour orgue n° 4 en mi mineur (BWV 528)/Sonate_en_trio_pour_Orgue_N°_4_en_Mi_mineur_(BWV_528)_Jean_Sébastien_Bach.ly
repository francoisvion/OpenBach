\version "2.25.33"

\include "deutsch.ly"

\header {
  title = "Sonate en trio pour Orgue N° 4 en Mi mineur"
  opus = "BWV 528"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

\include "Adagio.ly"
\include "Andante.ly"
\include "Allegro.ly"

staffSettings = {
		\set Staff.midiInstrument = "church organ"
		#(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
                #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
                #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
                #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
 		#(override-auto-beam-setting '(end 1 24 3 8) 1 8)
                #(override-auto-beam-setting '(end 1 24 3 8) 2 8)
                \tupletSpan 8
		\override TupletNumber.transparent = ##t
}

%#(set-default-paper-size "a4")
\book {
	% first movement: Adagio--Vivace
	\score {
		<<
			% we have a tempo change in this movement, don't print
			% metronome markings
			\override Score.MetronomeMark.transparent = ##t
			\new GrandStaff <<
				\accidentalStyle piano
				\new Staff = "right" {
					\staffSettings
		    			\key e \minor
					\clef violin
					\time 4/4
					\sintro

					% the actual tempo-change is in
					% the alto voice
					\time 3/4 <<{dis''4}{s8 s8^vivace}>>
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
			piece = "1. Adagio"
		}
		\layout{
			indent = #0
		}
		
  \midi {
    \tempo 8 = 68
    }


	}

	% second movement: Andante
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
			piece = "2. Andante"
			opus = ""
		}
		\layout{
			indent = #0
	  	}
	  	
  \midi {
    \tempo 8 = 78
    }


	}

	% third movement: un pocc'allegro
	\score {
		<<
			\new GrandStaff <<
				\accidentalStyle piano
				\new Staff = "right" {
					\staffSettings
		    			\key e \minor
					\time 3/8
					\clef violin
					\sopranC
				}
				\new Staff = "left" {
					\staffSettings
					\key e \minor
					\time 3/8 
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
				\bassC
    			}
		>>
		\header
		{
			piece = "3. Un poc'allegro"
			opus = ""
		}
		\layout{
			indent = #0
		}
  \midi {
    \tempo 8 = 118
    }
	}
}
