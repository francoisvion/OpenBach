\version "2.27.1"

\language "deutsch"

\include "global.ly"
\include "triolen.ly"

\include "header.ly"


neueZeile = { }
neueSeite = { }

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "flute_1.ly"
\include "clavecin_1.ly"
\include "flute_2.ly"
\include "clavecin_2.ly"
\include "flute_3.ly"
\include "clavecin_3.ly"
\include "metronom_3.ly"

\score {
   \header {
      piece = "1. Andante"
   }

   \context StaffGroup = "sonataA" <<
      \context Staff = "flute" {
         \set Staff.fontSize = #-2
         \fluteA
      }
      \clavecinA
   >>

   \layout {
      indent = 0.6\cm
   }

   
  \midi {
    \tempo 4 = 68
    }


}

%
\score {
   \header {
      piece = "2. Largo e dolce"
   }

   \context StaffGroup = "sonataB" <<
      \context Staff = "flute" {
         \set Staff.fontSize = #-2
         \fluteBforScore
      }
      \clavecinB
   >>
   \layout {
      indent = 0.6\cm
   }
}


\score {
   \unfoldRepeats {
      \context StaffGroup = "sonataB" <<
         \context Staff = "flute" {
         \fluteBforScore
      }
      \clavecinB
      >>
   }
   
  \midi {
    \tempo 8 = 60
    }


}
%}

\score {
   \header {
      piece = "3. Presto"
   }

   \context StaffGroup = "sonataC" <<
      \context Staff = "flute" {
         \set Staff.fontSize = #-2
         \fluteC
      }
      \clavecinC
   >>
   \layout {
      indent = 0.6\cm
   }
}

\score {
   \header {
      piece = "3. Presto"
   }

   \unfoldRepeats {
      \context StaffGroup = "sonataC" <<
         \context Staff = "metronom" { \metronomC }
         \context Staff = "flute"    { \fluteC }
         \clavecinC
      >>
   }

   
  \midi {
    \tempo 2 = 104
    }


}
