\version "2.24.4"

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 8\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18.6\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 25))
  top-margin = 10\mm
}

\header {
  title = "Prélude et Fuge en La mineur"
  opus = "BWV 543"
  composer = "Jean Sébastien Bach (1685-1750)"
}
\include "./parts/1._Prélude.ly"
\pageBreak
\include "./parts/2._Fugue.ly"