\version "2.22.0"

scoreARhTwoHpdII = \relative c'' {
  s1 * 8 |
  \stemDown s1 * 4 | s2 s4 a4 |
  gis8 s8 s4 s2 |
  s1 * 6 |
  s8 s8 s4 s2 | s1 * 3 | s2 s4 dis'4 |
  s1 |
  <d a>8 s8 s4 s2 |
  <c g>8 s8 s4 s2 |
  s1 |
  s4 s8 <a f>8 <gis e>4 s8 <a f>8 |
  <b e,>8 s8 s2 gis4 |
  a8 r8 \tuplet 3/2 {r16 g f g f e f g a g f e f e d e d c} |
  s1 | s2. gis'4 |
  s1 | s1 * 6 |
  s2 r8 c, a b e s4. s2 |
  s1 * 5 | r8 d' c b c r16 d r c r b |
  g8 g a a b g a d, | e8 s8 s4 s2 |
  s1 * 11 | s4 s8 <g e>8 <c a fis>4 s8 <fis c>16. <fis a,>32 |
  <fis b,>8 s8 s4 s dis4 |
  s1 * 2 | s2 s4 dis,4 | e8 s8 s4 s2 |
  s1 * 8 |
  s2 s2 s2 s8 d4 cis8 |
  d8 bes' b cis d a d, e | a4 s8 a g4 r |
  r8 e16 f g bes a e s2 |
  s2 s8 s8 s4 | s2 s8 d'8 c b | a8 d c b a s8 s4 |
  s2 s8 s s4 |
  s2 s8 e' d cis | d8 r16 e r d r cis a8 s8 s4 |
  s1 * 3 | s1 |
  s1 * 4 | s8 a4 gis8 a s s4 |
  s1 |
  s1 | s2 s8 e16 fis g b a fis |
  g8 s8 s4 s2 |
  s8 gis[ a d] e s8 s4 |
  s8 a,[ d c]
  g4 s4 | s4 fis e d | e16 s s8 s4 s2 |
  s1 * 5 | r8 d'16 e f a g d e4 s |
  r16 a, e' f g bes a e <d a>4 s |
  s1 * 23 | s4 s8 <a f>8 <gis e>4 s8 <a f> |
  <b e,>8 s s4 s2 |
  s4 \tuplet 3/2 {r16 g f g f e f g a g f e f e d e d c} |
  s1 * 2 |
  s4
  <<
    \new Voice {\voiceFour s8. d'16~ d8 c d d}
    \new Voice {\voiceTwo s16 b8.~ b8 a b b}
  >> |
}