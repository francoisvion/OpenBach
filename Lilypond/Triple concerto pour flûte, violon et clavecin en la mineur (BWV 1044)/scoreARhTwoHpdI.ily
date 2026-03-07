\version "2.22.0"

scoreARhTwoHpdI= \relative c'' {
  \voiceTwo
  \tiny
  s1 * 2 | s2 s8 e,4.~ | e8 s s4 s8 e4.~ |
  e8 <b' g~> <a g>4 <a f>8 <a f~> <g f>4 |
  e8 e a2 gis8 b | s1 * 2 |
  \normalsize
  s1 * 5 |
  \tiny
  s2 s8 e,4.~ | e8 s8 s4 s8 a b c |
  \tuplet 3/2 {\omit TupletNumber gis16 s s} s8 s4 s2
  \normalsize
  s1 |
  \tiny
  s4 a2 gis8 b |
  \normalsize
  s1 * 13
  s4 \tuplet 3/2 {\once \undo \omit TupletNumber r16 g f g f e f g a g f e f e d e d c} |
  s1 | s2 s4 gis'!4 | s2
  \tiny
  s8 a,4. | a8 s s4 s2 | s1 | s4 f'4 e8 s8 s4 |
  s4 a4 g2 | f4 f s2 |
  \normalsize
  s1 * 8 |
  r8 d' c b c r16 d~ d c8 b16 | s1 * 3 |
  <c c,>8 s s s s2 |
  s1 * 14 |
  \tiny
  s4 a2 gis8 b | e,8 a4 dis,8 e g4 cis,8 |
  dis8 fis e dis b b4 a8 | b8 r e dis e2~ |
  e2 cis4. ais8 | dis8 s8 s4 s2 |
  \normalsize
  s1 * 4 |
  s2 s4 s8 cis8 | s1 * 5 |
  a'8 e fis gis a s8 s4 | s1 * 2 |
  d8 r16 e r d r cis s2 | s1 * 11 |
  <g e b>8 \voiceOne \change Staff = "left" e,16 fis g b a fis g e g b \voiceTwo \change Staff = "right" \tuplet 3/2 {\once \undo \omit TupletNumber e16 fis! g fis e dis} |
  s1 | s8 gis8 a16.[ c32 d16. b32] s2 |
  s8 a8 g16.[ b32 c16. a32] s2 |
  r8 r16 g16 fis8.f16 e8. es16 d8. d16 |
  s1 * 33 | s4 \tuplet 3/2 {\once \undo \omit TupletNumber r16 g f g f e f g a g f e f e d e d c!} |
  s1 * 3 |
  \tiny
  s1 * 2 | s2 s8 e4.~ | e8 s s4 s8 e4.~ |
  e8 <b' g~> <a g>4 <a f>8 <a f~> <g f>4 |
  e8 e a2 gis8 b | s1 * 3 |
  \normalsize
  \bar "|."
}