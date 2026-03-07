\version "2.24.4"

\header {
  title = "Suite pour Violoncelle N° 4"
  opus = "BWV 1010"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

}


bourreeII = \relative c' {
	\time 4/4
	\key ees \major
	\set Staff.midiInstrument = "cello"

	\repeat volta 2 {
	    % 1
	    \partial 4 <<{ees4} \\ {g,}>> | 
	    <<{
	        ees'( f)~ f d
	        ees8 f g4~ g ees
	    } \\ {
	        aes, s bes s
	        c s g s
	    }>>
	    aes f' bes, d |
	    ees bes ees, 
	}
	\repeat volta 2 {
	    <<{bes''4} \\ {ees,}>> |
	    <<{bes' c~ c bes} \\ {aes s g s}>> | 
	    aes8 g aes4 f( aes) |
	    <<{bes aes~ aes g} \\ {d s ees s}>> |
	    f8 ees d c bes aes <<{ees'4} \\ {g,}>> |
	    <<{
	        ees' f~ f d |
	        ees8 f g4~ g ees |
	    } \\ {
	        aes, s bes s |
	        c s g s |
	    }>>
	    aes f'^\markup{\italic "(Bourrée 1 da capo)"} bes, d |
	    <<{ees2.} \\ {ees,} \\ {bes'}>>
	}
}
