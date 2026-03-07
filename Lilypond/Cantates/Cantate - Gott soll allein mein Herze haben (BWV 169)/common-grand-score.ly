\version "2.19.11"

\layout {
    \context {
	\Score {
	    \override Score.BarNumber.font-size = #3
	}
    }
}


\paper {
    system-separator-markup = \markup {
        \center-align
        \vcenter \combine
        \beam #4.0 #0.5 #0.96
        \raise #1.4 \beam #4.0 #0.5 #0.96
    }
    % system-separator-markup = \slashSeparator
    system-system-spacing = #'((basic-distance . 18) (minimum-distance . 12) (padding . 1) (stretchability . 80))
}
