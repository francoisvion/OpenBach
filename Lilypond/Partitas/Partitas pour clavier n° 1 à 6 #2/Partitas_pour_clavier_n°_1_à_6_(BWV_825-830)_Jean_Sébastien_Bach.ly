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
  
  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \null\null\null\null
        \line { \abs-fontsize #30 \bold "Jean Sébastien" }
        \null
        \line { \abs-fontsize #80 \bold "Bach" }
        \null
        \fill-line { \draw-hline }
        \null\null\null
        \line { \abs-fontsize #40 \bold "6 Partitas" }
        \null\null\null
        \line \abs-fontsize #20 { "BWV 825" \char ##x2013 "830" }
        \null\null\null\null
        \fill-line \italic { \abs-fontsize #18 "Pour clavier" }
        \null\null\null
        \null\null\null
      }
    }
  }

\pageBreak

\include "./Partitas_pour_clavier_n°_1_à_6_index.ly"

\pageBreak

%%% Partita I

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

%%% Partita II

\include "./Partita pour clavier n° 2 en ut mineur (BWV 826)/Partita_pour_clavier_n°_2_en_ut_mineur_(BWV_826)_1._Sinfonie.ly"
\pageBreak
\include "./Partita pour clavier n° 2 en ut mineur (BWV 826)/Partita_pour_clavier_n°_2_en_ut_mineur_(BWV_826)_2._Allemande.ly"
\pageBreak
\include "./Partita pour clavier n° 2 en ut mineur (BWV 826)/Partita_pour_clavier_n°_2_en_ut_mineur_(BWV_826)_3._Courante.ly"
\pageBreak
\include "./Partita pour clavier n° 2 en ut mineur (BWV 826)/Partita_pour_clavier_n°_2_en_ut_mineur_(BWV_826)_4._Sarabande.ly"
\pageBreak
\include "./Partita pour clavier n° 2 en ut mineur (BWV 826)/Partita_pour_clavier_n°_2_en_ut_mineur_(BWV_826)_5._Rondeau.ly"
\pageBreak
\include "./Partita pour clavier n° 2 en ut mineur (BWV 826)/Partita_pour_clavier_n°_2_en_ut_mineur_(BWV_826)_6._Caprice.ly"
\pageBreak

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

%%% Partita V

\include "./Partita pour clavier n° 5 en sol majeur(BWV 829)/Partita_pour_clavier_n°_5_en_sol_majeur(BWV_829)_1._Prélude.ly"
\pageBreak
\include "./Partita pour clavier n° 5 en sol majeur(BWV 829)/Partita_pour_clavier_n°_5_en_sol_majeur(BWV_829)_2._Allemande.ly"
\pageBreak
\include "./Partita pour clavier n° 5 en sol majeur(BWV 829)/Partita_pour_clavier_n°_5_en_sol_majeur(BWV_829)_3._Courante.ly"
\pageBreak
\include "./Partita pour clavier n° 5 en sol majeur(BWV 829)/Partita_pour_clavier_n°_5_en_sol_majeur(BWV_829)_4._Sarabande.ly"
\pageBreak
\include "./Partita pour clavier n° 5 en sol majeur(BWV 829)/Partita_pour_clavier_n°_5_en_sol_majeur(BWV_829)_5._Menuet.ly"
\pageBreak
\include "./Partita pour clavier n° 5 en sol majeur(BWV 829)/Partita_pour_clavier_n°_5_en_sol_majeur(BWV_829)_6._Passepied.ly"
\pageBreak
\include "./Partita pour clavier n° 5 en sol majeur(BWV 829)/Partita_pour_clavier_n°_5_en_sol_majeur(BWV_829)_7._Gigue.ly"
\pageBreak

%%% Partita VI

\include "./Partita pour clavier n° 6 en mi mineur (BWV 830)/Partita_pour_clavier_n°_6_en_mi_mineur_(BWV_830)_1._Toccata.ly"
\pageBreak
\include "./Partita pour clavier n° 6 en mi mineur (BWV 830)/Partita_pour_clavier_n°_6_en_mi_mineur_(BWV_830)_2._Allemanda.ly"
\pageBreak
\include "./Partita pour clavier n° 6 en mi mineur (BWV 830)/Partita_pour_clavier_n°_6_en_mi_mineur_(BWV_830)_3._Courante.ly"
\pageBreak
\include "./Partita pour clavier n° 6 en mi mineur (BWV 830)/Partita_pour_clavier_n°_6_en_mi_mineur_(BWV_830)_4._Air.ly"
\pageBreak
\include "./Partita pour clavier n° 6 en mi mineur (BWV 830)/Partita_pour_clavier_n°_6_en_mi_mineur_(BWV_830)_5._Sarabande.ly"
\pageBreak
\include "./Partita pour clavier n° 6 en mi mineur (BWV 830)/Partita_pour_clavier_n°_6_en_mi_mineur_(BWV_830)_6._Gavotte.ly"
\pageBreak
\include "./Partita pour clavier n° 6 en mi mineur (BWV 830)/Partita_pour_clavier_n°_6_en_mi_mineur_(BWV_830)_7._Gigue.ly"
\pageBreak
}