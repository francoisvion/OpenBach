\version "2.27.0"

\language "deutsch"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4landscape")
   ragged-bottom = ##f
   ragged-last-bottom = ##t
}

\header {
 title = "Christe, du Lamm Gottes"
 subtitle = "Petit livre d'orgue"
 composer = "Jean Sébastien Bach (1685-1750)"
 opus="BWV 619"
 tagline = ##f
}

global = {
   \key f \major
   \time 3/2
   #(set-accidental-style 'default)
}

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

restup = {
   \once \override Rest #'extra-offset = #'( 5.0 . 0.0 )
}

sopran = {
   \new Voice \relative c'' {
      \global
      \halsup
      s1*3/2*4
      c,1 d2
      e1 \stemDown e2
      f1.
      e1 e2\rest
      e1 d2
      %% 10 
      e1 f2
      g1 f2
      e1 r2
      e2 d c
      e1.
      \tieDown d1.~
      d1. \fine
   }
}

alt = {
   \new Voice \relative f'' {
      \global
      \halsdown
      r4 f e d c b
      a4 d c b a g
      f2 \tieUp c'1~
      c4 f e d c b \glissando
      \stemUp a4 e f g a2
      r4 f g a b2
      r4 a h cis d2
      r4 a' g f e d
      c1 gis2
      r4 a h cis d2
      e2 cis d
      cis4 e, f g a h
      c2 h a
      h4 d g,2 c~
      \once \override NoteColumn #'force-hshift = #0.6 c4 c h a g fis
      g1. \fine
   }
}

tenor = {
   \new Voice \relative f' {
      \global
      \halsup
      R1*3/2
      a,4\rest \stemDown f' e d c b
      a4 d c b a g
      f4 r4 r1
      %% 5 =
      r4 c d e f2
      r4 d e f g2
      cis,2 d4 e f g
      a2 r1
      r4 a g f e d
      %% 10 
      c2 e d
      r4 cis d e f g
      a2 r1
      r4 h, c d e fis
      g4 f e d c2
      %% 15 
      g'4 e d c h a
      h1. \fine
   }
}

bass = {
   \new Voice \relative f {
      \global
      s1*3/2*3
      \stemUp f1 g2
      %% 5 =
      a1 a2
      b1.
      a1 r2
      a1 g2
      a1 h2
      %% 10 
      c1 b2
      a1 r2
      a2 g f
      a1.
      g1.~
      %% 15 
      g1.~
      g1. \fine
   }
}

right = {
   \clef treble
   <<
   \sopran
   \alt
   >>
}

left = {
   \clef bass
   <<
   \tenor
   \bass
   >>
}

pedal = {
   \global
   \clef "bass_8"
   \relative f,, {
      f1.~
      f1.~
      f4 f' e d c b
      a4 d c b a g
      %% 5 
      f4 b' a g f d
      g,4 c' b a g e
      a,4 a' g f e d
      cis2 d b
      a1 r2
      %% 10 
      r4 a' g f e d
      cis4 a g f e d
      a'1 r2
      R1*3/2
      r4 h c d e fis
      %% 15 
      g1.
      g,1. \fine
   }
}

\score {
   \new PianoStaff {
      \set PianoStaff.instrument = \markup { \large \center-align { "à" "" "" "2 Clav." "" "" "et" "" "" "Pédalier." } \hspace #1.3 }
      <<
         \context Staff = right {
            \set Staff.midiInstrument = "church organ"
            \context Voice = right \right
         }
         \context Staff = left {
                  \set Staff.midiInstrument = "church organ"
                  \context Voice = left \left
         }
         \context Staff = pedal {
            \set Staff.midiInstrument = "contrabass"
            \context Voice = pedal \pedal
         }
      >>
   }
   \layout{}
   \midi{ \tempo 2 = 64 }
}