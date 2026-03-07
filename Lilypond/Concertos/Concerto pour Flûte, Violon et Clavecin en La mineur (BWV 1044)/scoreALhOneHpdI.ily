\version "2.22.0"

scoreALhOneHpdI = \relative c' {
  a,4 r r8 a' c, e | a,4 r r8 a'16 b c e d b |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a)} r8 r4 r8 c gis a |
  e8 r r4 r8 c\p gis a |
  e8[
  \tag #'parts {
    \footnote "*)" #'(0 . 0.01) \markup {"*)" \dotted_rhythm_footnote_A} e''16.\f
  }
  \tag #'score {
    e16.\f^"*)"
  }
  d32] cis8 a d,[ d'16. c32] b8 g |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) a( g fis) fis( g a) a( b c) b( a gis) gis( fis e) e( fis gis) gis( a b)} |
  a8 d, d d d, d' c b | c8 d e e, f d e e |
  a4 r4 r8 a16 b c e d b |
  <a' e c>8 r r4 r8 a16 b \tuplet 3/2 {\once \undo \omit TupletNumber c16 d e d c b} |
  c8 r16
  \voiceTwo a16 b8 cis d c b g |
  c8 <d f,>4 <c e,>8~ <c e,>8 <b d,>4 <a c,>8~ |
  <a c,>8[ b,] \oneVoice <e c>8 <b gis> \voiceTwo a8. g16 f4
  \oneVoice <e' e,>8 r r4 r8 c'8 gis a | e8 r r4 r8 c8 gis a |
  e8[ e'16. fis32] gis8 e a,[ a'16. b32] cis8 a |
  d8[ d,16. e32] fis8 d g,[ g'16. a32] b8 g |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) a( g fis) fis( g a) a( b c) b( a gis) gis( fis e) e( fis gis) gis( a b)} |
  a8 a, a a a a' g fis | g8 a b b, c a b b |
  e,8 r8 r4 r8 e'16 fis g b a fis |
  \tuplet 3/2 {g16 fis e} r8 r4 r8 \clef G e'16 fis \tuplet 3/2 {\once \undo \omit TupletNumber g16 a b a g fis} |
  \tuplet 3/2 {gis16 e b \clef bass e, b' c d e f! f e d c b a a b c c d e e d c} |
  \tuplet 3/2 {b a g e' d e fis, g a d c d e, fis g c b c dis, e fis b a b} |
  \tuplet 3/2 {cis,16 b'a dis, b' a e b' a fis b a g fis e a b c!} b8 b, |
  % 9
  e8 e,8 r4 r8 \tuplet 3/2 {\clef G e''16 f g cis, d e \clef bass a, b cis} |
  d,8 r8 r4 r8 \tuplet 3/2 {d'16 e f b, c d g, a b} |
  c, 8 r8 r8 <b' g f d c>16. <b g f d c>32 <c g c,>8 r8 r8 <b g fis c>16. <b g fis c>32 |
  <a e c>8 r r8 <gis f d c>16. <gis f d c>32 <a e c>8 r r8 \tuplet 3/2 {\once \undo \omit TupletNumber r16 b, a} |
  \tuplet 3/2 {b16 c d c b a b a gis a b c b a gis a gis fis gis a b a gis fis} |
  \tuplet 3/2 {gis16 fis e b' a gis d' c b f'! e d gis a b c b a} e'8 e, |
  %15
  f8 f, r8 \tuplet 3/2 {a16 b cis d e f e d cis d c b c b a} |
  b8[ d16. c32] b8\prall a gis[ gis'16. a32] b8 gis |
  e8 e, r8 \voiceTwo b'8 c8. d16 e8 e, |
  \oneVoice a8 r r4 r8 f' cis d | a8 r r4 r2 |
  r8 a'16. b32 cis8 a d[ d,16. e32] fis8 d | g,8[ g'16. a32] b8 g c8[ c,16. d32] e8 c |
  \tuplet 3/2 {\once \undo \omit TupletNumber f16( e d) d( cis b) b( cis d) d( e f) e( d cis) cis( b a) a( b cis) cis( d e)} |
  d8 d, d d d d' c b |
  c8 d e e, \voiceTwo f8 d e e |
  a8 r r4 r8 a16. b32 \tuplet 3/2 {\once \undo \omit TupletNumber c16 d! e d c b} |
  \tuplet 3/2 {c16 b a c b a b a g fis e' dis}
  <<
    {e8 s8 s4}
    \new Voice {\tupletSpan 8 \voiceTwo r8 e,16. fis32 \tuplet 3/2 {g16 a b \once \omit TupletNumber a g fis} }
  >>
  b8 g'4 fis8 e4 \oneVoice r8 <gis e>8 | <a fis>8 r \voiceTwo r \oneVoice <a fis> <b gis> r r <b gis>
  \oneVoice a8 f' \tuplet 3/2 {g,!16 a b e d e} f,8 d' \tuplet 3/2 {e,16 f g c b c} |
  d,8 b' \tuplet 3/2 {c,16 d e a g a} g,8 g' g, g' |
  g,8 g' g, g' g, g' g, g' |
  \tuplet 3/2 {\once \undo \omit TupletNumber c,16 a' g b, a' g c, a' g d a' g e a g b, a' g c, a' g d a' g} |
  \tuplet 3/2 {e16 a g f g e d e f b, c d g, a b c b c f, g a g f g} |
  c,8 r8 r4 r8 c''8 e, g | c,8 r8 r4 r8 c16 d e g f d |
  e8 c d e f d e fis |
  g8 e fis gis \tuplet 3/2 {a16 b c d c d b a g c b c} |
  \tuplet 3/2 {a16 g f b a b g f e a g a f g a g f g e g e c d e} |
  \tuplet 3/2 {f16 g a fis a d g, a b gis b e a, b c a c f! b, c d b d g!} |
  c,2(\trill cis2)\trill | d2(\trill dis)\trill |
  \clef G \tuplet 3/2 {e16 fis g a g a fis e d g fis g e dis e fis e fis \clef bass dis cis b e dis e} |
  \tuplet 3/2 {cis16 b a d c d b a g c b c a c b a g fis fis g a a b c} |
  b16.[ b,32 b'16. a32] \tuplet 3/2 {\once \undo \omit TupletNumber g16 e fis gis a b a b c d c b c b a gis a b} |
  \tuplet 3/2 {c16 b a b a g! fis g a b a g a g fis e fis g a g fis g fis e} |
  \tuplet 3/2 {fis16 g a g fis e fis e dis e fis g fis e dis e dis cis dis e fis e dis cis} |
  \tuplet 3/2 {dis16 cis b fis' e dis a' g fis c'! b a} dis16.[ b32 e16. a,32] b8[ b,16. b'32] |
  %37
  \clef G \tuplet 3/2 {\once \undo \omit TupletNumber e16 fis g fis16 e dis e d c d c b c d e \clef bass d c b c b a b a g} |
  \tuplet 3/2 {a16 b c dis, c' b a b c e, c' b a b c fis, c' b a b c g c b} |
  \tuplet 3/2 {a b dis \clef G fis a fis dis fis dis \clef bass b dis b g b a g fis e} b'8 b,16 b' |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) a( g fis) fis( g a) a( b c) b( a gis) gis( fis e) e( fis gis) gis( a b)} |
  \tuplet 3/2 {a16( g! fis) fis( e dis) dis( e fis) fis( g a) g( fis e) e( dis cis) cis( dis e) e( fis g)} |
  fis8 a,\paren\f b c dis, a'' g fis | g8 a b a gis e fis gis | a8 b c b ais fis16 gis ais8 fis |
  b8 a16 g a8 dis, \voiceTwo e8 a, b b, |
  e r r4 \oneVoice r8 a16 b c e d b |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) f'( e d) c( b a) e'( d e)} a,8 f c e |
  \voiceTwo a8 f'8 g cis, d[ e16. f32] \oneVoice g8 g,
  c8[ c'16.\mordent bes32] \tuplet 3/2 {\once \undo \omit TupletNumber a16 g f g a bes a g f} bes16.\mordent a32 \tuplet 3/2 {\once \undo \omit TupletNumber g16 f e f g a} |
  \tuplet 3/2 {g16 f e} a16.\mordent g32 \tuplet 3/2 {\once \undo \omit TupletNumber f16 e d e f g f e d bes' a g} a8 a, |
  d8 r r4 r8 d16 e f a g e |
  \tuplet 3/2 {\once \undo \omit TupletNumber f16( e d)} r8 r fis g g, r \tuplet 3/2 {\once \undo \omit TupletNumber g'16 a bes} |
  cis,8 e cis a \voiceTwo d8 c bes a | g d' e! fis g \oneVoice r8 r4 |
  f!8 r r4 \tuplet 3/2 {\once \undo \omit TupletNumber e16 b d gis, f' e a, f'! e b f' e} |
  \tuplet 3/2 {c16 f e gis f e a f! e b' f e c' b a} r8 r4 |
  g!8 r r4 \voiceTwo f8 g f e | d8 a b! cis
  \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber d16 f a cis16 bes a d bes a e' bes a | \clef G f' e d cis bes' a d, bes' a e bes' a f cis'd bes cis d g, a bes g a bes} |
  \tuplet 3/2 {c,!16 b'! c a b c f, g a f g a bes, a' bes g a bes e, f g e f g} |
  \clef bass a,8 a, r a' d d, r d |
  \tuplet 3/2 {g16 d' e f e f b,! f' e d c b c g a bes a g c e, d c d e} |
  \tuplet 3/2 {f16 g a d c d e, f g c bes c}
  \tuplet 3/2 {d,16 e f bes a bes c, d e a g a | b,! a' g cis, a' g d a' g e a g f e d bes' a g} a8 a, |
  d4 s4 s2 | s1 | a8 r r4 r8 a a a | a8 r r4 r8 a a a |
  a8 s8 s4 s2 | s1 |
  \voiceTwo {e8 r r4 r2} |
  \oneVoice d8 r r4 d8 r r4 |
  c8[ e''16. d32] \tuplet 3/2 {\once \undo \omit TupletNumber c16 b a b c d c b a} r8 r4 |
  \tuplet 3/2 {\once \undo \omit TupletNumber r16 e a c d c b a g a b c b a g} r8 r4 |
  r8 \tuplet 3/2 {\once \undo \omit TupletNumber c16 d e a, g fis b c d gis, fis e a b c fis, e d g a b} |
  cis,32 e g s32 s8 s4 s2 |
  s2 s8 s32 a32 g e \stemUp fis[ a c! a fis] \voiceTwo e d c |
  \oneVoice b4 r8 <c' a fis e>8 \voiceTwo <d d,>4 \oneVoice r8 d,, | d d' d, dis e[ \tuplet 3/2 {\once \undo \omit TupletNumber e'16 d! c] b a g} d'16. dis,32
  g'8 g, r g' g g, r g' |
  g8 g, g' g, g' g, g g |
  <g'' d b g>4 r <c, g e c> r |
  <a e cis>4 r <d a f d> r |
  <e,b gis>4 r
  a,8 \voiceTwo <d' f,>4 <c~ e,~>8 | <c e,>8 <b d,>4 <a~ c,~>8 \oneVoice <a d, c>8 c b a |
  \tuplet 3/2 {gis16[ a b} e,8] \tuplet 3/2 {c'16 d e a, b c fis,16 g a dis, e fis b, cis d gis, a b} |
  e,8[ \tuplet 3/2 {gis16 a b]} c,8[ \tuplet 3/2 {a'16 b c]} d,8[ \tuplet 3/2 {b'16 c d]} e,8[ \tuplet 3/2 {c'16 d e]} |
  f,8[ \tuplet 3/2 {d'16 e f]} gis,8[ \tuplet 3/2 {d''16 e f] b, c d gis, a b e, fis gis fis gis a} |
  \tuplet 3/2 {gis16 a b e d e a, b c fis e fis \clef G b, c d gis fis gis c, d e a gis a} |
  \tuplet 3/2 {d,16 e f! b a b c, d e a gis a b, c d gis fis gis a, b c f e f} |
  \clef bass \tuplet 3/2 {g,16 a b e d e f, g a d c d e, f g cis b cis d, e f bes a bes} |
  \tuplet 3/2 {e,16 fis gis b! a b fis gis a b a b} gis32 a b c s8 s s32 c b a |
  gis32 a b c s8 s8 s32 d c b a b c d s8 s8 s32 d c b |
  a32 b c d s8 s8 s32 d c b bes32 b cis d s8 s8 \change Staff = "right" \voiceTwo e32 d \change Staff = "left" cis b! |
  bes32 b cis d s8 s8 s32 d cis b! a32 cis \change Staff = "right" d e s8 s8 e32 d \change Staff = "left" cis b |
  a32 cis \change Staff = "right" d e s8 s8 e32 d cis d \change Staff = "left" gis, a b c s8 s8 b32 a gis b |
  e,32 fis gis a s8 s8 b32 a gis b e, gis a b a \stemUp b[ cis d] cis s16. s8 |
  s4 s32 \voiceTwo a32 gis a \stemUp f \voiceTwo e[ dis e] e, fis gis a \stemUp b c d e f! e \voiceTwo d[ e fis gis] \stemUp a b |
  c32 \voiceTwo a[ gis a] \stemUp dis, \voiceTwo a'[ gis a] s8 \stemUp b32 a gis fis gis \voiceTwo f[ e f] \stemUp d \voiceTwo f[ e f] \stemUp b a gis fis e \voiceTwo d[ c! b] |
  \voiceTwo a8 a16 b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16 b c b a gis} |
  a8 s8 s4 s2 | \oneVoice \tuplet 3/2 {\once \undo \omit TupletNumber c16 e, fis gis a b c b a e' d c} r8 <e cis a>8 <e cis a> <e cis a> |
  \tuplet 3/2 {\voiceTwo d16 c! b \oneVoice a b c b a g d' c b}
  r8 <d b g> <d b g> <d b g> |
  \tuplet 3/2 {\voiceTwo c16 b a \oneVoice gis a b a16 g f e f g f e d cis d e d c b a b c} |
  <e b gis e>4 r8 <e c a e>16. <e e,>32 <e b gis e>4 r8 <e c a e>16. <e e,>32 |
  <e b gis e>4 r8 <e c a e>16. <e e,>32 <e b e,>4 r8 \tuplet 3/2 {\once \undo \omit TupletNumber r16 gis a} |
  \tuplet 3/2 {b16 c d c b a b a gis a b c b a gis a gis fis gis a b a gis fis} |
  \tuplet 3/2 {gis16 fis e d e f b, c d gis, a b} c,16. \tuplet 3/2 {c'64( d e)} \tuplet 3/2 {\once \undo \omit TupletNumber f16 e d e d c d c b} |
  cis4 \tuplet 3/2 {\once \undo \omit TupletNumber r16 cis d e d cis d e f e d cis d c b c b a} |
  \tuplet 3/2 {f'16 e d b d e f e d a d e f e d gis, d' e f e d e, f' e} |
  \tuplet 3/2 {d16 e f b, f' e d e f a, f' e d e f gis, f' e d e f b, f' e} |
  \tuplet 3/2 {d16 f d b d b gis b gis} e16. d'32 c8 f16 d e8 e, |
  a4 r r8 a' c, e | a,4 r r8 a'16 b c e d b |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a)} r8 r4 r8 c gis a |
  e8 r r4 r8 c\p gis a |
  e8 e''16.\f d32 cis8 a d, d'16. c32 b8 g |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) a( g fis) fis( g a) a( b c) b( a gis) gis( fis e) e( fis gis) gis( a b)} |
  a8 d, d d d, d' c b | c8 d e e, f d e e |
  a4 r4 r2 |\bar "|."
}