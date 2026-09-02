\version "2.27.1"

D = \tweak Stem.direction #DOWN \etc
U = \tweak Stem.direction #UP \etc

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
  title = "1. Chœur"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean-Sébastien Bach (1685-1750)"
  instrument = "Alto"
  tagline = ##f
}

#(set-global-staff-size 18)

\include "./parts/alto.ly"

\score {
  <<
    \new Staff = "P5" <<
      \set Staff.midiInstrument = "viola"
      \context Staff <<
        \context Voice = "alto" {
          \alto
        }
      >>
    >>
  >>
 \layout {\context {
    \Staff
    \RemoveEmptyStaves
  }}
 \midi { \tempo 4 = 100 }
}
