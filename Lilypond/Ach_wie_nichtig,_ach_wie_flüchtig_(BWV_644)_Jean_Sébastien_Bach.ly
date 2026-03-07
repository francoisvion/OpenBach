\version "2.24.4"

\header {
date = "1714"

 title = "Ach wie nichtig, ach wie flüchtig"
 composer = "Jean Sébastien Bach (1685-1750)"
 opus="BWV 644"
  tagline = ##f
}

\include "deutsch.ly"

global = {
   \key d \minor
   \time 4/4
   #(set-accidental-style 'default)
   \override Score.MetronomeMark #'transparent = ##t
}

\paper {
   head-separation = 0.4 \cm
   foot-separation = 0.1 \cm
   page-top-space = 0 \cm
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie #'extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie #'extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie #'extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      g4 a b b
      c4 c d d
      d4 d c b
      a4~ a16 c b a g2
      %% Takt  5 ==================================================
      d'4 d es es
      d4 d c c
      c4 c d d
      c4 c b b
      b4 c d8 c b4
      %% Takt 10 ==================================================
      a4. a8 g4 g\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative g {
      \global
      \staffdown a16\rest g a b c \staffup d e fis g fis g a b a b8~
      b16 b a g f! es d c b a' b c d a b8
      g16\rest a b c d c b a g \staffdown fis, g a b c \staffup d es
      \staffdown a,8 b16 c \staffup d es d c \staffdown b a b \staffup c d fis g a
      %% Takt  5 ==================================================
      b16 c b a g f! es d \stemUp \once \override Stem #'details #'beamed-lengths = #'( 2.8 ) c8. \shiftOn g'16 c b as! g
      f8 as~ as16 as g f \once \override Stem #'details #'beamed-lengths = #'( 3.6 ) es! f es d c8 e
      f16 b a! g f es d c \shiftOff \once \override Stem #'details #'beamed-lengths = #'( 3.0 ) b8. \shiftOn f'16 b as g f
      es16 f g8~ g16 g f es d es d c b8 d
      \halsdown es16 b c d es f g a! d, fis g a~ a fis g8~
      %% Takt 10 ==================================================
      g16 g fis e! d c \staffdown h a h c h a <g h! d>4
   }
}

tenor = {
   \new Voice \relative c' {
      \global
      s2 r16 c b a g f! es d
      c16 g' a b a4 r16 f g a b c d es
      f16 es d c b a g f es d e fis! \tieDown g4~
      g16 g fis e! fis4 g16 fis! g a b d e! fis
      %% Takt  5 ==================================================
      g16 fis, g a b8 h \staffup c16 as' g f! \once \override NoteColumn #'force-hshift = #0.5 es! d c \staffdown b
      as16 \staffup es' d c \staffdown \halsdown h8.\prallprall a32 h c16 \staffup as'! g f \once \override NoteColumn #'force-hshift = #0.5 es! d c \staffdown b
      \halsdown a!16 e! f g a4 \staffup b16 g' f es! d c \staffdown b as
      \halsdown g16 d' c b a!8.\prallprall g32 a b16 \staffup g' f es! \once \override NoteColumn #'force-hshift = #0.5 d \staffdown c b as
      \halsdown g16 as g f es d c b a! d e fis g a b c32 d
      %% Takt 10 ==================================================
      es16 b a g fis8. e!32 fis g16 es d c \tempo 4 = 48 h \tempo 4 = 35 a \tempo 4 = 10 g8
   }
}

right = {
   \clef "treble"
   <<
      \alt
      \sopran
   >>
}

left = {
   \clef "bass"
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative g {
      g8 g, r d' g g, r g'
      es8 es, r f' b b, r4
      b'8 b, r b c c, r c'
      d8 d, r d' g g, r4
      %% Takt  5 ==================================================
      g'8 g, r g' c c,  r c
      f8 f, r g c c, r c'
      f8 f, r f' b b, r b
      es8 es, r f' b b, r b
      es es, r e' fis fis, r g
      %% Takt 10 ==================================================
      c8 c, r d' g g, r4_\fermata
   }
}


\score {
   <<
      \new PianoStaff {
         <<
            \context Staff = right {
               \context Voice = right \right
            }
            \context Staff = left {
               \context Voice = left \left
            }
         >>
      }
      \context Staff = pedal {
         \context Voice = pedal \pedal
      }
   >>

   \layout{

      indent = 1.0\cm
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \right
         }
         \context Staff = left {
            \set Staff.midiInstrument = "church organ"
            \left
         }
         \new Staff {
            \set Staff.midiInstrument = "church organ"
            \transpose d d, \pedal
         }
      >>
   }
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
   }
}
