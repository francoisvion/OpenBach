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

%%% Partita IV

\include "./Partita pour clavier n° 4 en ré majeur (BWV 828)/Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_1._Ouverture.ly"
\pageBreak
\include "./Partita pour clavier n° 4 en ré majeur (BWV 828)/Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_2._Allemande.ly"
\pageBreak
\include "./Partita pour clavier n° 4 en ré majeur (BWV 828)/Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_3._Courante.ly"
\pageBreak
\include "./Partita pour clavier n° 4 en ré majeur (BWV 828)/Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_4._Air.ly"
\pageBreak
\include "./Partita pour clavier n° 4 en ré majeur (BWV 828)/Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_5._Sarabande.ly"
\pageBreak
\include "./Partita pour clavier n° 4 en ré majeur (BWV 828)/Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_6._Menuet.ly"
\pageBreak
\include "./Partita pour clavier n° 4 en ré majeur (BWV 828)/Partita_pour_clavier_n°_4_en_ré_majeur_(BWV_828)_7._Gigue.ly"
\pageBreak