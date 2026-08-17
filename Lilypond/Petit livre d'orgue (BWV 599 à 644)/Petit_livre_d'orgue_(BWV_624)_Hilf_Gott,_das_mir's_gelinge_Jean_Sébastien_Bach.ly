\version "2.27.0"

\language "deutsch"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a4landscape")
   ragged-bottom = ##f
   ragged-last-bottom = ##t
}

\header {
  title = "Hilf Gott, das mir's gelinge"
  subtitle = "à 2 claviers et pédalier"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 624"
  tagline = ##f
}

global = {
  \key g \minor
  \time 4/4
  #(set-accidental-style 'default)
  \override Score.MetronomeMark.transparent = ##t
}

halsup        = { \stemUp \tieUp \slurUp }
halsdown      = { \stemDown \tieDown \slurDown }
halsneutral   = { \stemNeutral \tieNeutral }
shifttiedown  = { \once \override Tie.extra-offset = #'( 0 . -0.4 ) }
shifttieup    = { \once \override Tie.extra-offset = #'( 0 . 0.4 ) }
shifttieupp   = { \once \override Tie.extra-offset = #'( 0 . 0.9 ) }
staffup       = { \change Staff = "right" \halsdown }
staffdown     = { \change Staff = "left" \halsup }

sopran = {
  \new Voice \relative g' {
    \global
    \halsup
    \partial 4 g4
    a4. g8 f4 d8 es!
    f4 g2\fermata a!4
    b8 c d4 c b
    a g2\fermata g4
    %% Takt  5 ==================================================
    a4. g8 f4 d8 es!
    f4 g2\fermata a!4
    b8 c d4 c b
    a g2\fermata g4
    a4 b c a
    %% Takt 10 ==================================================
    b4 g a f~\fermata
    f4 f b a
    b4 c d4. c8
    b8 a16 g fis2\fermata a4
    %% Takt 15 ==================================================
    b8 c d4 c! b
    a4 g~ g2~
    g2.\fermata \fine
  }
}

alt = {
  \new Voice \relative cis' {
    \global
    \halsdown \dotsDown
    \partial 4 r4
    r4 cis d4. c8
    b4 g8 a h4 c
    r4 d e8 fis g4
    f!4 es! d c
    %% Takt  5 ==================================================
    r4 cis d4. c8
    b4 g8 a h4 c
    r4 d e8 fis g4
    f!4 es! d c
    r4 d e f
    %% Takt 10 ==================================================
    g4 e f d
    es!4 c2 c4
    f4 e fis g~
    g4 a8. g16 fis8 e16 d cis8 cis\rest
    r4 d e8 fis g4
    %% Takt 15 ==================================================
    f!4 es! d c~
    c4. h16 a \once \override Script.extra-offset = #'(0 . -4.1) h4\fermata \fine
  }
}

tenor = {
  \new Voice \relative d' {
    \global
    
    % Configuration moderne des ligatures automatiques (toutes les croches)
    \set Voice.baseMoment = #(ly:make-moment 1/8)
    \set Voice.beatStructure = #'(1 1 1 1 1 1 1 1)
    \set Voice.beamExceptions = #'()
    
    \set tupletSpannerDuration = #(ly:make-moment 1/8)
    \override TupletBracket.bracket-visibility = ##f
    \tupletUp
    \partial 4 \tuplet 3/2 {
      r16 d c b a g
      \override TupletNumber.transparent = ##t
      cis h a d c b a g f e d e     d a' g f e d fis e d g f es
      d b' a g f es d c b es d c    f as g f es d es g f es d c
      b es d c b a! g b c d e fis   g fis g a b c \clef "treble" d c d es! d es~
      es d c d es f! g a h c d es    f g as g as f es g f es f d
      %% Takt  5 ==================================================
      cis h a d c b a g f e d e     d a' g f e d fis e d g f es \clef "bass"
      d b a g f es d c b es d c     f as g f es d es g f es d c
      b es d c b a g b c d e fis    g fis g a b c \clef "treble" d c d es! d es~
      es d c d es f! g a h c d es    f g as g as f es d c b a! g
      fis es' d c b a g f es d c d  \clef "bass" g, a b c d e f, a g a b c
      %% Takt 10 ==================================================
      d g, a b c d \clef "treble"
                   e c d e f g      c, d es f g a b a g f es d
      c es d c d b a b c d es f     g a b c d es f g f es d c
      b a g f es d \clef "bass"
                   c b a g fis e    d fis g a b c d c b a b g
      c es d c b a \clef "treble"
                   d e fis g a b    c es! d c d b a b c d es c
      b a g fis g a d, e fis g a b  c b a es'! d c g' f! es es d c
      %% Takt 15 ==================================================
      c b a a g f b a g c h a       d c h h a g g f es c' b as
      g f es es d c g' f es d es c
    }
    % le ténor a une croche de plus que les autres voix dans cette dernière mesure
    \tuplet 2/1 { \tempo 4=30 d16[ g d] h[ c \tempo 4 = 18 d] \tempo 4 = 5 g,8\fermata \fine}
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
    \partial 4 r8 g~
    g8 f e a, d c b4~
    b8 c b a g g'4 fis8
    g8 a b4~ b8 a g c
    d8 d,4 c8 h g c b
    %% Takt  5 ==================================================
    a8 f' e a d, c b4~
    b8 c b a g g'4 fis8
    g8 a b4~ b8 a g c
    d8 d,4 c8 h g c c'~
    c8 fis, g b~ b a d c
    %% Takt 10 ==================================================
    b8 g c b a f b b,~
    b8 a16 g a8 f'~ f8 es16 d es8 c
    d8 g, a b c b16 a b8 es!~
    es8 c'4 b8 a g4 fis8
    g8 a b4~ b8 a g c
    %% Takt 15 ==================================================
    d8 d,4 c8 h g es'4~
    es8 fis, g2_\fermata \fine
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

  \layout {
    indent = 1.0\cm
  }
}

\score {
  \unfoldRepeats {
    <<
      \context Staff = right {
        \set Staff.midiInstrument = "pan flute"
        \right
      }
      \context Staff = left {
        \set Staff.midiInstrument = "recorder"
        \left
      }
      \new Staff {
        \set Staff.midiInstrument = "recorder"
        \transpose d' d''' \left
      }
      \new Staff {
        \set Staff.midiInstrument = "bassoon"
        \transpose d d, \pedal
      }
    >>
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #50/4
    }
  }
}