\include "Cantate_Die_Elenden_sollen_essen_(BWV_75)_Jean_Sébastien_Bach_notes.ly"
\include "title.ly"
\paper {
}
\header {
    instr = \markup{Trompette en \concat{Si}{\smaller\raise #0.5 \flat}}
}
\addQuote "mvtVIIIvlnI" { \mvtVIIIvlnI }
mvtVIIIcues = {
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN d' { s1*7^"Vln. I" }
    s1*5^\markup{\upright\larger{Trompette}}
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN d' { s1*2^"Vln. I" }
    s1*10^\markup{\upright\larger{Trompette}}
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN d' { s1*2^"Vln. I" }
    s1*4^\markup{\upright\larger{Trompette}}
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN d' { s1*7^"Vln. I" }
    s1*6^\markup{\upright\larger{Trompette}}
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN d' { s1*3^"Vln. I" }
}
\score {
    \new Staff <<
	\transpose bes g <<
	    \mvtVIIItromba
	>>
	\mvtVIIIcues
    >>
    \header {
	piece = "8. SINFONIE"
    }
}
