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
  composer = "Jean-Sébastien Bach (1685-1750)"
  instrument = "Alto"
  tagline = ##f
}

#(set-global-staff-size 18)
    
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }

\include "./parts/altoV.ly"

\score {
            \new Staff
            <<  
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPSixVoiceOne" { \PartPSixVoiceOne }
                    \new Lyrics \lyricsto "PartPSixVoiceOne" { \set stanza = "1." \PartPSixVoiceOneLyricsOne }
                    \new Lyrics \lyricsto "PartPSixVoiceOne" { \set stanza = "2." \PartPSixVoiceOneLyricsTwo }
                    >>
                >>
            
    \layout {}
    \midi {\tempo 4 = 100 }
    }

