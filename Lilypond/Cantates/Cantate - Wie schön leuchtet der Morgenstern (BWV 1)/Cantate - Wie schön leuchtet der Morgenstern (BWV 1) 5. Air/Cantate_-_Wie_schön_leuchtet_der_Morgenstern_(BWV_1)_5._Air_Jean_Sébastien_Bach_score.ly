\version "2.27.1"

#(set-global-staff-size 18)

\header {
  title = "5. Air"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}

\paper {
   indent = 2\cm
   short-indent = 1\cm}
    
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }}
        
\include "./parts/violon_concertant_I.ly"
\include "./parts/violon_concertant_II.ly"
\include "./parts/violon_orchestre_I.ly"
\include "./parts/violon_orchestre_II.ly"
\include "./parts/alto.ly"
\include "./parts/tenor.ly"
\include "./parts/continuo.ly"

\score {
    <<  
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = \markup {
                  \center-column { "Violon"
                  \line { "concertant I" }}}
                \set Staff.shortInstrumentName = \markup {
                  \center-column { "Vln."
                  \line { "c. I" }}}
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = \markup {
                  \center-column { "Violon"
                  \line { "concertant II" }}}
                \set Staff.shortInstrumentName = \markup {
                  \center-column { "Vln."
                  \line { "c. II" }}}
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = \markup {
                  \center-column { "Violon"
                  \line { "d'orchestre I" }}}
                \set Staff.shortInstrumentName = \markup {
                  \center-column { "Vln."
                  \line { "o. I" }}}
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = \markup {
                  \center-column { "Violon"
                  \line { "d'orchestre II" }}}
                \set Staff.shortInstrumentName = \markup {
                  \center-column { "Vln."
                  \line { "o. II" }}}
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPFourVoiceOne" {  \PartPFourVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Alto"
                \set Staff.shortInstrumentName = "Alt."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPFiveVoiceOne" {  \PartPFiveVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Ténor"
                \set Staff.shortInstrumentName = "Tén."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPSixVoiceOne" {  \PartPSixVoiceOne }
                    \new Lyrics \lyricsto "PartPSixVoiceOne" { \set stanza = "1." \PartPSixVoiceOneLyricsOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Continuo"
                \set Staff.shortInstrumentName = "Cont."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPSevenVoiceOne" {  \PartPSevenVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {
  \context {
    \Staff
    \RemoveEmptyStaves
  }
}
    \midi {\tempo 4 = 62 }
}

