\version "2.27.1"



\include "Meine_Seele_erhebt_den_Herren_(doxology)_(BWV_10_7)_Jean_Sébastien_Bach_notes.ily"
\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm
  
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

\header {
 title = "Meine Seele erhebt den Herren (doxologie)"
 subtitle = "tiré de la cantate : Meine Seel erhebt den Herren"
  opus = "BWV 10/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" \sopranoMusic
        
        \new Voice = "alto" \altoMusic
      >>
    }
    
    \new Lyrics \with {alignAboveContext = "upper"} \lyricsto "soprano" {
      \repeat unfold 6 {\skip1}
      Va -- ter 
      \repeat unfold 14 {\skip1}
      war im An -- fang jetzt und im -- mer -- dar
      und von E -- wig -- keit zu E -- wig -- keit, A - men.
    }
    
         
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" \tenorMusic
        
        \new Lyrics \with {alignAboveContext = "lower"} \lyricsto "tenor" {
          \repeat unfold 22 {\skip1}
          war im An -- fang jetzt __ _ und __ _ im -- mer - dar
          und von E -- wig -- keit zu E -- wig -- keit, A - - - - - - - - - men.
        }
    
        \new Voice = "bass" \bassMusic
        
                
      >>
    }
  >>
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}
\midi {}
