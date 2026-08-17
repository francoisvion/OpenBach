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

%%% Partita III

\include "./Partita pour clavier n° 3 en la mineur (BWV 827)/Partita_pour_clavier_n°_3_en_la_mineur_(BWV_827)_1._Fantasie.ly"
\pageBreak
\include "./Partita pour clavier n° 3 en la mineur (BWV 827)/Partita_pour_clavier_n°_3_en_la_mineur_(BWV_827)_2._Allemande.ly"
\pageBreak
\include "./Partita pour clavier n° 3 en la mineur (BWV 827)/Partita_pour_clavier_n°_3_en_la_mineur_(BWV_827)_3._Courante.ly"
\pageBreak
\include "./Partita pour clavier n° 3 en la mineur (BWV 827)/Partita_pour_clavier_n°_3_en_la_mineur_(BWV_827)_4._Sarabande.ly"
\pageBreak
\include "./Partita pour clavier n° 3 en la mineur (BWV 827)/Partita_pour_clavier_n°_3_en_la_mineur_(BWV_827)_5._Burlesque.ly"
\pageBreak
\include "./Partita pour clavier n° 3 en la mineur (BWV 827)/Partita_pour_clavier_n°_3_en_la_mineur_(BWV_827)_6._Scherzo.ly"
\pageBreak
\include "./Partita pour clavier n° 3 en la mineur (BWV 827)/Partita_pour_clavier_n°_3_en_la_mineur_(BWV_827)_7._Gigue.ly"
\pageBreak
