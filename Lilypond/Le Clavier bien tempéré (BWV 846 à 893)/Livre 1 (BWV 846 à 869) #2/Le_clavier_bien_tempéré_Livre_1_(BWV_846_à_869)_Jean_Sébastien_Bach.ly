\version "2.24.4"

#(ly:set-option 'relative-includes #t)

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  binding-offset = 0\mm
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
  %inner-margin = 10\mm
% last-bottom-spacing.padding = #2
  %left-margin = 10\mm
  line-width = 19\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  %outer-margin = 20\mm
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  %right-margin = 10\mm
  score-markup-spacing =
     #'((basic-distance . 10)
        (minimum-distance . 8)
        (padding . 2)
        (stretchability . 24))
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  top-margin = 10\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
}

\bookpart {

  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Jean Sébastien" }
        \null
        \line { \abs-fontsize #50 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null
        \line { \abs-fontsize #30 \bold "Le clavier bien tempéré" }
        \null\null
        \line { \abs-fontsize #26 \bold "Livre 1" }
        \null\null
        \null\null
        \line { \abs-fontsize #20 "BWV 846 à 869" }
        \null\null\null\null
        \null\null\null
        \null\null
      }
    }
  }


}

\include "macros.ly"

\include "./index.ly"
\pageBreak

\include "./BWV846/das-wohltemperierte-klavier-I-01-1-praeludium.ly"
\pageBreak
\include "./BWV846/das-wohltemperierte-klavier-I-01-2-fuga.ly"
\pageBreak

\include "./BWV847/das-wohltemperierte-klavier-I-02-1-praeludium.ly"
\pageBreak
\include "./BWV847/das-wohltemperierte-klavier-I-02-2-fuga.ly"
\pageBreak

\include "./BWV848/das-wohltemperierte-klavier-I-03-1-praeludium.ly"
\pageBreak
\include "./BWV848/das-wohltemperierte-klavier-I-03-2-fuga.ly"
\pageBreak

\include "./BWV849/das-wohltemperierte-klavier-I-04-1-praeludium.ly"
\pageBreak
\include "./BWV849/das-wohltemperierte-klavier-I-04-2-fuga.ly"
\pageBreak

\include "./BWV850/das-wohltemperierte-klavier-I-05-1-praeludium.ly"
\pageBreak
\include "./BWV850/das-wohltemperierte-klavier-I-05-2-fuga.ly"
\pageBreak

\include "./BWV851/das-wohltemperierte-klavier-I-06-1-praeludium.ly"
\pageBreak
\include "./BWV851/das-wohltemperierte-klavier-I-06-2-fuga.ly"
\pageBreak

\include "./BWV852/das-wohltemperierte-klavier-I-07-1-praeludium.ly"
\pageBreak
\include "./BWV852/das-wohltemperierte-klavier-I-07-2-fuga.ly"
\pageBreak

\include "./BWV853/das-wohltemperierte-klavier-I-08-1-praeludium.ly"
\pageBreak
\include "./BWV853/das-wohltemperierte-klavier-I-08-2-fuga.ly"
\pageBreak
\include "./BWV853/das-wohltemperierte-klavier-I-08-2-fuga-original-tonality.ly"
\pageBreak

\include "./BWV854/das-wohltemperierte-klavier-I-09-1-praeludium.ly"
\pageBreak
\include "./BWV854/das-wohltemperierte-klavier-I-09-2-fuga.ly"
\pageBreak

\include "./BWV855/das-wohltemperierte-klavier-I-10-1-praeludium.ly"
\pageBreak
\include "./BWV855/das-wohltemperierte-klavier-I-10-2-fuga.ly"
\pageBreak

\include "./BWV856/das-wohltemperierte-klavier-I-11-1-praeludium.ly"
\pageBreak
\include "./BWV856/das-wohltemperierte-klavier-I-11-2-fuga.ly"
\pageBreak

\include "./BWV857/das-wohltemperierte-klavier-I-12-1-praeludium.ly"
\pageBreak
\include "./BWV857/das-wohltemperierte-klavier-I-12-2-fuga.ly"
\pageBreak

\include "./BWV858/das-wohltemperierte-klavier-I-13-1-praeludium.ly"
\pageBreak
\include "./BWV858/das-wohltemperierte-klavier-I-13-2-fuga.ly"
\pageBreak

\include "./BWV859/das-wohltemperierte-klavier-I-14-1-praeludium.ly"
\pageBreak
\include "./BWV859/das-wohltemperierte-klavier-I-14-2-fuga.ly"
\pageBreak

\include "./BWV860/das-wohltemperierte-klavier-I-15-1-praeludium.ly"
\pageBreak
\include "./BWV860/das-wohltemperierte-klavier-I-15-2-fuga.ly"
\pageBreak

\include "./BWV861/das-wohltemperierte-klavier-I-16-1-praeludium.ly"
\pageBreak
\include "./BWV861/das-wohltemperierte-klavier-I-16-2-fuga.ly"
\pageBreak

\include "./BWV862/das-wohltemperierte-klavier-I-17-1-praeludium.ly"
\pageBreak
\include "./BWV862/das-wohltemperierte-klavier-I-17-2-fuga.ly"
\pageBreak

\include "./BWV863/das-wohltemperierte-klavier-I-18-1-praeludium.ly"
\pageBreak