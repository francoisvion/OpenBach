\version "2.25.80"

\paper {
  page-top-space = #0.0
  indent = 10
  line-width = 18.0\cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

#(set-global-staff-size 19)

\header {
  title = "Prélude n° 5 en do majeur"
  subtitle = "5 petits préludes"
  opus = "BWV 943"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}

sopranoOne =   \relative c'' {
  r8 c8 [b a g f]
  e8 [f g c, b f']
  e4. d8 [e f]
  g4 e f8 [g16 a]
  g8 [g' f e d c]
  b8 [c d g, fis c']
  b4. a8 [b c]
  d4 b c8 [d16 e]
  d2.
  d8 [d c b a b]
  c4. e8 [d c]
  b2.~
  b8 [b a b c g]
  fis2 g4~
  g2 fis4
  g8 [a b cis d e]
  f2.~
  f8 [f e f g d]
  cis4 d8 [e] a,4
  d2 cis4
  d2.~
  d8 [d c b a g]
  fis8 [g] a2~
  a8 [c b a g fis]
  e4. g8 c4~
  c4 r8 e8 [d c]
  b8 [c b a b c]
  b8[g a b c d]
  e8 [d c a' bes g]
  a2.~
  a4 g8 [f e f]
  g2.~
  g4 f8 [e d e]
  f2.~
  f2.~
  f4 e d~
  d4 r8 g8 c,4
  r8 c8 f2~
  f4 e8 [d c bes]
  a4 b8 [c d b]
  g4. g8 [c bes]
  a8 [g] f2~
  f8 [f e d] e4~
  e8 [e d e f c]
  b4 c2~
  c4 b2
  c4 r4 r4
  r1*3/4
  r8 g'8 [a b c d]
  e8 [d c g' a f]
  b4. c8 f,4~
  f8 [g] d4. c8
  c8 [b a g f e]
  d8 [e f c b f']
  e2.
  d8 [e <d f> <e g> <f a> b]
  c2 r8 g8
  r8 e8 g8 b8 <e, g c>4 \fermata \fine
}

sopranoTwo = \relative c'' {
  s2.*8
  r8 c8 [b a g f]
  e2 a4~
  a8 [g] fis2
  r8 a8 [g f e d]
  e2.~
  e8 [e d c b c]
  d8 [e a, b c d]
  b4 r8 a'8 [b cis]
  d4. c8 [bes a]
  g2.~
  g2 f8 [g]
  a8 [bes e, f g a]
  fis2 g4
  a4 r4 r4
  r4 r8 d,8 [c e]
  d2.~
  d8 [d c b a g']
  fis8 [g a fis g a]
  g2 fis4
  g4 r4 r4
  r2.
  r4 c4 f
  d2.~
  d4 c8 [b a b]
  c2.~
  c8 [e d c b a]
  b2 a4
  g4 c2~
  c8 [a] b4~ b8 [b]
  a4 r8a8 [d c]
  b8 [a] g2~
  g4 f2~
  f4 e2~
  e4~ e8 [e d c]
  b4 r8 g8 [c bes]
  a2.
  g4. f8 [g a]
  d,8 [e f a g f]
  e8 [g a b c d]
  e8 [d c g' a f]
  g2.~
  g4 c2
  f4. e8 d4~
  d8 [e] b2
  r4 f,4 a
  f4~ <d f>2
  r8 d'8 [c bes a g]
  f8 [g a e d as']
  f'8 [f e d] e4]
  c2~ c4 \fine
}

soprano = << \sopranoOne \\ \sopranoTwo>>

bass = \relative c' {
  R1*3/4
  R1*3/4
  r8 c8 [b a g f]
  e8 [f g c, b f']
  c4 c' fis,
  g4 b d
  g,8 [g' fis e d c]
  b8 [c d g, fis c']
  b4 g b
  c8 [b a g fis e]
  d8 [e d c b a]
  g4 r8 g'8 [a b]
  c8 [d c b] a4
  d4 d, e
  c4 d d,
  g4 r8 g'8 [f e]
  d8 [d, e f g a]
  bes8 [c bes a g bes]
  a8 [a' b cis d e]
  f8 [g,] a4 a,
  d8 [d' c b a g]
  fis8 [g a d, c e]
  a,8 [d c b a g]
  fis4 g8 [a] b4
  c8 [b' a g fis e]
  d8 [e fis c b d]
  g,8 [c] d4 d,
  g4 r8 g'8 [a b]
  c8 [d e f g e]
  f8 [g f e d c]
  b8 [c b a g f]
  e8 [f e d c b]
  a8 [bes a g f e]
  d4 e f
  g8 [g' a b c d] \clef treble
  e8 [d c g' a fis]
  g4. f8 [e g]
  f8 [e d c b a]
  g4 c8 [d e c]
  f8 [e d e d c] \clef bass
  b8 [g c bes a g]
  f8 [e] d4 f
  g8 [g, c bes a g]
  f2.~
  f8 [f e d e f]
  g2.
  c,2 r4
  r8 g'8 [a b c d]
  e8 [d c g' a f]
  g8 [f] e4 e'
  d8 [d, c b a g]
  c4 g' g,
  c2.~
  c2.
  c2.
  c2.~
  <c g'>2.~
  <c g'>2 c,4 \fermata \fine
}

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key c \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key c \major \time 3/4 \bass }
    >>
    \layout{}
    \midi {}
}