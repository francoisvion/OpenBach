\version "2.18.0"
\language "nederlands"
scoreAViolinI = \relative c'' {
  \scoreAGlobal

  g8\paren\f g ~ g16 d' bes fis |
  g16 fis g8 ~ g16 d' bes fis |
  \tuplet 3/2{g16( as fis)} g8 ~ g16 d' bes g |
  \tuplet 3/2{ es'16 ( c b)} c8-. r4 |
  c8 c ~ c16 g' es b |
  c16 b c8 ~ c16 g' es b |
  \tuplet 3/2{c16( des b)} c8 ~ c16 g' es c |
  fis16\trill e fis8 r4 |
  a16 g fis e d8 c |
  bes16\trill a bes8 ~ bes16 g fis g |
  cis16 d e d cis b a g |
  g8\trill fis ~ fis16 d e fis |
  g8 g ~ g16 d' bes fis |
  g16 fis g8 ~ g16 d' bes g |
  es'8 r fis r |
  g8 r a r |
  bes,8-. [c-. d-. es-.] |
  fis,8 c'8 ~ \tuplet 3/2{c16[ a bes] c[ bes a]} |
  bes8-. [d-. d,-. fis-.] |
  \override TupletNumber.stencil = ##f
  \tuplet 3/2{g16 d c bes c d} g,8 r8 |
  %21
  r8 g''16\p fis g8 r |
  r8 fis16 e fis8 r |
  r8 a16 g a8 r |
  r8 g16 fis g8 r |
  r8 d [b g] |
  r8 es'16 d es8 r |
  r8 c [a f] |
  r8 d'16 c d8 r |
  R2 * 3 |
  r8 f16 e f8 r |
  R2 |
  r8 d16 c d8 bes16 a |
  %35
  \revert TupletNumber.stencil
  bes8\paren\f bes ~ bes16 f' d a |
  bes16 a bes8 ~ bes16 f' d a |
  \tuplet 3/2{bes16( c a)} bes8 ~ bes16 f' d a |
  bes16 a bes8 r4 |
  %39
  r8 d,16\paren\p es f8 as |
  r8 b,16 c d8 f |
  r8 f' [b, d] |
  r8 c16 b c8 r |
  R2 * 3 |
  r8 f16\paren\f es f8 d |
  %47
  b2\paren\p( |
  c2) |
  d2 |
  c2 |
  b2 |
  c2 ~ |
  c2 |
  b2 |
  %55
  c8\paren\f c ~ c16 g' es b |
  c16 b c8 r4 |
  \tuplet 3/2{ \slurDashed c16( des b) \slurSolid } c8 ~ c16 g' es c |
  as'8 r r4 |
  R2 |
  c,,8\paren\p [d es f] |
  g8 r r4 |
  r8 as8 [as( c)] |
  r8 b [b( d)] |
  r8 as4 g8 ~ |
  g8 f4 f8 ~ |
  f8 b, r4 |
  R2 |
  fis''8( g) r4 |
  R2 |
  r8 c,, [es g] |
  %71
  \revert TupletNumber.stencil
  c8\paren\f c ~ c16 g' es b |
  c16 b c8 ~ c16 g' es b |
  \tuplet 3/2{c16( des b)} c8 ~ c16 g' es c |
  \tuplet 3/2{as'16( f e)} f8 r4|
  bes,8 bes ~ bes16 f' d a |
  bes16 a bes8 ~ bes16 f' d a |
  \tuplet 3/2{bes16( c a)} bes8 ~ bes16 f' d bes |
  \tuplet 3/2{g'16( es d)} es8 r4 |
  es2\paren\p ~ |
  es2 |
  d8 r es r |
  d8 r g r |
  %83
  a16\paren\f g fis e d8 c |
  bes16 a bes8 ~ bes16 g fis g |
  cis16 d e d cis bes a g |
  g8\trill fis r4 |
  %87
  r8 g'16\paren\p [fis g8 d] |
  r8 g16 [fis g8 d] |
  r8 g16 [fis g8 d] |
  R2 * 2|
  g,2 ~ |
  g4 es' ~ |
  es4 d ~ |
  d4 cis |
  d2 ~ |
  d2 |
  es2 |
  d2 |
  g2 |
  fis2 |
  R2 * 2|
  %104
  c8\paren\f c ~ c16 g' es c |
  fis16 e fis8 r4 |
  g,8 g ~ g16 d' bes g |
  es'16 d es8 r4 |
  R2 |
  %109
  \revert TupletNumber.stencil
  g,8 g ~ g16 d' bes fis |
  g16 fis g8 ~ g16 d' bes g |
  es'8 r fis r |
  g8 r a r |
  bes,8-. [c-. d-. es-.] |
  fis,8 c'8 ~ \tuplet 3/2{c16[ a bes]}
  \override TupletNumber.stencil = ##f
  \tuplet 3/2{c[ bes a]} |
  bes8 [d d, fis] |
  \tuplet 3/2{g16 d c bes c d} g,4\fermata |

  \bar "|."

}


%{
convert-ly (GNU LilyPond) 2.18.0  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29, 2.17.97
%}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.18.0
%}
