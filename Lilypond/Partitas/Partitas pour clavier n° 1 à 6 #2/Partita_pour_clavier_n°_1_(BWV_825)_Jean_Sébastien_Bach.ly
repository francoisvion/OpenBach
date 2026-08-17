\version "2.27.1"

#(ly:set-option 'relative-includes #t)

\header {
  tagline = ##f
}
  
\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  print-all-headers = ##t
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
  oddFooterMarkup = ##f
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

\bookpart {

  \include "./Partitas_pour_clavier_n°_1_à_6_header.ily"
  \header {
    title = ##f
    composer = ##f
  }
}

\include "./Partita pour clavier n° 1 en sib majeur (BWV 825)/Partita_pour_clavier_n°_1_en_sib_majeur (BWV_825)_1._Prélude.ly"
\pageBreak
\include "./Partita pour clavier n° 1 en sib majeur (BWV 825)/Partita_pour_clavier_n°_1_en_sib_majeur (BWV_825)_2._Allemande.ly"
\pageBreak
\include "./Partita pour clavier n° 1 en sib majeur (BWV 825)/Partita_pour_clavier_n°_1_en_sib_majeur (BWV_825)_3._Courante.ly"
\pageBreak
\include "./Partita pour clavier n° 1 en sib majeur (BWV 825)/Partita_pour_clavier_n°_1_en_sib_majeur (BWV_825)_4._Sarabande.ly"
\pageBreak
\include "./Partita pour clavier n° 1 en sib majeur (BWV 825)/Partita_pour_clavier_n°_1_en_sib_majeur (BWV_825)_5._Menuet1.ly"
\include "./Partita pour clavier n° 1 en sib majeur (BWV 825)/Partita_pour_clavier_n°_1_en_sib_majeur (BWV_825)_5._Menuet2.ly"
\pageBreak
\include "./Partita pour clavier n° 1 en sib majeur (BWV 825)/Partita_pour_clavier_n°_1_en_sib_majeur (BWV_825)_6._Gigue.ly"
\pageBreak
}