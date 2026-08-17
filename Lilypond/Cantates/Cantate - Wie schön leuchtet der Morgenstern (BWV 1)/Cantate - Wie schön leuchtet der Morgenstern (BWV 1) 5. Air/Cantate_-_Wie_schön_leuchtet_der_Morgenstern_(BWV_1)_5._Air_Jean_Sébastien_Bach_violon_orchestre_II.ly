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
  title = "5. Air"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  instrument = "Violon d'orchestre II"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
   
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }}
        
\include "./parts/violon_orchestre_II.ly"

\score {
  \new Staff
  \context Voice = "PartPFourVoiceOne" {  \PartPFourVoiceOne }
    \layout {
  \context {
    \Staff
    \RemoveEmptyStaves
  }
}
    \midi {\tempo 4 = 62 }
}

