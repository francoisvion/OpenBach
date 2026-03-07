\version "2.22.0"

scoreCLhTwoHpdI = \relative c'' {
  \voiceTwo
  s1 | \change Staff = "right" r2 g | f2 e~ | e2. dis4 |
  e8 \change Staff = "left" \voiceOne b a g \voiceThree fis2 |
  g4 \tiny \change Staff = "right" \voiceTwo <c' a>2 <b g>4~ |
  <b g>4 <a fis>2 g8 fis | e1~ | e2 f4 e |
  \change Staff = "left" \voiceOne d4 c b2 |
  a4 \change Staff = "right" \voiceTwo f'2 e4~ | e4 d2 c8 b | c8 d e2 e4 | f2 fis |
  g4 r g2~ | g4 fis2. | g2 <gis e> | <a f>2 b, |
  e4 <f' d>2 <e c>4~ | <e c>4 <d b> d2 | c4 cis d <e a,>~ |
  <e a,>4 a, <d gis,> <c a> | b2 r4 \voiceThree \tieDown b4~ | b4 a2 gis4 |
  \normalsize
  \change Staff = "left" \voiceOne
  \tuplet 3/2 {
    \once \undo \omit TupletNumber a,8 \change Staff = "right" \voiceTwo c e \change Staff = "left" \voiceOne gis, \change Staff = "right" \voiceTwo d' f \change Staff = "left" \voiceOne a, \change Staff = "right" \voiceTwo c e \change Staff = "left" \voiceOne e, b' d |
    \oneVoice a8 b c d e f g,! a b c d e |
    f,8 g a b c d e, gis b d b gis |
    e8 a b c b a dis c! b a g fis |
  }
  g8 r fis r g r dis r | \tuplet 3/2 {\once \undo \omit TupletNumber g8 fis e} c'2 b4~ |
  b4 a~ \tuplet 3/2 {a8 fis dis b dis fis} |
  g8 r e r \tuplet 3/2 {\once \undo \omit TupletNumber b8 c d! e fis gis} |
  \voiceTwo a8 r e r c r e r | a8 r b r c4~
  \footnote "*)" #'(0 . -5) \markup {"*)" \dotted_rhythm_footnote_C} c8.
  b16 |
  a4~ \tuplet 3/2 {\once \undo \omit TupletNumber a8 gis fis} gis4 \tuplet 3/2 {\once \undo \omit TupletNumber r8 gis e} |
  a8 r fis r b, r r4 |
  \change Staff = "right" \voiceTwo
  \tiny
  s4 a''2 g8 fis | e4 <c' a>2 <b g>4~ |
  <b g>4 <a fis>~ <a fis> r4 |
  \normalsize
  \change Staff = "left" \voiceOne
  s1 | s2 \tuplet 3/2 {\once \undo \omit TupletNumber e,8 f g a b! cis} |
  d4
  \change Staff = "right" \voiceTwo
  \tiny
  s4 s2 | s1 | d4 g s2 |
  \normalsize
  \change Staff = "left" \voiceOne
  s1 | s2 \tuplet 3/2 {\once \undo \omit TupletNumber d,8 e f g a! b} |
  \oneVoice
  \tuplet 3/2 {
    c8 g e a f c g'e c f d g, |
    c8 e g f a c e, g c d,f b |
  }
  c,4 c'2
  \tuplet 3/2 {
    b8 c \change Staff = "right" d | \voiceTwo e8 fis g fis g a
  }
  g8 r a r | g8 r fis r \change Staff = "left" \voiceOne d8 r c r |
  d8 r a r b r a r | b8 r fis r s2 | s2 b8 r c r |
  b8 r s4 \tuplet 3/2 {\once \undo \omit TupletNumber b8 a b} c4~ |
  \tuplet 3/2 {c8 b a} b4~ \tuplet 3/2 {b8 a g} a4~ |
  \tuplet 3/2 {a8 s s} s4 s2 | s1 * 37 |
  d,8 r cis r d r <cis ais> r |
  \tuplet 3/2 {
    \once \undo \omit TupletNumber \tiny d8 e fis g a! b \normalsize cis, d e fis! g a |
    b,8 cis d e fis g
  }
  <cis, ais>4 r |
  <d b fis>4 r <fis a,!> s | <e b>4 r <f! b,> r |
  e4 r e r | <gis d>4 r <a e> r | <a fis>4 r <a e> r |
  <a fis>4 r b r | s1 * 4 | c8 r b r c r gis r |
  a4 s4 s2 | s1 * 6 | <c, a>8 r r4 <es c>8 r r4 |
  <f b,!>8 r r4 <fis c>8 r r4 | <g d>8 r \tuplet 3/2 {r8 s s} s2 |
  s2 \tuplet 3/2 {\once \undo \omit TupletNumber r8 d' es f! es d} | e4
  \tiny
  s4 s2 | s1 |
  \change Staff = "right" \voiceThree s4 d'8 c \tieDown d2~ |
  d4 c8 b a2 | s1 * 3 | \change Staff = "left" \voiceOne s4 e2 d4 |
  s1 * 4 | c4 d e d | cis4 cis d e | d4 e f e |
  dis4 dis e fis | e4 r r dis | e2. fis4 |
  g4 r \change Staff = "right" \voiceThree d'2 |
  c2 b~ | b2 s2 | s1 * 3 |
  \normalsize
  \change Staff = "left" \voiceOne
  r4 e,, f d | \voiceThree e2 s | s1 * 22 |
  <f d>8 r r4 <as f>8 r r4 | <bes e,>8 r r4 <b f>8 r r4 |
  <c g>8 r r4 s2 |
  s1 * 48 |
  s2. <a fis>4\arpeggio | <c a>8 r r4 <d b>2 |
  a4 s2. | s4 a \change Staff = "right" \voiceTwo e'2 | f2 \tieDashed <gis e>~ |
  e2. \tieSolid dis4 | e4
  \tiny
  \change Staff = "right" \voiceTwo s4 s2 | s4 <c' a>2 <b g>4~ |
  <b g>4 <a fis>2 g8 fis | e1~ | e2 f4 e |
  \change Staff = "left" \voiceOne d4 c b2 |
  a4 \change Staff = "right" \voiceTwo f'2 e4~ | e4 d2 c8 b | c8 d e2 e4 | f2 fis |
  g4 r g2~ | g4 fis2. | g2 <gis e> | <a f>2 b, |
  e4 <f' d>2 <e c>4~ | <e c>4 <d b> d2 | c4 cis d <e a,>~ |
  <e a,>4 a, <d gis,> <c a> | b2 r4 \voiceThree \tieDown b4~ |
  b4 a2 gis4 | s1 |
  \normalsize
  \bar "|."
}