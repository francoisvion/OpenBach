\version "2.24.4"
\paper {
        print-page-number = ##t
        print-first-page-number = ##t
        first-page-number = #1
        #(set-paper-size "a4")
        top-margin = 12 \mm
        bottom-margin = 12 \mm
        left-margin = 18 \mm
        right-margin = 18 \mm
        top-system-spacing =
                #'((basic-distance . 10)
                   (minimum-distance . 8)
                   (padding . 0))
        system-system-spacing =
            #'((basic-distance . 18 )
               (minimum-distance . 14)
               (padding . 4)
               (stretchability . 4))
        ragged-last-bottom = ##f
        ragged-bottom = ##f
}
#(set-global-staff-size 18)
\pointAndClickOff
\header {
  title = "Prélude"
  subtitle = "de la Suite pour Violoncelle N° 1"
  opus = "BWV 1007"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
global = {
    \clef "G_8"
    \time 4/4
    \key d \major
    \set Staff.connectArpeggios = ##t
    #(set-accidental-style 'modern)
}
\include "guitare.ly"
\score {
  \new Staff \with { \consists "Span_arpeggio_engraver" }
	     <<  \global \spacing \guitar >>
 \layout {
    \context {
	\Score
    }
  }
}
