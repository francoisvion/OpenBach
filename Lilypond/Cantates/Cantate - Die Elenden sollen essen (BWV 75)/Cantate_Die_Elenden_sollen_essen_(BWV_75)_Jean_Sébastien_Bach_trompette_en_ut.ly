\include "Cantate_Die_Elenden_sollen_essen_(BWV_75)_Jean_Sébastien_Bach_notes.ly"
\include "title.ly"
\paper {
}
\header {
    instr = "Trompette en Ut"
}
\addQuote "mvtVIIIvlnI" { \mvtVIIIvlnI }
mvtVIIIcues = {
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN c' { s1*7^"Vln. I" }
    s1*5^\markup{\upright\larger{Tromba}}
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN c' { s1*2^"Vln. I" }
    s1*10^\markup{\upright\larger{Tromba}}
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN c' { s1*2^"Vln. I" }
    s1*4^\markup{\upright\larger{Tromba}}
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN c' { s1*7^"Vln. I" }
    s1*6^\markup{\upright\larger{Tromba}}
    \transposedCueDuring #"mvtVIIIvlnI" #DOWN c' { s1*3^"Vln. I" }
}
\score {
    \new Staff <<
	\transpose c' g <<
	    \mvtVIIItromba
	>>
	\mvtVIIIcues
    >>
    \header {
	piece = "8. SINFONIE"
    }
}
