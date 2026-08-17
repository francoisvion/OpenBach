\version "2.27.0" 

\language "deutsch" 

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4landscape")
   ragged-bottom = ##f
   ragged-last-bottom = ##t
}

\header {
  title = "Herr Gott, nun schleuß den Himmel auf" 
  subtitle = "Petit livre d'orgue" 
  opus = "BWV 617" 
  composer = "Jean Sébastien Bach (1685-1750)" 
  tagline = ##f 
}

global = {
   \key a \minor 
   \accidentalStyle default
   \override Score.MetronomeMark.transparent = ##t 
   \override Score.BarNumber.break-visibility = #all-invisible 
}

halsup = { \stemUp \tieUp \slurUp }
halsdown = { \stemDown \tieDown \slurDown } 
halsneutral = { \stemNeutral \tieNeutral }
shifttiedown = { \once \override Tie.extra-offset = #'( 0 . -0.5 ) }
shifttieup = { \once \override Tie.extra-offset = #'( 0 . 0.5 ) }
stemslong = { \override Stem.details.beamed-lengths = #'( 5 ) }
stemsnormal = { \revert Stem.details.beamed-lengths }

sopran = \relative c'' {
   \global
   \halsup 
   \scaleDurations 3/2 {
      r2 c
      \repeat volta 2 {
         h4 c d e
         f4 d e2\fermata
         r4 e c h
         a4 e' e( dis)\trill 
         \alternative {
            {
               e2 r
               r2 c
            }
            {
               e1
            }
         }
      }
      r2 c
      d4 d h h\fermata
      r4 h c d
      d4 d r h
      e4 c h c
      a4 gis a2
      r2 e'
      d4 d d c
      h2 c4 d8 e
      f4 e e e
      dis2\trill e2~
      e4. dis8 e2\fermata \fine
   }
}

alt = \relative e' {
   \global
   \halsdown
   \scaleDurations 3/2 {
      r2 e
      \repeat volta 2 {
         e4 e g g
         a4 h c2\fermata
         r4 e, e e
         a4 g fis2
         \alternative {
            {
               e2 r
               r2 e
            }
            {
               e1
            }
         }
      }
      r2 e
      fis4 a g g
      r4 g g fis
      g4 h r d,
      e4 e e e
      fis4 e e r
      r2 h'8 b a g
      f4 f e e
      fis4 e e r
      r4 e8 fis g4 fis
      fis2 \shifttiedown e~
      e4. a8 gis!2
   }
}

tenor = \relative h' {
   \global
   r16 h a gis a e c f e d e c \clef "bass" a d c h c a e h' a gis a dis,
   \repeat volta 2 {
      gis a h c d e a, h c d e f \clef "treble" h, c d e f g c, d e f g a
      d, g f e f d h e d c d h \clef "bass" g d' c h c g e a g f g e
      c d e f g a h c d e fis gis a, h c d e f g,! a h c d e
      f, g a h c d e f e d e c a d c h c a fis c' h a h fis
      \alternative {
         {
            gis a h c d e \clef "treble" c d e fis gis a gis a h c d e f! d h d gis,! h
            e, h' a gis a e c f e d e c \clef "bass" a d c h c a e h' a gis a dis,
         }
         {
            gis e' d c d h e, d' c h c a e c' h a h gis e h' a gis a fis
         }
      }
   }
   dis a' gis fis gis d cis e a c, h gis' \stemslong a, \clef "treble" h'' a gis a e \stemsnormal c f! e d e c
   \clef "bass" a d c h c a fis h a g a fis d a' g fis g d h e d c d h
   \stemDown g \clef "treble" e''' d c d h \stemNeutral g c h a h g e fis g a h c fis, g a h c d
   h c h a h g d g f! e f d h e d c d h g h d h f' d
   h c d e fis gis a, h c d e f \clef "bass" gis, a h c d e a, h c gis! a e
   c fis a fis c' a d, gis h gis d' h \clef "treble" cis a' g! f! g e a, g' f e f d
   a f' e d e cis a e' d cis d h \clef "bass" gis d' cis h cis g fis a d f, e cis'!
   \clef "treble" d e f g a h c,! d e fis gis a h, c d e fis! gis! \clef "bass" a, d c h c a
   fis h a gis a fis gis a h c d e \clef "treble" a, h' a gis a a, h a' g f! g cis,
   d gis h gis d' h c! e, fis gis a h cis g e g cis, e ais, h cis d e fis
   a,! dis fis dis a' fis c'! a fis a dis, fis \clef "bass" h, e d! c d h e, d' c h c a
   d, c' h a h d, cis h' a gis a c, h e gis! e h' gis e' \tempo 4=44 h gis \tempo 4=36 h \tempo 4=8 e,8\fermata \fine
}

right = {
   \clef treble
   \once \override Staff.TimeSignature.style = #'()
   \time 12/8
   \set Staff.timeSignature = #'(4 . 4)
   <<
     \new Voice { \voiceOne \sopran }
     \new Voice { \voiceTwo \alt }
   >>
}

left = {
   \clef treble
   \time 24/16
   \tenor
}

pedal = {
   \global
   \clef "bass"
   \relative a {
      \time 12/8
      a8 a, a'~ a a, a'~ a a, a'~ a a, a'
      \repeat volta 2 {
         e gis e a a, a' g h g c c, c'
         f, a f g g, g' c c, c'~ c c, c'~
         c c, c' gis h e, a a, a' e g e
         f f, f' c e c fis fis, fis' h, dis h
         \alternative {
            {
               e e, e'~ e e, e'~ e e, e' gis, gis' e
               a8 a, a'~ a a, a'~ a a, a'~ a a, a'
            }
            {
               e e, e'~ e e, e'~ e e, e'~ e e, e'~
            }
         }
      }
      e e, e'~ e e, e' a a, a'~ a a, g'!
      fis a fis d' d, fis g g, g'~ g g, g'~
      g g, g' e g e a a, a' d, fis d
      g g, g'~ g g, g'~ g g, g'~  \stemUp g g, a'
      \stemNeutral gis h e, a a, a' e gis! e a a, a'
      dis, fis dis e e, e' a a, a'~ a a, a'~
      a a, a'~ a a, a'~ a a, a'~ a a, a'
      h, d h a' a, a' gis h e, a a, a'
      dis, fis dis e e, e' a a, a'~ a a, a'~
      a a, a'~ a a, a' ais ais, ais' fis ais fis
      h8 h, h' a! c fis, gis e gis c, e a,
      e'2. e,2._\fermata \fine
   }
}

\score {
   <<
      \new PianoStaff {
         <<
            \new Staff = "right" \right
            \new Staff = "left" \left
         >>
      }
      \new Staff = "pedal" \pedal
   >>
   \layout {
      indent = 1\cm
      \context {
         \Score
         \remove "Timing_translator"
      }
      \context {
         \Staff
         \consists "Timing_translator"
      }
   }
}

\score {
   \unfoldRepeats {
      <<
         \context Staff = "right" {
            \set Staff.midiInstrument = "pan flute"
            \right
         }
         \context Staff = "left" {
            \set Staff.midiInstrument = "recorder"
            \left 
         } 
         \new Staff { 
            \set Staff.midiInstrument = "bassoon" 
            \transpose d d, 
            \pedal 
         } 
      >> 
   } 
   \midi { 
      \tempo 4 = 56 
   } 
}