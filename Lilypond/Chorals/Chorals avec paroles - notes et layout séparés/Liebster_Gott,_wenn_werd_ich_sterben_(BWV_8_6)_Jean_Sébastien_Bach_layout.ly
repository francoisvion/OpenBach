\version "2.27.1"



\include "Liebster_Gott,_wenn_werd_ich_sterben_(BWV_8_6)_Jean_Sébastien_Bach_notes.ily"
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
 title = "Liebster Gott, wenn werd ich sterben"
 subtitle = "tiré de la cantate : Liebster Gott, wenn werd ich sterben"
 poet = "Auteur : Kaspar Neumann (1648-1715)"
  opus = "BWV 8/6"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \major
      \time 4/4
      <<
        \new Voice = "soprano" \sopranoMusic
        
        \new Voice = "alto" \altoMusic
      >>
    }
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano" {\set stanza = 1
      Herr -- scher ü -- ber Tod und Le - - ben
      mach ein -- mal mein En - de gut,
      Hilf, daß ich ein ehr -- lich Grab
      ne -- ben from -- men Chri -- sten hab und auch end -- lich in der Er - - de
      nim -- mer -- mehr zu -- schan - - den wer - - de.
    }
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano" {\set stanza = 2
      Leh -- re mich den Geist auf -- ge - - ben
      mit recht wohl -- ge -- faßt - tem Mut.
    }
    
    \new Lyrics \lyricsto "alto" \versoOneLyrics
    
    \new Lyrics \lyricsto "alto" \versoTwoLyrics
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \major
      \time 4/4
      <<
        \new Voice = "tenor" \tenorMusic
        
        \new Voice = "bass" \bassMusic
        
       \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" {\set stanza = 1
         Herr -- scher ü -- ber Tod und Le -- ben
         mach ein -- mal mein En -- de gut,
         Hilf, daß ich ein ehr -- lich Grab
         ne -- ben from -- men Chri -- sten hab und auch end -- lich in der Er -- de
         nim -- mer -- mehr zu -- schan - - - den wer - de.
       }
    
       \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" {\set stanza = 2
         Leh -- re mich den Geist auf -- ge -- ben
         mit recht wohl -- ge -- faßt -- tem Mut.
       }
       
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
