\version "2.18.2"
\language "nederlands"
scoreAViolinConc = \relative c'' {
  \scoreAGlobal

  \tag #' vn_conc {
    g8\paren\f g ~ g16 d' bes fis |
    g16 fis g8 ~ g16 d' bes fis |
    \tuplet 3/2{g16( as fis)} g8 ~ g16 d' bes g |
    es'8-. c-. \tuplet 3/2{ es16 ( c b)} c8-. |
    c8 c ~ c16 g' es b |
    c16 b c8 ~ c16 g' es b |
    \tuplet 3/2{c16( des b)} c8 ~ c16 g' es c |
    fis8-. d-. fis16\prall e fis8 |
    a16 g fis e d8 c |
    bes16\trill a bes8 ~ bes16 g fis g |
    cis16 d e d cis b a g |
    g8\trill fis ~ fis16 d e fis |
    g8 g ~ g16 d' bes fis |
    g16 fis g8 ~ g16 d' bes g |
  }
  \tag #' ob_conc {
    R2 * 3 |
    r4 \tuplet 3/2{ es'16\paren\f ( c b)} c8-. |
    R2 * 3 |
    r4 fis16\prall e fis8 |
    R2 * 6
  }
  \override TupletNumber.stencil = ##f
  \tuplet 3/2{es16[ d c] bes[ c a] fis'[ es d] c[ d bes]} |
  \tuplet 3/2{g'16[ f es] d[ es c] a'[ g fis] es[ d c]} |
  \tuplet 3/2{bes16[ a g] c[ bes a] d[ c bes] es[ c a]} |
  \revert TupletNumber.stencil
  \tuplet 3/2{fis16 a c} c8 ~
  \override TupletNumber.stencil = ##f
  \tuplet 3/2{c16[ a bes] c[ bes a]} |
  \tuplet 3/2{bes16[ es c] d[ fis, g] c[ bes a] bes[ a g]} |
  \tag #' vn_conc {
    \tuplet 3/2{g16 d c bes c d} g,8 r8 | % 20
  }
  \tag #' ob_conc {
    g'8 r8 r4 | % 20
  }
  \revert TupletNumber.stencil
  \tuplet 3/2{d'16 g a} bes8 ~
  \override TupletNumber.stencil = ##f
  \tuplet 3/2{bes16[ g a] bes[ a g]} |
  \revert TupletNumber.stencil
  \tuplet 3/2{fis16 g a} c,8 ~
  \override TupletNumber.stencil = ##f
  \tuplet 3/2{c16[ d es] a,[ bes c]} |
  \tuplet 3/2{fis,16[ g a] d,[ fis a] c[ bes a] es'[ d c]} |
  \tuplet 3/2{bes16 c d} g,8 ~ \tuplet 3/2{g16[ g a] b[ a g]} |
  \tuplet 3/2{d'16[ c b] f'[ es d] as'[ g f] b[ d f,]} |
  \tuplet 3/2{es16 d c} c'8 ~ \tuplet 3/2{c16[ a bes] c[ bes a]} |
  \tuplet 3/2{g16[ f d] es[ d es] c'[ bes a] g[ a f]} |
  \tuplet 3/2{es16 c es} d8 ~ \tuplet 3/2{d16[ bes c] d[ c bes]} |
  \tuplet 3/2{as16[ g es'] g,[ f d'] f,[ es c'] es,[ d bes']} |
  \tuplet 3/2{a16[ bes c] bes[ a g] a[ g f] es'[ d c]} |
  \tuplet 3/2{d16[ g f] es[ d c]} bes8( a16\trill) bes |
  e8 f ~ \tuplet 3/2{f16[ g a] bes[ a g]} |
  \tuplet 3/2{f16[ es d] g[ f es]} d8( c16\trill) bes |
  \tag #' vn_conc {
    \tuplet 3/2{bes16[ f bes] d[ f a] bes[ f d] bes[ f d]} |
    \revert TupletNumber.stencil
    bes8 bes' ~ bes16 f' d a |
    bes16 a bes8 ~ bes16 f' d a |
    \tuplet 3/2{bes16( c a)} bes8 ~ bes16 f' d a |
    bes8 bes,
  }
  \tag #' ob_conc {
    \tuplet 3/2{bes'16[ f bes] d[ bes d] f[ bes, d] f[ d f]} |
    \revert TupletNumber.stencil
    bes8 r8 r4 |
    R2 * 2 |
    r4
  }
  bes,32 a bes8 d32 f |
  %39
  \override TupletNumber.stencil = ##f
  bes8. f32 es \tuplet 3/2{d16[ es f] es[ d c]} |
  c8 b ~ \tuplet 3/2{b16[ c d] c[ b a]} |
  \tuplet 3/2{g16[ d' f] b,[ f' as] ~ as[ g f] g[ d f] ~} |
  \tuplet 3/2{f16[ es d] es[ c b] c[ g es]} c16 c' ~ |
  \tuplet 3/2{c16[ d es] f[ g as]} bes,16. as'32 g8 |
  \tuplet 3/2{as,16[ bes c] d[ es f]} g,16. f'32 es8 |
  \tuplet 3/2{f,16[ es' d] es,[ d' c] d,[ c' b] as[ g fis]} |
  \tag #' vn_conc {
    \tuplet 3/2{g16 as fis} g8 ~ \tuplet 3/2{g16[ d c] b[ c d]} |
    %47
    \tuplet 3/2{g,16 b'[ c d b f] g,16 b'[ c d b f]} |
    \tuplet 3/2{g,16 c'[ d es c g] g,16 c'[ d es c g]} |
    \tuplet 3/2{g,16 d''[ es f d b] g,16 d''[ es f d b]} |
    \tuplet 3/2{g,16 es''[ f g es c] g,16 es''[ f g es c]} |
    \tuplet 3/2{g,16 f''[ g as f d] g,,16 f''[ g as f d]} |
    \tuplet 3/2{g,,16 es''[ f g es c] g,16 es''[ f g es c]} |
    \tuplet 3/2{g,16 d''[ es f d c] g,16 d''[ es f d c]} |
    \tuplet 3/2{g,16 d''[ es f d b] g,16 d''[ es f d b]} |
  }
  \tag #' ob_conc {
    \tuplet 3/2{g16 as fis} g8 ~ \tuplet 3/2{g16[ d' c] b[ c d]} |
    %47
    \tuplet 3/2{g,16 b[ c d c b] g16 b[ c d c b]} |
    \tuplet 3/2{g16 c[ d es d c] g16 c[ d es d c]} |
    \tuplet 3/2{g16 d'[ es f d b] g16 d'[ es f d b]} |
    \tuplet 3/2{g16 es'[ f g es c] g16 es'[ f g es c]} |
    \tuplet 3/2{g16 f'[ g as f d] g,16 f'[ g as f d]} |
    \tuplet 3/2{g,16 es'[ f g es c] g16 es'[ f g es c]} |
    \tuplet 3/2{g16 d'[ es f d c] g16 d'[ es f d c]} |
    \tuplet 3/2{g16 d'[ es f d b] g16 d'[ es f d b]} |
  }
  %55
  es2 ~ |
  \tuplet 3/2{es16[ f es] d[ es c] f[ g f] es[ f d]} |
  g2 ~ |
  \tuplet 3/2{g16[ as g] f[ g e] as[ bes as] g[ as f]} |
  \tuplet 3/2{b16[ d c] b[ a g] f[ as g] f[ es d]} |
  \tuplet 3/2{es16[ b c] f[ b, c] g'[ b, c] as'[ b, c]} |
  \tuplet 3/2{es,16[ b' c] f,[ b c] g[ b c] as[ b c]} |
  \tag #' vn_conc {
    \tuplet 3/2{f16 d,[ es] f16[ g as] b, c'[ bes] as[ g f]} |
    \tuplet 3/2{f'16 b,,[ c] d[ es f] g, d''[ c] b[ a g]}|
  }
  \tag #' ob_conc {
    f'4 ~ \tuplet 3/2{f16[ c bes] as[ g f]} |
    f'4 ~ \tuplet 3/2{f16[ d c] b[ a g]}|
  }
  \tuplet 3/2{es'16[ c bes] as[ g f] d'[ bes as] g[ f es]}|
  \tuplet 3/2{c'16[ as g] f[ es d] b'[ g a] b[ c d]} |
  \tuplet 3/2{d16[ b c] d[ es f] f[ as g] f[ es d]} |
  \tuplet 3/2{es16 [g f] es[ d c]} c8( b16.) c32 |
  \slurDashed fis8( g) ~ \slurSolid \tuplet 3/2{g16[ a b] c[ bes as]} |
  \tuplet 3/2{g16[ f es] as[ g f]} es8( d16.\prall) c32 |
  \tuplet 3/2{c16[ es c] g[ c g] es[ c' g] es[ g es]} |
  %71
  \revert TupletNumber.stencil
  \tag #' vn_conc {
    c8 c' ~ c16 g' es b |
    c16 b c8 ~ c16 g' es b |
    \tuplet 3/2{c16( des b)} c8 ~ c16 g' es c |
    as'8 f \tuplet 3/2{as16( f e)} f8 |
    bes,8 bes ~ bes16 f' d a |
    bes16 a bes8 ~ bes16 f' d a |
    \tuplet 3/2{bes16( c a)} bes8 ~ bes16 f' d bes |
    g'8 es \tuplet 3/2{g16( es d)} es8 ~ |
  }
  \tag #' ob_conc {
    c,8 r8 r4 |
    R2 * 2 |
    r4 \tuplet 3/2{as''16( f e)} f8 |
    R2 * 3 |
    r4 \tuplet 3/2{g16( es d)} es8 ~ |
  }
  \override TupletNumber.stencil = ##f
  \tuplet 3/2{es16[ es, d] es[ f g] as[ es d] es[ g as]} |
  \tuplet 3/2{bes16[ es, d] es[ as bes] c[ es, d] es[ bes' c]} |
  \tuplet 3/2{d16[ bes a] bes[ c d] es[ bes a] bes[ d es]} |
  \tuplet 3/2{f16[ d c] d[ es f] g[ c, b] c[ fis g]} |
  %83
  \tag #' vn_conc {
    a16 g fis e d8 c |
    bes16\prall a bes8 ~ bes16 g fis g |
    cis16 d e d cis bes a g |
    g8\trill fis ~ fis16 d' e fis |
  }
  \tag #' ob_conc {
    a8 r8 r4 |
    R2 * 2 |
    r4 r16 d,16 e fis |
  }
  %87
  g8 g ~ g16 d' bes fis |
  g16 fis g8 ~ g16 d' bes fis |
  \revert TupletNumber.stencil
  \tuplet 3/2{g16 as fis} g8 ~ g16 d' bes g |
  \override TupletNumber.stencil = ##f
  \tuplet 3/2{c16[ bes as] g[ f es] f[ es d] es[ d c]} |
  \tuplet 3/2{a'16[ g fis] es[ d c] d[ c bes] c[ bes a]} |
  \tuplet 3/2{bes16 g' a bes a g c, g' a bes a g} |
  \tuplet 3/2{d16 g a bes a g es g a bes a g} |
  \tuplet 3/2{a16 es d c d es d fis g a g fis} |
  \tuplet 3/2{g16 d c bes c d cis g' a bes a g} |
  \tag #' vn_conc {
    \tuplet 3/2{fis16[ d fis] a[ fis a] c[ a c] es[ d c]} |
  }
  \tag #' ob_conc {
    \tuplet 3/2{fis,16[ d fis] a[ fis a] c[ a bes] c[ bes c]} |
  }
  \tuplet 3/2{d16[ bes g] d[ bes d] g[ d g] bes[ a g]} |
  \tuplet 3/2{c16[ a fis] d[ a d] fis[ c fis] a[ g fis]} |
  \tuplet 3/2{bes16[ g d] bes[ g bes] d[ bes d] g[ a bes]} |
  \tag #' vn_conc {
    \tuplet 3/2{cis,16[ g' bes] bes[ g cis,] cis[ g' bes] bes[ g cis,]} |
    \tuplet 3/2{c16[ fis a] a[ fis c] c[ fis a] a[ fis c]} |
  }
  \tag #' ob_conc {
    \tuplet 3/2{cis16[ g' a bes a g] cis,[ g' a bes a g]} |
    \tuplet 3/2{c,16[ fis g a g fis] c[ fis g a g fis]} |
  }
  \tuplet 3/2{d16 bes a g fis g e' bes a g fis g} |
  \tuplet 3/2{fis'16 bes, a g fis g g' es d c b c} |
  %104
  c'2 ~ |
  \tuplet 3/2{c16[ a g] fis[ e d] cis[ d fis] a[ bes c]} |
  bes2 ~ |
  \tag #' vn_conc {
    \tuplet 3/2{bes16[ c bes] as[ bes g] as[ c d] es[ c a]} |
    \tuplet 3/2{fis16[ a bes] c[ a fis] d[ es d] c[ bes a]} |
    %109
    g8 g ~ g16 d' bes fis |
    g16 fis g8 ~ g16 d' bes g |
  }
  \tag #' ob_conc {
    \tuplet 3/2{bes'16[ c bes] as[ bes g] as[ c, d] es[ c a]} |
    \tuplet 3/2{fis'16[ a, bes] c[ a fis] d'[ es d] c[ bes a]} |
    %109
    g8 r8 r4 |
    R2 |
  }
  \tuplet 3/2{es'16[ d c] bes[ c a] fis'[ es d] c[ d bes]} |
  \tuplet 3/2{g'16[ f es] d[ es c] a'[ g fis] es[ d c]} |
  \tuplet 3/2{bes16[ a g] c[ bes a] d[ c bes] es[ c a]} |
  \tuplet 3/2{fis16 a c} c8 ~ \tuplet 3/2{c16[ a bes] c[ bes a]} |
  \tuplet 3/2{bes16[ es c] d[ fis, g] c[ bes a] bes[ a g]} |
  \tag #' vn_conc {
    \tuplet 3/2{g16 d c bes c d} g,4\fermata |
  }
  \tag #' ob_conc {
    g'8 r8 r4\fermata |
  }
  \bar "|."
}
