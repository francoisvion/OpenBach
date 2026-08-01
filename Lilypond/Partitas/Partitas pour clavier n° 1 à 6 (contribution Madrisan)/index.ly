\markup \fill-line {
  \center-column \abs-fontsize #18 \bold\caps {
    \null\null
    "Index"
    \null\null\null\null
  }
}

middleGrey = #(x11-color 'grey45)

#(define-markup-command (indexSection layout props title tonality bwv)
  (string? string? string?)
  "Format a section title of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \pad-around #1
         \abs-fontsize #11 \bold {
           \concat {
             \char ##x23AF " Partita " #title "  " #tonality
             \normal-text { "  (BWV "  #bwv ")" }
           }
         }
       } #}))

#(define-markup-command (indexItem layout props title pagelabel)
  (string? symbol?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #10 {
         \override #'(line-width . 95)
         \pad-around #1
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT .
               #title
               \page-ref #pagelabel "000" "?"
           }
         }
       } #}))

\markup { \indexSection "1" "Si Majeur" "825" }
\markup { \indexItem "Prélude" #'PartitaIPraeludium }
\markup { \indexItem "Allemande" #'PartitaIAllemande }
\markup { \indexItem "Courante" #'PartitaICorrente }
\markup { \indexItem "Sarabande" #'PartitaISarabande }
\markup { \indexItem "Menuet I" #'PartitaIMenuetI }
\markup { \indexItem "Menuet II" #'PartitaIMenuetII }
\markup { \indexItem "Gigue" #'PartitaIGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "2" "Do mineur" "826" }
\markup { \indexItem "Sinfonie" #'PartitaIISinfonia }
\markup { \indexItem "Allemande" #'PartitaIIAllemande }
\markup { \indexItem "Courante" #'PartitaIICourante }
\markup { \indexItem "Sarabande" #'PartitaIISarabande }
\markup { \indexItem "Rondeau" #'PartitaIIRondeau }
\markup { \indexItem "Capriccio" #'PartitaIICapriccio }
\markup {
  \vspace #1
}

\markup { \indexSection "3" "La mineur" "827" }
\markup { \indexItem "Fantaisie" #'PartitaIIIFantasia }
\markup { \indexItem "Allemande" #'PartitaIIIAllemande }
\markup { \indexItem "Courante" #'PartitaIIICorrente }
\markup { \indexItem "Sarabande" #'PartitaIIISarabande }
\markup { \indexItem "Burlesca" #'PartitaIIIBurlesca }
\markup { \indexItem "Scherzo" #'PartitaIIIScherzo }
\markup { \indexItem "Gigue" #'PartitaIIIGigue }
\markup {
  \vspace #1
}

\pageBreak

\markup {
  \vspace #2
}

\markup { \indexSection "4" "Ré Majeur" "828" }
\markup { \indexItem "Ouverture" #'PartitaIVOuverture }
\markup { \indexItem "Allemande" #'PartitaIVAllemande }
\markup { \indexItem "Courante" #'PartitaIVCourante }
\markup { \indexItem "Air" #'PartitaIVAria }
\markup { \indexItem "Sarabande" #'PartitaIVSarabande }
\markup { \indexItem "Menuet" #'PartitaIVMenuet }
\markup { \indexItem "Gigue" #'PartitaIVGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "5" "Sol Majeur" "829" }
\markup { \indexItem "Préambule" #'PartitaVPraeambulum }
\markup { \indexItem "Allemande" #'PartitaVAllemande }
\markup { \indexItem "Courante" #'PartitaVCorrente }
\markup { \indexItem "Sarabande" #'PartitaVSarabande }
\markup { \indexItem "Tempo de Menuet" #'PartitaVMinuetto }
\markup { \indexItem "Passepied" #'PartitaVPassepied }
\markup { \indexItem "Gigue" #'PartitaVGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "6" "Mi mineur" "830" }
\markup { \indexItem "Toccata" #'PartitaVIToccata }
\markup { \indexItem "Allemande" #'PartitaVIAllemande }
\markup { \indexItem "Courante" #'PartitaVICorrente }
\markup { \indexItem "Air" #'PartitaVIAir }
\markup { \indexItem "Sarabande" #'PartitaVISarabande }
\markup { \indexItem "Tempo de Gavotte" #'PartitaVIGavotta }
\markup { \indexItem "Gigue" #'PartitaVIGigue }
\markup {
  \vspace #1
}
