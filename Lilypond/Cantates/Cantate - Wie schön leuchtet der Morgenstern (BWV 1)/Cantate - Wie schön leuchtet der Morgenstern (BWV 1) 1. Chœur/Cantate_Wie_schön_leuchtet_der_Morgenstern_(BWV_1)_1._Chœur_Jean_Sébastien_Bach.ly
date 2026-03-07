\version "2.24.4"

D = \tweak Stem.direction #DOWN \etc
U = \tweak Stem.direction #UP \etc

\paper {
  left-margin = 2.5\cm
  ragged-last-bottom = ##f
  ragged-bottom = ##f

}

\header {
  title = "1. Chœur"
  subtitle = "Cantate : Wie schön leuchtet der Morgenstern"
  opus = "BWV 1"
  composer = "Jean Sbéastien Bach (1685-1750)"
  tagline = ##f
}

#(set-global-staff-size 18)
  
\include "corA.ly"
\include "corB.ly"
\include "hautboisdechasseA.ly"
\include "hautboisdechasseB.ly"
\include "violonconcertantA.ly"
\include "violonconcertantB.ly"
\include "violonA.ly"
\include "violonB.ly"
\include "alto.ly"
\include "soprano.ly"
\include "altoV.ly"
\include "tenor.ly"
\include "basse.ly"
\include "bassecontinue.ly"

\score {
  
  <<
    \new PianoStaff <<
      \set PianoStaff.instrumentName = \markup {
      \center-column { "Cor"
      \line { "en Fa" }
      }
    }
      \context Staff = "1" <<
        \set Staff.midiInstrument = "french horn"
        \set Staff.shortInstrumentName = "Cor 1"
        \context Voice = "corA" {
          \corA
        }
      >>
      \context Staff = "2" <<
        \set Staff.midiInstrument = "french horn"
        \set Staff.shortInstrumentName = "Cor 2"
        \context Voice = "corB" {
          \corB
        }
      >>
    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = \markup {
      \center-column { "Hautbois"
      \line { "de chasse" }}}
      \context Staff = "1" <<
        \set Staff.midiInstrument = "oboe"
        \set Staff.shortInstrumentName = "Htb. 1"
        \context Voice = "hautboisdechasseA" {
          \hautboisdechasseA
        }
      >>
      \context Staff = "2" <<
        \set Staff.midiInstrument = "oboe"
        \set Staff.shortInstrumentName = "Htb. 2"
        \context Voice = "hautboisdechasseB" {
          \hautboisdechasseB
        }
      >>
    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = \markup {
      \center-column { "Violons"
      \line { "concertants" }
      }}
      \context Staff = "1" <<
      \set Staff.shortInstrumentName = \markup {
      \center-column { "Vln."
      \line { "c. 1" }}}
      \set Staff.midiInstrument = "violin"
        \context Voice = "violonconcertantA" {
          \violonconcertantA
        }
      >>
      \context Staff = "2" <<
        \set Staff.shortInstrumentName = \markup {
      \center-column { "Vln."
      \line { "c. 2" }}}
        \set Staff.midiInstrument = "violin"
        \context Voice = "violonconcertantB" {
          \violonconcertantB
        }
      >>
    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Violons"
      \context Staff = "1" <<
        \set Staff.shortInstrumentName = "Vln. 1"
        \set Staff.midiInstrument = "violin"
        \context Voice = "violonA" {
          \violonA
        }
      >>
      \context Staff = "2" <<
        \set Staff.shortInstrumentName = "Vln. 2"
        \set Staff.midiInstrument = "violin"
        \context Voice = "violonB" {
          \violonB
        }
      >>
    >>
    \new Staff = "P5" <<
      \set Staff.instrumentName = "Alto"
      \set Staff.midiInstrument = "viola"
      \set Staff.shortInstrumentName = "Alt."
      \context Staff <<
        \context Voice = "alto" {
          \alto
        }
      >>
    >>
    \new StaffGroup <<
      \new Staff = "P6" <<
        \set Staff.instrumentName = "Soprano"
        \set Staff.midiInstrument = "choir aahs"
        \set Staff.shortInstrumentName = "S."
        \context Staff <<
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
          \context Voice = "basse" {
            \basse
          }
          \new Lyrics \lyricsto "basse" {
            \basseparoles
          }
        >>
      >>
    >>
    \new Staff = "P10" <<
      \set Staff.instrumentName = \markup {
      \center-column { "Basse"
      \line { "continue" }
      }
    }
      \context Staff <<
        \set Staff.midiInstrument = "harpsichord"
        \set Staff.shortInstrumentName = "B.c."
        \context Voice = "bassecontinue" {
          \bassecontinue }
      >>
    >>
  >>
 \layout {\context {
    \Staff
    \RemoveEmptyStaves
  }}
 \midi { \tempo 4 = 100 }
}