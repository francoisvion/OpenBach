\version "2.27.0"

\header {
   date = ""
   title = "Kyrie, Gott Vater in Ewigkeit"
   subtitle = \markup { \center-align { \normalsize "(Alio modo)" \large "Manualiter" } }
   composer = "Jean-Sébastien Bach (1685-1750)"
   opus = \markup { \lower #2 "BWV 672" }
   tagline = ##f
}

\include "deutsch.ly"

\paper {
   head-separation = 0.2 \cm
   foot-separation = 0.2 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

global = {
   \key c \major
   \time 3/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark.transparent = ##t
}

halsup        = { \stemUp \tieUp \slurUp \dotsUp }
halsdown      = { \stemDown \tieDown \slurDown \dotsDown }
halsneutral   = { \stemNeutral \tieNeutral \slurNeutral \dotsNeutral }
up            = { \change Staff = "right" \halsdown }
down          = { \change Staff = "left" \halsup }

shiftnote = #(define-music-function (xy) (number-pair?)
   #{
      \once \override Stem.extra-offset = #xy
      \once \override NoteHead.extra-offset = #xy
   #})

sopran = {
   \new Voice \relative h' {
      \global
      \halsup
      \once \override MultiMeasureRest.staff-position = #4 R2.
      \once \override MultiMeasureRest.staff-position = #4 R2.
      \shiftnote #'( -0.4 . 0 ) \once \override Dots.extra-offset = #'( -0.5 . 0 ) d2.
      e2.
      fis4 g8 fis \once \override Tie.staff-position = #4 e4~
      e4 d4. c8
      h8\prall a g2~
      g8 h a g fis e
      dis4 d h'~
      h8 a gis a h c
      d4 c h
      e4 d c
      f8 h, c d \once \override Tie.staff-position = #4 e4~
      e8 d c h a g
      fis4 g8 a h4
      e2.
      fis2.
      g4 f! cis
      d2.~
      d2 cis4
      d4. c!8 h! a
      gis4 a2
      h2.~
      h4 a8 gis a4~
      a4 gis g~
      g8 g f e d f
      e2~ e8 e
      a2.~
      a8 gis16 fis gis8 a h4
      e,2.~
      e2 dis4
      e2.
      \bar "|."
   }
}

alt = {
   \new Voice \relative a' {
      \global
      \halsup
      \once \override MultiMeasureRest.extra-offset = #'( 0 . -1 )  R2.
      \shiftOn a2.
      h8 fis g a h a
      g8\rest g a h c h
      a4 h8 a g4
      a4. g8 fis4
      \halsdown g4 c,8\rest h e d
      cis4 c2~
      c8 c \down \shiftOff h a gis!4~
      gis4 \up e' a~
      a4 a gis
      c4 h a~
      a4 gis8 fis gis4
      a4. g!8 fis e
      dis4 e8 fis! g4~
      g8 e fis g a g
      g8\rest fis g a h a
      g8 a16 b a2
      g8\rest a g f e g
      f8 d e f g e
      f2.
      e2.~
      e2 h4
      c2.
      h2 b4
      a4. c!8 h! a
      gis4 a8 h c4~
      c8 h c d e d
      c4 h8 c d4
      \down \once \override Tie.extra-offset = #'( -0.1 . 1.4 ) \shiftnote #'( -0.4 . 0 ) \once \override Dots.extra-offset = #'( -0.5 . 0 ) gis,2.~
      gis8 \tempo 8 = 200 h a \tempo 8 = 180 gis \tempo 8 = 140 fis \tempo 8 = 120 a
      \tempo 8 = 90 gis2.
   }
}

tenor = {
   \new Voice \relative g' {
      \global
      \halsdown
      g2.~
      g2 fis4
      g8 d e fis! g fis
      h,8\rest e fis g a g
      fis8 e d2
      \down c8 h a2
      f8\rest d e fis g fis
      f8\rest e fis g a g
      \halsdown fis8 a gis fis e d
      \halsup \shiftOn e4 f\rest f\rest
      \once \override MultiMeasureRest.staff-position = #4 R2.
      a2.
      h2.
      c2.~
      c8 c h a g fis!
      e8 g a h c h
      c8\rest a h c d c
      h8 cis d e f e
      d2 e4\rest
      \once \override MultiMeasureRest.staff-position = #6 R2.
      c8\rest a h! c! d c
      h4 c2
      f,8\rest h, c d e d
      f8\rest c d e f e
      d4 e8 f g f
      e4 a\rest a\rest
      \once \override MultiMeasureRest.staff-position = #4 R2.
      f8\rest f e d c d
      d8\rest e8 d c h c
      d8 h c d e d
      \halsdown \shiftOff \shiftnote #'( -0.5 . 0 ) cis4 c8 h c4
      \halsup \shiftOn h2.
   }
}

bass = {
   \new Voice \relative g {
      \global
      \halsdown
      r8 g a h c h
      r8 a h c d c
      h2.
      c2.
      d8 c h4 c8 h
      a8 g fis e d4
      g,2.
      a2.
      \shiftOn \shiftnote #'( -0.75 . 0 ) \once \override Dots.extra-offset = #'(-0.4 . 0.1 ) h2.
      c2.
      h8\rest h c d e d
      h8\rest c d e f e
      d4 e4. d8
      c4 e a~
      a8 a g fis e d!
      c2.
      d2.
      h8\rest e f! g a g
      f4 b g
      a4 a,2
      d2.~
      d8 d c h a h
      gis2.
      a2.
      g8\rest h c d e d
      cis4 d2~
      d8 d c h a c
      f,2.
      \shiftOff e2.~
      e2.~
      e2.~
      e2.
   }
}

right = {
   \clef "treble"
   <<
      \context Voice = "sopran" { \voiceOne \sopran }
      \context Voice = "alt"    { \voiceTwo \alt }
      \context Voice = "tenor"  { \voiceThree \tenor }
   >>
}

left = {
   \clef "bass"
   <<
      \context Voice = "bass" { \voiceFour \bass }
   >>
}

\score {
   \new PianoStaff {
      <<
         \context Staff = right {
            \right
         }
         \context Staff = left {
            \left
         }
      >>
   }
   \layout {
      indent = 1.0\cm
   }
}

\score {
   <<
      \context Staff = right {
         \set Staff.midiInstrument = "church organ"
         \right
      }
      \context Staff = left {
         \set Staff.midiInstrument = "church organ"
         \left
      }
   >>
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #220/8
      }
   }
}