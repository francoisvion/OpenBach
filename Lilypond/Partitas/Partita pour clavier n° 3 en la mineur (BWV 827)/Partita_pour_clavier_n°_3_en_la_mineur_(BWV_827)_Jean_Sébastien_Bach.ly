\version "2.27.1"

\header
{
  title = "Partita pour clavier n° 3 en la mineur"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 827"
  tagline = ##f
}

\language "english"

\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_1._Prélude_Jean_Sébastien_Bach.ily"
\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_2._Allemande_Jean_Sébastien_Bach.ily"
\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_3._Courante_Jean_Sébastien_Bach.ily"
\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_4._Sarabande_Jean_Sébastien_Bach.ily"
\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_5._Menuet_Jean_Sébastien_Bach.ily"
\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_6._Gigue_Jean_Sébastien_Bach.ily"

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

\score 
{
  \new PianoStaff 
  <<
    \new Staff = upperOne \upperOne
    \new Staff = lowerOne \lowerOne
  >>
  
  \layout { }
  \header { piece = \markup {\larger "1. Prélude" }}
  \midi  { }
}

\pageBreak

\score 
{
  \new PianoStaff 
  <<
    \new Staff = upperTwo \upperTwo
    \new Staff = lowerTwo \lowerTwo
  >>
  
  \layout { }
  \header { piece = \markup {\larger "2. Allemande" }}
  \midi  { }
}

\pageBreak

\score 
{
  \new PianoStaff 
  <<
    \new Staff = upperThree \upperThree
    \new Staff = lowerThree \lowerThree
  >>
  
  \layout { }
  \header { piece = \markup {\larger "3. Courante" }}
  \midi  { }
}

\pageBreak

\score 
{
  \new PianoStaff 
  <<
    \new Staff = upperFour \upperFour
    \new Staff = lowerFour \lowerFour
  >>
  
  \layout { }
  \header { piece = \markup {\larger "4. Sarabande" }}
  \midi  { }
}

\pageBreak

\score 
{
  \new PianoStaff 
  <<
    \new Staff = upperFive \upperFive
    \new Staff = lowerFive \lowerFive
  >>
  
  \layout { }
  \header { piece = \markup {\larger "5. Menuet" }}
  \midi  { }
}

\pageBreak

\score 
{
  \new PianoStaff 
  <<
    \new Staff = upperSix \upperSix
    \new Staff = lowerSix \lowerSix
  >>
  
  \layout { }
  \header { piece = \markup {\larger "6. Gigue" }}
  \midi  { }
}
