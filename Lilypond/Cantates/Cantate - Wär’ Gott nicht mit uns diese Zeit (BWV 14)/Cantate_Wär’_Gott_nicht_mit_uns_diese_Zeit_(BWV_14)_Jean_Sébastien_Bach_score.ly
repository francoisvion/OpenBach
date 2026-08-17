\version "2.27.1"

\include "Cantate_Wär’_Gott_nicht_mit_uns_diese_Zeit_(BWV_14)_Jean_Sébastien_Bach_continuo.ly"
\include "Cantate_Wär’_Gott_nicht_mit_uns_diese_Zeit_(BWV_14)_Jean_Sébastien_Bach_cor.ly"
\include "Cantate_Wär’_Gott_nicht_mit_uns_diese_Zeit_(BWV_14)_Jean_Sébastien_Bach_soprano.ly"
\include "Cantate_Wär’_Gott_nicht_mit_uns_diese_Zeit_(BWV_14)_Jean_Sébastien_Bach_alto.ly"
\include "Cantate_Wär’_Gott_nicht_mit_uns_diese_Zeit_(BWV_14)_Jean_Sébastien_Bach_violonI.ly"
\include "Cantate_Wär’_Gott_nicht_mit_uns_diese_Zeit_(BWV_14)_Jean_Sébastien_Bach_violonII.ly"

#(set! toplevel-scores '())
#(set! toplevel-bookparts '())

\paper {
  indent = 1.6\cm
  short-indent = 1\cm
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

\header {
  title = "Air : Unsre Stärke heisst zu schwach"
  subtitle = "Cantate : Wär’ Gott nicht mit uns diese Zeit"
  opus = "BWV 14"
  instrument = "Score"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

\score {
  \new StaffGroup <<
    \new Staff
    \with {
      midiInstrument = "french horn"
      instrumentName = \markup {\center-column {\line {Cor en} \line {Si\flat Alto}}}
      shortInstrumentName = "Cr."
    }
    \cor

    \new Staff
    \with {
      midiInstrument = "string ensemble 1"
      instrumentName = "Violon I"
      shortInstrumentName = "Vln.I"
    }
    \violinOne

    \new Staff
    \with {
      midiInstrument = "string ensemble 1"
      instrumentName = "Violon II"
      shortInstrumentName = "Vln.II"
    }
    \violinTwo

    \new Staff
    \with {
      midiInstrument = "string ensemble 1"
      instrumentName = "Alto"
      shortInstrumentName = "Alt."
    }
    \viola

    \new Staff
    \with {
      midiInstrument = "voice oohs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
    }
    {
      \new Voice = soprano \soprano
    }
    \new Lyrics \lyricsto soprano \words

    \new Staff
    \with {
      midiInstrument = "string ensemble 1"
      instrumentName = "Continuo"
      shortInstrumentName = "Cont."
    }
    \continuo
    \new FiguredBass { \continuoFiguredBass }
  >>
  \layout {
    \context {
      \Score
      skipBars = ##t
      \RemoveEmptyStaves
    }
  }
  \midi {}
}