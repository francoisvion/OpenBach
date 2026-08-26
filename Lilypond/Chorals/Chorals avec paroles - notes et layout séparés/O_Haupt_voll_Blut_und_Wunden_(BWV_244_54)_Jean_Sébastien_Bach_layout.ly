\version "2.27.1"



\include "O_Haupt_voll_Blut_und_Wunden_(BWV_244_54)_Jean_Sébastien_Bach_notes.ily"
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
 title = \markup{\concat{"O Haupt voll Blut und Wunden" \small " (v. 1 & 2)"}}
 subtitle = "tiré de la Passion selon saint Matthieu"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 244/54"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" \sopranoMusic
        
        \new Voice = "alto" \altoMusic
      >>
    }
    
    \new Lyrics \lyricsto "soprano" \versoOneLyrics
    
    \new Lyrics \lyricsto "soprano" \versoTwoLyrics

    \new Lyrics \lyricsto "soprano" \versoOneLyrics

    \new Lyrics \lyricsto "soprano" \versoTwoLyrics
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
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
