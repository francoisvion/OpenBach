\version "2.22.0"

scoreBLeftOrgan = \relative c' {
  \repeat unfold 2 {
    a'4 bes8 e,4 f8 |
    \tuplet 3/2 {g16 f g} c,8[ e~] e f\mordent r |
    R2. | bes8 a as~ as16 g32 f g16 a32 bes a16 bes32 c |
    bes4.~ bes8 a r |
    d,16 g32 a b16 b32 c d16 d32 c b16 b32 c d16 d32 e f16 e32 d |
    c4.~ c8. d32 c b a g f | e8 c' b b( c) r |
  }
  \repeat unfold 2 {
    g4 a8 d,4 e8 |
    \tuplet 3/2 {f16 e f} \slurSolid d'8[ f,]~ f\prall e r |
    es32 d es8 a32 bes c16 es, es8\prall d r |
    gis4.~\downprall gis8 a16 bes32 a g f e16 |
    f4 g8 cis,4\prall d8 |
    \tuplet 3/2 {e16 d e} a,8[ cis]~ cis d\mordent r |
    r4 r8 e32 d cis e d cis b d cis16 e32 a | d8~ d32 cis b a e'16 g, g8\prall f\prallup as~ |
    as32 f g as g es f g f d es f es8 f\prall g~ |
    g32 es f g f d es f es c d es d4.~ |
    d16 c32 d e16 e32 f g16 g32 a bes16 a32 bes c16 a f8~ |
    f8 bes  d~ d32 c b c g'4~ |
    g32 f e16 f c8 d16 g,4 a8 |
    \tuplet 3/2 {bes16 a bes} g'8[ bes,]~ bes\prall a c~ |
    c8 b4~\prall b8 c16 d32 es d c bes a |
    g32 fis g8 cis32 d e16 g, g8\prall fis16 a c8~ |
    c8 b bes~ bes16 a32 g a16 b32 c b16 c32 d |
    c4.~ c8 b bes~ | bes8 a as~ as16 g32 f g16 a32 bes a16 bes32 c |
    bes4.~ bes8 a r |
    c,16 f32 g a16 a32 bes c16 c32 bes a16 a32 bes c16 c32 d es16 d32 c |
    bes4.~ bes8 a r |
    a8. bes32 a g f e d c8 d e | f32 e d8 g bes,16 bes8\prall a r |
  }
  s2. * 2 |
}