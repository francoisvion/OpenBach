\version "2.22.0"

scoreAViolinConc = \relative c'' {
  r8 a,16_\brack\f b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a16 e a b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  \tuplet 3/2 {a16( e) e f( dis e) f( dis e) f( dis e) gis,( a b) a( b c) b( e d) c( b a)} |
  \tuplet 3/2 {\slurDashed gis16( e)\p e \slurSolid f( dis e) f( dis e) f( dis e) gis,( a b) a( b c) \slurDashed b( e d) c( b a)} \slurSolid |
  \tuplet 3/2 {gis16 e''-.\f f-. g!-. f-. g-. a, e' f \slurDashed g\bracketizeSlur( f e) f d e f e f g, d' e f\bracketizeSlur( e d)} \slurSolid |
  \appoggiatura d8 e[
  \footnote "*)" #'(0 . 1) \markup {"*)" \dotted_rhythm_footnote_A} c16.
  e32] a,16.[ e'32 fis,16. e'32] \tuplet 3/2 {\once \undo \omit TupletNumber \appoggiatura e16 d16( c d)} b16. d32 gis,16.[ d'32 e,16. d'32] |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) f'( e d) c( b a) gis( a b)} \phrasingSlurDashed e,8.\bracketizeSlur \(([ fis32 gis)] \tuplet 3/2 {a16\)-. b-. c-. d-. e-. f-.} |
  \tuplet 3/2 {e16-. d-. c-. b( c a)} e16.[ a32 b16. gis32] a16. a,32 \tuplet 3/2 {\once \undo \omit TupletNumber f'16( e d)} c8 b\trill |
  a4 r4 r2 |
  e''1~\p | \tuplet 3/2 {\once \undo \omit TupletNumber e16 c a} a'8 r4 r8 \tuplet 3/2 {f,16( g a)} g8 r8 |
  r8 \tuplet 3/2 {d'16( e f)} g8 r r \tuplet 3/2 {b,16( c d)} e8 r |
  r8 f( e d) r c, f16.[( e32) f8] | b,8 c' b c b \tuplet 3/2 {\once \undo \omit TupletNumber a16\f(  b c) b( e d) c( b a)} |
  \tuplet 3/2 {gis16( e)\p e f( dis e) f( dis e) f( dis e) \slurDashed gis,( a b) a( b c) b( e d) c( b a)} |
  gis8 r r \tuplet 3/2 {b''16\bracketizeSlur(\p a gis)} a8 r r \tuplet 3/2 {e16\bracketizeSlur( d cis)} |
  d8 r r4 \tuplet 3/2 {\once \undo \omit TupletNumber r16 d e f! e f g, d' e f\bracketizeSlur( e d)} \slurSolid |
  \appoggiatura d8 e[ c16.\paren\f e32] a,16.[ e'32  fis,16. e'32] \tuplet 3/2 {\once \undo \omit TupletNumber \appoggiatura e16 d16( c d)} b16. d32 gis,16.[ d'32 e,16. d'32] |
  \tuplet 3/2 {c16( b a) \slurDashed c'( b a) g( fis e) dis( e fis)} \slurSolid \phrasingSlurDown b,8.\bracketizeSlur\([( cis32 dis]) \tuplet 3/2 {\once \undo \omit TupletNumber e16\)-. fis-. g-. a-. b-. c-.} |
  \tuplet 3/2 {b16-. a-. g-. fis( g e)} b16.[ e32 fis16. dis32] e16. e,32 \tuplet 3/2 {\once \undo \omit TupletNumber c'16( b a)} g8 \override ParenthesesItem.font-size = #0 fis-\bracketify\trill |
  \mark \default e8 b8\p b2.~ | b16 e g b e g fis dis \tuplet 3/2 {\once \undo \omit TupletNumber e16 d c \slurDashed b\bracketizeSlur( c a)} \slurSolid g16.[ e32 b16. a'32] |
  gis8 b e r r a, d r | r8 c4 b a g8~ |
  g8 fis e a, g
  \tag #'parts {
    \footnote "*)" #'(0 . 1) \markup {"*)" \sixteenth_to_triplet_footnote_A} r16
  }
  \tag #'score {
    r16^"*)"
  }
  e''16\f dis16.[ fis32 b,16. fis'32] |
  g8 r r4 r8 \slurDashed a,\bracketizeSlur(\p e' g) | f a\bracketizeSlur( f d) b2 |
  c8 \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber g'16( a b)} c8 r r \tuplet 3/2 {b16( c d)} c8 r |
  r8 \tuplet 3/2 {\slurSolid f,16( e d)} e8 r r \tuplet 3/2 {\slurDashed d16( c b)} c8 r |
  r8 e,\bracketizeSlur( gis b) d2~ | d2~ d8 c\paren\f b e~ |
  e8[ \tuplet 3/2 {d16(\paren\p c b])} a8 r r \tuplet 3/2 {cis,16( d e)} a,8 e' \slurSolid |
  gis8[ b16. c32] d8 r r b16. c32 d8 r | r gis16. a32 b8 r r a_\brack\f b, gis' |
  \tuplet 3/2 {\once \undo \omit TupletNumber a16\f( a,) a \repeat unfold 3 {bes( gis a)} cis,( d e) d( e f) \slurDashed e\bracketizeSlur( a g) \slurSolid f( e d)} |
  cis8 f'\paren\p^"pizz." e f e a a a, |
  \tuplet 3/2 {
    \tag #'score {
      a16 \footnote "*)" #'(0.01 . 0.01) "*) See editorial note for the placement of  \"coll'arco\"." ^\markup "[coll'arco]"
    }
    \tag #'parts {
      a16^"[coll'arco]"
    }
    e' f g f g a, e' f g( fis e) fis( e d)
  } r8 r f~ |
  \tuplet 3/2 {f16 d e f(^"[?]" e f) g, d' e f( e d)} e16.[ c32\f g16. f32] g16.[ c32 e16. g32] |
  \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber a16( g a)} f16. a32 d,16.[ a'32 b,16. a'32] \tuplet 3/2 {\once \undo \omit TupletNumber g16( f g)} e16. g32 cis,16.[ g'32 a,16. g'32] |
  \tuplet 3/2 {\once \undo \omit TupletNumber f16( a g) f( e d) c( b a) gis( a b)} \slurSolid \phrasingSlurUp e,8.\bracketizeSlur\([( fis32 gis]) \tuplet 3/2 {\once \undo \omit TupletNumber a16\)-. b-. c-. d-. e-. f!-.} |
  \mark \default \tuplet 3/2 {e16-. d-. c-. b( c a)} e16.[ a32 b16. gis32] a16. a,32 \tuplet 3/2 {\once \undo \omit TupletNumber f'16(\paren\p e d)} c8 b\trill |
  a8 r r4 r2 | R1 * 3 | c'4\p b a g |
  f4 e8 d g[-. \tuplet 3/2 {\once \undo \omit TupletNumber d'16( c d])} a8[-. \tuplet 3/2 {e'16( d e])} |
  b8[-. \tuplet 3/2 {f'16( e f])} c8[-. \tuplet 3/2 {g'16( f g])} d8[-. \tuplet 3/2 {a'16( g a])} f8 d\trill |
  e8 r r4 r2 | R1 |
  r8 c,16\paren\f  d e g f d e c e g \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber c16\bracketizeSlur( d e) d\bracketizeSlur( c b)} |
  c8 r r4 r16 c,\paren\p e g \tuplet 3/2 {\once \undo \omit TupletNumber c16\bracketizeSlur( d e) d\bracketizeSlur( c b)} |
  \tuplet 3/2 {c16 e, f g\bracketizeSlur( a bes) bes\bracketizeSlur( c d) d\bracketizeSlur( c bes)} a8 f g a |
  b!8 d c b a r r4 | R1 * 2 |
  \tuplet 3/2 {\once \undo \omit TupletNumber r16 g a bes a bes} e,8 g'~ \tuplet 3/2 {g16 cis, d e d e a, e' fis g\bracketizeSlur( fis e)} |
  \tuplet 3/2 {d16 a b c! b c} fis,8 a'8~ \tuplet 3/2 {a16 dis, e fis e fis b, fis' g a\bracketizeSlur( g fis)} \slurSolid |
  e8 r r4 r2 | r2 r8 \tuplet 3/2 {\once \undo \omit TupletNumber c16\f( b a) a( g fis) fis( g a)} |
  b,8 r r4 r r16. e'32[\paren\p e,16. d'32] | c8 r r16. fis32[ e16. g32] c,8 r r16. a32[ e'16. a32] |
  dis,1 | fis4 r r16. dis32[\paren\f e16. fis32] b,8 dis |
  \mark \default e8 r r4 r8 gis8\paren\p a c | dis,8[ fis16. e32] fis8 a fis,2~ |
  fis8 r r4 r2 | r16. e'32[_\brack\f c16. e32] a,16.[ c32 fis,16. a32] b,16.[ d'32 b16. d32] gis,16.[ b32 e,16. gis32] |
  a,4 c''8( b) r4 b8( a) |
  dis,8 fis \tuplet 3/2 {\once \undo \omit TupletNumber g16( a b)} a8~ \tuplet 3/2 {a16 g a dis, e fis g a b} c16. dis,32 |
  e16.[ b32 c16. a32] g8 fis \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber b,16\bracketizeSlur( c d!) e\bracketizeSlur( fis! gis) a\bracketizeSlur( b c) d\bracketizeSlur( c b)} |
  c8 r r4 \tuplet 3/2 {\once \undo \omit TupletNumber r16 ais b cis b cis fis, cis' d e\bracketizeSlur( dis cis)} |
  \tuplet 3/2 {dis16 fis g a! g a dis, a'b c\bracketizeSlur( b a) g\bracketizeSlur( fis e) c'\bracketizeSlur( b a)} g8 fis-\bracketify\trill \slurSolid |
  e8 r r4 r2 | r8 a,16\f b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a8 r r4 r8 g16.\f f32 \tuplet 3/2 {\once \undo \omit TupletNumber e16( d c) d( e f)} |
  \tuplet 3/2 {e16( d c)} r8 r4 r2 | R1 * 2 |
  r2 r8 d16 e f a g d | e16 a, cis d e g f e d8 fis,\p g a |
  d,8 r r c'bes g16\f a bes d c a |
  b!16 g b c \tuplet 3/2 {\once \undo \omit TupletNumber d16( e f) e( d c)} d8 r r4 |
  r8 e,\p fis gis a16 e a\f b c e d b |
  cis16 a cis d \tuplet 3/2 {\slurDashed \once \undo \omit TupletNumber e16\bracketizeSlur( g f) e\bracketizeSlur( d cis)} a'8 cis,\p d e |
  a,8 bes a g f e' d cis | d8 g\paren\f f e d r r4 | R1 * 2 |
  \tuplet 3/2 {\once \undo \omit TupletNumber r16 bes\paren\p c d c d g, d' e f\bracketizeSlur( e d) e e f g f g c, g' a bes\bracketizeSlur( a g)} |
  a8 bes,4 a g f8~ | f8 e\bracketizeSlur( d) \slurSolid bes' a16.[ a'32\f g16. bes32]
  \tag #'parts {
    \footnote "*)" #'(0 . 2) \markup {"*)" \long_dotted_rhythm_footnote_A} e,8.\trill
  }
  \tag #'score {
    \once \override Staff.Script.outside-staff-priority = #400 e8.\trill^"*)"
  }
  d16 |
  \mark \default d8 r r4 f2\p | b,1 |
  r8 a,16\f b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a16 e a b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a8 r r4 c2\paren\p | fis,1 | e8 r b'\p( c) r4 e,8( dis) |
  \tuplet 3/2 {\once \undo \omit TupletNumber r16 gis,\f a b a b e, b' c \slurDashed d!\bracketizeSlur( c b) e b c d c d gis, b c d\bracketizeSlur( c b)} \slurSolid |
  e8 r r4 r8 \tuplet 3/2 {gis16\f( a b) \slurDashed a( b c) \slurSolid gis( a b) | a( b c)}
  r8 r4 r8 \tuplet 3/2 {fis,16( g a) g( a b) fis( g a) | g( a b)}
  r8 r4 r2 | g1\trill | fis1\trill |
  <g b, d,>8 r r4 r16 d,\p e fis \tuplet 3/2 {\once \undo \omit TupletNumber g16( a b) a( g fis)} |
  g8 c, b a g e''\f-. d-. c-. |
  \tuplet 3/2 {b16[\p( a g)} d'8]-. \tuplet 3/2 {a16[( b c)} fis8]-. \tuplet 3/2 {b,16[( c d)} g8]-. \tuplet 3/2 {c,16[( d e)} g,8]-. |
  \tuplet 3/2 {a16[( b c)} fis,8] \tuplet 3/2 {a,16 c fis \slurDashed a\bracketizeSlur( g fis)} g8 g'\f d b |
  r16 g d'\bracketizeSlur( e) \slurSolid f a g d e2~ | e2 d~ | d2 c8 r r \tuplet 3/2 {\once \undo \omit TupletNumber c16\p( d e)} |
  f8 r r \tuplet 3/2 {a,16( b c)} d8 r r \tuplet 3/2 {f!16( e f)} |
  d'8 r r \tuplet 3/2 {fis,16( g a)} dis,8 r r \tuplet 3/2 {f16( e d)} |
  \mark \default d8 r r c~ c b4 a8~ | a8 gis \tuplet 3/2 {d'16( e f) b,( c d)} gis,8 d'~ \tuplet 3/2 {d16( c b) \slurDashed a( gis fis)} \slurSolid |
  e8 r fis r gis r a r | b8 r r f'~ f e4 d8~ |
  d8 c4 bes8~ bes a~ a16. a32 gis16. a32 | b!8 b4 b8~ b gis' r b,^"pizz." |
  r8 gis r b r a r c' | r8 a r c, r cis r e |
  r8 cis r a r a r a | r8 d r f r b, r d |
  r8 gis, r gis' r a r a | r8 a r a r gis r b |
  r8 a r a r gis r gis | \mark \default a8 r r b, a r r f |
  e8
  \tag #'score {
    a16 \footnote "*)" #'(0.01 . 0.01) \markup{"*)" See editorial note for the placement of " \"coll'arco\"" and \dynamic f.} ^"[coll'arco]" \brack\f
  }
  \tag #' parts {
    a16\brack\f^"[coll'arco]"
  }
  b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a8 r r4 r8 g!\p( e cis) | a8( \phrasingSlurDown d\bracketizeSlur\( f b\)) d2 | c8 r r16. a,32[ c16. e32] a8 r r4 |
  r8 \slurDashed a,\bracketizeSlur( gis)[ \slurSolid \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c])} b8 dis( e)[ \tuplet 3/2 {a,16( gis fis])} |
  gis8 dis'( e)[ \tuplet 3/2 {fis,16( e dis])} e8 \slurDashed c\bracketizeSlur( b) \slurSolid r |
  r2 r8 b'( d f!) | b2~ b8[ a16.\f f32] e8 gis |
  a8 r r \tuplet 3/2 {\once \undo \omit TupletNumber cis,16\p( d e)} d8 r r \tuplet 3/2 {a'16( b c!)} |
  b1~ | b1~ | b8 r r4 r2 |
  r8 a,,16\f b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  a16 e a b c e d b c a c e \tuplet 3/2 {\once \undo \omit TupletNumber a16( b c) b( a gis)} |
  \tuplet 3/2 {a16( e) e f( dis e) f( dis e) f( dis e) gis,( a b) a( b c) b( e d) c( b a)} |
  \tuplet 3/2 {\slurDashed gis16( e)\p e f( dis e) f( dis e) f( dis e) \slurSolid gis,( a b) a( b c) b( e d) c( b a)} |
  \tuplet 3/2 {gis16 e''-.\f f-. g!-. f-. g-. a, e' f \slurDashed g\bracketizeSlur( f e) f d e f e f g,! d' e f\bracketizeSlur( e d)} \slurSolid |
  \appoggiatura d8 e[ c16. e32] a,16.[ e'32 fis,16. e'32] \tuplet 3/2 {\once \undo \omit TupletNumber \appoggiatura e16 d16( c d)} b16. d32 gis,16.[ d'32 e,16. d'32] |
  \tuplet 3/2 {\once \undo \omit TupletNumber c16( b a) f'( e d) c( b a) gis( a b)} \phrasingSlurUp e,8.\bracketizeSlur\(([ fis32 gis)] \tuplet 3/2 {\once \undo \omit TupletNumber a16\)-. b-. c-. d-. e-. f!-.} |
  \tuplet 3/2 {e16-. d-. c-. b( c a)} e16.[ a32 b16. gis32] a16. a,32 \tuplet 3/2 {\once \undo \omit TupletNumber f'16( e d)} c8 b\trill |
  a4 r r2 \bar "|."|
}