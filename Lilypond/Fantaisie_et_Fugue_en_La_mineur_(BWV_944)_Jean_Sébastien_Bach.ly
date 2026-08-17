\version "2.24.4"
\paper {
    page-top-space = #0.0
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
	  < c e >1 |
	  < b d >2 < b d >2 |
	  < b d >2 < a c >2 |
	  < a c >2 < gis b >2 |
	  < gis b >2 a2 |
	  < e' g >2 < cis e g >2 |
	  < cis e g>2 < d f >2 |
	  < d f >2 < c e >2 |
	  < a c e >2 < b dis >2 |
	  < b e >1-\fermata  \bar "|." |
}
sopranoTwo =   \relative e' {
	  < e a >1 |
	  < d f >2 < e gis >2 |
	  < fis g >2 < e gis >2 |
	  < d f >2 < d f >2 |
	  < d f >2 < c e >2 |
	  < g' bes >2 < g a >2 |
	  < g bes >2 a2 |
	  < gis b >2 < gis a >2 |
	  r4 gis4 < fis a >2 |
	  < e gis >1 |
  }
soprano = << \sopranoOne \\ \sopranoTwo>>
bassOne = \relative e {
	  < e a >1^"Arpeggio" |
	  < d f >2 < d e >2 |
	  < e a >2 < e a >2 |
	  a2 gis2 |
	  gis2 < e a >2 |
	  < g bes >2 < e a >2 |
	  < g cis >2 < a d >2 |
	  b2 c 2 |
	  c2 b2 |
	  b1 |
}
bassTwo = \relative c {
	  < a c>1 |
	  < a b >2 < gis b >2 |
	  < a d >2 < a c >2 |
	  < b d >2 < b d >2 |
	  < c d >2 < c e >2 |
	  < cis e >2 < cis e >2 |
	  < d e >2 < d f >2 |
	  < e gis >2 < e gis >2 |
	  < f a >2 < fis a >2 |
	  < e gis >1-\fermata |
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
