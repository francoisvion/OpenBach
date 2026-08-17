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
  title = "2. Récitatif"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean Sébastien Bach (1685-1750)"
  instrument = "Ténor"
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

\score {
            \new Staff
            <<
                \set Staff.instrumentName = "Ténor"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
                    >>
                >>
    \layout {}
    \midi {\tempo 4 = 100 }
    }

