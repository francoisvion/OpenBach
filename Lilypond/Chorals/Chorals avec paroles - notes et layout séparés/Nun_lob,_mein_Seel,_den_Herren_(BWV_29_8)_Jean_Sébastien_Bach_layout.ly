\version "2.27.1"



\include "Nun_lob,_mein_Seel,_den_Herren_(BWV_29_8)_Jean_Sébastien_Bach_notes.ily"
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
  title = \markup{\concat{"Nun lob, mein Seel, den Herren" \small " (v. 5)"}}
  subtitle = "tiré de la cantate : Wir danken dir Gott, wir danken dir"
 poet = "Auteur : Johann Gramann (1487-1541)"
  opus = "BWV 29/8"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff = "upper" \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 3/4
      <<
        \new Voice = "soprano" \sopranoMusic
        
        \new Voice = "alto" \altoMusic
      >>
    }
    
    \new Lyrics \with { alignAboveContext = #"upper" } \lyricsto "soprano" {\set stanza = 1
      \repeat unfold 8 { \skip1 }
      Gott Va -- ter, Sohn, Hei -- li -- gem Geist!
      \repeat unfold 31 { \skip1 }
      ihm tröst -- lich soll'n an -- han - - gen.
      \repeat unfold 7 { \skip1 }
      A -- men, wir wer -- dens er -- lan -- gen,
    }
    
    \new Lyrics \with { alignAboveContext = #"upper" } \lyricsto "soprano" {\set stanza = 2
      \repeat unfold 8 { \skip1 }
      Was er uns aus Gna -- den ver -- heißt,
    }
    
       \new Lyrics \lyricsto "alto" \versoOneLyrics
    
    \new Lyrics \lyricsto "alto" \versoTwoLyrics
    
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 3/4
      <<
        \new Voice = "tenor" \tenorMusic
        
        \new Voice = "bass" \bassMusic
        
    \new Lyrics \with { alignAboveContext = #"lower" }  \lyricsto "tenor" {\set stanza = 1
      \repeat unfold 50 { \skip1 }
      ihm tröst -- lich soll'n an -- han - gen.
      \repeat unfold 7 { \skip1 }
      A -- men, wir wer -- dens er -- lan - gen,
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
