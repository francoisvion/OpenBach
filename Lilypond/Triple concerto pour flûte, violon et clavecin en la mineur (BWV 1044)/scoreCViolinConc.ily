\version "2.22.0"

scoreCViolinConc = \relative c'' {
  R1 * 4 | e4_\brack\f c' b a | g2 fis | e2 dis | e2 d! | c2 cis |
  d4 r r2 | r4 f g, e' | f,4 d' e, d' |  c4 a b cis |
  d1~ | d4 a' g f | e4 c' b a | g2 gis\trill | a4 r r2 |
  r4 f d' e, | c'4 d, b'2~ | b8 e, a2 g4 | f1~ |
  f4 b, e d | c2 b | a4 r r2 |R1 * 10 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuring "scoreCRhOneHpdI" #UP {R1} |
  }
  \tag #'score {
    R1 |
  }
  \mark #9 e'2 fis | b,4 c' d, b' | c,4 a' b, a' | g4 r r2 |
  R1 | d4 bes' a g | f2 es | d2. cis4 | d4 r r2 | R1 * 8 |
  r2 e8^"pizz."_\brack\p r c' r | b8 r a r g r r4 | R1 * 3 |
  r4 b\paren\p^"(coll'arco)" c, a' | b,4 gis' a r | R1 * 3 | a,4 f' e d |
  c4 b' a gis | a2 g! | f2 e~ | e1 | d4 g f e | d4 r r2 |
  R1 * 4 | r2 e~\p | e4 g cis, e | a,4 a, a' b | e,4 a, a'2~ |
  a4 gis r2 | R1 | r2 r4 f'~ | f4 d2 b4~ | b4 f' e gis |
  \mark #11 a4 r r2 | r4 d,2\mf c4~ | c4 b2 b'4 | c4 e, fis b~ |
  b4 a b2~ | b4 a2 g4~\p | g4 fis fis2~ | fis4 e r f\paren\f |
  r4 e r g | r4 fis r g | r4 fis r cis | r2 r4 fis\paren\p~ |
  fis4 e2 d4~ | d4
  \footnote "*)" #'(0 . 1) \markup {"*)" \dotted_rhythm_footnote_C} cis8.
  b16 ais4 cis\paren\f | r4 fis, r c'! |
  r4 b b, f'!\paren\p | e4 d c r | R1 * 2 | fis4 c'( b a) | g4 r r2 |
  R1 * 4 | r4 f'2\mf e4~ | e4 d8. c16 b2\p | c2 cis |
  d2 dis | e2 f | e4 r r2 | R1 |
  r4 \tuplet 3/2 {\once \undo \omit TupletNumber es,8( d c)} c'4 r |
  r4 \tuplet 3/2 {\once \undo \omit TupletNumber f8( es d)} c'4 \tuplet 3/2 {\once \undo \omit TupletNumber fis,8( g fis)} |
  g4 r r2 | R1 | R1 |
  r4 a\f b, g' | a,4 f' g, f' | e8 fis g2 fis4 | g4 e' d c |
  b2 a | g2 fis |g2 f! | e1~ | e4 a g f | e4 a d, g | c,2 b4 d |
  e4 f g2~ | g4 bes a g | f4 g a2~ | a4 c b! a |
  g4 a b2~ | b4 a g fis | e4 c' d, b' | c,4 a' b, a' |
  g1~ | g1~ | g4 f2 e8 d | e4. f8 d4.\trill c8 | \mark \default c4 r r2 |
  R1 | c,4\pp a'( g f) | e4 b'( a gis) | a4( gis a) g' | f4 r r2 |
  r4 g( f e) | d4( e d cis) | d2 c! | bes2 a | a1 |
  g4 c( bes a) | g4 r r2 | R1 * 2 | r2 a\p | gis4 b e, gis |
  a4 e c a | c4 es d d' | a'2. g8. f16 | e4 f2 g4 | a2 r |
  R1 * 2 | r2 r4 c,4 | e,!4 bes' b,! \tuplet 3/2 {\once \undo \omit TupletNumber as'8( g f)} |
  c'4 r r2 | R1 | \mark \default r4 bes( a) r | r4 g( f) r | r4 e( a,) r |
  r4 d( g,) r | r4 f'( cis) r | r4 a'( g) r | a4 r cis r |
  d4 r e r | r4 a,_\brack\mf f' g, | e'4 f, d'2~ | d4 gis, a b |
  c4 r r2 | R1 * 4 | f8\paren\p r r4 f8 r r4 | f,8\pp r r4 f8 r r4 |
  f'8\mf r r4 f8 r r4 | f,8\pp r r4 f8 r r4 | d'8\paren\mf r r4 r2 |
  r4 e,8 r f r cis r | d8 r r4 r2 | r2 e4(\paren\f b') |
  a4( c) e( g) | f4 f, a( a') | gis4 r r2 | \mark \default r2 a,4(\mf f') |
  e4( d c b) | a4( f') e( d) | c4( b a gis) | a( b c d) |
  e4 gis( a b) | e,4 b e, b' | c4 r r2 | r4 d2 c4~ |
  c4 b b\fermata r |
  \shiftTempoLeft \tempo \markup \italic Cadenza R1 * 9 |
  R1^\fermata |
  R1 |
  \tag #'parts {
    <>_\markup \tiny {Cembalo}
    \cueDuring "scoreCRhOneHpdI" #DOWN {R1} |
  }
  \tag #'score {
    R1 |
  }
  \shiftTempoLeft \tempo "[Tempo I.]" R1 * 4 |
  e4\paren\f c' b a | g2 fis | e2 dis | e2 d! | c2 cis |
  d4 r r2 | r4 f g, e' | f,4 d' e, d' |  c4 a b cis |
  d1~ | d4 a' g f | e4 c' b a | g2 gis-\bracketify\trill | a4 r r2 |
  r4 f d' e, | c'4 d, b'2~ | b8 e, a2 g4 | f1~ |
  f4 b, e d | c2 <b e,> | <a e cis>2 r \bar "|."
}