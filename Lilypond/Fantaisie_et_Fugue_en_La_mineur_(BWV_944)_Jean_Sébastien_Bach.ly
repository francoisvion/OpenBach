\version "2.24.4"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##t
    ragged-last-bottom = ##f
}

#(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
  title = "Fantaisie et Fugue en La mineur"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 944"
  tagline = ##f
}


sopranoOne =   \relative b' {
	  < c e >1 | % 1
	  < b d >2 < b d >2 | % 2
	  < b d >2 < a c >2 | % 3
	  < a c >2 < gis b >2 | % 4
	  < gis b >2 a2 | % 5
	  < e' g >2 < cis e g >2 | % 6
	  < cis e g>2 < d f >2 | % 7
	  < d f >2 < c e >2 | % 8
	  < a c e >2 < b dis >2 | % 9
	  < b e >1-\fermata  \bar "|." | % 10

}

sopranoTwo =   \relative e' {
	  < e a >1 | % 1
	  < d f >2 < e gis >2 | % 2
	  < fis g >2 < e gis >2 | % 3
	  < d f >2 < d f >2 | % 4
	  < d f >2 < c e >2 | % 5
	  < g' bes >2 < g a >2 | % 6
	  < g bes >2 a2 | % 7
	  < gis b >2 < gis a >2 | % 8
	  r4 gis4 < fis a >2 | % 9
	  < e gis >1 | % 10

  }

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative e {
	
	  < e a >1^"Arpeggio" | % 1
	  < d f >2 < d e >2 | % 2
	  < e a >2 < e a >2 | % 3
	  a2 gis2 | % 4
	  gis2 < e a >2 | % 5
	  < g bes >2 < e a >2 | % 6
	  < g cis >2 < a d >2 | % 7
	  b2 c 2 | % 8
	  c2 b2 | % 9
	  b1 | % 10
  
}

bassTwo = \relative c {
	  < a c>1 | % 1
	  < a b >2 < gis b >2 | % 2
	  < a d >2 < a c >2 | % 3
	  < b d >2 < b d >2 | % 4
	  < c d >2 < c e >2 | % 5
	  < cis e >2 < cis e >2 | % 6
	  < d e >2 < d f >2 | % 7
	  < e gis >2 < e gis >2 | % 8
	  < f a >2 < fis a >2 | % 9
	  < e gis >1-\fermata | % 10
 
}

bass = << \bassOne \\ \bassTwo>>

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier"
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key c \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key c \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }
}