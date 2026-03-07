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
  line-width = 19\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 24))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  score-markup-spacing =
     #'((basic-distance . 10)
        (minimum-distance . 8)
        (padding . 2)
        (stretchability . 24))
  system-system-spacing =
     #'((basic-distance . 1)
        (minimum-distance . 1)
        (padding . 1)
        (stretchability . 24))
  top-margin = 10\mm
  top-markup-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 1
}

Subject = \relative {
  \time 4/4
  \key d \minor
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Staff.NoteHead.style = #'baroque
  \once\override TextScript.extra-offset = #'(-4 . -1)
  d'2_\markup \italic \small { "common subject in « The Art of Fugue »" }
  a' | f d | cis d4 e | f2~ f8 g f e | d4
}

\bookpart {
  \header {
  }

  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup
    \fill-line {
      \center-column {
        \score {
          <<
          \new Voice = "subject" \Subject
          >>
          \layout {
            indent = #0
            line-width = #150
            #(layout-set-staff-size 18)
          }
        }
        \combine \null \vspace #4
      }
    }
}

\include "./index.ly"
\pageBreak
\include "./list-of-subjects.ly"
\pageBreak
\include "./structure-of-the-fugues.ly"
\pageBreak
\include "./parts/01-contrapunctus-I.ly"
\pageBreak
\include "./parts/02-contrapunctus-II.ly"
\pageBreak
\include "./parts/03-contrapunctus-III.ly"
\pageBreak
\include "./parts/04-contrapunctus-IV.ly"
\pageBreak
\include "./parts/05-contrapunctus-V.ly"
\pageBreak
\include "./parts/06-contrapunctus-VI.ly"
\pageBreak
\include "./parts/07-contrapunctus-VII.ly"
\pageBreak
\include "./parts/08-contrapunctus-VIII.ly"
\pageBreak
\include "./parts/09-contrapunctus-IX.ly"
\pageBreak
\include "./parts/10-contrapunctus-X.ly"
\pageBreak
\include "./parts/11-contrapunctus-XI.ly"
\pageBreak
\include "./parts/12-contrapunctus-XII-I.ly"
\pageBreak
\include "./parts/12-contrapunctus-XII-II.ly"
\pageBreak
\include "./parts/13-contrapunctus-XIII-I.ly"
\pageBreak
\include "./parts/13-contrapunctus-XIII-II.ly"
\pageBreak
\include "./parts/14-contrapunctus-XIV.ly"
\pageBreak
\include "./brief-notes-on-the-completion-of-contrapunctus-xiv-en.ly"
\pageBreak
\include "./brief-notes-on-the-completion-of-contrapunctus-xiv-it.ly"
\pageBreak
\include "./parts/15-canon-in-hypodiapason.ly"
\pageBreak
\include "./parts/16-canon-alla-decima.ly"
\include "./parts/17-canon-alla-duodecima.ly"
\pageBreak
\include "./parts/18-canon-in-hypodiatessaron.ly"