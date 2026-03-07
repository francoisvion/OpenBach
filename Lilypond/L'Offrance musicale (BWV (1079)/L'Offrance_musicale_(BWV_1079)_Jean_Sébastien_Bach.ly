\version "2.24.4"

#(ly:set-option 'relative-includes #t)

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18.6\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 8\mm
}

\include "./header.ily"
\include "./parts/bach-musikalisches-opfer-ricercare-a-3.ly"
\pageBreak
\include "./parts/bach-musikalisches-opfer-ricercare-a-6.ly"