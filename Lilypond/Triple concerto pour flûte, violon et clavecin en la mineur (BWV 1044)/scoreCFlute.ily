\version "2.22.0"

scoreCFlute = \relative c'' {
  R1 * 4 | e4_\brack\f c' b a | g2 fis | e2 dis | e2 d! | c2 cis |
  d4 r r2 | r4 f g, e' | f,4 d' e, d' |  c4 a b cis |
  d1~ | d4 a' g f | e4 c' b a | g2 gis-\bracketify\trill | a4 r r2 |
  r4 f d' e, | c'4 d, b'2~ | b8 e, a2 g4 | f1~ |
  f4 b, e d | c2 b | a4 r r2 | R1 * 10 |
  \tag #'parts {
    <>^\markup \tiny Cembalo
    \cueDuring "scoreCRhOneHpdI" #UP {R1} |
  }
  \tag #'score {
    R1 |
  }
  \mark #9 e'2 fis | b,4 c' d, b' | c,4 a' b, a' | g4 r r2 |
  R1 | d4 bes' a g | f2 es | d2. cis4 | d4 r r2 |
  R1 * 8 | r2 e8_\brack\p r c' r | b8 r a r g r r4 | R1 * 4 |
  r4 d'\p e, c' | d,4
  \footnote "*)" #'(0 . 0.01) \markup {"*)" \dotted_rhythm_footnote_C} b'8.
  d,16 \tuplet 3/2 {\once \undo \omit TupletNumber c8( b a)} r4 |
  R1 | a4 f' e d | c4 a' b2 | e,4 r r2 | r4 d'2 c4~ |
  c4 b8. a16 gis2 | a1~ | a4 r r cis | d4 r r2 | R1 * 2 |
  r2 e,2\p | dis4 fis b, dis | e4 b g e | g4 bes a a' |
  e2.
  \tag #'parts {
    \footnote "**)" #'(0 . 1) \markup {"**)" \eighth_to_triplet_footnote_C} d8
  }
  \tag #'score {
    \footnote "*)" #'(0 . 1) \markup {"*)" \eighth_to_triplet_footnote_C} d8
  }
  c | b4 c2 d4 | e2 r | R1 * 2 | r2 r4 f4~ |
  f4 d2 b4 | \mark #11 c4 r r2 | r4 f2_\markup {\dynamic pf} e4~ | e4 d2 gis4 | a1 |
  g4 a g fis | e4 c2 b4\paren\p~ | b4 a a2~ | a4 g r gis'4\paren\f |
  r4 a r ais | r4 b r ais | r4 b r b | r4 ais\p d ais |
  b8. a!16 g2 fis4~ | fis4 e8. d16 cis4 ais'4\paren\f |
  r4 b r dis, | r4 e f! d'\paren\p | c4 b a r | R1 * 2 |
  c,4 a'( g fis) | e4 r r2 | R1 * 4 | r4 d'2\mf c4~ |
  c4 b b2\paren\p | a2 bes | a2 c | b2 d | c4 r r2 | R1 |
  r2 r 4 \tuplet 3/2 {\once \undo \omit TupletNumber g,8( f es)} |
  b'4 r r \tuplet 3/2 {\once \undo \omit TupletNumber es8( d c)} | d'4 r r2 | R1 | R1 |
  r4 a\f b, g' | a,4 f' g, f' | e8 fis g2 fis4 | g4 e' d c |
  b2 a | g2 fis |g2 f! | e1~ | e4 a g f | e4 a d, g | c,2 b4 d |
  e4 f g2~ | g4 bes a g | f4 g a2~ | a4 c b! a |
  g4 a b2~ | b4 a g fis | e4 c' d, b' | c,4 a' b, a' |
  g1~ | g1~ | g4 f2 e8 d | e4. f8 d4.-\bracketify\trill c8 | \mark \default c4 r r2 |
  R1 | g4\pp f'( e d) | c4( b c) e | a,4 r r2 | R1 |
  d4 bes'( a g) | f4( e d cis) | d4 d' e, c' | d,4 bes' cis,2 |
  d1~ | d4 \slurDashed a'( g fis) \slurSolid | g4 r r2 | R1 * 4 | r2 c2\paren\p |
  a4 c fis, a | d,4 d, d' e | a,2 d2~ | d4 cis r2 |
  R1 * 2 | r2 r4 as'4 | bes,4 g' as, \tuplet 3/2 {\once \undo \omit TupletNumber f'8( g as)} |
  e4 r r2 | R1 | \mark \default r4 d( c) r | r4 \slurDashed bes( a) r | r4 g( f) r |
  r4 f( e) r | r4 a( g) r | r4 c( bes) \slurSolid r | d4 r e r |
  f4 r e r | r4 c'_\brack\mf d, b' | c,4 a' b,2~ | b4 b' e, gis |
  a4 r r2 | R1 * 4 | d8\paren\p r r4 d8 r r4 | d,8\pp r r4 d8 r r4 |
  d'8\mf r r4 d8 r r4 | d,8\pp r r4 d8 r r4 | f8\paren\mf r r4 r2 |
  r4 cis8 r d r e r | f8 r r4 r2 | a,4\f f'( e d) |
  c4( a) bes bes'( | a4) d,( fis) c' | b!4 r r2 | \mark \default a,4\mf f'( e d) |
  c4( b) c( d) | e4 r a,( b) | c4( d) c( b) | a4 gis'( a b) |
  c4 b( a gis) | a4 d( c b) | a4 r r2 | r4 f2 e4~ |
  e4 d d\fermata r4 |
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
  f4 b, e d | c4 e' e, gis | a2 r \bar "|."
}