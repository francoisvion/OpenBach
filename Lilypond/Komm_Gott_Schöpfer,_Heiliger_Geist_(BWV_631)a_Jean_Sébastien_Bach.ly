\version "2.25.80"

\language "deutsch"

\header {
  title = "Komm Gott Schöpfer, Heiliger Geist"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 631a"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4landscape")
  top-margin = 1.5 \cm
  bottom-margin = 1.5 \cm
  left-margin = 1.5 \cm
  right-margin = 1.5 \cm
  ragged-bottom = ##f
}

#(set-global-staff-size 19)

global = {
  \key c \major
  \time 12/8
  \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \override Staff.TimeSignature.text = \markup {
    \raise #0.1 
    \abs-fontsize #9
    \override #'(baseline-skip . 2)
    \line {
      \bold \number \center-column { "4" "4" }
      \hspace #0.4
      \bold \number \center-column { "12" "8" }
    }
  }
  \accidentalStyle default
}

sopran = \relative g' {
  \voiceOne
  \partial 8*3 \scaleDurations 3/2 { g4 }
  \scaleDurations 3/2 {
    a4 g f g |
    c4 d c\fermata c |
    g4 a8 h c4 d |
    e4 e d\fermata d |
    e4 c a g |
    h4 cis d\fermata g, |
    c4 a f a |
    g2 g4\fermata 
  } \fine
}

alt = \relative cis' {
  \voiceTwo
  \partial 8*3 r8 d16 c d8
  e8 c f d h e c d16 c d8 h e16 d e8 |
  e8 f16 g a g f8 d g \scaleDurations 3/2 { e4 } r8 g16 f g8 |
  d8 h e c f16 e f8 g a16 g f e d8 g16 f g8~ |
  g8 e g c16 h a g a fis~ fis8 g16 fis g a h a g fis! g8~ |
  g8 g c g e g~ g f!16\prall e f8~ f e16 d e8 |
  d8 g16 fis g8~ g g16 fis g8~ g f16 e f8~ f e16 d e8~ |
  e8 c f~ f e16 d e8~ e d16 cis d e f g f e d c |
  h16 d g,8 c16 d e d \appoggiatura d8 e8. f16 \appoggiatura e16 d4. \fine
}

tenor = \relative d' {
  \voiceThree
  \partial 8*3 r8 \stemDown h16 a h8
  c8 a d h g c a h16 a h8 g c16 h c8 |
  a16 g a h c8~ c h16\prall a h8 c8\mordent g16 f g8 c,8 e'16 d e8 |
  h8 g c f, d'16 c d8 e\mordent e, a f d g |
  c,16 e g f e d e8 c c'~ c h16~\prall a h8 g h16 a h g |
  c,8 c'16 h c8 e, c'16 h c8 f, a d h g c |
  g16 a h c d h e g, a b a g a8 d, d' h g c |
  c,16 e f g a b c d c b a8~ a16 d, f a b!8 a16 cis, d e f8~ |
  % \grace s8 pour synchroniser avec l'alto
  f8 e16 d e f g8 c, c'~\mordent c \grace s8 h16\prall a h8 \fine
}

pedal = \relative g {
  \clef "bass"
  \partial 8*3 r8 r g
  r r f r r e r r d r r e |
  r r f r r g c,4._\fermata r8 r c |
  r r e r r d r r c r r h |
  r r c r r c, g'4._\fermata r8 r g |
  r r c r r e r r f r r g |
  r r g, r r e d4._\fermata r8 r e |
  r r a r r cis r r d r r a |
  % \grace s8 pour synchroniser avec l'alto
  r r c! r r e \grace s8 g4._\fermata \fine
}

\score {
  <<
    \new PianoStaff <<
      \new Staff = "right" <<
        \global
        \new Voice { \sopran }
        \new Voice { \alt }
      >>
      \new Staff = "left" <<
        \global \clef bass
        \new Voice { \tenor }
      >>
    >>
    \new Staff = "pedal" <<
      \global
      \new Voice { \pedal }
    >>
  >>
  \layout {
    indent = 1.0\cm
    \context {
      \Staff
      \override VerticalAxisGroup.staff-staff-spacing.basic-distance = #11
    }
  }
}

\score {
  \unfoldRepeats {
    <<
      \new Staff << \set Staff.midiInstrument = "church organ" \sopran \alt >>
      \new Staff << \set Staff.midiInstrument = "church organ" \tenor >>
      \new Staff << \set Staff.midiInstrument = "church organ" \transpose g g, \pedal >>
    >>
  }
  \midi { \tempo 4 = 76 }
}