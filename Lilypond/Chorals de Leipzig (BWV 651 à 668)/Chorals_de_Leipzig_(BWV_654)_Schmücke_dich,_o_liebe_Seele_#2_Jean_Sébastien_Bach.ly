\version "2.24.0"
\language "deutsch"
\header {
  title = "Schmücke dich, o liebe Seele"
  subtitle = "à 2 claviers et pédalier"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 654"
  tagline = ##f
}
halsdown = { \stemDown \tieDown \slurDown }
halsup = { \stemUp \tieUp \slurUp }
mmrestdownn = { \once \override MultiMeasureRest.staff-position = #-4 }
mmrestup = { \once \override MultiMeasureRest.staff-position = #4 }
scriptdow = { \once \override Script.extra-offset = #'(0 . -0.3) }
scriptdownh = { \once \override Script.extra-offset = #'(0 . -1.8) }
scriptdownnn = { \once \override Script.extra-offset = #'(0 . -3.3) }
global = {
  \key es \major
  \time 3/4
  #(set-accidental-style 'default)
}
\paper {
  #(set-paper-size "a4landscape")
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
#(set-global-staff-size 18)
sopran = \relative g' {
  \global
  r4
  \repeat volta 2 {
    r4 r
    R2.*9
    g2.
    f2.
    es2 f8. g32 as
    g8. as16 as8._\prall g32 as b4~
    b16 des c b as4.\downprall g16 as
    g2.~
    g2 r4
    R2.*7
    b2.
    g2.\prall
    \acciaccatura g8 as4. as8 g f
    es8[ f] f8._\prall es32 f g4~
    g16 c b as g4( f8_\prall es16 f)
    es2.~
    es2.~
    es2.~
    es2.~
  }
  \alternative {
    {
      es2.
      r4
    }
    {
      \set Score.currentBarNumber = #34
      es2.\repeatTie
      R2.
    }
  }
  R2.*6
  b'2.
  c8 d d4.\prall c16 d
  es2 es4~
  es4 d c
  b8 c b c d8. es16
  d8. es32 c c4.\downprall b16 c
  b2.~
  b2 r4
  R2.
  b2.
  c8. d16 d4.\prall c16 d
  es2 es4~
  es8 g f es d\prall c
  b8( a) b( a) b4~\mordent
  b16 a b es d!4( c8\prall b16 c)
  b2.~
  b2 r4
  R2.*7
  << { f2. } { s2 \scriptdownnn s4\turn } >>
  g2.\downprall
  as2 as4~
  as4 g8 e f des'
  c8 f, as4( g8_\prall f16 g)
  f2.~
  f2.~
  f2 r4
  R2.*12
  g4. as8\noBeam as8._\prall g32 as
  b2.
  as4 r8 g\noBeam b as16 g
  f32[ es16. as8] g8[ as16 b32 c] b4~
  b8 c16 as g4( f8._\prall es32 f)
  es2.~
  es2.~
  es2.~
  es2.~
  es2. \fine
}
alt = \relative g' {
  \global
  \halsup
  g4\rest
  \repeat volta 2 {
    g8. as16 f8.\prall es32 f
    es8 f g as b4~
    b8 c as4.\prall g16 as
    g8 f g8. a16 a8.\prall g32 a
    b2.~
    b8 as! g4 f8 es
    d8 as' g f es g
    f8 es d f es d
    c8 d es4 d8 c
    b4. c8 d4
    c8 d es2~
    es4 d8 c d4~
    d8 c16 h c4 b~
    b8 es d c b g'
    f8 es d! es c d
    es8 f g a h4
    c8 es, f8. g16 g8.\prall f32 g
    as2.~
    as8 c b as g b
    as8 g f as g f
    e4. e8 f e
    f8 g e4.\prall d!16 e
    f2 b4\rest
    b4\rest f8. g16 f es d es
    d4 es f
    g4 c b
    as8 g f4 es8 des
    c4 b4. b8
    c4 b2~
    b8 c des4 c
    b as4. g8
    as8 b c des es4~
    es8 f des4.\prall c16 des
  }
  \alternative {
    {
      c4. b8[ c d!]
      es8 f
    }
    {
      c4. b8[ c des]
      b4
    }
  }
  es8\rest b c d!
  es8 d es2~
  es8 d es g f es
  d8 es d es f4~
  f4 es8 f es d
  c8 d c d es f
  d4 es f~
  f8 es d f es g
  f2 g4\rest
  a8\rest d, es f g4~
  g8 g f es d4~
  d2 g8\rest f
  g8 f es d c es
  d8 b' as g f as
  g4 as b~
  b8 b as g f as
  d,!4 es8 f g4~
  g8 g f es d f
  es4 f g
  c,4 d es~
  es4 e4. e8
  f2.~
  f8 d es f g as!
  g2.~
  g8 e f g as b
  as2.~
  as8 c b as g f
  e4 f g~
  g8 b as g f es!
  des8 f es des c b
  c8 des es f g as
  d,!2 des4~
  des4 g, c~
  c4 f\rest a\rest
  \mmrestup R2.
  c,8\rest c des c b c
  a8 f'4 es!8 des c
  \clef treble des8 f b a b c
  a4 b c
  des2.~
  des8 f es des c8 des16 es
  a,4. a8 b4~
  b8 c a4. a8
  b4 f8. g!16 es8.\prall d32 es
  d4 b'8. c16 as!8.\prall g32 as
  g4. f8 g a
  \clef alto b2~ b8 as!
  g8 f g8. as16 f8.\prall es32 f
  es8 f g as b4~
  b8 c as4.\prall g16 as
  g8 as g f es d
  es8 g f es des c
  b4. b8 c d!
  es8 f g4 es
  c8 d es d es f
  g8 f g as b4~
  b8 es, as2~
  as8 as g f es des
  c2.~
  c8 c b2~
  b2. \fine
}
tenor = \relative b {
  \global
  \halsdown
  a4\rest
  \repeat volta 2 {
    b8. c16 as8._\prall g32 as
    g4 es'8. f16 des8._\prall c32 des
    c4. b8 c d!
    es4 b8. c16 c8._\prall b32 c
    d8 c d8. es16 es8._\prall d32 es
    f4. es8 d c
    b4. g8 c4~
    c8 f, b2~
    b4 a4._\prallprall g16 a
    b8 as! g8. as16 f8._\prall es32 f
    es8 f g as b es,
    c'8 b as c b as
    g4. as8 g f
    es4 d\rest d\rest
    \mmrestdownn R2.
    f4\rest g' f8._\prall es32 f
    es8 c des f es des
    c8 b c8. des16 \scriptdow des8.\prall c32 des
    es4 f b,
    c2 b4~
    b8 des c b as g
    as8 b g des' c b
    as8 g as f g a
    b8 f b4. a8
    b4 c d
    es4 e2
    f8 es d c b4~
    b8 as d,4 es~
    es4. d8 c d
    es4. b'4 as8~
    as8 g4 f8 es4~
    es8 g as b c as
    f4 g8 as b4~
  }
  \alternative {
    {
      b8[ b as g as f]
      g8 as
    }
    {
      b8\repeatTie b as g as f
      g4
    }
  }
  d4\rest d\rest
  f4\rest f8\rest g a b
  c8 b c2~
  c4 b8 c b as!
  g8 a g a b4~
  b2 a4
  a8\rest b as! g f as
  g8 c b as g b
  a8 h \scriptdownh h4.\prall a16 h
  c2~ c8 b!
  a2~ a8 a
  g8 a g a b4~
  b2 a4
  b4 a\rest a\rest
  c8\rest es des c b des
  c8 des c b as c
  f,4 g8 as b4~
  b8 b as g f as
  g8 c b as g b
  a4 b c~
  c4 b8 c des4~
  des8 b4 a8 g a
  b2.~
  b8 g as b c des c2.~
  c8 as b c des es
  des2.~
  des8 des c b as g
  as2.~
  as4 g4._\prall f16 g
  as8 b c d! es f
  b,4 f b~
  b4 e,2
  f8 g as b c f,
  des'8 f, e b' as e!
  f2 e4
  f4 g a!
  b4. c8 des! es
  f8 ges f es des c
  b8 c' b as! ges f
  ges4. f8 es4~
  es8 ges f es des4~
  des8[ es] c f es f
  d!8 c d8. es16 c8._\prall b32 c
  b8 c d es f4~
  f8. g16 \dotsDown es4._\prall \dotsNeutral d16 es
  d8 c b as! g f
  es4 b'8. c16 as8._\prall g32 as
  g4 es'8. f16 des8._\prall c32 des
  c4. b8 c d!
  es8 f es d c h
  c4 as\rest f\rest
  d8\rest d es g as b
  c8 d es4 b
  as8 f c' as b4
  \dotsDown es4. c8 des4~
  des4 c8 des es f
  b,2.~
  b8 b as g as4~
  as4. as8 g f
  \dotsNeutral g2. \fine
}
right = {
  \clef treble
  \sopran
}
left = {
  \clef alto
  <<
    \alt
    \\
    \tenor
  >>
}
pedal = \relative es, {
  \global
  \clef bass
   es4
  \repeat volta 2 {
    es' b4
    c4 c' g
    as4 f b
    es,4 d c
    b2 c4
    d4 es f~
    f4 es2
    d4. as'8 g f
    es8 d c g' f es
    d4 es h
    c4 c g
    as4 f b
    c, c' d
    es4 f g
    as4 f b
    es,2 d4
    c4 c' b
    as4 as, b
    c4 des es~
    es4 des2
    c2 des4
    b4 c c,
    f4 f' es!
    d2 c4
    b8 c' b as! g f
    es8 d c b as g
    f2 g4
    as2 g4
    as4 b as
    g2 as4
    b4 c des
    c4 b as
    b4 as g
  }
  \alternative {
    {
      as2.
      es4
    }
    {
      as2.
      es4
    }
  }
  es'4 d
  c2 b4
  a4. f8 g a
  b8 a b4 d,
  es4 c g''
  es4 c f
  b,4 c d
  es2.~
  es4 d8 g f g
  c,4 d es
  f2 fis4
  g4 f!8 es d4
  es4 f f,
  b4 c d
  es4 f g
  as2.~
  as8 as g f es g
  a,4 h2
  c4 d es
  f2.
  ges4 g2
  f2 es4
  d4 c b
  es2.
  e4 d c
  f2.
  b,4 c des
  c4 d! e
  f4 g as
  b,4 es es,
  as2.~
  as8 c b as g f
  e8 des' c b as g
  f4 g as
  b4 c des
  as4 b c
  f,4 r f'
  b4 r b,
  f4 g a
  b4 c des
  es4 f ges
  f8 es des c b as!
  ges8 es f4 f'
  b,4 b' f
  g4 g, d'
  es4 c f
  b,4 c d
  es2 b4
  c4 c' g
  as4 f b
  es,4 f g
  c,8 es d c b as
  g8 as g f es d
  c4 c' g
  as4 r8 f g d
  es8 as b2
  c4. b8 c d!
  es4. es8 f g
  as4. b,8 c d,
  es2.~
  es2. \fine
}
\score {
  <<
    \new PianoStaff \with { instrumentName = "Claviers" } {
      <<
        \context Staff = "right" { \right }
        \context Staff = "left" { \left }
      >>
    }
    \context Staff = "pedal" \with { instrumentName = "Pédalier" } {
      \pedal
    }
  >>
  \layout {}
}
\score {
  \unfoldRepeats {
    <<
      \new Staff {
        \set Staff.midiInstrument = "oboe"
        \sopran
      }
      \new Staff {
        \set Staff.midiInstrument = "pan flute"
        \left
      }
      \new Staff {
        \set Staff.midiInstrument = "pan flute"
        \pedal
      }
      \new Staff {
        \set Staff.midiInstrument = "recorder"
        \transpose c c, \pedal
      }
    >>
  }
  \midi { \tempo 4 = 56 }
}
