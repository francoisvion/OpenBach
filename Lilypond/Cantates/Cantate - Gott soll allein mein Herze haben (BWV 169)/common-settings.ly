\version "2.19.11"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Overrides for default settings
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% shared by approx. all works so put it into common.ly
%
\paper {
    two-sided = ##t
    inner-margin = 12\mm
    outer-margin = 8\mm
    indent = 0
}


% shared by approx. all works so put it into common.ly
%
\paper {
    % annotate-spacing = ##t
    oddHeaderMarkup = \markup{
	\fill-line {
	    \abs-fontsize #11 {
		\on-the-fly #print-page-number-check-first
		    \fromproperty #'header:instrument
		\on-the-fly #print-page-number-check-first
		    \line { \fromproperty #'header:composer — \fromproperty #'header:title \fromproperty #'header:opus }
		\on-the-fly #print-page-number-check-first
		    \fromproperty #'page:page-number-string
	    }
	}
    }

    evenHeaderMarkup = \markup{
	\fill-line {
	    \abs-fontsize #11 {
		\on-the-fly #print-page-number-check-first
		    \fromproperty #'page:page-number-string
		\on-the-fly #print-page-number-check-first
		    \line { \fromproperty #'header:composer — \fromproperty #'header:title \fromproperty #'header:opus }
		\fromproperty #'header:instrument
	    }
	}
    }

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
	    \on-the-fly #print-all-headers { \bookTitleMarkup \hspace #1 }
	    % \combine \null \vspace #0.0
	    \huge \larger \bold {
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
	    % \override BassFigure #'font-size = #-1.5
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

	    \override RestCollision #'positioning-done = #merge-rests-on-positioning

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
	    % \set subdivideBeams = ##t
	}
    }

    \compressFullBarRests
}

\paper {
    top-markup-spacing #'basic-distance = #5.5
    markup-system-spacing #'basic-distance = #0.0
    markup-system-spacing.min-distance = #0.0
    markup-system-spacing.stretchability = #2.0
    markup-system-spacing.padding = #0.0
}
