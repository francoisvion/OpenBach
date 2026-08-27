\version "2.27.1"



\include "Wer_nur_den_lieben_Gott_läßt_walten_(II)_(BWV_197_10)_Jean_Sébastien_Bach_notes.ily"
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
 title = \markup{\concat{"Wer nur den lieben Gott läßt walten (II)" \small " (v. 7)"}}
 subtitle = "tire de la cantate : Gott ist unsre Zuversicht,"
 poet = "Auteur : Georg Neumark (1621-1681)"
  opus = "BWV 197/10"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
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
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" \tenorMusic
        
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
