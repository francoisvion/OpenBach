\version "2.27.1"

\paper {
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \huge \bold \fromproperty #'header:title
      }
      \fill-line {
        \large \bold \fromproperty #'header:subtitle
      }
      \vspace #1
      \fill-line {
        \large \bold \fromproperty #'header:instrument
      }
      \vspace #0.5
      \fill-line {
        \null
        \fromproperty #'header:composer
      }      }
    }
  }
  
\header {
  title = "6. Choral"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean Sébastien Bach (1685-1750)"
  instrument = "Soprano"
  tagline = ##f
}

#(set-global-staff-size 18)
    
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }

\include "./parts/soprano.ly"

\score {
            \new Staff
            <<  
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPFiveVoiceOne" {  \PartPFiveVoiceOne }
                    \new Lyrics \lyricsto "PartPFiveVoiceOne" { \set stanza = "1." \PartPFiveVoiceOneLyricsOne }
                    \new Lyrics \lyricsto "PartPFiveVoiceOne" { \set stanza = "2." \PartPFiveVoiceOneLyricsTwo }
                    >>
                >>
            
    \layout {}
    \midi {\tempo 4 = 100 }
    }

