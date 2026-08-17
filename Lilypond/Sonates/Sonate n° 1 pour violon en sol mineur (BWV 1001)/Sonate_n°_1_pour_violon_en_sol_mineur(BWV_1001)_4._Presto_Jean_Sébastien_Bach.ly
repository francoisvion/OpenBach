\version "2.24.4"
\paper {
    page-top-space = #0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}
#(set-global-staff-size 19)
\header {
  title = "4. Presto"
  subtitle = "Sonate n° 1 pour violon en sol mineur"
  subsubtitle = "6 sonates pour violon"
  opus = "BWV 1001"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
}
melody = \relative g'' {
  \repeat volta 2 {
    g16 [ bes g  d g  d ] |
    bes16 [ d bes  g bes  g ] |
    d16 [ g d  bes d  bes ] |
    g16 [ bes d  g bes  d ] |
    g16 [ d (c  bes a  g )] |
    fis16 [ d fis  a d  fis ] |
    a16 [ es (d  c bes  a) ] |
    g16 [ d g  bes d  g ] |
    bes16 [ g es  c es  g ] |
    a16 [ f d  bes d  f ] |
    g16 [ es c  a c  es ] |
    d,16 [ g' (fis  g a  c,) ] |
    g16 [ c (bes  c d  f, )] |
    c16 [ f' (e  f g  bes, )] |
    f16 [ bes (a  bes c  es, )] |
    bes16 [ es' (d  es f  aes,) ] |
    es16 [ bes es  g es  g ] |
    c16 [ g c  es c  es ] |
    f,16 [ c f  a f  a ] |
    d16 [ a d  f d  f ] |
    g,16 [ d g  bes g  bes ] |
    es16 [ bes es  g es  g ] |
    a,16 [ f a  c a  c ] |
    f16 [ c f  a f  a ] |
    bes,16 [ (c d)  bes' a  bes ] |
    c,16 [ (d es)  bes' a  bes ] |
    d,16 [ (es f)  bes a  bes ] |
    es,16 [ (f g)  bes a  bes ] |
    a,16 [ (c es)  g f  es ] |
    d16 [ (bes) es  (bes) f'  aes, ] |
    g16 [ (a bes)  d, c  a' ] |
    bes,16 [ d (c  bes a  g ] |
    a16) [ g' (fis  e d)  c' ] |
    bes16 [ ( a g )  f' (e  d )] |
    cis16 [ bes' (a  g f  e )] |
    f16 [ (d) g  (d) a'  c, ] |
    bes16 [ a' (g  f e  d) ] |
    e16 [ (c) f  (c) g'  bes, ] |
    a16 [ g' (f  e d  cis) ] |
    d16 [ (bes) e  (bes) f'  a, ] |
    g16 [ f' (e  d cis  b )] |
    cis16 [ (a) d  (a) e'  g, ] |
    f16 [ d' bes  g e  c' ] |
    d,16 [ bes' g  e c  a' ] |
    bes,16 [ g' e  cis a  f' ] |
    g,16 [ f' (e  d cis  b) ] |
    a16 [ d cis  (e) d  (f) ] |
    a,16 [ e' d  (f) e  (g) ] |
    a,16 [ f' e  (g) f  (a) ] |
    bes,16 [ g' fis  (a) g  (bes) ] |
    cis,16 [ bes' (a  g f  e) ] |
    f16 [ d f  a d  f ] |
    << { a16 [ d, a8 cis ] } \\
       { s8 a8 [ <a, g'>8 ] } >> |
    <d fis d'>4.  |
  }
  \repeat volta 2 {
    d16 [ a d  fis d  fis ] |
    a16 [ fis a  d a  d ] |
    fis16 [ d fis  a fis  a ] |
    d16 [ a fis  d a  fis ] |
    d16 [ (e fis  g a  bes ] |
    c16 ) [ es c  a c  a ] |
    fis16 [ d fis  a d  c ] |
    bes16 [ d bes  g d  bes ] |
    g16 [ (a bes  c d  es ] |
    f16) [ gis f  d f  d ] |
    b16 [ g b  d g  f ] |
    es16 [ c es  g c  d ] |
    es16 [ c gis  f gis  c ] |
    d16 [ bes g  es g  bes ] |
    c16 [ gis f  d f  gis ] |
    g,16 [ c' (b  c d)  f, ] |
    c16 [ f' (es  f g)  bes, ] |
    f16 [ bes (gis  bes c)  es, ] |
    bes16 [ es' (d  es f)  aes, ] |
    es16 [ aes (g  aes bes)  des, ] |
    aes16 [( c f  aes g  f )] |
    b,16 [( d f  aes g  f )] |
    c16 [( e f  aes g  f )] |
    d16 [( f b  c d  f, )] |
    es16 [( g c  d es  c )] |
    aes'16 [( g f  es d  c )] |
    g'16 [ d es  c g  b ] |
    c,16 [ f (es  d c  bes )] |
    a16 [ c f  c f  a ] |
    f16 [ a c  a c  es ] |
    c16 [( es a  g f  es )] |
    d16 [( c bes  c d  e )] |
    fis16 [ a c  a fis  a ] |
    fis16 [ c fis  c a  c ] |
    a16 [ fis a  fis d  c' ] |
    bes16 [ g bes  g e  d' ] |
    c16 [ a c  a fis  es' ] |
    d16 [ bes d  bes g  f' ] |
    es16 [ c es  c a  g' ] |
    fis16 [ (d e  fis g  a )] |
    bes16 [ d, g  bes c,  es ] |
    a16 [ f d  bes d  f ] |
    g16 [ bes, es  g a,  c ] |
    f16 [ d bes  g bes  d ] |
    es16 [ g, c  es f,  a ] |
    d16 [ bes g  e g  bes ] |
    c16 [ (a) bes  (g) fis  a ] |
    d,16 [ (e fis  g a  bes )] |
    c16 [ (es) d  (g) fis  (bes) ] |
    a16 [ (g fis  e d  c )] |
    bes16 [ es d  (bes) c  (a) ] |
    f16 [ d' c  (a) bes  (g) ] |
    es16 [ c' bes  (g) a  (fis) ] |
    d16 [ bes' a  (fis) g  (es) ] |
    c16 [ a' g  (e) fis  (d) ] |
    bes16 [ d' (c  bes a  g) ] |
    es'16 [ (d c)  bes' (a  g) ] |
    fis16 [ (g a)  d, es  c ] |
    f,16 [( b d)  aes g  f ] |
    e16 [ g c  e g  bes, ] |
    es,16 [ (a c)  g f  es ] |
    d16 [ f bes  d f  aes, ] |
    g16 [ es' (bes  g es  d) ] |
    c16 [ es' (c  bes a  g ] |
    fis16) [ d' (a  fis d  c ] |
    bes16) [ d' (bes  a g  f ] |
    e16) [ c g'  bes, a  g' ] |
    fis16 [ d a'  c, bes  a' ] |
    g16 [ es bes'  d, c  bes' ] |
    a16 [ f c'  es, d  c' ] |
    bes16 [ g d'  f, e  d' ] |
    c16 [ a es'  g, fis  es' ] |
    d16 [ bes g'  bes, a  c ] |
    bes16 [ g fis  a d,  c ] |
    bes16 [ g' fis  (a) g  (bes) ] |
    c,16 [ a' g  (bes) a  (c) ] |
    d,16 [ bes' a  (c) bes  (d) ] |
    es,16 [ c' b  (d) c  (es) ] |
    fis,16 [ es' (d  c bes  a) ] |
    bes16 [ d g  bes g  d ] |
    bes16 [ g d8 <d c' fis>8 ] |
    <g, d' bes' g' >4. \bar "|."
  }
}
\score {
	\context Staff <<
        \set Staff.instrumentName = "Violon"
        { \clef treble \key d \minor \time 3/8 \melody  }
    >>
	\layout { }
 	 \midi { }
}
