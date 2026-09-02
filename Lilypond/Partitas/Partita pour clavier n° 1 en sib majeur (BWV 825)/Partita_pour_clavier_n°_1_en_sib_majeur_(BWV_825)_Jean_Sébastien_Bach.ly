\version "2.24.4"

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm % Pas d'indentation pour un instrument solo/clavier
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
%   oddFooterMarkup = ##f
   evenFooterMarkup = ##f

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

\header {
  title = \markup {"Partita pour clavier n° 1 en si"\flat "majeur"}
  subtitle = "Pratique du clavier - partie I"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 825"
  copyright = "© 2026 — OpenBach"
  tagline = ##f
}

\include "Partita_pour_clavier_n°_1_en_sib_majeur_(BWV_825)_1._Prélude_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_1_en_sib_majeur_(BWV_825)_2._Allemande_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_1_en_sib_majeur_(BWV_825)_3._Courante_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_1_en_sib_majeur_(BWV_825)_4._Sarabande_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_1_en_sib_majeur_(BWV_825)_5._Menuets_Jean_Sébastien_Bach.ly"
\include "Partita_pour_clavier_n°_1_en_sib_majeur_(BWV_825)_6._Gigue_Jean_Sébastien_Bach.ly"
