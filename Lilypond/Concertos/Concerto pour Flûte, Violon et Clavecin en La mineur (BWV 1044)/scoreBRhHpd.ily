\version "2.22.0"

scoreBRhHpd = \relative c'' {
  g'4 a8 \appoggiatura e8 d4 e8 |
  \appoggiatura g16 \tuplet3/2 {f16( e f)} d'8[ f,]~ f\turn e r |
  c'8 b bes~ bes16 a32 g a16( b32 c) b16( c32 d) |
  c4.~-\bracketify\trill c8 b r |
  d,16 \slurDashed g32\bracketizeSlur( a b16) b32\bracketizeSlur( c d16) d32\bracketizeSlur( c b16) b32\bracketizeSlur( c d16) d32\bracketizeSlur( e f16) e32\bracketizeSlur( d) \slurSolid |
  c4.~-\bracketify\trill c8 b r |
  b8. \slurDashed c32\bracketizeSlur( b a g fis e) \slurSolid d8 e\turn fis\turn |
  g32 fis e8 a c,16 \slurDashed c8\bracketizeSlur(\turn b) r |
  \slurSolid e4 f8 \appoggiatura c8 b4 c8 |
  \appoggiatura e16 \tuplet 3/2 {d16( c d)} g,8[ b~] b c r |
  R2. | f8 e \tieDown es~ \appoggiatura {\slurUp f8 \slurNeutral} es16 \tieNeutral d32 c d16( e32 f) e16( f32 g) |
  f4.~-\bracketify\trill f8 e r |
  a,16 \slurDashed d32\bracketizeSlur( e fis16) fis32\bracketizeSlur( g a16) a32\bracketizeSlur( g fis16) fis32\bracketizeSlur( g a16) a32\bracketizeSlur( b c16) b32\bracketizeSlur( a) |
  g4.~ g8. a32\bracketizeSlur( g fis e d c) \slurSolid | b8 g' fis~ fis g r |

  \mark #7 b4 c8 \appoggiatura g8 fis4 g8 |
  \appoggiatura b16 \tuplet 3/2 {\slurDashed a16( g a)} \slurSolid d,8[ fis]~ fis g r |
  cis,4.~\trill cis8 d16 f32 e d c b16 |
  \appoggiatura b16 a32 gis a8 dis32 e fis16 a, a8 gis16 a b8~ |
  b32 a gis16 a e'8 f16 \appoggiatura c8 b4\trill c8 |
  \appoggiatura e16 \tuplet 3/2 {\slurDashed d16( c d)} \slurSolid b'8[ d,]~ d\turn c r |
  f32 e d f e d c e d16 gis32 b d4.~ |
  d32( c b a) b8 gis~\turn gis( a) r |
  r8 r a8~ a32 fis g a g e f g f d e f |
  e8 f\turn g~ g32 e f g f d e f e c d e |
  d4.~ d16 c32 d e16 e32 f g16 g32 a |
  bes16 a32 bes c16 a f d' b8.\mordent a16 g8 |
  e'4 f8 \appoggiatura c8 b4 c8 |
  \appoggiatura e16 \tuplet 3/2 {\slurDashed d16( c d)} g,8[ b]~ b c r |
  es,32 d es8 a32 bes c16 es, es8\turn d a'~ |
  a8 gis4~\trill gis8 a16 bes32 a g f e d |
  e8 a, r r r c'~ | c8 b bes~ bes16 a32 g a16\bracketizeSlur( b32 c) b16\bracketizeSlur( c32 d) |
  c4.~ c8 b bes~ | bes8 a as~ as16 g32 f g16\bracketizeSlur( a32 bes) a16\bracketizeSlur( bes32 c) \slurSolid |
  bes4.~-\bracketify\trill bes8 a r |
  d,16 \slurDashed g32\bracketizeSlur( a b16) b32\bracketizeSlur( c d16) d32\bracketizeSlur( c b16) b32\bracketizeSlur( c d16) d32\bracketizeSlur( e f16) e32\bracketizeSlur( d) |
  c4.~ c8. d32\bracketizeSlur( c b a g f) \slurSolid | e8 c' b~ b c r |

  \mark \default d,4 e8 \appoggiatura b8 a4 b8 |
  \appoggiatura d16 \tuplet 3/2 {\slurDashed c16( b c)} \slurSolid a'8[ c,]~ c\turn b r |
  bes32 a bes8 e32 f g16 bes, bes8\trill a r |
  dis4.~\trill dis8 e16 f32 e d c b16 |
  c4 d8 \appoggiatura a8 gis4\mordent a8 |
  \appoggiatura c16 \tuplet 3/2 {b16( a b)} e,8[ gis]~ gis a r |
  r4 r8 b32 a gis b a gis fis a gis16 b32 e | a8~ a32 gis fis e b'16 d, d8\turn c \appoggiatura {c16 d} es8~ |
  es32 c d es d bes c d c a bes c bes8 c\turn d~ |
  d32 bes c d c a bes c bes g a bes a4.~ |
  a16 g32 a b16 b32 c d16 d32 e f16 e32 f g16 e c8~ |
  c8 f  a~ a32( g fis g) d'4~ |
  d32 c b16 c g8 a16 \appoggiatura e16 d4 e8 |
  \appoggiatura g16 \tuplet 3/2 {\slurDashed f16( e f)} d'8[ f,]~ f\turn e g~ |
  g8 fis4~\trill fis8 g16 a32 bes a g f e |
  \appoggiatura e8 d32 cis d8 gis32 a b16 d, d8\prall cis16 e g8~ |
  g8 fis f~ f16 e32 d e16\bracketizeSlur( fis32 g) fis16\bracketizeSlur( g32 a) |
  g4.~ g8 fis f~ | f8 e es~ es16 d32 c d16\bracketizeSlur( e32 f) e16\bracketizeSlur( f32 g) |
  f4.~ f8 e r |
  g,16 \slurDashed c32\bracketizeSlur( d e16) e32\bracketizeSlur( f g16) g32\bracketizeSlur( f e16) e32\bracketizeSlur( f g16) g32\bracketizeSlur( a bes16) a32\bracketizeSlur( g) |
  f4.~\trill f8 e r |
  e8. f32\bracketizeSlur( e d c b a) \slurSolid g8 a\turn b | c32 b a8 d f,16 f8 e r |
  r4. r16 d'16 c' a dis, e | e2.-\parenthesize\fermata \bar "|."
}
