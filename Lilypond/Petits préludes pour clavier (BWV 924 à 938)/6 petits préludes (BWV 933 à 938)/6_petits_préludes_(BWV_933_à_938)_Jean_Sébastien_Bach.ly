\version "2.24.4"

#(ly:set-option 'relative-includes #t)

\header {
  composer =  ##f %"Jean Sébastien Bach (1685-1750)"
  opus = "BWV 933 à 938"
  title = "6 petits préludes"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  binding-offset = 0\mm
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
  inner-margin = 10\mm
% last-bottom-spacing.padding = #2
  left-margin = 10\mm
  line-width = 18.4\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  outer-margin = 20\mm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  right-margin = 10\mm
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
}

\include "./parts/sechs-kleine-praludien-BWV933.ly"
\pageBreak
\include "./parts/sechs-kleine-praludien-BWV934.ly"
\pageBreak
\include "./parts/sechs-kleine-praludien-BWV935.ly"
\pageBreak
\include "./parts/sechs-kleine-praludien-BWV936.ly"
\pageBreak
\include "./parts/sechs-kleine-praludien-BWV937.ly"
\pageBreak
\include "./parts/sechs-kleine-praludien-BWV938.ly"