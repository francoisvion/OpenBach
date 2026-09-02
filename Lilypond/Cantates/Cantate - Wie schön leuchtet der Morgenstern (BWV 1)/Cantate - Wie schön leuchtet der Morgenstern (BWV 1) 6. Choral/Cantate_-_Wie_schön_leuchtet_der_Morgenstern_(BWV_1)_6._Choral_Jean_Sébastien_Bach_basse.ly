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
  instrument = "Basse"
  tagline = ##f
}

#(set-global-staff-size 18)
    
\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }

\include "./parts/basse.ly"

\score {
            \new Staff
            <<  
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPEightVoiceOne" {  \PartPEightVoiceOne }
                    \new Lyrics \lyricsto "PartPEightVoiceOne" { \set stanza = "1." \PartPEightVoiceOneLyricsOne }
                    \new Lyrics \lyricsto "PartPEightVoiceOne" { \set stanza = "2." \PartPEightVoiceOneLyricsTwo }
                    >>
                >>
            
    \layout {}
    \midi {\tempo 4 = 100 }
    }

