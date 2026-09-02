\version "2.27.1"

#(set-global-staff-size 18)

\header {
  title = "3. Air"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}

\paper {
    indent = 1.7\cm
    short-indent = 1\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }

\include "./parts/hautbois_de_chasse.ly"
\include "./parts/soprano.ly"
\include "./parts/continuo.ly"

\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = \markup {
                  \center-column { "Hautbois"
                  \line { "de chasse" }
                  }}
                \set Staff.shortInstrumentName = \markup {
                  \center-column { "Htb."
                  \line { "chas." }
                  }}
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Soprano"
                \set Staff.shortInstrumentName = "S."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    \new Lyrics \lyricsto "PartPTwoVoiceOne" { \set stanza = "1." \PartPTwoVoiceOneLyricsOne }
                    >>
                >>
           \new Staff
            <<
                \set Staff.instrumentName = "Continuo"
                \set Staff.shortInstrumentName = "Cont."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPFourVoiceOne" {  \PartPFourVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    \midi {\tempo 4 = 70 }
    }

