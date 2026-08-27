\version "2.27.1"



\include "Jesu,_meine_Freude_(BWV_227_7)_Jean_Sébastien_Bach_notes.ily"
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
 title = "Jesu, meine Freude"
 subtitle = "tiré du motet : Jesu, meine Freude"
 poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 227/7"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" \sopranoMusic
        
        \new Voice = "alto" \altoMusic
      >>
    }
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano" \versoOneLyrics
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano" \versoTwoLyrics
    
    \new Lyrics \lyricsto "alto" \altoVersoOneLyrics
    
    \new Lyrics \lyricsto "alto" \altoVersoTwoLyrics
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \minor
      \time 4/4
      <<
        \new Voice = "tenor" \tenorMusic
        
        \new Voice = "bass" \bassMusic
        
       \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" \tenorVersoOneLyrics
    
       \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" \tenorVersoTwoLyrics
    
       \new Lyrics \lyricsto "bass" \bassVersoOneLyrics
    
       \new Lyrics \lyricsto "bass" \bassVersoTwoLyrics
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
