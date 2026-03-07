\version "2.22.0"

scoreBViolinConc = \relative c'' {
  r16^"pizz." c g e c c' r f, d b g g' |
  r16 a f d d' g, r g c e f b, |
  g'8 r r r16 c, c f f gis, | a8 r r r16 g g c c b |
  b16 g d b g b d g b8 r | r16 fis a fis d fis a d fis8 r |
  r16 b, g e e' a, r g e c a a' | r16 g b e d a r d, d' b g8 |

  g4^"coll'arco" a8 \appoggiatura e8 d4 e8 |
  \appoggiatura g16 \tuplet3/2 {\slurDashed f16( e f)} \slurSolid d'8[ f,]~ f\trill e r |
  c'8 b bes~ bes16 a32 g a16( b32 c) b16( c32 d) |
  c4.~\trill c8 b r |
  d,16 \slurDashed g32\bracketizeSlur( a b16) b32\bracketizeSlur( c d16) d32\bracketizeSlur( c b16) b32\bracketizeSlur( c d16) d32\bracketizeSlur( e f16) e32\bracketizeSlur( d) \slurSolid |
  c4.~ c8 b r |
  b8. c32( b a g fis e) d8 e\turn fis\turn |
  g32 fis e8 a c,16 c8(\trill b) r |

  \mark #7 r16^"pizz." g' d b g g' r c a fis d d' |
  r16 e, c a a' d, r d g b d g, |
  r16 g e cis bes g r e' d a' f d' |
  r16 c a fis dis b r c b a f' e |
  r16 e' c a gis a r d b gis e e' |
  r16 f d b b' e, r f e gis, a c |
  bes8 r16a gis b e,8 r16 a b gis |
  a16 c f d d b r f e a c a |
  a,8 r16 a' fis d d'8 r16 a d, g |
  g,8 r16 d'' g, c c,8 r16 d a' c |
  f,16 g d b g g' r g e c g c |
  r16 c a c f a r d, b d g, f' |
  r16 e g e c c' r f d b g g' |
  r16 a, f d d' g, r g g' e e c |
  r16 c a c es c r c bes g d d' |
  r16 f d b! gis b r e, a cis d bes |
  a8 r16 d a d, g8 r16 e16 a dis, |
  e8 r16 e' e d d8 r16 d, d'b |
  a8 r16 a a, g g8 r16 g g' e |
  d8 r16 b' d, c c8 r16 c' f e |
  e16 c g e c e g c e8 r |
  r16 b,d b g b d g b8 r |
  r16 e, c a a' d, r c' a f d d' |
  r16 c, e a d, b' r g c b c8 |

  \mark \default b4^"coll'arco" c8 \appoggiatura g8 fis4 g8 |
  \appoggiatura b16 \tuplet 3/2 {\slurDashed a16( g a)} \slurSolid d,8[ fis]~ fis g r |
  cis,4.~\trill cis8 d16 f32 e d c b16 |
  a32 gis a8 dis32 e fis16 a, a8 gis16 a b8~ |
  b32 a gis16 a e'8 f16 \appoggiatura c8 b4\trill c8 |
  \appoggiatura e16 \tuplet 3/2 {\slurDashed d16( c d)} \slurSolid b'8[ d,]~ d\trill c r |
  f32 e d f e d c e d16 gis32 b d4.~ |
  \slurDashed d32\bracketizeSlur( c b a b8) gis~\trill gis\bracketizeSlur( a) r |
  r8 r a8~ a32 fis g a g e f g f d e f |
  e8 f\turn g~ g32 e f g f d e f e c d e |
  d4.~ d16 c32 d e16 e32 f g16 g32 a |
  bes16 a32 bes c16 a f d' \appoggiatura c8 b8. a16 g8 |
  e'4 f8 \appoggiatura c8 b4 c8 |
  \appoggiatura e16 \tuplet 3/2 {\slurDashed d16( c d)} g,8[ b]~ b c r |
  es,32 d es8 a32 bes c16 es,~ es8\trill d a'~ |
  a8 gis4~\trill gis8 a16 bes32 a g f e d |
  e8 a, r r r c'~ | c8 b bes~ bes16 a32 g a16\bracketizeSlur( b32 c) b16\bracketizeSlur( c32 d) |
  c4.~ c8 b bes~ | bes8 a as~ as16 g32 f g16\bracketizeSlur( a32 bes) a16\bracketizeSlur( bes32 c) |
  bes4.~\trill bes8 a r |
  d,16 \slurDashed g32\bracketizeSlur( a b16) b32\bracketizeSlur( c d16) d32\bracketizeSlur( c b16) b32\bracketizeSlur( c d16) d32\bracketizeSlur( e f16) e32\bracketizeSlur( d) |
  c4.~ c8. d32\bracketizeSlur( c b a g f) \slurSolid | e8 c' b~ b c r |
  r16 c bes'( a) cis,( d) d8 a' c~ | c16 b c a, fis gis gis4.-\parenthesize\fermata \bar "|."
}