\version "2.27.1"

#(ly:set-option 'relative-includes #t)


\header {
  title = "Fantaisie et fugue pour clavier en la mineur"
  opus = "BWV 944"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

\include "./parts/Fantaisie_et_fugue_pour_clavier_en_la_mineur_(BWV_944)_1._Fantaisie_Jean_Sébastien_Bach.ly"

\include "./parts/Fantaisie_et_fugue_pour_clavier_en_la_mineur_(BWV_944)_2._Fugue_Jean_Sébastien_Bach.ly"