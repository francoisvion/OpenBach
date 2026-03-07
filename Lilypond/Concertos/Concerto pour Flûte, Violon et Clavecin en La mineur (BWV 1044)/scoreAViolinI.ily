\version "2.22.0"

scoreAViolinI = \relative c'' {
  r8 a,16_\brack\f b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) \omit TupletNumber b( a gis)} |
  a16 e a b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  \tuplet 3/2 {a16( e) e f( dis e) f( dis e) f( dis e) gis,( a b) a( b c) b( e d) c( b a)} |
  \tuplet 3/2 {\slurDashed gis16( e)\p e \slurSolid f( dis e) f( dis e) f( dis e) gis,( a b) a( b c) \slurDashed b( e d) c( b a)} \slurSolid |
  \tuplet 3/2 {gis16 e''-.\f f-. g!-. f-. g-. a, e' f \slurDashed g\bracketizeSlur( f e) f d e f e f g, d' e f\bracketizeSlur( e d)} \slurSolid |
  \appoggiatura d8 e[
  \tag #'parts {
    \footnote "*)" #'(0 . 1) \markup {"*)" \dotted_rhythm_footnote_A} c16.
  }
  \tag #'score {
    c16.^"*)"
  }
  e32] a,16.[ e'32 fis,16. e'32] \tuplet 3/2 {\once \undo \omit TupletNumber \appoggiatura e16 d16( c d)} b16. d32 gis,16.[ d'32 e,16. d'32] |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) f'( e d) c( b a) gis( a b)} \phrasingSlurDashed e,8.\bracketizeSlur\(([ fis32 gis)] \tuplet 3/2 {a16\)-. b-. c-. d-. e-. f-.} |
  \tuplet 3/2 {e16-. d-. c-. b( c a)} e16.[ a32 b16. gis32] a16. a,32 \tuplet 3/2 {\once \undo \omit TupletNumber f'16( e d)} c8 b\trill |
  a4 r r8 e'8\p \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a8 r r4 r8 e'^"pizz." a gis |
  a8 r8 r4 r2 | R1 * 2 | r8 a,^"coll'arco" gis a e \tuplet 3/2 {\once \undo \omit TupletNumber a16_\brack\f(  b c) b( e d) c( b a)} |
  gis8 c,^"pizz."_\brack\p d c e \tuplet 3/2 {\slurDashed a,16(^"coll'arco" b c) b( e d) c( b a)} \slurSolid |
  gis8 r r gis'' e r r e | d8 r r fis d r r d\f |
  c16.[ e32 c16. e32] a,16.[ e'32 fis,16. e'32] \tuplet 3/2 {\once \undo \omit TupletNumber \appoggiatura e16 d16( c d)} b16. d32 gis,16.[ d'32 e,16. d'32] |
  \tuplet 3/2 {\slurDashed c16( b a) c'( b a) g( fis e) dis( e fis)} \slurSolid \phrasingSlurDown b,8.\bracketizeSlur\([( cis32 dis]) \tuplet 3/2 {\once \undo \omit TupletNumber e16\)-. fis-. g-. a-. b-. c-.} |
  \tuplet 3/2 {b16-. a-. g-. fis( g e)} b16.[ e32 fis16. dis32] e16. e,32 \tuplet 3/2 {\once \undo \omit TupletNumber c'16( b a)} g8 \override ParenthesesItem.font-size = #0 fis-\bracketify\trill |
  \mark \default e8 r r4 r8 b\p \tuplet 3/2 {\once \undo \omit TupletNumber e16( fis g) fis( e dis)} |
  e8 r r4 r8 b'^"pizz." e dis | e8 r r b^"coll'arco" c r r a |
  b8 r r4 r2 | r2 r8
  \tag #' parts {
    \footnote "**)" #'(0 . 1) \markup {"**)" \sixteenth_to_triplet_footnote_A} r16
  }
  \tag #' score {
    r16^"*)"
  }
  e16\f dis16.[ fis32 b,16. fis'32] |
  g1\pp | f1 | e8 r r4 g8 r r4 |
  a8 r r4 a,8 r r4 | gis8 r r4 b8 r r4 |
  d8 r r4 r8 a'8\f b, gis' | a,8 r r g\p f r r e |
  d8 r r d'16.( c32) d8 r r d16.( c32) |
  d8 r r \tuplet 3/2 {\once \undo \omit TupletNumber b16_\brack\f( c d) e( fis gis) a( g f) e( d c) b( c d)} |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16\f( a) a \repeat unfold 3 {bes( gis a)} cis,( d e) d( e f) e( a g) f( e d)} |
  cis8 d'\paren\p^"pizz." cis d a a e d |
  e r r cis'^"coll'arco" d r r a | g8 r r d' e r r e\f |
  \tag #'parts {
    \footnote "***)" #'(0 . 1) \markup {"***)" \long_dotted_rhythm_footnote_A} f8.
  }
  \tag #'score {
    \footnote "*)" #'(0 . 1) \markup {"*)" \long_dotted_rhythm_footnote_A} f8.
  }
  a16 d,16.[ a'32 b,16. a'32] \tuplet 3/2 {\once \undo \omit TupletNumber g16( f g)} e16. g32 cis,16.[ g'32 a,16. g'32] |
  \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber f16( a g) f( e d) c( b a) gis( a b)} \slurSolid \phrasingSlurUp e,8.\bracketizeSlur\([( fis32 gis]) \tuplet 3/2 {a16\)-. b-. c-. d-. e-. f!-.} |
  \mark \default \tuplet 3/2 {e16-. d-. c-. b( c a)} e16.[ a32 b16. gis32] a16. a,32 \tuplet 3/2 {\once \undo \omit TupletNumber f'16(\p e d)} c8 b-\bracketify\trill |
  a8 r r4 r2 | R1 * 4 | r2 r8 b'^"pizz."_\brack\p r c | r8 d r e r f r b, |
  c8 r r4 r2 | R1 | r2 r8 g\paren\f^"coll'arco" c b |
  g,1_\brack\p~ | g8 r r g'\brack\p a r r a | b8 r r b c r r4 |
  R1 * 2 | r8 e\paren\p( e e) r e( e e) | r8 fis( fis fis) r8 fis( fis fis) |
  g8 r r4 r2 | r2 r8 \tuplet 3/2 {\once \undo \omit TupletNumber c,16\f( b a) a( g fis) fis( g a)} |
  b,8 r r d'\p c r e r | a,8 r c r fis, r dis r |
  c'1 | b4 r r16. dis32[\f e16. fis32] b,8 dis | \mark \default e8 r r4 r2 |
  R1 * 2 | r8 c\p( c c) r b( b b) | r8 a( a a) r e'( e e) |
  r8 \tuplet 3/2 {\once \undo \omit TupletNumber c16\paren\f ( b a) g( fis e) dis( e fis)} b,8 r r4 |
  r8
  \footnote "*)" #'(0 . 1) \markup {"*)" \sixteenth_to_triplet_footnote_A} r16
  fis''16\paren\p g16.[ e32 b16. dis32] e8 r r e |
  e8 r r e fis r r fis | fis8 r r4 r8 \tuplet 3/2 {\once \undo \omit TupletNumber c'16(_\brack\f b a)} g8 fis-\bracketify\trill |
  e8 r r4 r2 | r8 a,16\f b c e d b \tuplet 3/2 {\once \undo \omit TupletNumber c16[( b a)} a'8]~ a gis |
  a8 r r4 r8 g16.\f f32 \tuplet 3/2 {\once \undo \omit TupletNumber e16( d c) d( e f)} |
  \tuplet 3/2 {e16( d c)} r8 r4 r2 | R1 |
  r8 d16\f e f a g e \tuplet 3/2 {\slurDashed f16\bracketizeSlur([ e d)} e8] b cis |
  d4 r8 a g16 a bes c d f e d | a'8.\bracketizeSlur([ g32 f)] e8 a f r r a,\p | bes8 r r a g d\f g fis |
  g16 d g a b! d c a gis8 r r f'!\p | e8 r r b a e'\f c b |
  a8 e' cis e d r r g\p | f8 r r e d bes a g |
  f8 e'\paren\f f cis d r r4 | R1 |
  r2 \tuplet 3/2 {\once \undo \omit TupletNumber r16 f,\p g a g a d, a' bes c\bracketizeSlur( bes a)} |
  \tuplet 3/2 {bes16 bes c d c d g, d' e f\bracketizeSlur( e d)} \slurSolid e8 c r c |
  c8 r r4 r2 | r2 r16. f32[\f g16. e32]
  \tag #'parts {
    \footnote "**)" #'(0 . 3) \markup {"**)" \long_dotted_rhythm_footnote_A} cis8.-\bracketify\trill
  }
  \tag #'score {
    \once \override Staff.Script.outside-staff-priority = #400 cis8.-\bracketify\trill^"*)"
  }
  d16 |
  \mark \default d8 r r4 r2 | <d f, b,>8\paren\f r r4 r2 |
  c8\f a,16 b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a16 a, c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} a16 e a b c e d b |
  c8 r r4 r2 | <c fis, a,>8 r r4 r2 | b8 r g(\p fis) r4 g8( a) |
  r4 e'8( gis,) r4 b8( e,) | a'8 r r4 r8 e\f e e |
  e8 r r4 r8 d d d | d8 r r4 r2 | <e b g>8 r r4 r2 |
  <fis a, d,>8 r r4 r2 | <g b, d,>8 r r4 r2 |
  r2 r8 e8\f-. d-. c-. | b8 g r a^"pizz."_\brack\p r b r c |
  r8 c r a b b\paren\f^"coll'arco" d f |
  d2\paren\p c | a1 | r16 e16_\brack\f \slurDashed b'\bracketizeSlur( c) \slurSolid d f e b c8 r r4 |
  R1 * 2 | \mark \default <b' d, e,>8_\brack\f r r4 r2 | R1 * 4 | r2 e,,8^"pizz."_\brack\p r gis r |
  b8 r gis r a r e r | a8 r c r e r g r |
  bes8 r a r d r a r | f8 r d r d r b r |
  gis8 r b r a r e r | a8 r a r b r gis' r |
  a8 r a, r e' r d r | \mark \default c8 r r f, e r r gis,\f^"coll'arco" |
  c16 e a b c e d b \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a)} e'8~ e16 a f d |
  e2\p cis | d2 b | c8 d e r r a a c, | b8 r r4 d8 r r4 |
  b8 r r4 gis8 r r4 | e8 r r e gis r r b |
  e8 r r b e,[ a16.\f b32] c8 b | a8 r r g\p f r r e |
  d8 r r \tuplet 3/2 {\undo \omit TupletNumber r16 b'( c} d8) r r \tuplet 3/2 {r16 gis,( a} |
  b8) r r \tuplet 3/2 {r16 b,( c} d8) r r \tuplet 3/2 {r16 gis,( a} | b8) r r4 r2 |
  \omit TupletNumber r8 a16\f b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a16 e a b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  \tuplet 3/2 {a16( e) e f( dis e) f( dis e) f( dis e) gis,( a b) a( b c) b( e d) c( b a)} |
  \tuplet 3/2 {\slurDashed gis16( e)\p e f( dis e) f( dis e) f( dis e) \slurSolid gis,( a b) a( b c) b( e d) c( b a)} |
  \tuplet 3/2 {gis16 e''-.\f f-. g!-. f-. g-. a, e' f \slurDashed g\bracketizeSlur( f e) f d e f e f g,! d' e f\bracketizeSlur( e d)} \slurSolid |
  \appoggiatura d8 e[ c16. e32] a,16.[ e'32 fis,16. e'32] \tuplet 3/2 {\once \undo \omit TupletNumber \appoggiatura e16 d16( c d)} b16. d32 gis,16.[ d'32 e,16. d'32] |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) f'( e d) c( b a) gis( a b)} e,8.\bracketizeSlur\(([ fis32 gis)] \tuplet 3/2 {\once \undo \omit TupletNumber a16\)-. b-. c-. d-. e-. f!-.} |
  \tuplet 3/2 {e16-. d-. c-. b( c a)} e16.[ a32 b16. gis32] a16. a,32 \tuplet 3/2 {\once \undo \omit TupletNumber f'16( e d)} c8 b\trill |
  a4 r r2 \bar "|." |
}