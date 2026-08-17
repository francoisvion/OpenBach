\version "2.27.1"

#(set-global-staff-size 18)

\header {
  title = "4. Récitatif"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

\paper {
    indent = 1.6\cm
    short-indent = 1\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }

\include "./parts/basse.ly"
\include "./parts/continuo.ly"


\score {
    <<
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Basse"
                \set Staff.shortInstrumentName = "B."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    \new Lyrics \lyricsto "PartPThreeVoiceOne" { \set stanza = "1." \PartPThreeVoiceOneLyricsOne }
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