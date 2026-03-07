\version "2.18.0"

\include "bach-169-1.ly"
\include "bach-169-2.ly"
\include "bach-169-3.ly"
\include "bach-169-4.ly"
\include "bach-169-5.ly"
\include "bach-169-6.ly"
\include "bach-169-7.ly"

#(set-global-staff-size 18)

\include "title.ly"
\include "bach-paged-title.ly"

% \paper {
    % page-breaking = #ly:page-turn-breaking
% }

\header {
    instrument = "Organo"
}

TRANSPOSE = c

\include "bach-169-org-common.ly"
