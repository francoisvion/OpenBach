\version "2.24.4"

\include "deutsch.ly"

\header {
  title = "Gelobet seist Du, Jesu Christ"
  subtitle = "à 2 claviers et pédalier"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus="BWV 604"
  tagline = ##f
}

global = {
   \key c \major
   \time 4/4
   #(set-accidental-style 'default)
}

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup = { \stemUp \tieUp }
halsdown = { \stemDown \tieDown }
staffdown = { \change Staff = "left" \halsup }
staffup = { \change Staff = "right" \halsdown }

sopran = {
   \new Voice \relative g' {
      \global
      \halsup
      \partial 2 g2
      g4~ g16 a f g a4 g8. a16
      h8 c d4 c4. c16 d
      h8.\prallprall c16 d4 e d8. c16
      h4 a g g
      %% Takt  5 ==================================================
      c4 h8. c16 d4 a
      g8 fis e4 d d
      a'4 a a h
      c8 h a4 g8. a16 h4
      a2\fermata g4 g
      %% Takt 10 ==================================================
      g4 g g2~
      g2\fermata \bar "|."
   }
}

alt = {
   \new Voice \relative h {
      \global
      \halsdown
      \partial 2 h8. c16 d4
      e4~ e16 e d8 c8. d16 c16\rest e fis8
      g8. a16 g\rest a h8 g16\rest g8. g16\rest g8.
      g4~ g8. f16 e8. g16~ g g fis8
      g4~ g16 g fis8 c16\rest d8 f16 e4~
      %% Takt  5 ==================================================
      e16 e fis8 g4~ g16 fis g8~ g fis
      d4~ d16 d cis8 d16 \staffdown a g8 fis!8. g16
      a8. h16 cis8 \staffup e c16\rest d c!8 h d
      e4~ e8 d16 c~ c16 h c8 d4~
      d16 d8.~ d4 d8. d16 c8. h16
      %% Takt 10 ==================================================
      c2~ c8 c~ c16 h a8
      h2
   }
}

tenor = {
   \new Voice \relative g {
      \global
      \partial 2 r16 g a8 h4
      h4 c8. b16 r16 a h8 c4
      r16 d e8 f!8. f16~ f8 e16 d e4
      d4~ d16 c h8~ h16 g c e a,4
      g8[ h] e[ d16 c]~ c8[ h] c[ g]
      %% Takt  5 ==================================================
      a8. dis16 e g, a8 h8. c16 d4
      d8. c16 h8 a16 g \dotsDown fis8. \dotsNeutral e16 h\rest d e8
      d16\rest fis g8 fis16\rest a8 g16 fis!8. fis16 g4~
      g4~ g16 g fis8 g8. fis16 g4~
      g8 fis16 e fis4 r16 g f8 r16 e d8
      %% Takt 10 ==================================================
      e2~ e16 e8 e16 d8. c16
      d2
  }
}

right = {
   \clef treble
   <<
   \alt
   \sopran
   >>
}

left = {
   \clef bass
   <<
   \tenor
   >>
}

pedal = {
   \global
   \clef "bass"
   \relative g {
      \partial 2 r4 r16 g g, f'
      e16 e e, d' c4 f,8[ f'] e[ c]
      g'8[ fis] g8[ g,] c2
      r16 g g' a, h8 g c[ a] d[ d,]
      r16 e e' h c a d8 g,4 r16 c c, h'
      %% Takt  5 ==================================================
      a8 a' e4 d! r16 d d, c'
      h16 h' h, a' g8 a d,4 d,
      d'4 a8 cis d4 r16 g g, f'!
      e16 e e, d' c8 d e4 r16 h g' c,
      d4 r16 d d, c' h4 c8 g
      %% Takt 10 ==================================================
      r16 c, c' d, e e' e, fis g2~
      g2
   }
}

\score {
   <<
      \new PianoStaff
      {
         \set PianoStaff.instrument = \markup { \large "Manual" }
         <<
            \new Staff = right { \right }
            \new Staff = left { \left }
         >>
      }
      \new Staff {
         \set Staff.instrument = \markup { \large "Pedal" \hspace #1.8 }
         \pedal
      }
   >>
   \layout { }
}


\score {
   <<
      \new Staff = right {
         \set Staff.midiInstrument = "pan flute"
         \right
      }
      \new Staff = right {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \right
      }

      \new Staff = left {
         \set Staff.midiInstrument = "pan flute"
         \left
      }
      \new Staff = left {
         \set Staff.midiInstrument = "pan flute"
         \transpose c c' \left
      }

      \new Staff {
         \set Staff.midiInstrument = "pan flute"
         \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "recorder"
         \transpose c c' \pedal
      }
      \new Staff {
         \set Staff.midiInstrument = "flute"
         \transpose c c, \pedal
      }
   >>

   \midi{
      \tempo 4 = 54
   }
}
