\version "2.18.0"
\language "nederlands"

scoreDViolinConc = \relative c'' {
  \scoreDGlobal
  d4 ~ -\parenthesize\mordent d16 es f g \grace\parenthesize d8 c4 ~ c16 d es f |
  bes,8 bes'16 g es4 ~ -\parenthesize\turn es16 c' a f es8\trill d16 es |
  \grace\parenthesize es8 d8 c16 bes r4 bes'4 ~ bes16 g a bes |
  c,4 ~ c16 e g bes a4 ~ a16 f d c |
  bes4 ~ bes16 d f a g4 ~ g16 e c bes |
  a16 c e g f4 ~ f16 a bes d e,8.-\parenthesize\mordent f16 |
  f4 r4 as4 ~ as16 f d c |
  b4 ~ b16 c d es f g as b d8 f, |
  \tag #' vn_conc {
    es8 d16 c es'4 ~ es16 d c d32 b c4 ~ |
    c16 bes as g f es d b' c8. d16 d8. c16 |
    c4 r4 es,4 ~ es16 d c es |
  }
  \tag #' ob_conc {
    es8 d16 c es4 ~ es16 d c d32 b c4 ~ |
    c16 bes as g f es d b' c8. d16 d8. c16 |
    c4 r4 es4 ~ es16 d c es |
  }
  \grace\parenthesize es8 d4 ~ d16 bes c d es( f g as) bes[ as32 g as8] ~ |
  as8 g r16 c, d -\parenthesize\turn es \tuplet 3/2 {a,16([ g a)] bes([ a bes)] c([ bes c)] d([ c d)]} |
  \tuplet 3/2 {es16[( d es])} c'8 ~ c16 d, es c d( f bes g) f( es a bes) |
  d,8 -\parenthesize\prall c r4 d4 ~ d16 es f g |
  c,4 ~ c16 d es f bes,8 bes'16 g es4 ~ -\parenthesize\turn |
  es16 c' a f es8 -\parenthesize\trill d16 es d f d bes as8 g16 as |
  g16( a) a( bes) bes4 ~ bes16 a bes g a8. bes16 |
  bes16 d g e f4 ~ f16 bes g d es4 ~ |
  es16 a, bes c d4 ~ d16 g fis g d8( c16. d32) |
  d1 \fermata|

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
