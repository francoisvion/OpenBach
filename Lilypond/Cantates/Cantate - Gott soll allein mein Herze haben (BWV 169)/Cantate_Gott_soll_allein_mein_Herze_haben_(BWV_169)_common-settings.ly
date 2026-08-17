\version "2.27.1"

\paper {
 
    bookTitleMarkup = \markup {
	\column {
	    \fill-line {
		\large\bold \fromproperty #'header:instrument
		\huge\larger\larger\bold
		\fromproperty #'header:title
		\large\bold \fromproperty #'header:composer
	    }
	    \fill-line {
              ""
	      \large \bold \fromproperty #'header:subtitle
	      \large \bold \fromproperty #'header:opus
	    }
	    \fill-line {
	      \smaller \bold
	      \fromproperty #'header:subsubtitle
	    }
	    \fill-line {
	      \fromproperty #'header:poet
	      \fromproperty #'header:meter
	      \fromproperty #'header:arranger
	    }
	}
    }

    scoreTitleMarkup = \markup {
	\column {
	    \if \should-print-all-headers { \bookTitleMarkup \hspace #1 }
	    % \combine \null \vspace #0.0
	    \huge  {
	        \fromproperty #'header:piece
	    }
	    \combine \null \vspace #0.0
	}
    }

}

\layout {

    \context {
	\StaffGroup {
	    \override StaffGroup.SystemStartBracket.collapse-height = #4
	}
    }

    \context {
	\StaffGroup {
	    \override StaffGroup.SystemStartBracket.collapse-height = #4
	}
    }

    \context {
	\GrandStaff {
	    \override PianoStaff.SystemStartBrace.collapse-height = #4
	}
    }

    \context {
	\FiguredBass {
	    % \override BassFigure.font-size = #-1.5
	    \set figuredBassAlterationDirection = #RIGHT
	    \set figuredBassPlusDirection = #RIGHT
	}
    }

    \context {
	\Staff {
	    \override TextScript.font-shape = #'italic

	    \set soloText = #"1."
	    \set soloIIText = #"2."

	    \accidentalStyle modern-cautionary

	    \extendLV #3

	    \override RestCollision.positioning-done = #merge-rests-on-positioning

	    \override AccidentalSuggestion.avoid-slur = #'inside
	}
    }

    \context {
	\RhythmicStaff {
	    \override TextScript.font-shape = #'italic
	}
    }

    \context {
	\Voice {
	}
    }

    \compressEmptyMeasures
}
