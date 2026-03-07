\version "2.22.0"

scoreARhTwoHpdII = \relative c'' {
  s1 * 8 |
  \voiceTwo s1 * 4 | s2 s4 a4 |
  gis8 s8 s4 s2 |
  s1 * 7 |
  s1 * 3 |
  s2 s4 dis'!4 |
  s1 |
  s8 s8 s4 s2 |
  s8 s8 s4 s2 |
  s1 |
  s4 s8 <a f! d>8 s4 s8 <a f! d>8 |
  s8 s8 s2 gis4 |
  r4 \tuplet 3/2 {a16 g f g f e f g a g f e f e d e d c} |
  s1 | s2. gis'4 |
  s1 |
  s1 * 6 |
  s2 e8 c! a b s s4. s2 |
  s1 * 5 | c'8 d c b c r16 d r c r b |
  g8 g a a b g a d, | e8 s8 s4 s2 |
  s1 |
  s1 * 10 | s4 s8 <g e>8 <c a fis>4 s4 |
  s8 s8 s4 s dis4 |
  s1 * 2 | s2 s4 dis,!4 | e8 s8 s4 s2 |
  s1 * 5 |
  s1 * 3 |
  s2 s2 s2 s8 d4 cis8 |
  d8[ bes' b cis] d a d, e | a4 s8 a g4 r |
  r8 e16 f g bes a e s2 |
  s2 s8 s8 s4 |
  s2 s8 d'8 c b | a8 d c b a s s4 |
  s1 |
  s2 s8 e' d cis! | d8 r16 e r d r cis a8 s8 s4|
  s1 * 4 |
  s1 * 3 | s2 s2 s2 s8 a4 gis8 s s s4 s2 |
  s1 | s2 s8 e16 fis g b a fis |
  g8 s8 s4 s2 |
  s8 gis8[ a <d! b>] <e a,> s8 s4 |
  s8 a,8[ d c]
  g4 s4 |
  s4 fis4 e d | e8 s8 s4 s2 |
  s1 * 5 | r8 d'16 e f a! g d e4 r |
  r16 a, e' f g bes a e <d a>4 s |
  s1 * 18 |
  s2 \tuplet 3/2 {g,!16 f! e} s8 s4 |
  s2 \tuplet 3/2 {f16 e d} s8 s4 |
  s1 * 3 |
  s4 s8 <a' f! d>8 s4 s8 <a f! d> |
  s8 s s4 s2 |
  s4 \tuplet 3/2 {a16 g f g f e f g a g f e f e d e d c} |
  s1 * 2 |
  s4
  <<
    \new Voice {\voiceFour s8. d'16~ d8[ c]}
    \new Voice {\voiceTwo s16 b8.~ b8[ a]}
  >>
  <d b>8 <d b> |
}