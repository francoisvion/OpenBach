\version "2.22.0"

scoreACello = \relative c {
  a4_\brack\f r r8 a' c, e | a,4 r r8 a'16 b c e d b |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a)} r8 r4 r8 c gis a |
  e8 r r4 r8 c\p gis a |
  e8[
  \tag #'parts {
    \footnote "*)" #'(0 . 1) \markup {"*)" \dotted_rhythm_footnote_A} e''16.\f
  }
  \tag #'score {
    e16.\f^"*)"
  }
  d32] cis8 a d,[ d'16. c32] b8 g |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) a( g fis) fis( g a) a( b c) b( a gis) gis( fis e) e( fis gis) gis( a b)} |
  a8 d, d d d, d' c b | c8 d e e, f d e e |
  a4 r4 r8 a'\p c, e | a,8 r r4 r8 a'^"pizz." c, e |
  a,8 r r4 r2 | R1 * 2 | r2 r8 c'^"coll'arco"_\brack\f gis a |
  e8 r r4 r8 c^"pizz."_\brack\p gis a | e8 r r e'^"coll'arco" a, r r a' |
  d8 r r d, g r r g\f |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) a( g fis) fis( g a) a( b c) b( a gis) gis( fis e) e( fis gis) gis( a b)} |
  a8 a, a a a a' g fis | g8 a b b, c a b b |
  \mark \default e,8 r r4 r8 e'\p g, b | e,8 r r4 r8 e'^"pizz." g, b |
  e,8 r r e'^"coll'arco" a, r r d | g, r r4 r2 |
  r2 r8
  \tag #'parts {
    \footnote "**)" #'(0 . 1) \markup {"**)" \sixteenth_to_triplet_footnote_A} r16
  }
  \tag #'score {
    r16^"*)"
  }
  a'16\f b8 b, | e8 r r4 r8 a,(\p a a) |
  d8 r r4 r8 g,( g g) | c8 r r4 c8 r r4 |
  c8 r r4 c8 r r4 | b8 r r4 gis8 r r4 |
  e8 r r4 r8 \tuplet 3/2 {c'16(\paren\f b a)} e'8 e, |
  f8 r r a\paren\p d r r c | b8 r r a gis r r b |
  e8 r r \tuplet 3/2 {\once \undo \omit TupletNumber d16(\paren\f c b)} c8 a e' e, |
  a8 r r4 r8 f' cis d | a8 r r4 r2 | r4 r8 a' d, r r d |
  g,8 r r g' c, r r c\f |
  \tuplet 3/2 {\once \undo \omit TupletNumber f16( e d) d( cis b) b( cis d) d( e f) e( d cis) cis( b a) a( b cis) cis( d e)} |
  d8 d, d d d d' c b |
  \mark \default c8 d e e, f8 d\paren\p e e |
  a8 r8 r4 r2 | R1 * 4 | r2 g2~\p | g1 | c8 r r4 r2 |
  R1 | c,8\f r r4 r8 c'' e, g | c,8 r r4 r8 c\p e, g |
  c,8 r r
  \tag #' score {
    \once \override Score.FootnoteItem.annotation-line = ##f c'-\footnote "*)" #'(0.01 . 0) "*) See editorial note for the dynamics." \brack\p
  }
  \tag #' parts {
    c\brack\p
  }
  f, r r d' | g,8 r r e' a, r r4 | R1 * 2 |
  r8 c(\p c c) r a( a a) | r8 d( d d) r b( b b) | e8 r r4 r 2 |
  r2 r8 \tuplet 3/2 {\once \undo \omit TupletNumber a16\f( g fis) fis( g a) a( b c)} |
  b8 r r e,\p e,2~ | e1 | fis8 r a r c r fis,r |
  dis'4 r r16. fis32[\f g16. a32] b8 b, | \mark \default c2\p~ c8 d c b |
  a2~ a8 b c b |a8 dis fis a g e b b' |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) a( g fis) fis( g a) a( b c) b( a gis) gis( fis e) e( fis gis) gis( a b)} |
  \tuplet 3/2 {a16( g! fis) fis( e dis) dis( e fis) fis( g a) g( fis e) e( dis cis) \slurDashed cis( dis e) e( fis g)} \slurSolid |
  fis8 a,\paren\f b c dis, a''\paren\p g fis | g8 a b a gis e fis gis | a8 b c b ais fis16 gis ais8 fis |
  b8 a16 g a8 dis, e8 a,_\brack\f b b |
  e, r r4 r8 a16 b c e d b |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) f'( e d) c( b a) e'( d e)} a,8 f c e |
  a8 r r4 r8 e'16.\paren\f f32 g8 g, | c8 r r4 r2 | R1 |
  r2 r8 d16\f e f a g e |
  \slurDashed \tuplet 3/2 {\once \undo \omit TupletNumber f16( e d)} r8 r fis g g, r \tuplet 3/2 {\once \undo \omit TupletNumber g'16\bracketizeSlur( a bes)} \slurSolid |
  cis,8 e cis a d8 r r c\p | bes8 r r d g, g'\f g g |
  f,8 f' f f e, r r d'\p | c8 r r e a, a'\f a a |
  g,8 g' g g f, r r e'\p | d8 r r a a' r r a, |
  a'8 a,\f a a d r r4 | R 1 | r8 a\p( a a) r d( d d) |
  r8 g,( g g) r c( c c) | f,8 r r4 r2 |
  r2 r16. d''32[\f bes16. g32] a8 a, | \mark \default d8 r c\p r b r a r |
  gis8_\brack\f r b_\brack\p r gis r e r | a8\f r r4 r8 a a a |
  a8 r r4 r8 a a a | a8 r g\p r fis r e r |
  dis8_\brack\f r fis'_\brack\p r dis r b r | e8 e, e e e e e e |
  d8 d d d d d d d | c8 r r d'\p c r r e\f |
  a,8 r r c\p b r r d\paren\f | g,8 r r4 r2 | cis8 r r4 r2 |
  c!8 r r4 r2 | b4 r8 e8\p d4 r8 d, | d'4 r8 dis8\f e  c d d, |
  g1_\brack\p~ | g1~ | g8 \slurDashed g'( g g) \slurSolid r c,( c c) | r8 cis( cis cis) r d( d d) |
  r8 gis,( gis gis) a f'_\brack\p r e | r8 d r c r c b a |
  gis8 e c'' a fis dis b gis | \mark \default e8_\brack\f r r4 r2 | R1 * 4 |
  r2 e'8^"pizz."_\brack\p r e r | e8 r e r a r a r |
  a8 r a r g r g r | g8 r g r f r f r | f8 r f r e r e r |
  e8 r e r e, r e r |f8 r f r e r e r | dis8 r dis r e r e r |
  \mark \default r a16\f^"(coll'arco)" b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a8 a, a a a a a a | a8 r r4 r8 a\paren\p a' a, | d8 r r4 r8 g, g' g, |
  c8 gis a r r cis d d, | e8 r r4 e8 r r4 | e8 r r4 e8 r r4 |
  e8 r r e' b r r d | gis,8 r r b c,[ f'16.\f d32] e8[ d16. b32] |
  cis8 r r a\p d r r c | gis8 r f' r d r b r |
  gis8 r d' r b r gis r | e8 r r4 r2 |
  a4\paren\f r r8 a' c, e | a,4 r r8 a'16 b c e d b |
  \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber c16( b a)} \slurSolid r8 r4 r8 c gis a |
  e8 r r4 r8 c\p gis a |
  e8 e''16.\f d32 cis8 a d, d'16. c32 b8 g |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) a( g fis) fis( g a) a( b c) b( a gis) gis( fis e) e( fis gis) gis( a b)} |
  a8 d, d d d, d' c b | c8 d e e, f d e e |
  a4 r r2 \bar "|." |
}