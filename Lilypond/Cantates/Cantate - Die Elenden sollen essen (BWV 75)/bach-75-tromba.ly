\include "bach-75-8.ly"

% #(set-global-staff-size 17)

% \include "paged-title.ly"
\include "title.ly"

\paper {
    two-sided = ##t
    indent = 0
    % page-breaking = #ly:page-turn-breaking
    % page-count = 1
}

\header {
    instr = "Tromba in G"
}


\addQuote "mvtVIIIvlnI" { \mvtVIIIvlnI }

mvtVIIIcues = {
    \cueDuring #"mvtVIIIvlnI" #DOWN { s1*7^"Vln.I" }
    s1*5^\markup{\upright\larger{Tromba}}
    \cueDuring #"mvtVIIIvlnI" #DOWN { s1*2^"Vln.I" }
    s1*10^\markup{\upright\larger{Tromba}}
    \cueDuring #"mvtVIIIvlnI" #DOWN { s1*2^"Vln.I" }
    s1*4^\markup{\upright\larger{Tromba}}
    \cueDuring #"mvtVIIIvlnI" #DOWN { s1*7^"Vln.I" }
    s1*6^\markup{\upright\larger{Tromba}}
    \cueDuring #"mvtVIIIvlnI" #DOWN { s1*3^"Vln.I" }
}

\score {
    \new Staff <<
	\mvtVIIItromba

	\mvtVIIIcues
    >>

    \header {
	piece = \markup{\bold{8. SINFONIA.}}
    }
}
