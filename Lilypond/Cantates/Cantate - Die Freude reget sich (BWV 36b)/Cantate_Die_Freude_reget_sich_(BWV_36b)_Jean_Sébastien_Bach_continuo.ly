\version "2.27.1"

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
  instrument = "Basse continue"
}

\include "Cantate_Die_Freude_reget_sich_(BWV_36b)_Jean_Sébastien_Bach_header.ly"

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_1._Chœur_Jean_Sébastien_Bach.ily"
\bookpart {
  \header { piece = \pieceName }
  \score {
    \new Staff {
      \compressEmptyMeasures
      \continuoMusic
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_2._Récitatif_Jean_Sébastien_Bach.ily"
\bookpart {
  \paper {
    system-count = #5
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      
      \new Staff = "Ossia" \with {
        \override StaffSymbol.staff-space = #(magstep -2)
        fontSize = #-2
        instrumentName = \markup { \larger "Ténor" }
      } {
        \new Voice = "tenorsnippet" { \tenorMusic }
      }
      \new Lyrics \lyricsto "tenorsnippet" { \tenorLyrics }

      \new Staff = "main" <<
        \compressEmptyMeasures
        \new Voice { \continuoMusic }
        \new NullVoice \globalMarksBreaks
      >>
      
      \new FiguredBass { \contFigBass }
    >>
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_3._Air_Jean_Sébastien_Bach.ily"
\bookpart {
  \header { piece = \pieceName }
  \score {
    \new Staff {
      \compressEmptyMeasures
      \continuoMusic
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_4._Récitatif_Jean_Sébastien_Bach.ily"
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      
      \new Staff = "Ossia" \with {
        \override StaffSymbol.staff-space = #(magstep -2)
        fontSize = #-2
        instrumentName = \markup { \larger "Alto" }
      } {
        \new Voice = "altosnippet" { \altoMusic }
      }
      \new Lyrics \lyricsto "altosnippet" { \altoLyrics }

      \new Staff = "main" <<
        \compressEmptyMeasures
        \new Voice { \continuoMusic }
        \new NullVoice \globalMarksBreaks
      >>
      
      \new FiguredBass { \contFigBass }
    >>
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_5._Air_Jean_Sébastien_Bach.ily"
\bookpart {
  \header { piece = \pieceName }
  \score {
    \new Staff {
      \compressEmptyMeasures
      \continuoMusic
    }
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_6._Récitatif_Jean_Sébastien_Bach.ily"
\bookpart {
  \paper {
    system-count = #5
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      
      \new Staff = "Ossia" \with {
        \override StaffSymbol.staff-space = #(magstep -2)
        fontSize = #-2
        instrumentName = \markup { \larger "Soprano" }
      } {
        \new Voice = "sopranosnippet" { \sopranoMusic }
      }
      \new Lyrics \lyricsto "sopranosnippet" { \sopranoLyrics }

      \new Staff = "main" <<
        \compressEmptyMeasures
        \new Voice { \continuoMusic }
        \new NullVoice \globalMarksBreaks
      >>
      
      \new FiguredBass { \contFigBass }
    >>
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_7._Air_Jean_Sébastien_Bach.ily"
\bookpart {
  \paper {
    system-count = #17
  }
  \header { piece = \pieceName }
  \score {
    \new Staff <<
      \compressEmptyMeasures
      \new Voice { \continuoMusic }
      \new Voice { \continuoMarks }
    >>
  }
}

\include "parts/Cantate_Die_Freude_reget_sich_(BWV_36b)_8._Chœur_Jean_Sébastien_Bach.ily"
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      
      \new Staff = "main" <<
        \compressEmptyMeasures
        \new Voice { \continuoMusic }
        \context NullVoice = "figBassWarning" \figBassWarning
        \new NullVoice \globalMarksBreaks
        
        \new Voice {
          s2 s1*31
          <<
            \new Staff = "tenorOssia" \with {
              alignAboveContext = #"main"
              \override StaffSymbol.staff-space = #(magstep -2)
              fontSize = #-2
              \autoBeamOff
            } {
              \new Voice = "tenorRecit" {
                \clef "treble_8" \key d \major
                r4 \tenorRecitMusic
              }
            }
            \new Lyrics \with { alignBelowContext = #"tenorOssia" }
              \lyricsto "tenorRecit" { \tenorRecitLyrics }
          >>
          s4 s2 s1*7
          <<
            \new Staff = "altoOssia" \with {
              alignAboveContext = #"main"
              \override StaffSymbol.staff-space = #(magstep -2)
              fontSize = #-2
              \autoBeamOff
            } {
              \new Voice = "altoRecit" {
                \clef "treble" \key d \major
                r4 \altoRecitMusic
              }
            }
            \new Lyrics \with { alignBelowContext = #"altoOssia" }
              \lyricsto "altoRecit" { \altoRecitLyrics }
          >>
          s4 s2 s1*7
          <<
            \new Staff = "sopranoOssia" \with {
              alignAboveContext = #"main"
              \override StaffSymbol.staff-space = #(magstep -2)
              fontSize = #-2
              \autoBeamOff
            } {
              \new Voice = "sopranoRecit" {
                \clef "treble" \key d \major
                r8 \sopranoRecitMusic s16
              }
            }
            \new Lyrics \with { alignBelowContext = #"sopranoOssia" }
              \lyricsto "sopranoRecit" { \sopranoRecitLyrics }
          >>
        }
      >>
      
      \new FiguredBass { \contFigBass }
    >>
  }
}