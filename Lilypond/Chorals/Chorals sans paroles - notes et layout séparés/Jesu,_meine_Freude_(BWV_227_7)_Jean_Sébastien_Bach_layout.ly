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
  opus = "BWV 227/7"
  composer = "Jean Sébastien Bach (1685-1750)"
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
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano" {\set stanza = 1
      Weg mit al -- len Schä -- tzen,
      du bist mein Er -- gö -- tzen,
      Je -- su, mei -- ne Lust!
      E -- lend, Not, Kreuz, Schmach und Tod
      soll mich, ob ich viel muß lei -- den,
      nicht von Je -- su schei -- den.
    }
    
    \new Lyrics \with { alignAboveContext = "upper" } \lyricsto "soprano" {\set stanza = 2
      Weg ihr eit -- len Eh -- ren,
      ich mag euch nicht hö -- ren,
      bleibt mir un -- be -- wußt!
    }
    
        
        
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \minor
      \time 4/4
      <<
        \new Voice = "tenor" \tenorMusic
        
        \new Voice = "bass" \bassMusic
        
       \new Lyrics \with { alignAboveContext = "lower" } \lyricsto "tenor" {\set stanza = 1
        Weg, weg, weg, weg, mit al -- len Schä - tzen,
        mit al -- len Schä -- tzen,
        Du, du bist mein Er -- gö -- tzen,
        Je - su, mei -- ne Lust!
        E -- lend, Not, Kreuz, Schmach und Tod,
        Schmach und Tod soll mich, ob ich viel __ muß lei - - den,
        nicht, nicht von Je -- su schei -- den, von Je -- su schei - den
       }
    
       \new Lyrics \with { alignAboveContext = "lower" }  \lyricsto "tenor" {\set stanza = 2
         Weg, weg, weg, weg, ihr eit -- len Eh - ren,
         ihr eit -- len Eh -- ren,
         ich, ich mag euch nicht hö -- ren,
         bleibt __ _ mir un -- be -- wußt!
       }
    
           
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
