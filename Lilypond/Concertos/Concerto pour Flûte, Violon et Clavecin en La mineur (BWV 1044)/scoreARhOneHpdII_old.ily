\version "2.22.0"

scoreARhOneHpdII = \relative c'' {
  s1 * 8 |
  r8^\markup{\bracket 1} a16 b c e d b c8 <a c e>[ <a e' a> <b e gis>] |
  <a e' a>8 s8 s4 s2 |
  s8^\markup{\bracket 2} \tuplet 3/2 {e'16 f g g a bes bes a g f e d d e f f g a a g f} |
  \tuplet 3/2 {e16 d c a' g a b, c d g f g a, b c f e f gis, a b e d e} |
  \tuplet 3/2 {fis,16 e' d gis, e' d a e' d b e d c b a f' g e} \stemUp d8.^\trill e16 |
  % 5
  e8 s8 s4 s2 | s1 * 6 |
  s8^\markup{\bracket 5} \stemNeutral e,16[ fis] g b a fis g8 <e g b>[ <e b' e> <fis b dis>] |
  <e b' e>8 s8 s4 s2 |
  s8^\markup{\bracket 6} <b' d g>[ <a d fis> <b d gis>] <c e a> <c e a> <g c e> <a c fis> |
  <b d g>8 \tuplet 3/2 {c16 b c} a'8 \tuplet 3/2 {b,16 a b} g'8 \tuplet 3/2 {a,16 g a} fis'8 \tuplet 3/2 {g,16 fis g} |
  \tuplet 3/2 {e'16 dis cis fis dis b g' e cis a' fis dis b' a g a b c} \stemUp fis,8.^\trill e16 |
  % 9
  \stemNeutral \tuplet 3/2 {e16 b' a g a b e, f g cis, d e a, b cis} <a cis e g>8 <a cis e g> <a cis e g> |
  \tuplet 3/2 {\stemUp f'16 a g \stemNeutral f16 g a d, e f b, c d g, a b} <g b d f>8 <g b d f> <g b d f> |
  \tuplet 3/2 {\stemUp e'16 g, a \stemNeutral b16 c d e f g f e d e d c d e f e d c d c b} |
  \tuplet 3/2 {c16 d e d c b c b a b c d c b a b a gis a gis fis} d'16. d32 |
  <d, gis b d>4 r8 \stemUp d'16. d32 d4 r8 d16. d32 |
  \tuplet 3/2 {d16 e, fis \stemNeutral gis16 a b b c d d e f f e d} e16.\prall f32 b,8.^\trill a16 |
  %15
  \tuplet 3/2 {\stemUp a16 b c b a gis} \tieUp a4~ a2 \tieNeutral \stemNeutral |
  \tuplet 3/2 {d,16 e f gis f e d e f a f e d e f b f e d e f d' f, e} |
  \tuplet 3/2 {d16 f gis b d b gis b d f e d} e8. f16 b,8.^\trill a16 |
  %35
  <c, e a>8 s8 s4 s2 | s1 * 5 |
  s2 s8^\markup{\bracket 18} r8 r4 | r8^\markup {\bracket 18½} e16 fis g b a fis
  g16 e f8[ fis gis] | a a8[ e fis~]
  \tuplet 3/2 {fis16 s s} s8 s4 |
  \tuplet 3/2 {s16^\markup{\bracket 20} e dis e fis g a b c b c a g fis e fis g a b c d c d b} |
  \tuplet 3/2 {a16 gis fis gis a b c d e d e c b a gis a b c d e f e f d} |
  \tuplet 3/2 {c16 d e a g a} b,8 g' \tuplet 3/2 {a,16 b c f e f} g,8 e'8 |
  \tuplet 3/2 {f,16 g a d c d} e,8 c' \tuplet 3/2 {d,16 e f b a b e, f g c b c} |
  \tuplet 3/2 {f,16 g a d c d g, a b e d e a, b c f e f b, c d g f g} |
  \stemUp e8 f e d c <f a>[ <e g> <d f>] |
  <c e>8 <b d>16 <c e> <d f>8 <d f> <d f> <c e> <c d> <b d> |
  %27
  <g c>8 s8 s4 s2 |
  s8^\markup{\bracket 27} \stemNeutral c,16[ d] e g f d e8 <c e g>[ <c g' c> <d g b>] |
  <c g' c>8 \tuplet 3/2 {g'16 a bes bes c d d c bes a f g a b c c d e e d c} |
  \tuplet 3/2 {b16 g a b c d d e f f e d c b a f' e f g, a b e d e} |
  \tuplet 3/2 {f,16 g a d c d e, f g c b c d, c' b e, c' b f c' b g c bes} |
  \tuplet 3/2 {a16 g f d' e c b a g e' f d c b a f' g e d c b g' a f} |
  s1 |
  s1 | s1 * 2 |
  s8^\markup{\bracket 33} \tuplet 3/2 {dis16 cis b e d c b c d c b a b a gis a b c b a g} |
  \tuplet 3/2 {a16 g fis g a b a g fis g fis e fis g a g fis e fis e dis} c'16. c32 |
  <dis, a' c>4 r8 \stemUp b'16. b32 dis4 r8 a'16. a32 |
  \tuplet 3/2 {a16 b, cis \stemNeutral dis16 e fis fis g a a b c c b a} b16. c32 \stemUp fis,8.^\trill e16 |
  %37
  e4.^\trill~ \tuplet 3/2 {e16 fis gis a b c b a gis a g fis g fis e} |
  \stemNeutral fis8[ a16. g32] fis8\prall e dis[ fis16. e32] dis8[ e16. fis32] |
  b,2\trill~ \tuplet 3/2 {b16 e dis e b c} fis,8.^\trill e16 |
  %40
  e8 s8 s4 s2 | s1 * 4 |
  s2 s8^\markup{\bracket 40} r8 r4 | r8^\markup{\bracket 40½} e16 fis g b a fis
  \tuplet 3/2 {g16 fis e} c'8 fis, gis a a16 b c e d b
  \tuplet 3/2 {c16 b a} s8 s4 |
  s8^\markup{\bracket 42} a'16. g32 \tuplet 3/2 {f16 e d e f g f e d} g16. f32 \tuplet 3/2 {e16 d c d e f} |
  \tuplet 3/2 {e16 d c e f g f g a e f g f g a d, e f e f g d e f} |
  \tuplet 3/2 {e16 f g cis, d e d e f cis d e} d8 d,16 e f a g e |
  \stemUp f16 a d e f a g e f8 f b, cis |
  d4 r8 d8~ d16 cis d e f a g d |
  e4 r4 \stemNeutral \tuplet 3/2 {f,16 e' d fis, es' d g, es' d a es' d} |
  \tuplet 3/2 {bes16 es d fis, es' d g, es' d a es' d bes es d} s8 s4 |
  s2 s8^\markup{\bracket 48½} \stemUp e8 fis gis |
  a8^\markup{\bracket 49} e fis gis a s8 s4 |
  s2 s8^\markup{\bracket 49½} \stemNeutral \tuplet 3/2 {cis,16 bes' a d, bes' a e bes' a | f^\markup{\bracket 50} bes a cis, bes' a d, bes' a e bes' a f bes a} \stemUp g8 f e |
  d <bes' g>[ <a f> <g e>] <a d,> s8 s4 |
  s1 * 3 |
  s8^\markup{\bracket 51½} \stemNeutral \tuplet 3/2 {bes,16 a bes} g'8 \tuplet 3/2 {a,16 g a}
  f'8^\markup{\bracket 52} \tuplet 3/2 {g,16 f g} e'8 \tuplet 3/2 {f,16 e f d' cis b e cis a f' d b g' e cis}
  \tuplet 3/2 {a'16 g f e f g} cis,8.\trill d16 | d16^\markup{\bracket 53½} c32 bes a g f e d a' f d a s16. s2 |
  s4.^\markup{\bracket 54} b32 c d e f d e f \stemDown b, c d e \stemUp fis gis a b c d e b |
  \stemNeutral <c a e>8 r r4 r2 |
  r8 \stemUp a16 b c e d b s2 |
  c32^\markup{\bracket 56½} a g f \stemNeutral e d c b \stemUp a[ e' c a \change Staff = "left" e] s16. s2 |
  \change Staff = "right" \stemNeutral s2.^\markup{\bracket 57} cis'32 dis e fis g a b fis |
  <g e b>8 e'16[ fis] g b a fis g8 \stemUp b,8 cis dis |
  e8 s8 s4 s2 |
  s8^\markup{\bracket 59} e8[ fis gis] a s8 s4 |
  s8^\markup{\bracket 59½} fis[ g f~]
  f s8 s4 |
  s8^\markup{\bracket 60} e~ e[ d~] d[ c~] c[ b~] |
  b16 r16 \stemNeutral e,32 g e cis s8 e32 fis g a g e fis g \stemDown cis, d e fis \stemUp g a b cis d e fis g |
  \stemNeutral a32[ fis g a d, e fis d] a[ d cis b a g fis e] d[ e fis cis d] s16. s4 |
  r8 g16 a b d c a b8 r r fis |
  g8 fis g fis g4 r4 |
  \stemNeutral \tuplet 3/2 {b,16 c d g fis g c, d e a g a d, e fis b a b e, fis g c b c} |
  \tuplet 3/2 {fis,16 g a c b c fis, a c e d c b a g d' c b f' e d as' g f} |
  \stemUp b4 r bes 4 r | a4 r f r4 |
  \stemNeutral r16 e, b' c d f e b \tuplet 3/2 {c16 d e a g a b, c d g f g} |
  \tuplet 3/2 {a,16 b c f e f gis, a b e d e fis, gis a d c d f, gis a d c d} |
  e,8 \tuplet 3/2 {gis16 a b} e8 \tuplet 3/2 {c16 d e} a8 \tuplet 3/2 {fis,16 g a dis, e fis b, c d} |
  \change Staff = "left" \stemUp \tuplet 3/2 {gis,16 a b} e,8 \tuplet 3/2 {a16 b c} fis,8 \tuplet 3/2 {b16 c d} gis,8 \tuplet 3/2 {c16 d e} a,8 |
  \change Staff = "right" \stemNeutral \tuplet 3/2 {d16 e f} b,8 \tuplet 3/2 {b'16 c d} gis,8 \tuplet 3/2 {d'16 e f} b,8 \tuplet 3/2 {gis'16 a b} d,16. d32 |
  \tieUp d1\trill~ | \stemUp d2~ \tuplet 3/2 {d16 \tieNeutral e f b a b c, d e a g a} |
  \tuplet 3/2 {b,16 c d g f g a, b c f e f g, a bes e d e f, g a d cis d} |
  \stemNeutral \tuplet 3/2 {gis,16 a b d c d a b c d c d} s8 d,32 e f d b' gis f e s8 |
  s8^\markup{\bracket 78} d32 e f d b' f e d s8 s8 e32 fis gis e c' a g f s8 |
  s8^\markup{\bracket 79} e32 fis gis e c' a g f s8 s e32 f g e cis' bes g f s8 |
  s8^\markup{\bracket 80} e32 f g e cis' bes g f s8 s8 f32 g a f d' a g f s8 |
  s8^\markup{\bracket 81} f32 g a f d' a g f s8 s8 d32 e f d b' f d c s8 |
  s8^\markup{\bracket 83} b32 c d b gis' f d c s8
  s8^\markup{\bracket 84½} s s s |
  s1 |
  s1 | r8^\markup{\bracket 86} a'16 b c e d b c8 <e c a>[ <a e a,> <gis e b>] |
  <a e a,>8 s8 s4 s2 |
  s8^\markup{\bracket 87} r8 r4 \tuplet 3/2 {g,16 f e bes' a g cis b a e' d cis} |
  <f d a>8 r r4 \tuplet 3/2 {f,16 e d as' g f b a g d' c b} |
  <e c g>8 r8 r e \tuplet 3/2 {a16 g f e f g f e d c d e} |
  \tuplet 3/2 {d16 e f e d c d c b c d e d c b c b a b c d c b a} |
  \tuplet 3/2 {b16 a gis a b c b a gis a gis fis gis a b a gis fis gis fis e} d'16. d32 |
  <d b gis e>4 r8 \stemUp d16. d32 d4 r8 d16. d32 |
  d8 \stemNeutral \tuplet 3/2 {b16 a gis d' c b f' e d b' a gis} a16. d,32 c8 b16\prall a |
  \tuplet 3/2 {a16 g a bes a g} \tieUp a4~ a2 \tieNeutral |
  \tuplet 3/2 {d,16 e f gis f e d e f a f e d e f b f e d e f a f e} |
  \tuplet 3/2 {d16 e f gis f e d e f a f e d e f b f e d e f a f e} |
  \tuplet 3/2 {d16 f gis b d b}
  \stemUp \tuplet 3/2 {gis16 b d f e d} e8. a16~ a a8 gis16 |
  <a cis, a>1\fermata |
  s1 * 8 \bar "|."
}