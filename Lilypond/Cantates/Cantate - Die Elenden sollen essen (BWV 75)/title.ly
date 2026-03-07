\version "2.17.20"

\paper {
    % annotate-spacing = ##t
    two-sided = ##t
    inner-margin = 10\mm
    outer-margin = 8\mm

    oddHeaderMarkup = \markup{
	\fill-line {
	    \fromproperty #'header:instr
	    \on-the-fly #print-page-number-check-first
		\line { \fromproperty #'header:composer — \fromproperty #'header:title }
	    \on-the-fly #print-page-number-check-first
		\fromproperty #'page:page-number-string
	}
    }

    evenHeaderMarkup = \markup{
	\fill-line {
	    \on-the-fly #print-page-number-check-first
		\fromproperty #'page:page-number-string
	    \on-the-fly #print-page-number-check-first
		\line { \fromproperty #'header:composer — \fromproperty #'header:title }
	    \fromproperty #'header:instr
	}
    }

    scoreTitleMarkup = \markup {
	\column {
	    \on-the-fly #print-all-headers { \bookTitleMarkup \hspace #1 }
	    \combine \null \vspace #0.5
	    \huge \larger \bold {
	        \fromproperty #'header:piece
	    }
	  }
      }

}

\header {
    title = \markup{ "Die Elenden sollen Essen" }
    subtitle = \markup{ Cantate 75 }
    subsubtitle = \markup{ Am ersten Sonntage nach Trinitatis. }
    composer = "J.S. Bach"
    copyright = "© Rutger Hofman 2013 Creative Commons Attribution-ShareAlike 3.0"
}

\layout {
}


