\version "2.22.0"

scoreAViolinII = \relative c'' {
  \tag #'parts {
    <>_\markup \tiny {Violino I}
    \cueDuring "scoreAViolinI" #DOWN {r2}
  }
  \tag #'score {
    r2
  }
  r8 e,_\brack\f e e |
  e16 a, c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} a8 a e' e|
  e8 c b c b e, e e | e8 c\p b c b e e e |
  e8 b'\f a cis d a d b | c!8 e e a, a d d b |
  e,8 d a' f \tuplet 3/2 {\once \undo \omit TupletNumber b,16( c d) b( c d)} e8 gis |
  a8 b c b a a, a gis\trill | a4 r r8 c8\p a e' |
  c8 r r4 r8 c'8^"pizz." e e |
  e8 r r4 r2 | R1 * 2 | r2 r8 a,^"coll'arco"_\brack\f e e |
  e8 a,^"pizz."_\brack\p gis a b e e a, | b8 r r e'^"coll'arco" c r r cis |
  a8 r r d b r r b\f |e, e' e a, a d d b |
  e,8 a e' c \tuplet 3/2 {\once \undo \omit TupletNumber fis,16( g a) fis( g a)} b8 dis |
  e8 fis g fis e e, e dis-\bracketify\trill |
  \mark \default b8 r r4 r8 g16\p a b8[
  \footnote "*)" #'(0 . 5) \markup {"*)" \dotted_rhythm_footnote_A} b16.
  a32] | g8 r r4 r8 g'^"pizz." b b |
  b8 r r gis^"coll'arco" e r r fis | d8 r r4 r2 | r2 r8
  \tag #'parts {
    \footnote "**)" #'(0 . 1) \markup {"**)" \sixteenth_to_triplet_footnote_A} r16
  }
  \tag #'score {
    r16^"*)"
  }
  e16\f b'8 dis |
  e1\pp | d1 | c8 r r4 e8 r r4 | e8 r r4 e,8 r r4 |
  e8 r r4 e8 r r4 | b'8 r r4 r8 e\f e b |
  a8 r r e\paren\p f r r a | gis8 r r a b r r b |
  gis8 r r d'8~\f d c b e | e,8 f e f e a a d, |
  e8 r r4 r8 f\paren\p^"pizz." cis d | a8 r r a'^"coll'arco" a r r d, |
  d'8 r r g, g r r c\f | c8 d d d g, a a a |
  a8 d a f \tuplet 3/2 { \once \undo \omit TupletNumber b,16( c d) b( c d)} e8 gis |
  \mark \default a8 b c b a a,\p e' e | c8 r r4 r2 | R1 * 4 |
  r2 r8 g'^"pizz."_\brack\p r c, | r8 g' r g r d r g | g8 r r4 r2 |
  R1 | r2 r8 e\paren\f^"coll'arco" g f | e4 g,2._\brack\p~ |
  g8 r r c\brack\p c r r d | d8 r r e e r r4 | R1 * 2 |
  r8 c'(\paren\p c g) r a( a e') | r8 d( d a) r b( b b) | b8 r r4 r2 |
  r2 r8 \tuplet 3/2 {\once \undo \omit TupletNumber c16\f( b a) a( g fis) fis( g a)} |
  b,8 r r b'\p e, r a r | e8 r a r dis, r a r | a'1 |
  fis4 r r16. b32[\f b16. c32] fis,8 b | \mark \default g8 r r4 r 2 | R1 * 2 |
  r8 a\p( a a) r e( e e) | r8 c' a fis r b g e |
  r8 \tuplet 3/2 {\once \undo \omit TupletNumber c'16\f ( b a) g( fis e) dis( e fis)} b,8 r r4 |
  r8
  \tag #'parts {
    r16^"**)"
  }
  \tag #'score {
    r16^"*)"
  }
  c'16\p b8 b e, r r b' | c8 r r g cis, r r cis' |
  dis8 r r4 r8 e_\brack\f e dis\bracketify\trill |
  b8 e,16 fis g_"[?]"( b) a_"[?]"( fis) \tuplet 3/2 {\once \undo \omit TupletNumber g16( fis e)} c'8 \tuplet 3/2 {fis,16( e fis) \slurDashed gis( fis gis)} \slurSolid |
  a16 a, c\f e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} a8 c, e e |
  e8 r r4 r8 c'16.\f c32 \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber c16( b a) b( c d)} |
  c8 r r4 r2 | r2 r8 d,16\f e f a g e |
  \tuplet 3/2 {\once \undo \omit TupletNumber f16\bracketizeSlur( e d)} d'4 cis8 d a g e |
  d16 e f g a bes c d d,8 bes' bes bes |
  a8 e16 f g bes a e f8 r r d\p | g r r fis d d'\f bes a |
  g8 g gis a b r r b\p | e,8 r r e e e\f a gis |
  a8 a bes e, f r r e'\p | f8 r r cis a r r bes |
  a8 e\paren\f a a a r r4 | R1 |
  \tuplet 3/2 {\once \undo \omit TupletNumber r16 cis,\p d e d e a, e' f g\bracketizeSlur( f e) f f g a g a d, a' bes c!\bracketizeSlur( bes a)} \slurSolid |
  bes8 b r b g e r g | f8 r r4 r2 |
  r2 r16. d'32[\f d16. bes32] a8 a | \mark \default a8 r r4 r2 |
  <b f d>8\f r r4 r2 | a8\f r r4 r8 a,16 b c e d b |
  c16 a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} a8 a a f |
  e8 r r4 r2 | <a fis c>8 r r4 r2 |
  g8 r r4 r8 e16(\p fis) g( b) a( fis) | gis8 r b( e,) r4 gis8( b,) |
  e'8 r r4 r r8 b\f | c8 r r4 r4 r8 a |
  b8 r r4 r2 | <b e, g,>8 r r4 r2 | <d fis, a,>8 r r4 r2 |
  <d g, b,>8 r r4 r2 | r2 r8 g,\f g fis |
  d8 d r c^"pizz."_\brack\p r g' r g | r8 a r fis g d'\f^"coll'arco" b d |
  g,1\paren\p~ | g2 r16 d_\brack\f \slurDashed a'\bracketizeSlur( b!) \slurSolid c e d a | b2 e,8 r r4 |
  R1 * 2 | \mark \default <gis' b, e,>8_\brack\f r r4 r2 | R1 * 4 |
  r2 e,8^"pizz."_\brack\p r gis r | gis8 r e r e r c r |
  e8 r a r bes r bes r | e8 r e r a r f r |
  d8 r a r b r gis r | e8 r e r e r cis r |
  dis8 r dis r gis r e' r | fis8 r fis r b, r gis r |
  \mark \default e8 r r4 r8 a,16\f^"coll'arco" b c e d b |
  c16 a c e \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber a16( b c) b( a gis)} \slurSolid a8 a,16 b c e d b |
  c2\p g'! | f2. e8 d |e8 e a r r a d a | gis8 r r4 gis8 r r4 |
  gis8 r r4 e8 r r4 | b8 r r b e r r b' | b8 r r f' e r r e,\f |
  e8 r r cis\paren\p a r r a | b8 r r \tuplet 3/2 {\undo \omit TupletNumber r16 gis'( a} b8) r r \tuplet 3/2 {r16 b( c} |
  d8) r r \tuplet 3/2 {r16 gis,,( a} b8) r r \tuplet 3/2 {r16 b( c} |
  d8) r r4 r2 |
  \omit TupletNumber r2 r8 e\f e e |
  e16 a, c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} a8 a e' e|
  e8 c b c b e, e e | e8 c\p b c b e e e |
  e8 b'\f a cis d a d b | c!8 e e a, a d d b |
  e,8 d a' f \tuplet 3/2 {\once \undo \omit TupletNumber b,16( c d) b( c d)} e8 gis |
  a8 b c b a a, a gis-\bracketify\trill | a4 r r2 \bar "|." |
}