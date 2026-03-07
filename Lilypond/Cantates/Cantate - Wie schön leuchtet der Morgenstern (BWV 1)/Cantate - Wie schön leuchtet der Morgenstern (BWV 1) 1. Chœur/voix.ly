\version "2.24.4"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f

}

\header {
  title = "1. Chœur"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  subsubtitle = "Voix"
  opus = "BWV 1"
  composer = "Jean Sbéastien Bach (1685-1750)"
  tagline = ##f
}

#(set-global-staff-size 18)
  
\include "soprano.ly"
\include "altoV.ly"
\include "tenor.ly"
\include "basse.ly"

\score {
  <<
    \new StaffGroup <<
      \new Staff = "P6" <<
        \set Staff.instrumentName = "Soprano"
        \set Staff.midiInstrument = "choir aahs"
        \set Staff.shortInstrumentName = "S."
        \context Staff <<
          \override Staff.BarLine.allow-span-bar = ##f
          \mergeDifferentlyDottedOn
          \mergeDifferentlyHeadedOn
          \context Voice = "soprano" {
            \soprano
          }
          \new Lyrics \lyricsto "soprano" {
            \sopranoparoles
          }
        >>
      >>
      \new Staff = "P7" <<
        \set Staff.instrumentName = "Alto"
        \set Staff.shortInstrumentName = "A."
        \set Staff.midiInstrument = "choir aahs"
        \context Staff <<
          \override Staff.BarLine.allow-span-bar = ##f
          \mergeDifferentlyDottedOn
          \mergeDifferentlyHeadedOn
          \context Voice = "altoV" {
            \altoV
          }
          \new Lyrics \lyricsto "altoV" {
            \altoVparoles
          }
        >>
      >>
      \new Staff = "P8" <<
        \set Staff.instrumentName = "Ténor"
        \set Staff.shortInstrumentName = "T."
        \set Staff.midiInstrument = "choir aahs"
        \context Staff <<
          \override Staff.BarLine.allow-span-bar = ##f
          \mergeDifferentlyDottedOn
          \mergeDifferentlyHeadedOn
          \context Voice = "tenor" {
            \tenor
          }
          \new Lyrics \lyricsto "tenor" {
            \tenorparoles
          }
        >>
      >>
      \new Staff = "P9" <<
        \set Staff.instrumentName = "Basse"
        \set Staff.shortInstrumentName = "B."
        \set Staff.midiInstrument = "choir aahs"
        \context Staff <<
          \override Staff.BarLine.allow-span-bar = ##f
          \mergeDifferentlyDottedOn
          \mergeDifferentlyHeadedOn
          \context Voice = "basse" {
            \basse
          }
          \new Lyrics \lyricsto "basse" {
            \basseparoles
          }
        >>
      >>
    >>
  >>
 \layout {\context {
    \Staff
  }}
 \midi { \tempo 4 = 100 }
}