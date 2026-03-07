\version "2.22.0"

scoreBRightOrgan = \relative c'' {
  \repeat unfold 2 {
    c4 d8 g,4 a8 |
    \tuplet3/2 {bes16 a bes} g'8[ bes,]~ bes\prall a r |
    f'8 e es~ es16 d32 c d16 e32 f e16 f32 g |
    f4.~ f8 e r |
    g,16 c32 d e16 e32 f g16 g32 f e16 e32 f g16 g32 a bes16 a32 g |
    f4.~ f8 e r |
    e8. f32 e d c b a g8 a b |
    c32 b a8 d f,16 f8\prall e r |
  }
  \repeat unfold 2 {
    e'4 f8 b,4 c8 |
    \tuplet 3/2 {d16 c d} g,8[ b]~ b c\mordent r |
    fis4.~\downprall fis8 g16 bes32 a g f e16 |
    d32\prall cis d8 gis32 a b16 d, d8\prall cis16 d e8~ |
    e32 d cis16 d a8 bes16 e,4\prall f8 |
    \tuplet 3/2 {g16 f g} \slurSolid e'8[ g,]~ g\prall f r |
    bes32 a g bes a g f a g16 cis32 e g4.~ |
    g32( f e d) e8 cis\trill cis( d) r |
    r8 r d8~ d32 bes c d c a bes c bes g a bes |
    a8 bes\prall c~ c32 a bes c bes g a bes a f g a |
    g4.~ g16 f32 g a16 a32 bes c16 c32 d |
    es16 d32 es f16 d bes g' e8.\prall d16 c8 |
    a'4\mordent bes8 e,4 f8 |
    \tuplet 3/2 {g16 f g} \slurSolid c,8[ e]~ e f\mordent r |
    as,32 g as8 d32 es f16 as, as8 g d'~ |
    d8 cis4~\prall cis8 d16 es32 d c bes a g |
    a8 d, r r r f'~ | f8 e es~ es16 d32 c d16 e32 f e16 f32 g |
    f4.~ f8 e es~ | es8 d des~ des16 c32 bes c16 d32 es d16 es32 f |
    es4.~ es8 d r |
    g,16 c32 d e16 e32 f g16 g32 f e16 e32 f g16 g32 a bes16 a32 g |
    f4.~ f8. g32 f e d c bes | a8 f' e e( f\mordent) r |
  }
  s2. * 2 |
}