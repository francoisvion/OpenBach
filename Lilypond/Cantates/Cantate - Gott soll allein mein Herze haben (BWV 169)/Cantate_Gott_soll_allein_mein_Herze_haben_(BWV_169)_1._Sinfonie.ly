\version "2.27.1"

\include "Cantate_Gott_soll_allein_mein_Herze_haben_(BWV_169)_common.ly"

vturn = \markup\tiny{\rotate #90 {\musicglyph "scripts.turn"}}

mvtItimeLine = {
    \time 4/4
    \key d \major
    \partial 8
    s8 
    s1*111 
    s2..
    \jump "Da Capo"
    \fine}

mvtIobI = \transpose a c' <<
\relative c'' {
    r8
    R1
    r2 r4 r8 e8-.
    fis8-. e8-. g8-. fis8-. e8 d8 a'4~
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a16 g'16 fis16 e16
    a,16 fis'16 e16 d16 a16 e'16 d16 cis16 a16 d16 cis16 b16 a16 c16 b16 a16
    b16 a16 g16 fis16 e16 fis'16 e16 d16 cis16 b16 a16 g16 fis16 g'16 fis16 e16
    d16 cis16 b16 a16 g16 a'16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 e16
    d8. e16 e8. d16 d8 r8 r4
    R1*4
    r8 e'8\p d8 cis8 r8 d8 cis8 b8
    r8 b8 a8 gis8 fis8 e8 r4
    R1
    r2 r8 a16 b16 cis16 d16 e16 cis16
    d8 a8 a8 fis8 fis8 d8 d8\noBeam r8
    r2 r4 r8 e'8\pDO\pF
    fis8-. e8-. g8-. fis8\pDS e8 d8 a'4~
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a16 g'16 fis16 e16
    fis8 r8 e8 r8 d8 r8 c8 r8
    b8 r8 cis8 r8 d8 r8 r4
    r4 r8 d8\p e8 b8 b8 gis8
    a4 r4 r2
    r4 r8 fis'8 gis8 b8 b8 gis8
    a4 r4 r2
    R1*2
    r2 r4 r8 b,8-\parenthesize-.
    cis8-. b8-. d8-. cis8-. b8 a8 e'4 ~
    e16 a,16 gis16 a16 b8 a8 gis16 a16 b16 gis16 e16 d'16 cis16 b16
    e,16 cis'16 b16 a16 e16 b'16 a16 gis16 e16 a16 gis16 fis16 e16 g16 fis16 e16
    fis16 e16 d16 cis16 b16 cis'16 b16 a16 gis16 fis16 e16 d16 cis16 d'16 cis16 b16
    a16 gis16 fis16 e16 d16 e'16 d16 cis16 b16 a16 gis16 fis16 e16 fis'16 e16 d16
    cis8. b16 b8. a16 a8 b8 a8 g8
    fis4 e8 d8 cis8 e8 g4 ~
    g8 fis8 r4 r2
    R1*3
    r2 r4 r8 cis'8\pDO
    d8-. cis8-. e8-. d8\pDS cis8 b8 r4
    r2 r16 fis16 a16 cis16 fis16 e16 d16 cis16
    fis,16 d'16 cis16 b16 fis16 cis'16 b16 a16 fis16 b16 a16 gis16 a16 cis16 fis16 eis16
    fis2 ~  fis8 eis8 fis8 b,8
    a8. gis'16 eis8. fis16 fis4 r4
    R1
    r2 r4 r8 e8\pDO
    fis8-. e8-. g8-. fis8\pDS e8 d8 r8 a'8\p
    a8 fis8 fis8 d8 d8 b8 b8 e8
    e8 cis8 cis8 a8 a8 fis8 d8 d'8\f
    b16 d16 e16 fis16 g16 fis16 e16 d16 cis16 e16 fis16 g16 a16 g16 fis16 e16
    d8 cis8 d8 b8 a8 e8 a8 b16 cis16
    d4 r8 fis,8 d4 r8 fis8
    d'4 r8 fis,8 d4 r8 e'8\pDO
    fis8-. e8-. g8-. fis8\pDS e8 d8 a'4 ~
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a8 cis8
    fis8 r8 e8 r8 d8 r8 c8 r8
    b16 a16 g16 fis16 e16 fis'16 e16 d16 cis16 b16 a16 g16 fis16 g'16 fis16 e16
    d16 cis16 b16 a16 g16 a'16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 e16
    d8. e16 e8. d16 d4\fermata r4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r8 d'8( c8 b8) r8 b8(  a8  g8)
    fis4 r4 r4 r8 b8
    e4 r8 g,8 e4 r8 g8
    e'4 r8 g,8 e4 r8 fis'8\pDO
    g8-. fis8-. a8-. g8\pDS fis8 e8 b'4 ~
    b16 e,16 dis16 e16 fis8 e8 dis8 b8 r8 dis8
    e16 b16 c16 a'16 dis,8. e16 e16 e,16 g16 b16 e16 d16 c16 b16
    e,16 c'16 b16 a16 e16 b'16 a16 g16 e16 a16 g16 fis16 g8 g'8 ~
    g8 fis4 e8 ~  e8 dis8 e8 a,8
    g8 e'4 dis8 e4 r4
    R1*2
    r2 d2 ~
    d2 d4 r8 d,8
    g4 r8 b,8 g'4 r8 b,8
    g'4 r8 b,8 g'4 r8 a8\pDO
    b8-. a8-. c8-. b8\pDS a8 g8 d'4 ~
    d16 fis,16 g16 a16 fis16 e'16 d16 c16 b16\f a16 g16 f16 e16 f'16 e16 d16
    c16 b16 a16 g16 fis16 e16 d16 c16 b8 g'8 a,8 fis'8
    g16( b16) b16( dis16) dis16( e16) e16( fis16) fis4 r4
    R1
    fis1~
    fis2 ~  fis8 r8 r4
    r4 fis4 ~  fis8 e4 d8 ~
    d16 b16 ais16 b16 cis8 fis8 ~  fis8 d8 b8 e8
    cis8 ais8 fis8 r r4 r8 fis
    b8 fis8 fis8 d8 b4 r8 fis'8
    a8 fis8 fis8 dis8 b4 r8 b'8
    g'1
    fis1 ~
    fis4 r8 fis8 fis,8 gis8 ais8 b8
    c2 b2
    bes2 a2
    b8 r8 e8 r8 e8 r8 d8 r8
    cis8 r8 b8 r8 cis8 r8 fis8 d8
    ais8 cis8 cis8 e8 ais,8 cis8 cis8 e8
    d4 r4 r16 b,16 d16 fis16 b16 a16 g16 fis16
    b,16 g'16 fis16 e16 b16 fis'16 e16 d16 b16 e16 d16 cis16 d8 d'8 ~
    d8 cis4 b8~ b8 ais8 b8 d8
    e8 r8 fis8 r8 b,4 r8 e8
    fis8 r8 g8 r8 cis,4 r8 fis8
    g8 r8 a8 r8 d,4 r8 g8
    g8(   fis8) fis8(   e8) e8(   d8) d8(   cis8)
    cis4 r8 d8 d8(   cis8) r8 e8
    e8(   d8) r8 fis8 fis8(   e8) r8 g8
    g16 e16 fis8-. fis16 d16 e8-. fis4 r4
    r2 r4 r8
}
\mvtItimeLine
>>


mvtIobII = \transpose a c' <<
\relative c'' {
    r8
    R1
    r2 r4 r8 cis8-.
    d8-. e8-. d8-. cis8-. b8 a8 r8 cis8
    d8 fis8 b,8 a8 g8 b8 e,8 a8
    fis8 r8 e8 r8 d8 r8 d8 r8
    g8 d8 b'16 a16 g16 fis16 e8 cis8 cis'16 b16 a16 g16
    fis8 d8 d'16 cis16 b16 a16 g16 fis16 e16 d16 cis16 b16 a8
    r8 d4 cis8 d8 r8 r4
    R1*4
    r8 cis'8_"(pia)" gis8 a8 r8 b8 fis8 gis8
    r8 e8 fis8 cis8 d8 a8 r4
    R1
    r2 r8 e'8 a8 cis8
    a8 fis8 fis8 d8 d8 a8 a8\noBeam r8
    r2 r4 r8 cis'8\pDO\pF
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 cis8
    d8 fis8 b,8 a8 g8 b8 e,8 a8
    a8 r8 a8 r8 d8 r8 d,8 r8
    d8 r8 a'8 r8 a8 r8 r4
    r4 r8 b8_"pia" b8 gis8 gis8 e8
    e4 r4 r2
    r4 r8 d'8 d8 b8 b8 e8
    e4 r4 r2
    R1*2
    r2 r4 r8 gis,8\pDO
    a8-. b8-. a8-. gis8\pDS fis8 e8 r8 gis8
    a8 cis8 fis,8 e8 d8 fis8 b,8 e8
    cis8 r8 b8 r8 a8 r8 a8 r8
    d8 a8 fis'16 e16 d16 cis16 b8 gis8 gis'16 fis16 e16 d16
    cis8 a8 a'16 gis16 fis16 e16 d16 cis16 b16 a16 b16 d16 cis16 b16
    a8 a'4 gis8 a8 fis8 e8 d8
    cis8 d8 e8 g8 ~  g8 e8 ais8 cis8
    e,4 r4 r2
    R1*2
    r8 fis8 d4 r8 fis8 d4
    r8 fis8 d4 r8 fis8 d8 cis'8
    b2 ~  b8 eis,8 r4
    r2 r4 r8 a8
    b8 r8 cis8 r8 eis8 r8 fis8 r8
    fis,8 r8 a8 r8 b8 r8 cis8 cis8
    fis,8 d'8 cis8 cis8 cis4 r4
    R1
    r2 r4 r8 cis8\pDO
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 fis'8_"pia"
    fis8 d8 d8 a8 b8 d,8 g8 b8
    a8 a8 a8 e8 fis8 a,8 a16 fis'16\f g16 a16
    b4 ~  b16 g16 a16 b16 cis4 ~  cis16 a16 b16 cis16
    d8 fis8 b,8 e8 e,8 a8 d,8 g8
    a4 r8 a8 b4 r8 a8
    a4 r8 a8 a4 r8 e'8\pDO
    d8-. e8-. d8-. cis8\pDS b a r8 cis8
    d8 fis8 b,8 a8 g8 b8 e,8 a8
    a8 r8 a8 r8 d8 r8 d,8 a'8 ~
    a8 d,8 g8 b8 ~  b8 e,8 a8 cis8~
    cis8 fis,8 b8 d8 e4 r8 e8
    a,8 b8 b8 a8 a4\fermata r4
    r2 r8 b8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    R1*2
    r4 r8 b'8 a8 e8 a,8 e'8
    e4 r8 dis'8 e8 b8 e,8 a8\pDO
    g8-. d'8\pDS e4 dis8 e8 fis8 g8
    a8 g8 c,8 a8 fis4 r4
    r2 r4 r8 g8
    a8 r8 b8 r8 dis8 r8 e8 r8
    e,8 r8 g8 r8 a8 r8 b8 b8
    e8 c8 b8 a8 g4 r4
    R1*2
    r2 a2 ~
    a4 d,4 fis2
    d4 g2 d'4
    c8 g8 c8 b8 c8 b4 a8\pDO
    g8-. d8\pDS g4 a8 b8 c8 fis,8
    d8 e8 a,8 fis'8 g2~\f
    g16 d'16 c16 b16 a4 ~  a8 g8 e8 d8
    d16( g16)  g16(  a16) a16( b16) b16( fis16) fis4 r4
    R1
    cis'8 r8 cis8 fis,8 b8 r8 cis8 b8
    ais8 r8 cis8 ais8 b8 r8 r4
    r4 r8 fis8 g8 r8 fis8 r8
    e8 r8 e8 r8 d8 fis4 e8~
    e8 cis8 d8 r8 r2
    fis2 b2
    a2 b4 r8 b8
    b8 g8 g8 e8 e8 fis8 g8 e8
    fis8 gis8 ais8 b8 ais8 b8 cis8 b8
    ais8 b8 cis8 b8 ais8 b8 cis8 b8
    a2 ~  a8 fis8 g4 ~
    g2 ~  g8 e8 fis8 fis8
    b,8 r8 g'8 r8 cis,8 r8 b8 r8
    cis8 r8 d8 r8 cis8 r8 b8 d8
    fis1~
    fis8 g8 fis8 e8 d4 r8 b8
    e8 r8 fis8 r8 ais8 r8 b8 r8
    b,8 r8 d8 r8 e8 r8 fis8 fis8
    e8 r8 b'8 r8 b4 r8 ais8
    fis8 r8 cis'8 r8 cis4 r8 b8
    g8 r8 d'8 r8 d4 r8 cis8
    ais8 r8 b8 r8 ais8 r8 fis8 r8
    fis4 r8 b8 \slurDashed b8( \slurSolid  ais8) r8 cis8
    cis8(   b8) r8 d8 d8(   cis8) r8 e8
    e16 cis16 d8-. d16 b16 cis8-. cis4 r4
    r2 r4 r8
}
\mvtItimeLine
>>

mvtItaille = <<
\relative c'' {
    r8
    R1
    r2 r4 r8 a8-.
    a8-. a8-. d,8-. fis8-. g8 a8 r8 a8
    fis8 a8 b,8 d8 e8 g,8 a8 cis8
    d8 r8 e8 r8 fis8 r8 a8 r8
    d,8 g4 b8 a8 e8 a8 cis8
    b8 fis8 d8 e8 a,4 r8 cis8
    d8 b8 a8 a8 a8 r8 r4
    R1*7
    r2 r8 cis16 d16 e16 fis16 g16 e16
    fis8 d8 d8 a8 a8 a8 a8\noBeam r8
    r2 r4 r8 a'8\pDO\pF
    a8-. a,8-. d8-. fis8\pDS g8 a8 r8 a8
    fis8 a8 b,8 d8 e8 gis,8 a8 cis8
    d8 r8 e8 r8 fis8 r8 a8 r8
    g8 r8 e8 r8 fis8 r8 r4
    r4 r8 gis8_"pia" gis8 e8 e8 b8
    cis4 r4 r2
    r4 r8 b'8 e,8 d8 d8 b8
    a4 r4 r2
    R1*2
    r2 r4 r8 e'8\pDO
    e8-. e8-. a,8-. cis8\pDS d8 e8 r8 e8
    cis8 e8 fis8 a,8 b8 b8 e8 gis,8
    a8 r8 b r8 cis r8 e r8
    a,8 d4 fis8 e8 b8 e8 gis8
    fis8 cis8 fis8 a8 e4 r8 gis8
    a8 fis8 e8 d8 cis8 d8 cis8 b8
    ais8 b8 cis8 b8 ais8 b8 cis8 b8
    ais4 r4 r2
    R1*2
    r4 r8 fis'8 d4 r8 fis8
    d4 r8 fis8 d4 r8 fis8\pDO
    d8-. fis8-. e8-. fis8\pDS gis8 gis,8 r4
    r2 r4 r8 fis'8
    fis8 r8 a8 r8 b8 r8 cis8 r8
    b8 r8 cis8 r8 cis8 r8 a8 gis8
    d'8 gis,8 gis8 gis8 a4 r4
    R1
    r2 r4 r8 a8\pDO
    a8-. a,8-. b8-. fis'8\pDS g8 a8 r8 c8_"pia"
    c8 a8 a8 d,8 g8 b8 b8 g8
    g8 e8 e8 a,8 d8 fis8 a4
    r16 b,16\f cis16 d16 e4 ~  e16 cis16 d16 e16 fis4 ~
    fis8 fis8 fis8 b,8 cis8 cis8 d16 cis16 d16 e16
    fis4 r8 fis8 fis4 r8 cis8
    d4 r8 g8 fis4 r8 a8\pDO
    a8-. a,8-. d8-. fis8\pDS g8 a8 r8 a8
    fis8 a8 b,8 d8 e8 gis,8 a8 cis8
    d8 r8 e8 r8 fis8 r8 a8 r8
    d,4 e2 fis4~
    fis4 g8 b8 b4 r8 a8
    a8 d,8 g8 e8 fis4\fermata r4
    r2 r8 b8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    R1*2
    r4 r8 e8 e4 r8 g8
    a8 b8 r8 b,8 e4 r8 c8\pDO
    e8-. fis8-. e8-. g8\pDS a8 b8 dis,8 e8
    fis8 b8 a8 a,8 b4 r4
    r2 r4 r8 e8
    e8 r8 g8 r8 a8 r8 b8 r8
    a8 r8 b8 r8 c8 r8 g8 fis8
    c'8 fis,8 fis8 b,8 b4 r4
    R1*2
    r2 fis'2
    d4 b4 a2
    b4 d4 c8 e8 d8 g8 ~
    g8 d8 d8 d8 c8 fis,8 g8 d'8\pDO
    d8-. fis8-. g8\pDS d8 ~  d8 d8 d8 a'8
    g8 g,8 d'8 d8 d8\f d8 c8 d8
    e8 a,8 d8 a8 b8 b8 c8 a8
    b16( d16) d16( fis16) fis16( g16) g16( a16) a4 r4
    R1
    fis8 r8 d8 fis8 fis8 r8 fis8 fis8
    e8 r8 e8 cis8 dis8 r8 r4
    r4 r8 dis8 e8 r8 cis8 r8
    b8 r8 fis'8 r8 b,8 b8 e8 g8
    fis8 fis8 fis8 r8 r2
    d2 fis2 ~
    fis2 e4 r8 a8
    g8 e8 e8 b8 b8 a8 b8 b8
    cis8 d8 e8 fis8 fis4 r8 fis8
    fis,8 gis8 ais8 b8 fis4 r4
    dis'2 fis8 dis8 b4
    cis2 e8 cis8 a8 a8
    g8 r8 e'8 r8 fis8 r8 fis8 r8
    fis8 r8 fis8 r8 fis8 r8 fis8 b,8
    cis1
    d8 b8 b8 ais8 b4 r8 b8
    b8 r8 d8 r8 e8 r8 fis8 r8
    e8 r8 fis8 r8 g8 r8 d8 b'8
    g8 r8 fis8 r8 e4 r8 e8
    d8 r8 g8 r8 fis4 r8 fis8
    b8 r8 a8 r8 g4 r16 b16 g16 e16
    cis8 r8 fis8 r8 fis8 r8 fis8 r8
    fis8 e8 d8 b8 cis8 e8 ais,8 cis8
    d8 fis8 b,8 d8 e8 g8 cis,8 e8
    fis8 r8 fis8 r8 ais4 r4
    r2 r4 r8
}
\mvtItimeLine
>>

mvtIvlnI = <<
\relative c'' {
    a8
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d,16 a'16 fis16 a16
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d16 a16 e'16 a,16
    fis'8-. e8-. g8-. fis8-. e8 d8 a'4~
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a16 g'16 fis16 e16
    a,16 fis'16 e16 d16 a16 e'16 d16 cis16 a16 d16 cis16 b16 a16 c16 b16 a16
    b16 a16 g16 fis16 e16 fis'16 e16 d16 cis16 b16 a16 g16 fis16 g'16 fis16 e16
    d16 cis16 b16 a16 g16 a'16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 e16
    d8. e16 e8. d16 d8 d'8-._"pia" d8-. a8-.
    a8-. fis8-. fis8-. d8-. d8 a8 a8 r8
    \tag CANTATA {
        R1*5
        dis'2_"pia" e2~
    }
    \tag CONCERTO {
        R1*3
        r8 e8_"pia" d8 cis8 r8 d8 cis8 b8
        r8 b8 a8 gis8 fis8 e8 r4
        dis'2 e2~
    }
    e4 r4 r8 a,16 b16 cis16 d16 e16 cis16
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d,16 a'16 fis16 a16
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d16 a16 e'16 a,16
    fis'8\pDO\pF e8-. g8-. fis8\pDS e8 d8 a'4~
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a g' fis e
    fis8 r8 e8 r8 d8 r8 c8 r8
    b8 r8 cis8 r8 d8 r8 r4
    \tag CANTATA {
        R1
        r4 r8 e8_"(pia)" fis8 cis8 cis8 a8
    }
    \tag CONCERTO {
        r4 r8 d8_"pia" e8 b8 b8 gis8
        a4 r8 e'8 fis8 cis8 cis8 a8
    }
    b4 r8 fis'8 gis8 b8 b8 gis8
    a4 r4 r2
    r2 r4 r8 e,8
    a16(  gis16  a16) cis16 a16 e16 cis16 e16 a,16 e'16 cis16 e16 a,16 e'16 cis16 e16
    a16(  gis16  a16) cis16 a16 e16 cis16 e16 a,16 e'16 cis16 e16 a16 e16 b'16 e,16
    cis'8\pDO b8-. d8-. cis8\pDS b8 a8 e'4 ~
    e16 a,16 gis16 a16 b8 a8 gis16 a16 b16 gis16 e16 d'16 cis16 b16
    e,16 cis'16 b16 a16 e16 b'16 a16 gis16 e16 a16 gis16 fis16 e16 g16 fis16 e16
    fis16 e16 d16 cis16 b16 cis'16 b16 a16 gis16 fis16 e16 d16 cis16 d'16 cis16 b16
    a16 gis16 fis16 e16 d16 e'16 d16 cis16 b16 a16 gis16 fis16 e16 fis'16 e16 d16
    \tag CANTATA {
        cis8. b16 b8. a16 a8 d,8 cis8 b8
        ais8 b8 cis8 b8 ais8 b8 cis8 b8
        ais4 r4 r2
    }
    \tag CONCERTO {
        cis'8. b16 b8. a16 a8 b8 a8 g8
        fis4 e8 d8 cis8 e8 g4 ~
        g8 fis8 r4 r2
    }
    r4 r8 fis'8 fis8 cis8 cis8 ais8
    b8 fis8 r4 r4 r8 fis8
    b16(  ais16  b16) d16 b16 fis16 d16 fis16 b,16 fis'16 d16 fis16 b,16 fis'16 d16 fis16
    b16(  ais16  b16) d16 b16 fis16 d16 fis16 b,16 fis'16 d16 fis16 b16 fis16 cis'16 fis,16
    d'8\pDO cis8-. e8-. d8\pDS cis8 b8 r4
    r2 r16 fis16 a16 cis16 fis16 e16 d16 cis16
    fis,16 d'16 cis16 b16 fis16 cis'16 b16 a16 fis16 b16 a16 gis16 a16 cis16 fis16 eis16
    fis2 ~  fis8 eis8 fis8 b,8
    a8. gis'16 eis8. fis16 fis4 r8 a,8
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d,16 a'16 fis16 a16
    d16( cis16 d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d16 a16 e'16 a,16
    fis'8\pDO  e8-. g8-. fis8\pDS e8 d8 r8 a'8_"pia"
    a8 fis8 fis8 d8 d8 b8 b8 e8
    e8 cis8 cis8 a8 a8 fis8 d8 d'8\f
    b16 d16 e16 fis16 g16 fis16 e16 d16 cis16 e16 fis16 g16 a16 g16 fis16 e16
    d8 cis8 d8 b8 a8 e8 a8 b16 cis16
    \slurDashed d16( cis16 \slurSolid d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d,16 a'16 fis16 a16
    \slurDashed d16( cis16 \slurSolid d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d16 a16 e'16 a,16
    fis'8\pDO e8-. g8-. fis8\pDS e8 d8 a'4 ~
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a8 cis8
    fis8 r8 e8 r8 d8 r8 c8 r8
    b16 a16 g16 fis16 e16 fis'16 e16 d16 cis16 b16 a16 g16 fis16 g'16 fis16 e16
    d16 cis16 b16 a16 g16 a'16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 e16
    d8. e16 e8. d16 d4\fermata r4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    \tag CANTATA {
        R1
        r2 r4 r8 b'8
    }
    \tag CONCERTO {
        r8 d8( c8 b8) r8 b8(  a8  g8)
        fis4 r4 r4 r8 b8
    }
    \slurDashed e16( dis16 \slurSolid e16) g16 e16 b16 g16 b16 e,16 b'16 g16 b16 e,16 b'16 g16 b16
    \slurDashed e16(  dis16  \slurSolid e16) g16 e16 b16 g16 b16 e,16 b'16 g16 b16 e16 b16 fis'16 b,16
    g'8\pDO fis8-. a8-. g8\pDS fis8 e8 b'4 ~
    \tag CANTATA {
        b16 e,16 dis16 e16 fis8 e8 dis8 b8 r4
        r2 r16 e,16 g16 b16 e16 d16 c16 b16
    }
    \tag CONCERTO {
        b'16 e,16 dis16 e16 fis8 e8 dis8 b8 r8 dis8
        e16 b16 c16 a'16 dis,8. e16 e16 e,16 g16 b16 e16 d16 c16 b16
    }
    e,16 c'16 b16 a16 e16 b'16 a16 g16 e16 a16 g16 fis16 g8 g'8~
    g8 fis4 e8 ~  e8 dis8 e8 a,8
    g8 e'4 dis8 e4 r4
    R1*2
    r2 d2 ~
    d2 d4 r8 d,8
    g16(  fis16  g16) b16 g16 d16 b16 d16 g,16 d'16 b16 d16 g,16 d'16 b16 d16
    g16 fis16 g16 b16 g16 d16 b16 d16 g,16 d'16 b16 d16 g16 d16 a'16 d,16
    b'8\pDO a8-. c8-. b8\pDS a8 g8 d'4 ~
    d16 fis,16 g16 a16 fis16 e'16 d16 c16 b16\f a16 g16 f16 e16 f'16 e16 d16
    c16 b16 a16 g16 fis16 e16 d16 c16 b8 g'8 a,8 fis'8
    \tag CANTATA {
        g8 r8 r4 r4 r8 dis'8
    }
    \tag CONCERTO {
        g,16( b16) b16( dis16) dis16( e16) e16( fis16) fis4 r8 dis
    }
    e16 b16 cis16 d16 e16 cis16 d16 e16 cis,8 r8 r4
    fis'1~
    fis2 ~  fis8 r8 r4
    r4 fis4 ~  fis8 e4 d8 ~
    d16 b16 ais16 b16 cis8 fis8 ~  fis8 d8 b8 e8
    cis8 ais8 fis8 r8 r4 r8 fis8
    \slurDashed b16( ais16 b16) d16 b16 fis16 d16 fis16 b,16 fis'16 d16 fis16 b,16 fis'16 d16 fis16
    a16(  g16 \slurSolid a16) c16 a16 fis16 dis16 fis16 b,16 e16 g16 b16 e16 b16 fis'16 b,16
    g'1
    fis1 ~
    fis4 r8 fis8 fis,8 gis8 ais8 b8
    c2 b2
    bes2 a2
    b8 r8 e8 r8 e8 r8 d8 r8
    cis8 r8 b8 r8 cis8 r8 fis8 d8
    ais8 cis8 cis8 e8 ais,8 cis8 cis8 e8
    d4 r4 r16 b,16 d16 fis16 b16 a16 g16 fis16
    b,16 g'16 fis16 e16 b16 fis'16 e16 d16 b16 e16 d16 cis16 d8 d'8 ~
    d8 cis4 b8~ b8 ais8 b8 d8
    e8 r8 fis8 r8 b,4 r8 e8
    fis8 r8 g8 r8 cis,4 r8 fis8
    g8 r8 a8 r8 d,4 r8 g8
    g8(   fis8) fis8(   e8) e8(   d8) d8(   cis8)
    cis4 r8 d8 d8(   cis8) r8 e8
    e8(   d8) r8 fis8 fis8(   e8) r8 g8
    g16 e16 fis8-. fis16 d16 e8-. fis4 r4
    r2 r4 r8
}
\mvtItimeLine
>>

mvtIvlnII = <<
\relative c'' {
    r8
    R1
    r2 r4 r8 cis8\pDO
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 cis8
    d8 fis8 b,8 a8 g8 b8 e,8 a8
    fis8 r8 e8 r8 d8 r8 d8 r8
    g8 d8 b'16 a16 g16 fis16 e8 cis8 cis'16 b16 a16 g16
    fis8 d8 d'16 cis16 b16 a16 g16 fis16 e16 d16 cis16 b16 cis8
    b8 d4 cis8 d8 a'8\pDO_"pia" a8-. fis8-.
    fis8-. d8-. d8-. a8\pDS a8 g8 a8 r8
    \tag CANTATA {
        R1*5
        b'2_"pia" b2
    }
    \tag CONCERTO {
        R1*3
        r8 cis8\p gis8 a8 r8 b8 fis8 gis8
        r8 e8 fis8 cis8 d8 a8 r4
        b'2 b2
    }
    a4 r4 r8 e8 a8 cis8
    a8 fis8 fis8 d8 d8 a8 a8\noBeam r8
    r2 r4 r8 cis'8\pDO\pF
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 cis8
    d8 fis8 b,8 a8 g8 b8 e,8 a8
    a8 r8 a8 r8 d8 r8 d,8 r8
    d8 r8 a'8 r8 a8 r8 r4
    \tag CANTATA {
        R1
        r4 r8 cis8\p cis8 a8 a8 fis8
    }
    \tag CONCERTO {
        r4 r8 b8\p b8 gis8 gis8 e8
        e4 r8 cis'8 cis8 a8 a8 fis8
    }
    fis4 r8 d'8 d8 b8 b8 e8
    e4 r4 r2
    R1
    r8 a,8 a8 e8 e8 e8 cis8 r8
    r2 r4 r8 gis'8\pDO
    a8-. b8-. a8-. gis8\pDS fis8 e8 r8 gis8
    a8 cis8 fis,8 e8 d8 fis8 b,8 e8
    cis8 r8 b8 r8 a8 r8 a8 r8
    d8 a8 fis'16 e16 d16 cis16 b8 e8 gis16 fis16 e16 d16
    cis8 a8 a'16 gis16 fis16 e16 d16 cis16 b16 a16 gis16 d'16 cis16 b16
    \tag CANTATA {
        a8 a'4 gis8 a8 d,8 cis8 b8
        ais8 b8 cis8 b8 ais8 b8 cis8 b8
        ais4 r4 r2
    }
    \tag CONCERTO {
        a8 a'4 gis8 a8 fis8 e8 d8
        cis8 d8 e8 g8 ~  g8 e8 ais8 cis8
        e,4 r4 r2
    }
    r4 r8 d'8 cis8 fis8 fis8 cis8
    d8 fis8 r4 r2
    r8 fis,8 d4 r8 fis8 d4
    r8 fis8 d4 r8 fis8 d8 cis'8
    b2 ~  b8 eis,8 r4
    r2 r4 r8 a8
    b8 r8 cis8 r8 eis8 r8 fis8 r8
    fis,8 r8 a8 r8 b8 r8 cis8 cis8
    fis,8 d'8 cis8 cis8 cis4 r8 d,8
    d8 fis8 fis8 fis8 a8 d8 d8 r8
    r2 r4 r8 cis8\pDO
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 fis'8\p
    fis8 d8 d8 a8 b8 d,8 g8 b8
    a8 a8 a8 e8 fis8 a,8 a16 fis'16\f g16 a16
    b4 ~  b16 g16 a16 b16 cis4 ~  cis16 a16 b16 cis16
    d8 fis8 b,8 e8 e,8 a8 d,8 g8
    a4 r8 a8 b4 r8 a8
    a4 r8 a8 a4 r8 e'8\pDO
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 cis8
    d8 fis8 b,8 a8 g8 b8 e,8 a8
    a8 r8 a8 r8 d8 r8 d,8 a'8~
    a8 d,8 g8 b8~ b8 e,8 a8 cis8~
    cis8 fis,8 b8 d8 e4 r8 e8
    a,8 b8 b8 a8 a4\fermata r4
    r2 r8 b8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    R1*2
    r4 r8 b'8 a8 e8 a,8 e'8
    e4 r8 dis'8 e8 b8 e,8 a8\pDO
    g8-. d'8\pDS e4 dis8 e8 fis8 g8
    a8 g8 c,8 a8 fis4 r4
    r2 r4 r8 g8
    a8 r8 b8 r8 dis8 r8 e8 r8
    e,8 r8 g8 r8 a8 r8 b8 b8
    e8 c8 b8 a8 g4 r4
    R1*2
    r2 a2 ~
    a4 d,4 fis2
    d4 g2 d'4
    c8 g8 c8 b8 c8 b4 a8\pDO
    g8-. d8\pDS g4 a8 b8 c8 fis,8
    d8 e8 a,8 fis'8 g2~\f
    g16 d'16 c16 b16 a4 ~  a8 g8 e8 d8
    \tag CANTATA {
        d8 r8 r4 r4 r8 b'8
    }
    \tag CONCERTO {
        d,16( g16)  g16(  a16) a16( b16) b16( fis16) fis4 r8 b
    }
    b8 b8 ais8 b8 e,8 r8 r4
    cis'8 r8 cis8 fis,8 b8 r8 cis8 b8
    ais8 r8 cis8 ais8 b8 r8 r4
    r4 r8 fis8 g8 r8 fis8 r8
    e8 r8 e8 r8 d8 fis4 e8~
    e8 cis8 d8 r8 r2
    fis2 b2
    a2 b4 r8 b8
    b8 g8 g8 e8 e8 fis8 g8 e8
    fis8 gis8 ais8 b8 ais8 b8 cis8 b8
    ais8 b8 cis8 b8 ais8 b8 cis8 b8
    a2~ a8 fis8 g4 ~
    g2~  g8 e8 fis8 fis8
    b,8 r8 g'8 r8 cis,8 r8 b8 r8
    cis8 r8 d8 r8 cis8 r8 b8 d8
    fis1~
    fis8 g8 fis8 e8 d4 r8 b8
    e8 r8 fis8 r8 ais8 r8 b8 r8
    b,8 r8 d8 r8 e8 r8 fis8 fis8
    e8 r8 b'8 r8 b4 r8 ais8
    fis8 r8 cis'8 r8 cis4 r8 b8
    g8 r8 d'8 r8 d4 r8 cis8
    ais8 r8 b8 r8 ais8 r8 fis8 r8
    fis4 r8 b8 \slurDashed b8(  \slurSolid ais8) r8 cis8
    cis8(   b8) r8 d8 d8(   cis8) r8 e8
    e16 cis16 d8-. d16 b16 cis8-. cis4 r4
    r2 r4 r8
}
\mvtItimeLine
>>

mvtIvla = <<
\relative c'' {
    \clef C
    r8
    R1
    r2 r4 r8 a8\pDO
    a8-. a8-. d,8-. fis8\pDS g8 a8 r8 a8
    fis8 a8 b,8 d8 e8 g,8 a8 cis8
    d8 r8 e8 r8 fis8 r8 a8 r8
    d,8 g4 b8 a8 e8 a8 cis8
    b8 fis8 d8 e8 a,4 r8 a16 g16
    fis8 b8 a8 a8 fis8 fis'8-._\p fis8-. d8-.
    d8-. a8-. a8-. fis8\pDS fis8 e8 fis8 r8
    \tag CANTATA {
        R1*5
        fis'2_\p gis4 r8 d8
    }
    \tag CONCERTO \relative c' {
        R1*4
        r8 b\p d e e, fis r4  %14
        fis'2 gis4 r8 d8
    }
    cis4 r4 r8 cis16 d16 e16 fis16 g16 e16
    fis8 d8 d8 a8 a8 a8 fis8\noBeam r8
    r2 r4 r8 a'8_\paren\f
    a8-. a,8-. d8-. fis8\pDS g8 a8 r8 a8
    fis8 a8 b,8 d8 e8 gis,8 a8 cis8
    d8 r8 e8 r8 fis8 r8 a8 r8
    g8 r8 e8 r8 fis8 r8 r4
    \tag CANTATA {
      R1
      r4 r8 a8_\paren\p a8 fis8 fis8 cis8
    }
    \tag CONCERTO {
        r4 r8 gis'8\p gis8 e8 e8 b8
        cis4 r8 a'8 a8 fis8 fis8 cis8
    }
    d4 r8 b'8 e,8 d8 d8 b8
    a4 r4 r2
    R1
    r8 cis8 cis8 a8 a8 e8 e8 r8
    r2 r4 r8 e'8\pDO
    e8-. e8-. a,8-. cis8\pDS d8 e8 r8 e8
    cis8 e8 fis,8 a8 b8 d,8 e8 gis8
    a8 r8 b8 r8 cis8 r8 e8 r8
    a,8 d4 fis8 e8 b8 e8 gis8
    fis8 cis8 fis8 a8 e4 r8 gis8
    a8 fis8 e8 d8 cis8 d8 cis8 b8
    ais8 b8 cis8 b8 ais8 b8 cis8 b8
    ais4 r4 r2
    r4 r8 fis'8 ais8 cis8 cis,8 fis8
    fis8 d8 r4 r2
    r4 r8 fis8 d4 r8 fis8
    d4 r8 fis8 d4 r8 fis8\pDO
    d8-. fis8-. e8-. fis8\pDS gis8 gis,8 r4
    r2 r4 r8 fis'8
    fis8 r8 a8 r8 b8 r8 cis8 r8
    b8 r8 cis8 r8 cis8 r8 a8 gis8
    d'8 gis,8 gis8 gis8 a4 r8 fis,8
    fis8 a8 a8 d8 d8 fis8 fis8 r8
    r2 r4 r8 a8\pDO
    a8-. a,8-. b8-. fis'8\pDS g8 a8 r8 c8\p
    c8 a8 a8 d,8 g8 b8 b8 g8
    g8 e8 e8 a,8 d8 fis8 a4
    r16 b,16\f cis16 d16 e4 ~  e16 cis16 d16 e16 fis4 ~
    fis8 fis8 fis8 b,8 cis8 cis8 d16 cis16 d16 e16
    fis4 r8 fis8 fis4 r8 cis8
    d4 r8 g8 fis4 r8 a8\pDO
    a8-. a,8-. d8-. fis8\pDS g8 a8 r8 a8
    fis8 a8 b,8 d8 e8 gis,8 a8 cis8
    d8 r8 e8 r8 fis8 r8 a8 r8
    d,4 e2 fis4~
    fis4 g8 b8 b4 r8 a8
    a8 d,8 g8 e8 fis4\fermata r4
    r2 r8 b8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    r2 r8 b'8 b,4
    R1*2
    r4 r8 e8 e4 r8 g8
    a8 b8 r8 b,8 e4 r8 c8\pDO
    e8-. fis8-. e8-. g8\pDS a8 b8 dis,8 e8
    fis8 b8 a8 a,8 b4 r4
    r2 r4 r8 e8
    e8 r8 g8 r8 a8 r8 b8 r8
    a8 r8 b8 r8 c8 r8 g8 fis8
    c'8 fis,8 fis8 b,8 b4 r4
    R1*2
    r2 fis'2
    d4 b4 a2
    b4 d4 c8 e8 d8 g8 ~
    g8 d8 d8 d8 c8 fis,8 g8 d'8\pDO
    d8-. fis8-. g8\pDS d8 ~  d8 d8 d8 a'8
    g8 g,8 d'8 d8 d8\f d8 c8 d8
    e8 a,8 d8 a8 b8 b8 c8 a8
    \tag CANTATA {
        b8 r8 r4 r4 r8 fis'8
    }
    \tag CONCERTO {
        b,16( d16) d16( fis16) fis16( g16) g16( a16) a4 r8 fis
    }
    e8 g8 e8 g8 cis,8 r8 r4
    fis8 r8 d8 fis8 fis8 r8 fis8 fis8
    e8 r8 e8 cis8 dis8 r8 r4
    r4 r8 dis8 e8 r8 cis8 r8
    b8 r8 fis' r8 b,8 b8 e g
    fis8 fis8 fis8 r8 r2
    d2 fis2 ~
    fis2 e4 r8 a8
    g8 e8 e8 b8 b8 a8 b8 b8
    cis8 d8 e8 fis8 fis4 r8 fis8
    fis,8 gis8 ais8 b8 fis4 r4
    dis'2 fis8 dis8 b4
    cis2 e8 cis8 a8 a8
    g8 r8 e'8 r8 fis8 r8 fis8 r8
    fis,8 r8 fis8 r8 fis8 r8 fis8 b8
    cis1
    d8 b8 b8 ais8 b4 r8 b8
    b8 r8 d8 r8 e8 r8 fis8 r8
    e8 r8 fis8 r8 g8 r8 d8 b'8
    g8 r8 fis8 r8 e4 r8 e8
    d8 r8 g8 r8 fis4 r8 fis8
    b8 r8 a8 r8 g4 r16 b16 g16 e16
    cis8 r8 fis r8 fis r8 fis8 r8
    fis8 e8 d8 b8 cis8 e8 ais,8 cis8
    d8 fis8 b,8 d8 e8 g8 cis,8 e8
    fis8 r8 fis8 r8 ais4 r4
    r2 r4 r8
}
\mvtItimeLine
>>

mvtIorgRH = <<
\relative c'' {
    r8
    R1*7
    r2 r4 r8 a8
    d,16 e16 fis8-. fis16 g16 a8-. a16 b16 cis8-. d8 \slurDashed d32(  e32  \slurSolid fis16)
    e8 d8 cis8 b8 a16( gis16)  a16(  gis16) a16 e'16 fis32(  e32  d16)
    \slurDashed a16( gis16) a16( \slurSolid gis16) a16 fis'16 g32(  fis32  e16) a,16   gis16  a16  gis16 a16 g'16 a32  g32  fis16
    \slurDashed g16( fis16) g16( \slurSolid e16) a,16 cis16 e16  fis32  g32 fis16 e16 fis16 d16 a16 cis16 d16(  e32  fis32)
    e16 fis16 gis16 a16 b,16 cis16 b16 cis16 d16 fis16 gis16 a16 a,16 b16 a16 b16
    cis8 b8 \slurDashed b32(  cis32  \slurSolid d16) cis8 b8 a8 fis'4 ~
    fis16 e16 dis16 e16 a,8 b8 gis16 b16 d16 e32 fis32 e4~
    e8 a,8 cis16 b16 a16 gis16 a4 r8 a8
    d,16 e16 fis8-. fis16 g16 a8-. a16 b16 cis8-. d8 d16 e16
    fis8 d8 fis8 a8 fis16 e16 d16 e16 fis16 g16 a16 g16
    fis8 e8 g8 fis8 e8 d8 a'4~
    a16 d,16 cis16 d16 e8 fis8 g4 ~  g16 cis,16 d16 e16
    a,16 fis'16 e16 d16 a16 e'16 d16 cis16 a16 d16 cis16 b16 a16 c16 b16 a16
    b16 a16 g16 fis16 e16 b'16 a16 g16 fis16 g16 a16 fis16 d8 d'8
    d16 cis16 b8-. b16 a16 gis8-. gis16 b16 e8 e4~
    e16 d16 cis8-. cis16 b16 a8-. a16 cis16 fis8 fis4 ~
    fis16 e16 d8-\parenthesize-. d16 cis16 b8-\parenthesize-. b16 d16 gis8 gis16 cis,16 d8~
    d16 b16 cis16 e16 a16 gis16 a8~ a16 e16 dis16 fis16 a16 fis16 gis16 a16
    gis16 a16 b16 gis16 d16 fis16 e16 d16 cis8. b16 b8. a16
    a16 b16 cis8-\parenthesize-. cis16 d16 e8-. e16 fis16 gis8-. a8 e8
    fis16 g16 fis16 e16 d16 cis16 b16 a16 << e'8. { s8 <>^\vturn } >> fis16 cis8 b16 a16
    a4 r4 r2
    R1*4
    r2 r4 r8 e8
    e16 fis16 g8 g16 fis16 e8 cis'16 b16 cis8 e,16 g16 fis16 e16
    cis'16 ais16 b16 cis16 fis,16 e'16 d16 cis16 e16 d16 cis16 d16 b8 fis'8
    fis16 e16 d16 fis16 e16 d16 cis16 b16 cis16 b16 ais16 gis16 fis16 ais16 cis16 e16
    d16 cis16 b16 fis'16 e16 d16 cis16 b16 fis'2~
    fis1 ~
    fis2 ~  fis16 g16 fis16 e16 d16 cis16 b16 ais16
    \once \override TextScript.avoid-slur = #'inside
    % \once \override TextScript.outside-staff-priority = ##f
    << b8. { s8 <>^\vturn } >> cis16 cis8.\prall b16 b16 d16 cis16 b16 eis16 fis16 gis16 b,16
    a8. gis16 gis8. fis16 fis2~
    fis2. ~  fis16 a16 b16 cis16
    d16 eis16 fis16 gis16 cis,16 eis16 fis16 gis16 b,16 eis16 fis16 gis16 a,16 cis16 eis16 gis16
    fis16 eis16 fis16 b16 gis8. fis16 fis4 r8 a,8
    fis16 e16 d16 e16 fis16 g16 a16 g16 fis8 a16( g16) a8 d16 e16
    fis8 fis16( g32 a32) fis8 d8 d8 a8 a8 e'8
    fis8 e8 g8 fis8 e8 d8 a'4 ~
    a16 c,16 b16 c16 d8 c8 b16 a16 g16 b16 e4 ~
    e16 g,16 fis16 g16 a8 g8 fis16 a16 d16 e16 fis4~
    fis16 d16 cis16 b16 g'4 ~  g16 e16 d16 cis16 a'4~
    a16 g16 fis16 e16 d16 fis16 e16 d16 cis16 d16 e16 cis16 a16 cis16 g16 cis16
    fis,16 e16 fis16 a16 fis16 a16 d16 cis16 fis16 e16 d16 cis16 d8 a'8 ~
    a16 b16 a16 g16 fis16 e16 d16 cis16 d8 a8 fis8 a8
    fis'8 e8 g8 fis8 e8 d8 a'4 ~
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a16 g'16 fis16 e16
    a,16 fis'16 e16 d16 a16 e'16 d16 cis16 a16 d16 cis16 b16 a16 c16 b16 a16
    b4 ~  b16 a16 g16 fis16 e8 cis'8 ~  cis16 b16 a16 g16
    fis8 d'8 ~  d16 cis16 b16 a16 g16 fis'16 e16 d16 cis16 b16 a16 g16
    fis8 d'8 e,8 cis'8 d4\fermata r8 fis8
    << fis4 { s8 s32 <>^\vturn } >> g16 fis16 e16 g16 fis16 e32 d32 e16 d32 cis32 d16 b16 fis'8
    fis16 g16 e16 fis16 g16 fis16 e16 g16 fis8 b,8 r8 b8
    cis8 cis32(  dis32  e16) dis8 dis32(  e32  fis16) \grace fis8 e4 r8 dis8
    e8 e16( g16) fis8 \slurDashed fis16( \slurSolid a16) g8 fis8 r8 g16 e16
    a8 g8 r8 fis16 e16 f16 dis16 e8 c4 ~
    c16 b16 a16 c16 b16 a32 g32 a16 g32 fis32 g16 b16 e16 fis16 fis8. e16
    e4 r8 b8 c8 b8 c8 b8
    a16 fis16 g8 r8 b8 g16 fis16 e16 fis16 g16 a32 b32 a16 b32 c32
    b16( a16) c16( b16) e16( d16) d16( c16) c16( b16) b16( a16) a16( g16) g16( fis16)
    fis8 b,8 c'4~  c16 b16 a16 c16 dis,16 c'16 b16 a16
    g8. fis16 fis8. e16 e4 r8 e'8
    c16 dis16 e8 r8 b8 a16 dis16 e8 r16 g,16 a16 b16
    c16 dis16 e16 fis16 b,16 dis16 e16 fis16 a,16 dis16 e16 fis16 g,16 b16 dis16 fis16
    e16 dis16 e16 a16 fis8. e16 e16( d16) d16( cis16) cis16( b16) b16(   ais16)
    ais16 g'16 fis8 ~  fis16 a,16 b16 c16 gis16 fis'16 e8 ~  e16 g,16 a16 b16
    fis16 e'16 d16 cis16 b16 a'16 gis16 fis16 eis16 d?16 cis16 b16 a16 gis16 fis16 eis16
    fis16 ais16 b16 d16 cis16 eis16 fis16 a16 c,4 ~  c16 e16 d16 c16
    b16 a16 c16 b16 a16 g16 fis16 g16 a16 fis16 e16 d16 d'16 c16 b16 c16
    b8 g8 r8 d'8 e8 g16 fis16 g8 d8
    e8 d8 r8 d16 f16 e8 d8 c8 b32(  c32  d16)
    b8 a8 r8 g'8 fis8 g8^\prall a8 c,8
    b8. a16 a8. g16 g4 r4
    R1
    r4 r8 b8 c8 b16 a16 g16 fis16 b8
    a16 g16 fis16 e16 g'4 ~  g16 cis,16 d16 e16 ais,16 b32 cis32 b16 cis32 d32
    cis16 ais16 gis16 fis16 b16 cis32 d32 cis16 d32 e32 d16 b16 ais16 gis16 cis16 d32 e32 d16 e32 fis32
    e16 cis16 b16 ais16 cis16 g16 fis16 e16 dis16 c'16 b16 a16 b16 f16 e16 d16
    cis16 b'16 a16 g16 a16 e16 dis16 cis16 b16 g'16 fis16 e16 ais16 g16 fis16 e16
    b'16 g16 fis16 e16 cis'16 g16 fis16 e16 d'16 ais16 b16 fis16 g16 cis16 d16 e16
    ais,16 g'16 fis16 e16 d16 e16 e16\prall d32 e32 fis8. b,16 cis8 ais8
    b4 r8 fis8 d'2
    dis2\trill e4 r8 b8
    e,16 fis16 g8-. g16 a16 b8-. b16 cis16 dis8-\parenthesize-. e8 \slurDashed e32(  fis32 \slurSolid g16)
    ais,8 b8 cis8 d8 cis16 b16 ais16 gis16 fis16 cis'16 d16 b16
    cis16 b16 ais16 gis16 fis16 fis'16 d16 b16 cis16 b16 ais16 gis16 fis8 a16 gis16
    a8 c16 b16 c8 a8 dis16 e16 fis16 dis16 e8 g,16 fis16
    g8 bes16 a16 bes8 g8 cis16 d16 e16 cis16 d8 d32(  e32  fis16)
    e8 d8 cis8 b8 \slurDashed fis16(   eis16) fis16(   eis16) fis16 cis'16 d32( cis32 b16)
    fis16(   eis16) fis16(   eis16) fis16 d'16 e32(  d32  cis16) fis,16(   eis16) fis16(   eis16) fis16 e'16 fis32(  e32 \slurSolid d16)
    e32 fis32 g16 fis8 ~  fis16 b,16 ais16 cis16 e,16 fis32 g32 fis8 ~  fis16 ais16 cis16 g'16
    fis16 e16 d16 cis16 e16 d16 cis16 d16 b4 r8 b8
    g16 ais16 b8 r8 fis8 e16 ais16 b8 r16 d16 ais16 b16
    g16 ais16 b16 cis16 fis,16 ais16 b16 cis16 e,16 ais16 b16 cis16 d,16 fis16 b8 ~
    b16 c16 b16 g16 a16 b16 a16 fis16 g16 e16 cis'8 cis4~
    cis16 d16 cis16 ais16 b16 cis16 b16 gis16 ais16 fis16 d'8 d4~
    d16 e16 d16 b16 c16 d16 c16 ais16 b16 dis16 e8 e4 ~
    e16 fis16 e16 cis16 d16 e16 d16 b16 cis16 d16 cis16 ais16 b16 cis16 b16 gis16
    ais16 fis16 gis16 ais16 b16 cis16 d16 b16 e,16 gis16 ais16 b16 cis16 d16 e16 cis16
    fis,16 ais16 b16 cis16 d16 e16 fis16 d16 g,16 b16 cis16 d16 e16 fis16 g16 e16
    ais16 g?16 fis16 e16 b'16 g16 fis16 e16 cis'16 g16 fis16 e16 d16 ais16 b16 g'16
    fis8 r8 d8 cis16 b16 b4 r8
}
\mvtItimeLine
>>

mvtIorgLH = <<
\relative c' {
    \clef F
    r8
    R1
    r2 r4 r8 a8\pDO
    d8-. cis8-. b8-. a8\pDS g8 fis8 r8 fis8
    b8 a8 g8 fis8 e8 d8 cis8 a8
    d8 r8 cis8 r8 b8 r8 fis8 r8
    g8 b8 g8 e8 a8 cis8 a8 fis8
    b8 d8 b8 g8 cis4 r8 a8
    b8 g8 a8 a8 d,4 r4
    r2 r4 r8 b'8
    cis8 d8 e8 d8 cis8 b8 cis8 d8
    cis8 b8 a8 cis8 d8 e8 fis8 d8
    e8 d8 cis8 a8 d8 e8 fis8 d8
    cis4 r8 a8 b4 r8 e8
    a8 gis8 fis8 e8 d8 cis8 r8 d8
    a'8 fis8 dis8 b8 d4 r8 gis8
    a8 fis8 d8 e8 a,8 g8 fis8 e8
    d4 r8 e8 fis4 r8 fis'8
    b,8 a8 b8 cis8 d4 r8 a'8
    d8 cis8 b8 a8 g8 fis8 r8 fis8
    b8 a8 g8 fis8 e8 d8 cis8 a8
    d8 r8 cis8 r8 b8 r8 fis8 r8
    g8 r8 a8 r8 d,8 d'8 fis8 d8
    r8 b8 d8 b8 d,4 r4
    r8 cis'8 e8 cis8 e,4 r4
    r8 d'8 fis8 d8 r8 b8 e,8 e'8
    a8 gis8 fis8 e8 dis8 fis8 b,8 dis8
    e8 e,8 fis8 gis8 a8 d8 e8 e,8
    fis4 r4 cis'4 r8 a'8
    d,8 cis8 d8 e8 cis8 a8 e8 e'8
    a8 gis8 fis8 e8 d8 cis8 r8 cis8
    fis8 e8 d8 cis8 b8 a8 gis8 e8
    a8 r8 gis8 r8 fis8 r8 cis'8 r8
    d8 fis8 d8 b8 e8 gis8 e8 cis8
    fis8 a8 fis8 d8 gis4 r8 e8
    fis8 d8 e8 e,8 a4 r4
    R1
    r8 fis8 gis8 ais8 b8 cis8 d8 cis8
    b8 b'8 ais8 b8 fis8 gis8 ais8 fis8
    b8 d,8 cis8 b8 ais16 d16 cis16 b16 ais16 gis16 fis16 e16
    d4 r8 fis8 gis4 r8 ais8
    b4 r8 cis8 d4 r8 fis8
    b8 a8 g?8 fis8 eis8 cis8 r8 cis8
    fis8 b8 cis8 cis,8 fis8 gis8 a8 fis8
    b8 r8 a8 r8 gis8 r8 fis8 r8
    b,8 r8 a8 r8 gis8 r8 fis8 cis'8
    d8 b8 cis8 cis8 fis,4 r4
    r2 r4 r8 d'8
    d8 fis8 fis8 a8 a8 d8 d8 a8
    d8 cis8 b8 a8 g8 fis8 r16 fis16 g16 a16
    d,4 r16 d16 e16 fis16 g4 r16 e16 fis16 g16
    cis,4 r16 a16 b16 cis16 d4 r16 d16 e16 fis16
    g4 r16 e16 fis16 g16 a4 r16 fis16 g16 a16
    b8 a8 b8 gis8 a8 g8 fis8 e8
    d8 e8 d8 cis8 b8 b'8 a8 g8
    fis8 e8 d8 e8 fis8 a8 b8 cis8
    d8 cis8 b8 a8 g8 fis8 r8 fis8
    b8 a8 g8 fis8 e8 d8 cis8 a8
    d8 r8 cis8 r8 b8 r8 fis8 r8
    g8 b8 g8 e8 a8 cis8 a8 fis8
    b8 d8 b8 g8 cis4 r8 cis8
    d8 b8 g8 a8 d,4\fermata r4
    r8 b'16 ais16 b8 cis8 d8 g8 fis8 e8
    d8 cis16 b16 e8 e,8 b'8 cis8 d8 b8
    e8 g8 fis8 a8 g8 fis8 e8 fis8
    g8 e8 dis8 b8 e8 dis16 b16 e8 d8
    c8 b8 a8 g8 a8 g8 fis8 e8
    dis4 r8 dis'8 e8 c8 a8 b8
    g8 fis8 g8 e8 a4 r8 b8
    c8 b8 c8 b8 c4 r8 a8
    e'8 d8 c8 b8 a8 g8 fis8 e8
    dis8 g8 a8 fis8 b4 r8 b'8
    c8 a8 b8 b,8 e8 fis8 g8 e8
    a8 r8 g8 r8 fis8 r8 e8 r8
    a,8 r8 g8 r8 fis8 r8 e8 b'8
    c8 a8 b8 b8 e,4 r8 e'8
    fis8 e8 dis8 b8 e8 d8 cis8 a8
    d8 cis8 d8 b8 cis8 eis8 fis8 cis8
    d8 gis,8 a8 fis8 r8 d'8 e8 fis8
    g8 a8 b8 g8 d8 c8 b8 a8
    g8 a8 b8 g8 c8 b16 a16 b8 g'8
    c,8 b8 a8 g8 c8 d8 e8 fis8
    g8 fis8 e8 d8 c8 b8 fis8 d8
    g8 c8 d8 d,8 g8 b8 c8 b8
    a8 c8 d8 fis8 g8 e8 c8 d8
    g,8 g'8 fis8 e8 dis4 r8 b8
    e8 d8 cis8 b8 ais8 b8 fis'8 gis8
    ais8 r8 gis8 ais8 b8 r8 ais8 b8
    cis8 r8 ais8 fis8 b8 a8 gis8 e8
    a8 fis8 dis8 b8 e r8 fis8 r
    g8 r8 ais,8 r8 b8 d8 e8 cis8
    fis8 fis,8 b8 cis8 d8 g8 e8 fis8
    b,8 d8 d8 fis8 fis8 a8 a8 c8
    c8 a8 fis8 b8 g8 b16 a16 g16 fis16 e16 dis16
    e8 b8 b8 g8 g8 e8 e8 e'8~
    e8 d8 cis8 b8 fis8 gis8 ais8 b8
    fis4 r4 fis4 r4
    fis'8 fis8 dis8 dis8 b8 b8 g8 g8
    e'8 e8 cis8 cis8 a8 a8 fis8 d'8
    g8 fis8 e8 g8 ais,8 fis8 b8 gis8
    ais8 fis8 b8 gis8 ais8 fis8 d'8 b8
    fis8 ais8 ais8 cis8 cis8 e8 e8 ais,8
    b8 e8 fis8 fis,8 b4 r8 dis8
    e8 r8 d8 r8 cis8 r8 b8 r8
    e8 r8 d8 r8 cis8 r8 b8 b8
    cis8 r8 dis8 r8 e4 r8 cis8
    d8 r8 e8 r8 fis4 r8 d8
    e8 r8 fis8 r8 g4 r16 g16 e16 cis16
    fis,1~^"tasto solo"
    fis1 ~
    fis1 ~
    fis2 ~  fis8 ais'8 b8 g8
    d8 e8 fis8 fis,8 b4.
}
\mvtItimeLine
>>


mvtIfigs = <<
\new FiguredBass \figuremode {
    % p3
    s8 
    s1*2 
    s8 <6> <6> <6> <6> <6> s <5> 

    <7> s <6> <6> <6> <6> <6> <7> 
    s4 <6> <7> <6> 
    s <6> <5> <6> 
    <5> <6> <6 5> s8 <7> 

    % p4
    <5> <6 5> <4> <3> s2 
    s2.. <6\\>8 
    <6> <6 5> <6 4> <6 4\+> <6>4 <6> 
    <6>4. <6 5>8 s4 <6> 

    s <6 5> s <6> 
    <6> s <6\\> s8 <7 _+> 
    s <6> <6> <6 _+> <6> <6> s4 
    <6 4\+ 2>8 <6\\> <6 5>4 <6 4\+ 2> s8 <6 5> 

    s4 <7 5>8 <_+> s4 <7 5 2> 
    s s8 <7 4 2> <6>4 s 
    <7 5>4. <6>8 s2 
    s8 <6> <6> <6> <6> <6> s <7> 

    % p5
    <7>8 s <6> <6> <6> <6> <6> <7> 
    s4 <6> s <6 5!> 
    s <7 3> s2 
    s4 <6> <6 4\+ 2> s 

    s8 <6> s4 <6 4 2> s 
    s8 <6> s4 s8 <6\\> <7 _+> s 
    <4>4 <5> <6 5> <7 _+> 
    <_+> <6>8 <6 5> <9> <7 5> <4> <_+> 

    <5>4 s <6> s 
    s8 <6> <6 5> <_+> <6> s <6 4> <5 _+> 
    s <6> <6> <6 _+> <6> <6> s <6> 
    <7 5> s <6> <6> <6\\> <6 4 2> <6 5> <7 _+> 

    % p6
    s4 <6> <7 5> <6> 
    <5> <6> <5 _+> <6 _+> 
    <5> <6> <6 5> s8 <7 _+> 
    <5> <7 5> <4> <_+> s2 

    s1 
    s8 <_+> <7> <6 5> s <6\\> <6> <6\\> 
    s4 <6 5> <_+> <6>8 <7 _+> 
    s <6> <6\\> s <6>4 <6>8 <_+> 

    <6>4 s8 <6 _+> <7 5>4 s8 <6 5> 
    s4. <6\\>8 <6>4. <7 _+>8 
    s4 <6 4\+ 3> <6 5> s8 <7 _+> 
    <7 5>4 <_+> s <6> 

    % p7
    s4 <6> <7> <5> 
    s <6> <7>8 <6\\> s <7 _+> 
    <5> <7 5> <_+>4 s2 
    s1 

    s8 <6> s <6 4> s2 
    s8 <6> <6> <6> <6> <6> <6 5->4 
    <7-> <7-> s <5> 
    <6 5> s2. 

    <7 5>4 <6> <7 5> <6> 
    <7> <6\\>8 <6 5> s <6 4 2> <6> <6> 
    s2 <5>4 <6 4 2> 
    <6>8 <6> s <6> <6> <6 4> <7 5> <6 5> 

    % p8
    s <6> <6> <6> <6> <6> s4 
    <7 5> <6>8 <6> <6> <6 4> <6 5> s 
    s4 <6> <5> <6>8 <5-> 
    <5>4 <6> <5> <6> 

    <5> <6> <6 5> s8 <6 5> 
    <9> <5> <6 5> s s2 
    s4 <6>8 <6\\ 5-> <6> <6> <6 4> <6 4\+ 2> 
    <6> s <9> <8> <4> s <6> s 

    <6 5>4 <6\\> <6>8 <6\\> s <6\\> 
    <6> s <6> <7 _+> s <6> s <6 4 2> 
    <6> <6 4> <6 4\+ 2> <6> <6-> <6> <6\\ 5-> <6 4> 
    <7- 5->4 s8 <6 5> <9> s <6 5> <_+> 

    % p9
    <6>4 <6> <_-> s8 <6 4> 
    <6 4 3> <6 4> <6 4 3> <6 4> <7 5>4 s8 <6 4\+ 2> 
    <5>4 <6>8 <6> <6 4\+> <6> <6\\> s 
    <6> <6> <6> <7> <_+>4 s8 <7 _+> 

    <5> <7 5> <_+> s s4 <6> 
    <_!> <6> <6\\> s 
    <_!> <6> <6\\> s8 <7 5 _+> 
    <5> <7 5> <_+> s s4 s8 <7 5> 

    <_+>4 <6 5-> <9 _+> <6 5> 
    <9> <8 6> <7 _+>8 <6 5> s <7 5 _+> 
    <5> <6\\ 5-> <6>4 <7-> s8 <6 5-> 
    <9>4 <6> s <6>8 <6> 

    % p10
    s4 <6> s8 <6> <6>4 
    s8 <6> s <7-> s <6 4> <6 5> s 
    s <6> <6> <6 4> <6 4 2> <6> <6 5-> <7-> 
    s <7 5> s4 s8 <6> <5>4 

    <5>8 <6> s <6 5-> <9>4 <6 5> 
    s <6\\>8 <5> <7- 5>4 s8 <7 _+> 
    s <6 4 2> <6\\ 5->4 <6 4> <_+> 
    <6> <7>8 <6 5> s4 <6> 

    <6\\> <6 5>8 <7 _+> <9 _+>4 <6 5-> 
    <9>8 <5> <6 5> <7 _+> s4 <7 _+> 
    <6> <6 5> s8 <6> <9> <7 5> 

    % p11
    <7 _+>4 s8 <6\\> s <5> <6 5> <_+> 
    s2 <6 4> 
    <6 4\+ 2>4 <6\\> <6>8. <6 4\+>16 <6>8 <5 2> 
    s4 <6 4> <6> s 

    <6 4\+ 2>8 <6> <6\\>4 <_+> <6> 
    <_+> s <_+> s 
    <6\\ 5-> <7- 5-> <7 _+> <6> 
    <6 5-> <7- 5-> <7> <6> 

    <6>8 <6> <6> <6> <6 5> s s <7 5> 
    <6>4 <5>8 <7> <6>4 s 
    <7 _+> <6 5> <6\\> <6 4\+ 2> 

    % p12
    s8 <7 5> <6 4> <_+> s4 s8 <6> 
    s4 <6> <6\\> s 
    s <6> <6\\> s 
    <7 5> <5-> s s8 <6\\> 

    <6>4 <7 5> <_+> s 
    <7> <5-> <5> <6> 
    <7 _+>1 

    s1*2 
    s2 s8 <6 5> s <6> 
    <6> <6 5> <6 4> <5 _+> s4.
}
\mvtItimeLine
>>

mvtIbreaksBGA = {
    s8^"BGA breaks left in" 
    s1*3
    \break
    s1*4 
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*3 
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*3 
    \pageBreak
    s1*4
    \break
    s1*3
    \break
    s1*3 
    s2..
    \bar ""
}

mvtIbreaksAutograph = {
    s8^"Autograph breaks left in" 
    s1*4  %4
    s2. \bar "" \break s4  %5
    s1*4  %9
    s2 \bar "" \break s2  %10
    s1*3  %13
    s2 \bar "" \pageBreak

    s2  %14
    s1*4  %18
    s2 \bar "" \break s2  %19
    s1*4  %23
    s2 \bar "" \break s2  %24
    s1*4  %28
    s2 \bar "" \pageBreak

    s2  %29
    s1*4  %33
    \break
    s1*4  %37
    s2 \bar "" \break s2  %38
    s1*4  %42
    \pageBreak

    s1*5  %47
    \break
    s1*5  %52
    \break
    s1*4  %56
    s2 \bar "" \pageBreak

    s2  %57
    s1*4  %61
    \break
    s1*5  %66
    \break
    s1*4  %70
    s2 \bar "" \pageBreak

    s2  %71
    s1*4  %75
    \break
    s1*4  %79
    s2 \bar "" \break s2  %80
    s1*4  %84
    \pageBreak

    s1*4  %88
    s2 \bar "" \break s2  %89
    s1*4  %93
    \break
    s1*4  %97
    \pageBreak

    s1*5  %102
    \break
    s1*4  %106
    s2 \bar "" \break s2  %107
    s1*4  %111
    s2..
    \bar ""
}
