\version "2.22.0"

scoreBFlute = \relative c'' {
  e4 f8 \appoggiatura c8 b4 c8 |
  \appoggiatura e16 \tuplet 3/2 {d16( c d)} g,8[ b~] b c r |
  R2. | f8 e es~ es16 d32 c d16( e32 f) e16( f32 g) |
  f4.~-\bracketify\trill f8 e r |
  a,16 \slurDashed d32\bracketizeSlur( e fis16) fis32\bracketizeSlur( g a16) a32\bracketizeSlur( g fis16) fis32\bracketizeSlur( g a16) a32\bracketizeSlur( b c16) b32\bracketizeSlur( a) \slurSolid |
  g4.~ g8. \slurDashed a32\bracketizeSlur( g fis e d c) \slurSolid | b8 g' fis~ fis g r |

  r16 c g e c c' r f, d b g g' |
  r16 a, f d d' g, r g g' c, b d |
  g,8 r r r16 c c f f gis, | a8 r r r16 g! g c c b |
  b16 g' d b g b d g b8 r | r16 c, a fis d fis a d fis8 r |
  r16 b, g e e' a, r g' e c a a' | r16 g, b e d a r d, d' b g8 |

  \mark #7 d'4 e8 \appoggiatura b8 a4 b8 |
  \appoggiatura d16 \tuplet 3/2 {\slurDashed c16( b c)} \slurSolid a'8[ c,]~ c\trill b r |
  bes32 a bes8 e32 f g16 bes, bes8\trill a r |
  dis4.~ dis8 e16 f32 e d c b16 |
  \appoggiatura b8 c4 d8 \appoggiatura a8 gis4 a8 |
  \appoggiatura c16 \tuplet 3/2 {\slurDashed b16( a b)} \slurSolid e,8[ gis]~ gis a r |
  r4 r8 b32 a gis b a gis fis a gis16 b32 e | a8~ a32 gis fis e b'16 d, d8 c es~ |
  es32 c d es d bes c d c a bes c bes8 c\turn d~ |
  d32 bes c d c a bes c bes g a bes a4.~ |
  a16 g32 a b16 b32 c d16 d32 e f16 e32 f g16 e c8~ |
  c8 f  a~ \slurDashed a32\bracketizeSlur( g fis g) \slurSolid d'4~ |
  d32 c b16 c g8 a16 \appoggiatura e16 d4 e8 |
  \appoggiatura g16 \tuplet 3/2 {\slurDashed f16( e f)} d'8[ f,]~ f\trill e g~ |
  g8 fis4~\trill fis8 g16 a32 bes a g f e |
  d32 cis d8 gis32 a b16 d, d8\trill cis16 e g8~ |
  g8 fis f~ f16 e32 d e16\bracketizeSlur( fis32 g) fis16\bracketizeSlur( g32 a) |
  g4.~ g8 fis f~ | f8 e es~ es16 d32 c d16\bracketizeSlur( e32 f) e16\bracketizeSlur( f32 g) \slurSolid |
  f4.~-\bracketify\trill f8 e r |
  g,16 c32( d e16) e32( f g16) g32( f e16) e32( f g16) g32( a bes16) a32( g) |
  f4.~ f8 e r |
  e8. \slurDashed f32\bracketizeSlur( e d c b a) \slurSolid g8 a b | c32 b a8 d f,16 f8 e r |

  \mark \default r16 g' d b g g' r c, a fis d d' |
  r16 e c a a' d, r d g, b d, g |
  r16 g e cis' bes g' r e, d a' f d' |
  r16 c a fis' dis b' r c, b a f' e |
  r16 e c a gis a r d b gis e e' |
  r16 f d b b' e, r f e gis, a c |
  bes8 r16a gis b e,8 r16 a b gis |
  a16 c f d d b r f e a c a |
  a'8 r16 a, fis d c'8 r16 a d g, |
  g'8 r16 d g c, c'8 r16 d, a c |
  f16 g d b g g' r g e c g c |
  r16 c a c f a, r d b d g f |
  r16 g, g' e c c' r f, d b g g' |
  r16 a f d d' g, r g g e e c |
  r16 c a c es c r c bes g d d' |
  r16 f d b gis b r e, a cis d bes |
  a8 r16 d, a' d g,8 r16 e16 a dis, |
  e8 r16 e' e, d d8 r16 d d'b |
  a8 r16 a' a, g g8 r16 g g' e |
  d8 r16 d, d' c c8 r16 c f e |
  e16 c' g e c e g, c e8 r |
  r16 b d b g b d, g b8 r |
  r16 e c a a' d, r c a f d d' |
  r16 c e a d, b' r g, \slurDashed g'\bracketizeSlur( e) b\bracketizeSlur( c)~ |
  c8 g' bes a4.~ | a16 gis a c, a b b4.\fermata \bar "|."
}