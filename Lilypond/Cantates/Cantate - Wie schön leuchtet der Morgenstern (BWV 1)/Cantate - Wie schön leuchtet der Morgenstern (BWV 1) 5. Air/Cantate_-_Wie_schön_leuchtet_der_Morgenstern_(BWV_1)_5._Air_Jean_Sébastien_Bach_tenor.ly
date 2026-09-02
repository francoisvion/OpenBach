\version "2.27.1"

#(set-global-staff-size 18)

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
  title = "5. Air"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  instrument = "Ténor"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
}
   
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }}
        
\include "./parts/tenor.ly"

\score {
            \new Staff
            <<  
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPSixVoiceOne" {  \PartPSixVoiceOne }
                    \new Lyrics \lyricsto "PartPSixVoiceOne" { \set stanza = "1." \PartPSixVoiceOneLyricsOne }
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