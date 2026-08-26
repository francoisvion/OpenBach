\version "2.27.1"



\include "Was_mein_Gott_will,_das_g'scheh_allzeit_(BWV_144_6)_Jean_Sébastien_Bach_notes.ily"
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
  title = \markup{\concat{"Was mein Gott will, das g'scheh allzeit" \small " (v. 1)"}}
  subtitle = "tiré de la cantate : Nimm, was dein ist, und gehe hin"
  poet = \markup{\column{"Auteur : Markgraf Albrecht von" "Brandenberg (1490-1568)"}}
  opus = "BWV 144/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" \sopranoMusic
        
        \new Voice = "alto" \altoMusic
      >>
    }
    
    \new Lyrics \lyricsto "soprano" \versoOneLyrics
    
    \new Lyrics \lyricsto "soprano" \versoTwoLyrics
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" \tenorMusic
        
        \new Lyrics \with {alignAboveContext = "lower"} \lyricsto "tenor" \tenorLyrics
    
        \new Voice = "bass" \bassMusic
        
        \new Lyrics \lyricsto "bass" \bassLyrics
        
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
