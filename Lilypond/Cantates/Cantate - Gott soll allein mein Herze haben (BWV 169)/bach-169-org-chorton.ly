\version "2.18.0"

\include "bach-169-1.ly"
\include "bach-169-2.ly"
\include "bach-169-3.ly"
\include "bach-169-4.ly"
\include "bach-169-5.ly"
\include "bach-169-6.ly"
\include "bach-169-7.ly"

#(set-global-staff-size 18)

\paper {
    % page-breaking = #ly:page-turn-breaking
}

\header {
    instrument = "Organo in Chorton"
}

\header {
    copyright = \markup{\abs-fontsize #10 \center-column{
		    "© 2012 Anna Kim - © 2014 Rutger Hofman"
		    "Creative Commons Attribution Non-commercial 3.0"}}
}

\include "title.ly"
\include "bach-paged-title.ly"

TRANSPOSE = d

\include "bach-169-org-common.ly"
