\include "./macros.ly"

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    \line { "Le clavier bien tempéré - Livre 1" }
    \null
%   "Index"
    \null
  }
}
\noPageBreak

#(define-markup-command (indexItem layout props title pagelabel tone bwv)
  (string? symbol? string? string?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #10 {
         \override #'(line-width . 95)
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT . #title \page-ref #pagelabel "00" "?"
           }
         }
         \pad-around #0.5
         \line \abs-fontsize #7 \italic \with-color #middleGrey {
           \concat { \hspace #6 "BWV " #bwv "  —  " #tone }
         }
       } #}))

\markup \indexItem "Prélude et Fugue N° 1"    #'Praeludium01 "Do Majeur" "846"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 2"   #'Praeludium02 "Do mineur" "847"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 3"  #'Praeludium03 "Do# Majeur" "848"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 4"   #'Praeludium04 "Do# mineur" "849"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 5"    #'Praeludium05 "Ré Majeur" "850"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 6"   #'Praeludium06 "Ré mineur" "851"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 7"  #'Praeludium07 "Mib Majeur" "852"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 8" #'Praeludium08
                   "Mib mineur + Fugue en Ré# mineur" "853"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 9"   #'Praeludium09 "Mi Majeur" "854"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 10"    #'Praeludium10 "Mi mineur" "855"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 11"   #'Praeludium11 "Fa Majeur" "856"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 12"  #'Praeludium12 "Fa mineur" "857"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 13"  #'Praeludium13 "Fa# Majeur" "858"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 14"  #'Praeludium14 "Fa# mineur" "859"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 15"  #'Praeludium15 "Sol Majeur" "860"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 16"  #'Praeludium16 "Sol mineur" "861"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 17"  #'Praeludium17 "Lab Majeur" "862"
\noPageBreak
\markup \indexItem "Prélude et Fugue N° 18"  #'Praeludium18 "Sol# mineur" "863"
\noPageBreak

%\markup \indexItem "Prélude et Fugue N° 19"  #'Praeludium19 "A-Dur (A major)" "864"
\noPageBreak
%\markup \indexItem "Prélude et Fugue N° 20"  #'Praeludium20 "a-X (A minor)" "865"
\noPageBreak
%\markup \indexItem "Prélude et Fugue N° 21"  #'Praeludium21 "B-dur (B-flat major)" "866"
\noPageBreak
%\markup \indexItem "Prélude et Fugue N° 22"  #'Praeludium22 "b-moll (B-flat minor)" "867"
\noPageBreak
%\markup \indexItem "Prélude et Fugue N° 23"  #'Praeludium23 "H-dur (B major)" "868"
\noPageBreak
%\markup \indexItem "Prélude et Fugue N° 24"  #'Praeludium24 "h-moll (B minor)" "869"
\noPageBreak

