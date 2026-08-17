#(ly:set-option 'relative-includes #t)

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
  scoretype = \violinIIName
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_1._Chœur_Jean_Sébastien_Bach.ily"

\bookpart {
  \paper {
    system-count = #17
  }
  \singleInstScore \layoutStaffSize \pieceName
                   << \violinIIMusic \globalMarksBreaks >>
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_2._Récitatif_Jean_Sébastien_Bach.ily"
pieceNameTwo = \pieceName
instInfoTwo = \instInfo

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_3._Air_Jean_Sébastien_Bach.ily"
pieceNameThree = \pieceName
instInfoThree = \instInfo

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_4._Récitatif_Jean_Sébastien_Bach.ily"

\bookpart {
  \tacet \pieceNameTwo \instInfoTwo
  \markup { \vspace #3 }
  \tacet \pieceNameThree \instInfoThree
  \markup { \vspace #3 }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \new Staff = "main" <<
        \compressMMRests
        \new Voice { \violinIIMusic }
        \new NullVoice \globalMarksBreaks
      >>
      \new Staff = "Ossia" \with {
        \override StaffSymbol.staff-space = #(magstep -2)
        fontSize = #-2
      } {
        \set Staff.instrumentName = \markup { \larger \altoName }
        \new Voice = "altosnippet" { \altoMusic }
      }
      \new Lyrics \lyricsto "altosnippet" { \altoLyrics }
    >>
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_5._Air_Jean_Sébastien_Bach.ily"

\bookpart {
  \singleInstScore \layoutStaffSize \pieceName
                   << \violinIIMusic \globalMarksBreaks >>
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_6._Récitatif_Jean_Sébastien_Bach.ily"
pieceNameSix = \pieceName
instInfoSix = \instInfo

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_7._Air_Jean_Sébastien_Bach.ily"
pieceNameSeven = \pieceName
instInfoSeven = \instInfo

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_8._Chœur_Jean_Sébastien_Bach.ily"

\bookpart {
  \tacet \pieceNameSix \instInfoSix
  \markup { \vspace #3 }
  \tacet \pieceNameSeven \instInfoSeven
  \markup { \vspace #3 }
  \singleInstScore \layoutStaffSize \pieceName
                   << \violinIIMusic \globalMarksBreaks >>
}