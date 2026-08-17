\version "2.27.1"

transpLeipzig = d
useRecorders = ##t

\include "Cantate_Gleich_wie_der_Regen_und_Schnee_vom_Himmel_fällt_(BWV_18)_1._Sinfonie.ly"
\include "Cantate_Gleich_wie_der_Regen_und_Schnee_vom_Himmel_fällt_(BWV_18)_title.ly"

\paper {
  indent = 1.6\cm
  short-indent = 1\cm
  system-separator-markup = \markup {
    \center-align
    \vcenter \combine
    \beam #4.0 #0.5 #0.96
    \raise #1.4 \beam #4.0 #0.5 #0.96
  }
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
      }
    }
  }
}

mvtIpiece = "1. Sinfonie en la mineur (version agrémentée de Leipzig)"

\layout {
  \context {
    \Score
    \compressEmptyMeasures
  }
}

#(set-global-staff-size 16)

mvtIbreaks = {
    s1.*5^"Breaks left in"
    \break
    s1.*5
    \pageBreak

    s1.*4
    \break
    s1.*5
    \pageBreak

    s1.*5
    \break
    s1.*4
    \pageBreak

    s1.*5
    \break
    s1.*5
    \pageBreak

    s1.*4
    \break
    s1.*4
    \pageBreak

    s1.*4
    \break
    s1.*5
    \pageBreak

    s1.*4
    \break
    s1.*4
    \pageBreak

    s1.*4
    \break
    s1.*5
    \fine
}

\score {
  \header {
    piece = \mvtIpiece
  }
  \transpose c \transpLeipzig
  \new StaffGroup <<

    % 1. FLÛTES
    \ifDefinedThen #'useRecorders \new GrandStaff = "mvtIrec" \with {
      instrumentName = "Flûte"
      shortInstrumentName = "Fl."
    } <<
      \new Staff = "staffA" \with {
        instrumentName = "I"
        shortInstrumentName = "I"
      } <<
        \mvtIbreaks
        \clef french 
        \keepWithTag #'REC \transpose c c' \mvtIvlaI
      >>
      
      \new Staff = "staffB" \with {
        instrumentName = "II"
        shortInstrumentName = "II"
      } {
        \clef french 
        \keepWithTag #'REC \transpose c c' \mvtIvlaII
      }
    >>

    % 2. ALTOS
    \new GrandStaff = "mvtIvla" \with {
      instrumentName = "Alto"
      shortInstrumentName = "Alt."
    } <<
      \new Staff = "staffC" \with {
        instrumentName = "I"
        shortInstrumentName = "I"
      } {
        \clef alto 
        \keepWithTag #'NOREC \mvtIvlaI
      }
      \new Staff = "staffD" \with {
        instrumentName = "II"
        shortInstrumentName = "II"
      } {
        \clef alto 
        \keepWithTag #'NOREC \mvtIvlaII
      }
      \new Staff = "staffE" \with {
        instrumentName = "III"
        shortInstrumentName = "III"
      } {
        \clef tenor 
        \mvtIvlaIII
      }
      \new Staff = "staffF" \with {
        instrumentName = "IV"
        shortInstrumentName = "IV"
      } {
        \clef tenor 
        \mvtIvlaIV
      }
    >>

    % 3. BASSON
    \new Staff = "staffG" \with {
      instrumentName = "Basson"
      shortInstrumentName = "Bsn."
    } {
      \mvtIfag
    }

    % 4. BASSE
    \new Staff = "staffH" \with {
      instrumentName = "Basso"
      shortInstrumentName = "B.c."
    } {
      \mvtIbasso
    }

  >>
}