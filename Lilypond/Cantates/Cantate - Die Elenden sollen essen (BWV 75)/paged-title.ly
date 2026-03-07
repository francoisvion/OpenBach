\version "2.17.20"

\include "title.ly"

\paper {
    bookTitleMarkup = \markup {
	\center-column {
	    \combine \null \vspace #10.0
	    \huge \larger \bold 
	    \fill-line {
		\larger \fromproperty #'header:composer
	    }
	    \combine \null \vspace #2.0
	    \huge \larger \bold 
	    \fill-line {
		\larger \fromproperty #'header:poet
	    }
	    \combine \null \vspace #2.0
	    \huge \larger \larger
	    \fill-line {
		\larger \larger \larger \bold \fromproperty #'header:title
	    }
	    \combine \null \vspace #2.0
	    \huge \bold
	    \fill-line {
		\fromproperty #'header:subtitle
	    }
	    \combine \null \vspace #2.0
	    \large \bold
	    \fill-line {
		\fromproperty #'header:subsubtitle
	    }
	    \combine \null \vspace #15.0
	    \huge \larger \bold
	    \fill-line {
		\larger \fromproperty #'header:instr
	    }
	    %{
	    \combine \null \vspace #6.0
	    \fill-line {
		\epsfile #Y #120 #"neubauer-12-2-title.eps"
	    }
	    %}
	}
    }
}

\pageBreak

