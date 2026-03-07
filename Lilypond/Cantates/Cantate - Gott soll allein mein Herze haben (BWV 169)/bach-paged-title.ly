\version "2.19.11"

\include "common.ly"

\paper {
    bookTitleMarkup = \markup{
	\center-column {
	    \mm-feed #20.0
	    \fill-line {
		\abs-fontsize #24 \bold \fromproperty #'header:composer
	    }
	    \mm-feed #12.0
	    \fill-line {
		\epsfile-mm #X #80 #"bach-monogram.eps"
	    }
	    \mm-feed #0.0
	    \fill-line {
		\abs-fontsize #16 \bold \fromproperty #'header:poet
	    }
	    \mm-feed #2.0
	    \fill-line {
		\abs-fontsize #28 \bold \fromproperty #'header:title
	    }
	    \mm-feed #7.0
	    \fill-line {
		\abs-fontsize #18 \bold \fromproperty #'header:subtitle
	    }
	    \mm-feed #7.0
	    \fill-line {
		\abs-fontsize #16 \fromproperty #'header:subsubtitle
	    }
	    \mm-feed #5.0
	    \fill-line {
		\abs-fontsize #18 \bold \fromproperty #'header:opus
	    }
	    \mm-feed #7.0
	    \fill-line {
		\abs-fontsize #16 \fromproperty #'header:source
	    }
	    \mm-feed #26.0
	    \fill-line {
		\abs-fontsize #20 \bold \fromproperty #'header:instrument
	    }
	    % \mm-feed #20.0
	}
    }
}

\pageBreak


