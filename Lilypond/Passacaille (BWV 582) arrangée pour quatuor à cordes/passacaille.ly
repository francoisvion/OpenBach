\version "2.24.4"

\header {
 \include "headers.ly"
 subtitle = "Score"
}


\paper{
%#(define page-breaking ly:minimal-breaking)
}

\include "english.ly"

\include "functions.ly"


\score {
  
  \new StaffGroup
  
   <<
      \new Staff <<
        \new Voice {        % This extra voice is for the rehearsal marks only.
          \include "rehearsalLetterMarks.ly"
        }
        \new Voice {
          \set Staff.instrumentName = \markup { "Violon 1" }
        \include "violin1.ly"
        }
      >>

      \new Staff {
            \set Staff.instrumentName = \markup { "Violon 2" }
          \include "violin2.ly"
        }

      \new Staff {
          \set Staff.instrumentName = \markup { "Alto" }
          \include "viola.ly"
        }
  
      \new Staff {
            \set Staff.instrumentName = \markup { "Violoncelle" }
          \include "cello.ly"
      }
    
   >>
 
   \layout{ }
   
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
      }
    }

}