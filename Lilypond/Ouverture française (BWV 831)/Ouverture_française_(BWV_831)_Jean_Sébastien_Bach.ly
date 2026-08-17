\version "2.27.1"

#(ly:set-option 'relative-includes #t)

\header {
  tagline = ##f
}

 \paper {
  #(set-paper-size "a4")
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\bookpart {
  \header {
  }

\header {
  title = "Ouverture française en si mineur"
  opus = "BWV 831"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

\header {
    title = ##f
    composer = ##f
  }

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Jean Sébastien" }
        \null
        \line { \abs-fontsize #50 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #35 \bold "Ouverture française" }
        \null\null
        \line { \abs-fontsize #20 "BWV 831" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #14 "pour Piano ou Clavecin à 2 claviers" }
        \null\null\null
        \null\null\null
      }
    }
  }
}

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    "Index"
    \null\null\null\null
  }
}

middleGrey = #(x11-color 'grey45)

#(define-markup-command (indexItem layout props title pagelabel infos)
  (string? symbol? string?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \override #'(line-width . 95)
         \pad-around #1
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT .
               \concat {
                 #title " " \italic \with-color #middleGrey #infos
               }
               \page-ref #pagelabel "000" "?"
           }
         }
       } #}))

\markup { \indexItem "Ouverture" #'Ouverture "" }
\markup { \indexItem "Courante" #'Courante "" }
\markup { \indexItem "Gavotte I" #'GavotteI "" }
\markup { \indexItem "Gavotte II" #'GavotteII "" }
\markup { \indexItem "Passepied I" #'PassepiedI "" }
\markup { \indexItem "Passepied II" #'PassepiedII "" }
\markup { \indexItem "Sarabande" #'Sarabande "" }
\markup { \indexItem "Bourrée I" #'BourreeI "" }
\markup { \indexItem "Bourrée II" #'BourreeI "" }
\markup { \indexItem "Gigue" #'Gigue "" }
\markup { \indexItem "Echo" #'Echo "" }

\pageBreak

\include "./parts/Ouverture_française_(BWV_831)_1._Ouverture_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_2._Courante_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_3._Gavotte_1_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_3._Gavotte_2_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_4._Passepied_1_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_4._Passepied_2_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_5._Sarabande_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_6._Bourree_1_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_6._Bourree_2_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_7._Gigue_Jean_Sébastien_Bach.ly"
\include "./parts/Ouverture_française_(BWV_831)_8._Echo_Jean_Sébastien_Bach.ly"
