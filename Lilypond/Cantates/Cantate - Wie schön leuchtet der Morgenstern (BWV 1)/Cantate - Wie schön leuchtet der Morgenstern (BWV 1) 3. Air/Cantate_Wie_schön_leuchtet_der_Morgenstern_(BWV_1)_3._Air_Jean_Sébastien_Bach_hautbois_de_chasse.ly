\version "2.27.1"

#(set-global-staff-size 18)

\paper {
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \bold \fromproperty #'header:title
      }
      \fill-line {
        \large \bold \fromproperty #'header:subtitle
      }
      \vspace #1
      \fill-line {
        \large \bold \fromproperty #'header:instrument
      }
      \vspace #0.5
      \fill-line {
        \null
        \fromproperty #'header:composer
      }      }
    }
  }
  
\header {
  title = "3. Air"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean Sébastien Bach (1685-1750)"
  instrument = "Hautbois de chasse"
  tagline = ##f
}

\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }

\include "./parts/hautbois_de_chasse.ly"

\score {
            \new Staff
            <<
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
    \layout {}
    \midi {\tempo 4 = 70 }
    }

