\version "2.27.1"

\header {
  title = "6. Choral"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

#(set-global-staff-size 18)

\paper {

    indent = 1.6\cm
    short-indent = 1\cm
    }
    
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }

\include "./parts/corI.ly"
\include "./parts/corII.ly"
\include "./parts/hautboisI.ly"
\include "./parts/hautboisII.ly"
\include "./parts/violonI.ly"
\include "./parts/violonII.ly"
\include "./parts/alto.ly"
\include "./parts/soprano.ly"
\include "./parts/altoV.ly"
\include "./parts/tenor.ly"
\include "./parts/basse.ly"
\include "./parts/continuo.ly"

\score {
    <<
        \new PianoStaff
        <<
            \set PianoStaff.instrumentName = "Cors"
            
            \context Staff = "1" << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \set Staff.shortInstrumentName = "Cr. I"
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >> \context Staff = "2" <<
                \set Staff.shortInstrumentName = "Cr. II"
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceTwo" {  \PartPOneVoiceTwo }
                >>
            >>
        \new PianoStaff
        <<
            \set PianoStaff.instrumentName = "Hautbois"
            
            \context Staff = "1" <<
              \set Staff.shortInstrumentName = "Htb. I"
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                >> \context Staff = "2" <<
                  \set Staff.shortInstrumentName = "Htb. II"
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPTwoVoiceTwo" {  \PartPTwoVoiceTwo }
                >>
            >>
        \new PianoStaff
        <<
            \set PianoStaff.instrumentName = "Violons"
            
            \context Staff = "1" <<
              \set Staff.shortInstrumentName = "Vln. I"
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                >> \context Staff = "2" <<
                  \set Staff.shortInstrumentName = "Vln. II"
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPThreeVoiceTwo" {  \PartPThreeVoiceTwo }
                >>
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Alto"
            \set Staff.shortInstrumentName = "Alt."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPFourVoiceOne" {  \PartPFourVoiceOne }
                >>
            >>
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Soprano"
                \set Staff.shortInstrumentName = "S."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPFiveVoiceOne" {  \PartPFiveVoiceOne }
                    \new Lyrics \lyricsto "PartPFiveVoiceOne" { \set stanza = "1." \PartPFiveVoiceOneLyricsOne }
                    \new Lyrics \lyricsto "PartPFiveVoiceOne" { \set stanza = "2." \PartPFiveVoiceOneLyricsTwo }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Alto"
                \set Staff.shortInstrumentName = "A."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPSixVoiceOne" {  \PartPSixVoiceOne }
                    \new Lyrics \lyricsto "PartPSixVoiceOne" { \set stanza = "1." \PartPSixVoiceOneLyricsOne }
                    \new Lyrics \lyricsto "PartPSixVoiceOne" { \set stanza = "2." \PartPSixVoiceOneLyricsTwo }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Ténor"
                \set Staff.shortInstrumentName = "T."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPSevenVoiceOne" {  \PartPSevenVoiceOne }
                    \new Lyrics \lyricsto "PartPSevenVoiceOne" { \set stanza = "1." \PartPSevenVoiceOneLyricsOne }
                    \new Lyrics \lyricsto "PartPSevenVoiceOne" { \set stanza = "2." \PartPSevenVoiceOneLyricsTwo }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Basse"
                \set Staff.shortInstrumentName = "B."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPEightVoiceOne" {  \PartPEightVoiceOne }
                    \new Lyrics \lyricsto "PartPEightVoiceOne" { \set stanza = "1." \PartPEightVoiceOneLyricsOne }
                    \new Lyrics \lyricsto "PartPEightVoiceOne" { \set stanza = "2." \PartPEightVoiceOneLyricsTwo }
                    >>
                >>
            
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Continuo"
            \set Staff.shortInstrumentName = "Cont."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPNineVoiceOne" {  \PartPNineVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    \midi {\tempo 4 = 100 }
    }

