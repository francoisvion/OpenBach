\version "2.22.0"

scoreALhOneHpdII = \relative c' {
  s1 * 8 |
  r2 r8 a16 b c e d b |
  c8 s8 s4 s2 |
  s8 <a c>[ <b d> <cis e>] <d f> <c a'> <b d> <g b> |
  \voiceTwo c8[ f,~] f[ e~] e[ d~] d[ c~] |
  c8 b c gis a g f4 |
  % 5
  e8 s8 s4 s2 |
  s1 * 6 |
  s8 \oneVoice r8 r4 r8 e'16 fis g b a fis |
  \tuplet 3/2 {\once \undo \omit TupletNumber g16 fis e} s8 s4 s2 |
  s8 \tuplet 3/2 {b'16 c d d e f! f e d c b a a b c c d e e d c} |
  \tuplet 3/2 {b a g e' d e fis, g a d c d e, fis g c b c dis, e fis b a b} |
  \tuplet 3/2 {cis,16 b'a dis, b' a e b' a fis b a g fis e c' b a} b8 b, |
  % 9
  e8 r8 r4 r8 \tuplet 3/2 {e'16 f g cis, d e a, b cis} |
  d,8 r8 r4 r8 \tuplet 3/2 {d'16 e f b, c d g, a b} |
  c, 8 r8 r8 \voiceTwo c8 c4 \oneVoice r8 \voiceTwo c8 |
  c4 \oneVoice r8 \voiceTwo c8 c4 \oneVoice r4 |
  \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber b16 c d c b a b a gis a b c b a gis! a gis fis gis a b a gis fis} |
  \tuplet 3/2 {gis16 fis e b' a gis d' c b f'! e d} gis16.[ e32 a16. d,32] e8 e, |
  %15
  f4 r8 cis'8 \tuplet 3/2 {\once \undo \omit TupletNumber d16 e f e d cis d c b c b a} |
  b8 c b a gis a b gis |
  e4 r8 \voiceTwo d'8 c8. d16 e8 e, |
  %18
  a4 s s2 |
  s1 * 5 |
  s2 s4 \oneVoice c'16 e d b | c[ a c8 cis dis]
  r8 a,16[ b] c! e d b | c[ a] \voiceTwo c8 cis dis
  e8 s8 s4 |
  s8 g4 fis8 e \oneVoice r8 r \voiceTwo e8 |
  fis8 \oneVoice r8 r \voiceTwo fis8 gis \oneVoice r8 r \voiceTwo gis8 |
  \oneVoice <a e'>8 f'! \tuplet 3/2 {g,16 a b e d e} f,8 d' \tuplet 3/2 {e,16 f g c b c} |
  d,8 b' \tuplet 3/2 {c,16 d e fis g a} g,8 g' g, g' |
  g,8 g' g, g' g, g' g, g' |
  \tuplet 3/2 {c,16 a' g b, a' g c, a' g d a' g e a g b, a' g c, a' g d a' g} |
  \tuplet 3/2 {e16 a g f g e d e f b, c d g, a b c b c f, g a g f g} |
  %27
  c,8 s8 s4 s2 |
  s8 r8 r4 r8 c'16 d e g f d |
  e8[ <c e>8 <d f> <e g>] <f a> <d f> <e g> <fis a> |
  <g b>8 <e g> <fis a> <gis b> \tuplet 3/2 {a16 b c d c d b a g c b c} |
  \tuplet 3/2 {a16 g f b a b g f e a g a f e d} g16. c,32 a'16.[ c,32 e16. c32] |
  \tuplet 3/2 {f16 g a fis g a g a b gis a b a b c a b c b c d b c d} |
  s1 |
  s1 * 3 |
  s8 b16. a32 \tuplet 3/2 {g16 e fis gis a b a b c d c b c b a g a b} |
  \tuplet 3/2 {c16 b a b a g fis g a b a g a g fis e fis g a g fis g fis e} |
  \tuplet 3/2 {fis16 g a g fis e fis e dis e fis g fis e dis e dis cis dis e fis e dis cis} |
  \tuplet 3/2 {dis16 cis b fis' e dis a' g fis c'! b a} dis16. b32 <g e'>16. a32 b8 b, |
  %37
  s8 s s4 s2 |
  s1 * 3 |
  %40
  s1 * 5 |
  s2
  s8 \voiceTwo a16 b c e d b \tuplet 3/2 {c16 b a} d8 c b
  a8 s8 s4 |
  s8 f'!8[ g! cis,] d e f b,! |
  c8 \oneVoice c'16. bes32 \tuplet 3/2 {a16 g f g a bes a g f} bes16. a32 \tuplet 3/2 {g16 f e f g a} |
  \tuplet 3/2 {g16 f e} a16. g32 \tuplet 3/2 {f16 e d e f g f e d bes' a g} a8 a, |
  \oneVoice d8 r r4 r8 d16 e f a g e |
  \voiceTwo f4 r8 fis8 g4 \oneVoice r8 \voiceTwo g8 |
  cis,4 \oneVoice r8 \voiceTwo cis8 d c bes a |
  g8 c bes a g s8 s4 |
  s2 s8 \oneVoice \tuplet 3/2 {gis16 f'! e a, f' e b! f' e | c f e gis, f' e a, f' e b f' e c f e} s8 s4 |
  s2 s8 \voiceTwo a,8 b! cis |
  d8 a b! cis d \oneVoice \tuplet 3/2 {cis!16 bes' a d, bes' a e bes' a f bes a cis, bes' a d, bes' a e bes' a} s2 |
  s1 *3 |
  \tuplet 3/2 {f16 g a d c! d e, f g c bes c}
  \tuplet 3/2 {d,16 e f bes! a bes c, d e a g a | b,! a' g cis, a' g d a' g e a g f e d bes' a g}
  a8 a, d4 r8 r32 f32 d f s2 |
  \stemDown gis,32 b! d f \stemUp b! d b gis \stemNeutral e fis gis a s8 s2 |
  \voiceTwo a,8 r r4 r8 a16 b c e d b |
  c8 s8 s4 s8 f!8[ d e] a, \oneVoice r8 r \voiceTwo r32 c a c s2 |
  \oneVoice dis,32 fis a c \stemUp fis a fis dis! \stemDown b cis dis e \stemUp fis g a b c! a b c \stemDown fis,! g a b s4 |
  \oneVoice e,,8 r8 r4 r2 |
  r8 s8 s4 s2 |
  s8 e''16. d32 \tuplet 3/2 {c!16 b a b c d c b a} s8 s4 |
  s8 d16. c32 \tuplet 3/2 {\once \undo \omit TupletNumber b16 a g a b c}
  \tuplet 3/2 {b a g} s8 s4 |
  s8 \tuplet 3/2 {c16 d e a, g fis b c d gis, fis e a b c fis,! e d g a b} |
  cis,32[ e g] \change Staff = "right" cis[ e g e cis] \change Staff = "left" a32 b cis d s8 s2 |
  <a fis d c!>8 r8 r4 r8 r32 a fis! a d,[ fis] \stemUp a[ d a fis!] \stemDown d c! |
  \stemNeutral b4 r8 \voiceTwo a8 g r r d | d' d, d' d, e' c d d, |
  \oneVoice g'8 g, r g' g g, r g' |
  g8 g, r g' g g, g' g, |
  g'4 r
  \voiceTwo c,4 r | cis r d r |
  gis r a8[ f~] f[ e~]|
  e[ d~] d[ c~] c[ \oneVoice c'8 b a] |
  \tuplet 3/2 {gis16 a b} e,8 \tuplet 3/2 {c'16 d e} a,8 \tuplet 3/2 {fis16 g a dis, e fis b, cis dis! gis, a b} |
  \voiceTwo e,8 \tuplet 3/2 {gis16 a b} c,!8 \tuplet 3/2 {a'16 b c} d,8 \tuplet 3/2 {b'16 c d} e,8 \tuplet 3/2 {c'16 d e} |
  \oneVoice f,!8 \tuplet 3/2 {d'16 e f} gis,8 \tuplet 3/2 {d''16 e f b, c d gis, a b e, fis gis fis gis a} |
  \tuplet 3/2 {gis16 a b e d e a, b c \change Staff = "right" \voiceTwo fis e fis b, c d gis fis gis c, d e a gis a} |
  \tuplet 3/2 {d,16 e f! b a b c, d e a gis a b, c d gis! fis gis a, b c f e f} |
  \tuplet 3/2 {\change Staff = "left" g,!16 a b \change Staff = "right" e d e \change Staff = "left" f, g a d c d e, f g cis b! cis d, e f bes a bes} |
  \oneVoice \tuplet 3/2 {e,16 fis gis b! a b fis gis a b a b} gis!32 a b c s8 s s32 c b a |
  gis32 a b c s8 s8 c32 b a gis! a b c d s8 s8 e32 d c b |
  a32 b c d s8 s8 e32 d c b bes32 e cis d s8 s8 e32 d cis e |
  bes32 e cis d s8 s8 e32 d cis e a,32 cis d e s8 s8 e32 d cis! b |
  a32 cis d e s8 s8 e32 d cis d gis, a b c s8 s8 b32 a gis b |
  e,32 fis gis a s8 s8 b32 a gis b e, gis! a b s4.|
  s1 * 3 |
  a,4 r r8 a'16 b c e d b |
  \tuplet 3/2 {c16 e, fis gis a b c b a e' d c} s8 <g'! e cis a>8 <g e cis a> <g e cis a> |
  \voiceTwo d,8 r r4 \oneVoice r8 <f' d b g> <f d b g> <f d b g> |
  \voiceTwo c,8 r \oneVoice \tuplet 3/2 {a'16 g f e f g f e d cis d e d c b a b c} |
  <e b gis e>4 r8 \voiceTwo <c a e>8 \oneVoice <e b gis! e>4 r8 \voiceTwo <c a e>8 |
  \oneVoice <e b gis e>4 r8 \voiceTwo <c a e>8 \oneVoice <e b gis e>4 r |
  \tuplet 3/2 {b'16 c d c b a b a gis a b c b a gis! a gis fis gis a b a gis fis} |
  \tuplet 3/2 {gis16 fis e d e f b, c d gis, a b} c,16. c'32 f16. d32 e8 e, |
  cis'4 r8 a8 \tuplet 3/2 {\once \undo \omit TupletNumber d16 e f e d cis! d c b c b a} |
  \tuplet 3/2 {f'16 e d b d e f e d a d e f e d gis, d' e f e d a d e} |
  \tuplet 3/2 {f16 e d b d e f e d a d e f e d gis, d' e f e d a d e} |
  \tuplet 3/2 {f16 d b gis b gis}
  \voiceTwo e8 d' c8. a16 e'8 e, \stemNeutral |
  <a' e a,>1\fermata |
  s1 * 8 \bar "|." |
}
