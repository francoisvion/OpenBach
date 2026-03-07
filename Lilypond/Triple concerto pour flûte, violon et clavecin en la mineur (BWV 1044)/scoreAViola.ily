\version "2.22.0"

scoreAViola = \relative c' {
  \tag #'parts {
    <>_\markup \tiny {Violino I}
    \cueDuring "scoreAViolinI" #DOWN {r2}
  }
  \tag #'score {
    r2
  }
  r8 c8_\brack\f a e' | c4 r r8 e e b' |
  e,8 a gis a e e b a | b8 a\p gis a e e b' a |
  b8 e\f e a a d, d g | g8 a c, c d e b b |
  c8 a' f d \tuplet 3/2 {\once \undo \omit TupletNumber gis,16( a b) \slurDashed gis( a b)} \slurSolid a8 b |
  e8 f e d c f, e e | e4 r r8 a\p e b' | a8 r r4 r8 a'^"pizz." e b' |
  a8 r r4 r2 | R1 * 2 | r2 r8 e8^"(coll'arco)"_\brack\f e a, |
  b8 a^"(pizz.)"_\brack\p gis a e e b' e, | e8 r r b''^"coll'arco" a r r a, |
  a8 r r a' g r r g\f | g8 a c, c d e b b |
  c e c a' \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber dis,16( e fis) dis( e fis)} \slurSolid e8 fis |
  b, c b a g[ \tuplet 3/2 {a16( b c])} b8 a |
  \mark \default g8 r r4 r8 g16\p fis e8 b' | b8 r r4 r8 e^"pizz." e fis |
  gis8 r r b,^"coll'arco" a r r a | g8 r r4 r2 | r2 r8
  \tag #'parts {
    \footnote "*)" #'(0 . 1) \markup {"*)" \sixteenth_to_triplet_footnote_A} r16
  }
  \tag #'score {
    r16^"*)"
  }
  c\f b8 b' |
  b2\p cis | a2 b | g8 r r4 c8 r r4 | a8 r r4 c,8 r r4 |
  d8 r r4 b8 r r4 | e8 r r4 r8 a\f b e, |
  a8 r r cis,\p a r r a | d8 r r f b, r r b |
  b8 r r gis'\f e e e b' | a8 d, cis d a a a a |
  a8 r r4 r8 f'\paren\p^"pizz." cis d |
  a8 r r e'^"coll'arco" d r r f | d8 r r d c r r g'\f |
  f8 f f f bes e, e e | a,8 a' f d \tuplet 3/2 {\once \undo \omit TupletNumber gis,16( a b) gis( a b)} a8 b |
  \mark \default e8 f e d c f,\p e e | e8 r r4 r2 | R1 * 4 |
  r2 r8 f'^"pizz."_\brack\p r e | r8 d r c r b r d | c8 r r4 r2 |
  R1 | r2 r8 c8\f^"coll'arco" g g | g4 r g\p g |
  g8 r r e\brack\p f r r fis | g8 r r gis a r r4 |
  R1 * 2 | r8 g'\p( g g) r cis,( cis cis) | r8 a'( a a) r dis,( dis dis) |
  e8 r r4 r2 | r2 r8 \slurDashed \tuplet 3/2 {\once \undo \omit TupletNumber c'16\f( b a) a( g fis) fis( g a)} \slurSolid |
  b,8 r r gis\p a r c r | c8 r a r a r fis r | fis'1 |
  b,4 r
  \tag #' parts {
    \footnote "**)" #'(0 . 1) \markup {"**)" \dotted_rhythm_footnote_A} r16.
  }
  \tag #'score {
    \footnote "*)" #'(0 . 1) \markup {"*)" \dotted_rhythm_footnote_A} r16.
  }
  fis'32[\paren\f e16. a32] a8 fis | \mark \default e8 r r4 r2 | R1 * 2 |
  r8 a,\p( a a) r b( b b) | r8 fis'( fis a) r e( e g) |
  r8 \tuplet 3/2 {\once \undo \omit TupletNumber c16\f ( b a) g( fis e) dis( e fis)} b,8 r r4 |
  r8
  \tag #'parts {
    \footnote "*)" #'(0 . 1) \markup {"*)" \sixteenth_to_triplet_footnote_A} r16
  }
  \tag #'score {
    r16^"*)"
  }
  e\paren\p e8 dis b' r r e, | a r r b fis r r fis |
  b, r r4 r8 e,16_\brack\f fis g b a fis |
  \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber g16\bracketizeSlur( fis e) c'\bracketizeSlur( b a)} b8 dis e e a, b |
  e,8 a e' e e a,16 b c e d b | c8 r r4 r8 g'16.\f a32 g8 g |
  g8 r r4 r2 | r2 r8 d4\f cis8 | d16 e f g a8 a, d d d a'|
  a8 a,16 b c es d a \tuplet 3/2 {\once \undo \omit TupletNumber bes16\bracketizeSlur([ a g)} g'8] g g |
  g8 g16 a bes g a8 a r r fis\p | d r r d d' bes,\f d es |
  d8 d d a e' r r b\p | c8 r r d c c\f e f |
  e8 e e cis a r r cis\p | d8 r r a d r r e |
  f8 cis\paren\f d e f r r4 | R1 |
  \tuplet 3/2 {\once \undo \omit TupletNumber r16 cis\p d e d e a, e' f g\bracketizeSlur( f e)} \slurSolid f8 fis r fis |
  d8 b r d c g r c | a8 r r4 r2 |
  r2 r16. a'32[\f bes16. e,32] e16.[ f32 g16. e32] | \mark \default f8 r r4 r2 |
  <f gis, d>8\paren\f r r4 r2 | e8\f r r4 r8 e e f |
  e8 r r4 r8 e e, gis | c8 r r4 r2 | <fis a, dis,>8 r8 r4 r2 |
  r8 \slurDashed e,16(\p fis) g( b) a( fis) g e g b \tuplet 3/2 {\once \undo \omit TupletNumber e16( fis g) fis( e dis)} \slurSolid |
  e8 r gis( b,) r4 d8( gis,) | c8 r r4 r r8 gis'8\f |
  a8 r r4 r r8 fis | g8 r r4 r2 | <g b, e,>8 r r4 r2 |
  <fis a, d,>8 r r4 r2 | <g b, d,>8 r r4 r2 |
  r2 r8 a,\paren\f b a | g8 b r a^"pizz."_\brack\p r d r c |
  r8 c r c a b'\paren\f^"coll'arco" g d | b2\p c |
  r16 a_\brack\f e'( f) g bes a e f2 | e2 a8 r r4 | R1 * 2 |
  \mark \default <b d, gis,>8_\brack\f r r4 r2 | R1 * 4 | r2 gis,8^"pizz."_\brack\p r b r |
  d8 r b r c r a r | c r e r cis r e r |
  cis'8 r cis r d r d r | a8 r f r gis, r d' r |
  d8 r gis, r cis r a r | a8 r  c! r e r b' r |
  c8 r fis, r gis r b, r | \mark \default a8 r r4 r8 a16\f^"(coll'arco)" b c e d b |
  c16 a c e \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber a16( b c) b( a gis)} \slurSolid a8 a,16 b c e d b |
  a1~\p | a4 g2.~ | g8 b c r r e f f | b,8 r r4 b8 r r4 |
  e8 r r4 b8 r r4 | gis8 r r e' b r r d | b8 r r gis c r r gis'\paren\f |
  cis,8 r r e\paren\p f r r a | f1~ | f1 | gis,8 r r4 r2 |
  r2 r8 c8\f a e' | c4 r r8 e e b' |
  e,8 a gis a e e b a | b8 a\p gis a e e b' a |
  b8 e\f e a a d, d g | g8 a c, c d e b b |
  c8 a' f d \tuplet 3/2 {\once \undo \omit TupletNumber gis,16( a b) gis( a b)} a8 b |
  e8 f e d c f, e e | e4 r r2 \bar "|." |
}