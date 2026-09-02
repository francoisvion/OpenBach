\version "2.27.1"

\header {
  title = "2. Récitatif"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}

#(set-global-staff-size 18)

\paper {
    indent = 1.6\cm
    }
    
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }

\include "./parts/tenor.ly"
\include "./parts/continuo.ly"



\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Ténor"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Continuo"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    \new Lyrics \lyricsto "PartPTwoVoiceOne" { \set stanza = "1." \PartPTwoVoiceOneLyricsOne }
                    \new Lyrics \lyricsto "PartPTwoVoiceOne" { \set stanza = "2." \PartPTwoVoiceOneLyricsTwo }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    \midi {\tempo 4 = 100 }
    }

