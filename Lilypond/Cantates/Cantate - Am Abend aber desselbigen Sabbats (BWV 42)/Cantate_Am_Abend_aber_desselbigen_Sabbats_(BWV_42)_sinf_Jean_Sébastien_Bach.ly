\version "2.24.4"
\include "common.ly"
dot = -\markup\null
sinfMarks = {
    \time 4/4
    \key d \major
    s1*83 |
    s4 \tempo "Adagio" s2. |
    s1 |
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \once \override Score.RehearsalMark.direction = #DOWN
    \mark "Da Capo"
    \bar "|."
}
sinfObI = \relative c'' <<
{
    \commonMusic
    R1*8 |
    fis16(  g16  fis16) d16\dot e16( fis16 e16) cis16\dot d8(   a8) ~  a16  d16( cis16  e16) |
    d8(   a8) ~  a16 d16(  cis16  e16) d16( e16 d16) a16\dot fis'16(  g16  fis16) d16\dot |
    a'1~ |
    a2 r2 |
    e16(  fis16  e16) cis16\dot d16(  e16  d16) b16\dot cis16(  b16  cis8) r16 cis16(  b16  d16) |
    cis16(  b16  cis8) r16 cis16(  b16  d16)  cis16( d16  cis16) a16\dot b16(  cis16  b16) gis16\dot |
    a1~ |
    a2 r2 |
    r16 b16 cis16 d16 e4 ~  e16  d16( cis16  d16) b'8\dot d,8\dot |
    \appoggiatura d8 cis4 r16 a16 b16 cis16 d4 r16 cis16 d16 e16 |
    a,4 r16 a'16 gis16 fis16 e4 r16 a16 gis16 fis16 |
    e16(  b16 e16  dis16) e8\dot r8 r2 |
    r16 e16 cis16 ais16 fis16 ais16 cis16 e16 d8 r8 r4 |
    r8 gis8\dot b8\dot gis8\dot a16 e16 cis16 a16 fis'8\dot r8 |
    r16 d16 b16 gis16 e'8\dot r8 r16 cis16 a16 fis16 d'8\dot r8 |
    d16(  e16  d16) b16\dot  d16( e16  d16) b16\dot gis16 e16 d'8\dot d4 |
    c16(  d16  c16) a16\dot  c16( d16  c16) a16\dot fis16 a16 dis8\dot dis4 |
    fis,16(  gis16 a16  b16) c16(  dis16 e16  fis16) gis8\dot r16 a16\trill b,8. a16 |
    a4 r16 e'16 fis16 g16  a16( b16  a16) e16\dot a16( b16 a16) e16\dot |
    cis16(  d16  cis16) a16\dot cis16(  d16  cis16) a16\dot g'4 r4 |
    fis1 ~  |
    fis2 ~  fis8 fis8\dot a8\dot fis8\dot |
    g16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 fis'8\dot r8 |
    r16 fis16 d16 b16 g'8\dot r8 r16 g16 e16 cis16 a'8\dot r8 |
    r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 a'8\dot r8 |
    r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 a'4 ~  |
    a4 g2 fis4 ~  |
    fis4 e2 d4~ |
    d16(  e16  d16) b16\dot d16(  e16  d16) b16\dot cis8( cis8 cis8 cis8) |
    c16( d16 c16) a16\dot c16(  d16  c16) a16\dot b16 d16 cis16 e16 d16 fis16( e16 d16) |
    cis16 e16 d16 fis16 e16 g16(  fis16  e16) d16 fis16 e16 g16 fis16 a16(  g16  fis16) |
    e16 g16 fis16 a16 g16 b16(  a16  g16) fis16 b16( a16 g16 fis16 e16 d16 e16) |
    \stemDown fis8 \stemUp d,8(^"piano" \stemNeutral d8  d8) d8(  d8 d8  d8) |
    d8 d8 d8 d8 d8(  d8 d8  d8) |
    r16 a'16^"(forte)" b16 cis16 d16(  fis16  e16) cis16\dot d16(  fis16  e16) cis16\dot d16(  e16  d16) a16\dot |
    fis16(  g16  fis16) d16\dot fis16( g16 fis16) d16\dot d'16 a16 d16 fis16 e16(  d16  cis16) d16\dot |
    e8 a,8 r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot |
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16 g16(  a16  g16) b,16\dot g'16(  a16  g16) b,16\dot |
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis8\dot a8\dot b8\dot g8\dot |
    e8\dot g8\dot a8\dot fis8\dot d8 fis8 g4~ |
    g16(  a16 g16)  e16\dot g16(  a16  g16) e16\dot cis16 a16 g'8\dot g4 |
    f16(  g16  f16) d16\dot f16(  g16  f16) d16\dot b16 d16 gis8\dot gis4 |
    b16(  a16 gis16  f16) e16(  d16 cis16  b16) a8\dot r16 d16 e8 cis8 |
    d4 r4 g,8\dot r16 fis16 e8.-\parenthesize\trill d16 |
    d4\dot\fermata r4 fis'4_"cantabile" ~  fis16(  g16 a16  b16) |
    \appoggiatura fis8 e2 ~  e4 ~  e16 cis16( b16 a16) |
    d2 ~  d16 cis16(  b16 cis16 d16 cis16 e16  d16) |
    d2 ~  d4.\startTrillSpan cis8\stopTrillSpan |
    cis4 r4 r2 |
    R1*3 |
    r16 fis16(  gis16  ais16) b16( fis16)  gis16( ais16)  b16(  fis16  e16) cis16 d16(   fis16) e16( cis16) |
    d8(   e16) g16  fis16( d16)  e16( g16)  fis16( d16 cis16)  e16  d16( b16)  cis16( e16) |
    d1 ~  |
    d2 ~  d4 r4 |
    r16 cis16 d16 e16 fis4 ~  fis16 e16(  dis16  e16) cis'8\dot e,8\dot |
    d4 r16 b16 cis16 dis16 e4 r16 dis16 e16 fis16 |
    b,16 b16 g16 e16 cis'8\dot r8 r16 cis16 ais16 fis16 d'8\dot r8 |
    r16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 fis'8\dot r8 |
    r16 fis16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 fis'8\dot r8 |
    r16 fis16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 fis'4 ~  |
    fis4 e2 d4~ |
    d4 cis2 b4~ |
    b16(  cis16  b16) gis16\dot b16(  cis16  b16) gis16\dot ais8(  ais8 ais8  ais8) |
    a16(  b16  a16) fis16\dot a16(  b16  a16) fis16\dot gis8( gis8 gis8 gis8) |
    fis4 r4 r2 |
    R1 |
    e'16(  f16  e16) c16\dot d16(  e16  d16) b16\dot c8 g8 ~  g16 c16(  b16  d16) |
    c8 g8 ~  g16 c16(  b16  d16)  c16( d16  c16) g16\dot e'16(  f16 e16)  c16\dot |
    fis1 ~  |
    fis1~ |
    fis8. a16 g8 fis16\trill e16 e2 ~  |
    e16 fis,16(  gis16 ais16 b16 cis16 d16 e16)  fis8\dot r16 g16 d8\trill cis16 b16 |
    b1 ~  |
    b4 a4~ a8 gis8 gis8.\trill fis16 |
    fis4 r4 r2 |
}
\sinfMarks
>>
sinfObII = \relative c'' <<
{
    \commonMusic
    R1*8 |
    a16(  b16  a16) fis16\dot g16(  a16  g16) e16\dot  fis16( e16  fis8) r16 fis16(  e16  g16) |
    fis16(  e16  fis8) r16 fis16 e16 g16 fis16(  g16  fis16) d16\dot d'16(  e16  d16) a16\dot |
    fis'1~ |
    fis2 r2 |
    cis16(  d16  cis16) a16\dot b16(  cis16  b16) gis16\dot a8 e8 ~  e16 a16 gis16 b16 |
    a8 e8 ~  e16 a16(  gis16  b16) a16(  b16  a16) e16\dot gis16(  a16  gis16) d16\dot |
    e1~ |
    e2 r2 |
    r4 r16 e16 fis16 gis16 a4 r16 gis16 a16 b16 |
    cis16 e,16 fis16 g16 a4 ~  a16  g16( fis16  g16) e'8\dot g,8\dot |
    fis4 r16 b16 cis16 dis16 e4 r16 dis16 e16 fis16 |
    b,16(  gis16 b16  a16) b8\dot r8 r2 |
    r8 ais8\dot cis8\dot ais8\dot b8 r8 r4 |
    r16 d16 b16 gis16 e16 gis16 b16 d16 cis16 e16 cis16 a16 fis'8\dot r8 |
    r16 d16 b16 gis16 e'8\dot r8 r16 cis16 a16 fis16 d'8\dot r8 |
    r2 d16(   cis16) cis16( b16) b16( a16)  a16(  gis16) |
    a4 r4 c16( b16) b16( a16) a16(   g16) g16(   fis16) |
    fis16(  gis16 a16  b16) c16(  dis16 e16  fis16) gis8\dot r16 e16 gis,8.\trill a16 |
    a16(  b16 cis16  d16)  e8(  d8) cis8(   d8) e8(   d8) |
    cis8(   a'8) g8(   fis8) e8 cis8 r4 |
    c1 ~  |
    c2 ~  c16 d,16 fis16 a16 c16 e16 d16 c16 |
    b16 d16 b16 g16 e'8\dot r8 r16 e16 cis!16 a16 fis'8\dot r8 |
    r16 fis16 d16 b16 g'8\dot r8 r16 g16 e16 cis16 a'8\dot r8 |
    r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 a'8\dot r8 |
    r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 e16 fis4 ~  |
    fis4 e2 d4~  |
    d4 cis2 b4~ |
    b16( cis16 b16) gis16\dot b16(  cis16  b16) gis16\dot a8( a8 a8 a8) |
    a16(  b16  a16) fis16\dot a16(  b16  a16) fis16\dot g8\dot g8\dot a8\dot b8\dot |
    e,8\dot a8\dot b8\dot cis8\dot fis,8\dot b8\dot cis8\dot d8\dot |
    e8 a,8 d,8 a'8 d8 cis16(  b16 a16 g16 fis16  e16) |
    d8(  d8^"(piano)" d8  d8) d8(  d8 d8  d8) |
    d8(  d8 d8  d8) d8( d8 d8 d8) |
    r16 fis16^"(forte)" g16 e16 fis16(  a16  g16) e16\dot fis16(  a16  g16) e16\dot fis16(  g16 fis16)  e16\dot |
    fis8 a8 d8 fis,16 g16 a8 g8 a8 b8 |
    cis8 d8 cis8 b8 a8 c8 a8 c8 |
    fis,8 b8 dis8 dis8 e8 b8 g8 b8 |
    e,8 a8 cis8 cis8 d8 d8 ~  d16 g16 d16 b16 |
    e8 cis8 ~  cis16 fis16 cis16 a16 d8 b8~ b16 e16 b16 g16 |
    cis4 r4 e16( d16) d16( cis16) cis16( b16) b16( a16) |
    a4 r4 f'16(   e16) e16( d16) d16( c16) c16( b16) |
    b4 r16 d16(  cis16  b16) a8\dot r16 a16 b8 a16 g16 |
    fis4 r4 g8\dot r16 fis16 e8.\trill d16 |
    d4\dot\fermata r4 r2 |
    R1*3 |
    r2 cis'4_"cantabile" ~  cis16( b16 cis16 a16) |
    g'2 ~  g4 ~  g16 e16(  fis16  g16) |
    \appoggiatura b,8 ais2 ~  ais16 gis16(  fis16 gis16 ais16 b16 cis16 e32  d32) |
    e2 ~  e4.\startTrillSpan d8\stopTrillSpan |
    d16(  fis16  e16) cis16\dot d16( fis16) e16( cis16) d8(   e16) g16 fis16( d16) e16( g16) |
    fis16 fis,16(  gis16  ais16) b16( fis16) gis16(  ais16)   b8(  ais16) cis16 b16( fis16) ais16( cis16) |
    b1 ~  |
    b2 ~  b4 r4 |
    r4 r16 fis16 gis16 ais16 b4 r16 cis16 b16 cis16 |
    d16 fis,16 g16 a16 b4~ b16 a16( gis16 a16) fis'8\dot a,8\dot |
    g16 b16 g16 e16 cis'8\dot r8 r16 cis16 ais16 fis16 d'8\dot r8 |
    r16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 fis'8\dot r8 |
    r16 fis16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 fis'8\dot r8 |
    r16 fis16 d16 b16 fis'8\dot r8 r16 cis16 ais16 cis16 d4 ~  |
    d4 cis2 b4 ~  |
    b4 a2 g4 |
    gis16( a16 gis16) eis16\dot gis16(  a16  gis16) eis16\dot fis8(  fis8 fis8  fis8) |
    fis16(  g16  fis16) dis16\dot fis16( g16 fis16) dis16\dot b'8(  b8  b8 b8) |
    ais4 r4 r2 |
    R1 |
    g16(  a16  g16) e16\dot f16(  g16  f16) d16\dot e16(  d16  e8) r16 e16(  d16  f16) |
    e16(  d16  e8) r16 e16(  d16  f16)  e16( f16  e16) c16\dot c'16(  d16  c16) g16\dot |
    cis16(  d16  cis16) ais16\dot b16( d16) cis16( e16)  d16( e16  d16) b16\dot cis16( e16) d16( fis16) |
    e16(  fis16  e16) cis16\dot d16( fis16) e16( cis16) b8 fis8 d'8 e16 fis16 |
    b,2 ~  b8. d16 cis8 b16\trill ais16 |
    ais4 r16 ais16 b16 cis16 d8\dot r16 cis16 b8 ais8\trill |
    eis1 ~  |
    eis8 gis8 fis4~ fis16 cis'16(  b16 cis32 d32)  b8.\trill a16 |
    a4 r4 r2 |
}
\sinfMarks
>>
sinfFg = \relative c' <<
{
    \commonMusic
    \clef F
    R1*8 |
    r2 a16(  b16  a16) fis16\dot g16( a16 g16) e16\dot |
    fis16 d16 fis16 a16 d8\dot a8 ~  a16(  b16  a16) fis16\dot a16(  b16  a16) fis16\dot |
    d'1~ |
    d2 r2 |
    r2 e16(  fis16  e16) cis16\dot d16(  e16 d16)  b16\dot |
    cis16 a,16 cis16 e16 a8 e8 e'16(  fis16  e16) cis16\dot d16(  e16  d16) b16\dot |
    cis1~ |
    cis2 r2 |
    r4 r16 cis,16 d16 e16 fis4 r16 e16 fis16 gis16 |
    a4 r16 fis16 g16 a16 b4 r16 a16 b16 cis16 |
    d16 fis,16 gis16 a16 b4 ~  b16 a16(  gis16  a16) fis'8\dot a,8\dot |
    gis16(  e16 gis16  fis16) gis8 r8 r2 |
    r8 fis8\dot ais8\dot fis8\dot b8 r8 r4 |
    r8 e,8\dot gis8\dot e8\dot a8 a4 d8 ~  |
    d8 gis,4 cis4 fis,4 b8~ |
    b8 e,8 r4 b'16( a16) a16(  gis16)   gis16( fis16)   fis16(  e16) |
    e4 r4 a16(   g16) g16( fis16) fis16( e16) e16( dis16) |
    dis4 r16 a'16(  gis16  fis16) d'8\dot r16 cis16 e8 e,8 |
    a8(   b8) cis8(   b8) a8(   b8) cis8(   b8) |
    a8(   fis8) e8(   d8) cis8 a8 r4 |
    a'1 ~  |
    a2 ~  a8 d,8\dot fis8\dot d8\dot |
    g8 g4 e4 a4 fis8~ |
    fis8 b4 g4 cis4 a8 |
    a1~\trill |
    a2~  a4 r16 fis16 g16 a16 |
    b2 a2 |
    g2 fis2 |
    e8(  e8 e8  e8) a8(  a8 a8  a8) |
    d,8( d8 d8 d8) g8( e8 fis8 g8) |
    a8(  fis8 g8  a8) b8( g8 a8 b8) |
    cis8(  a8 b8  cis8) d16 d,16(  e16 fis16 g16 a16  b16 cis16) |
    d8(  d8_"(piano)" d8  d8) d8(  d8 d8  d8) |
    d8(  d8 d8  d8) d8(  d8 d8  d8) |
    d8 a8^"(forte)" fis8 a8 d,8 a'8 fis8 a8 |
    d8 a8 fis16(  e16  d16) e16\dot fis8 e8 fis8 d8 |
    a'8(  b8 a8  g8) fis8(  g8 fis8  e8) |
    dis4 r8 b8 e8(  fis8 e8  d8) |
    cis4 r8 a8 d8\dot fis8\dot g8\dot b,8\dot |
    cis8 e8 fis8 a,8 b8 d8 e8 e,8 |
    a4 r4 g''16(   fis16)  fis16( e16)  e16( d16)  d16(  cis16) |
    d4 r4 d16(   c16) c16(  b16)  b16(  a16)  a16(   gis16) |
    gis4 r16 b16 cis16 d16 g,8\dot r16 fis16 g8 a8 |
    b,4 r16 e16(  fis16  g16) a,8\dot r16 fis16 g8 a8 |
    d,4\fermata r4 a''2_"(cantabile)" ~  |
    a1 ~  |
    a16 gis16(  fis16 gis16 a16 gis16 a16 cis32  b32) b2 ~  |
    b2 ~  b4.\startTrillSpan a8\stopTrillSpan |
    a4 r4 e'2 ~  |
    e1 ~  |
    e16 d16( cis16  b16 ais16 gis16 fis16  d'16) \appoggiatura d8 cis2 ~  |
    cis16 d16( e16 d16 cis16 b16 ais16 b16) ais4.\startTrillSpan b8\stopTrillSpan |
    b4 r4 r16 fis16(  gis16  ais16) b16( fis16)  gis16(  ais16) |
    b16(  fis16  e16) cis16 d16(  fis16)  e16( cis16) d8(  e16)  g16 fis16( d16) e16(   g16) |
    fis1 ~  |
    fis2 ~  fis4 r4 |
    r4 r16 d16 e16 fis16 gis,4 r16 fis'16 gis16 ais16 |
    b,4 r16 g'16 a16 b16 cis,4 r16 b'16 cis16 dis16 |
    e,8 e4 cis'4 fis,4 d'8 ~  |
    d8 g,4 e'4 a,4 fis8 |
    fis1\trill ~  |
    fis2 ~  fis4 r16 d16 e16 fis16 |
    g2 fis2 |
    e2 d2 |
    cis8( cis8 cis8 cis8) fis8(  fis8 fis8  fis8) |
    b,8( b8 b8 b8) eis8( eis8 eis8 eis8) |
    e!4 r4 r2 |
    R1 |
    r2 g16(  a16  g16) e16\dot f16(  g16 f16)  d16\dot |
    e16 c16 e16 g16 c8 g8 ~  g16(  a16  g16) e16\dot g16(  a16  g16) e16\dot |
    ais16(  b16  ais16) fis16\dot gis16( b16) ais16( cis16)  b16( cis16  b16) gis16\dot ais16( cis16) b16( d16)  |
    cis16( d16  cis16) ais16\dot b16( d16) cis16( e16) d16( e16 d16) b16\dot b16(  cis16  b16) g16\dot |
    g16(  a16  g16) e16\dot e16( fis16 e16) cis16\dot cis16( d16 cis16) ais16\dot ais16(  b16  ais16) fis16\dot |
    fis4 r16 g'16(  fis16 e16)  d8 b8 fis'8 fis,8 |
    gis'1 ~  |
    gis4 fis8 bis,8 cis2 |
    fis,4 r4 r2 |
}
\sinfMarks
>>
sinfVlnI = \relative c'' <<
{
    \commonMusic
    d4 r16 a16 b16 cis16 d16(  e16  d16) a16\dot d16(  e16  d16) a16\dot |
    fis16(  g16  fis16) d16\dot fis16(  g16  fis16) d16\dot d'16 a16 d16 fis16 e16(  d16  cis16) d16\dot |
    e8 a,8 r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot  |
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16  g16( a16  g16) b,16\dot g'16(  a16  g16) b,16\dot |
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis16 a16 fis16 d16 b16 d16 b16 g16 |
    e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 g16 b16 g16 e16 |
    \once \override TextScript.extra-offset = #'( -2 . -2.5 ) b''8^\markup{ \musicglyph "scripts.prallup" } a8 ~  a16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 g16 a16 |
    b,16 cis16 d16 e16 fis16 g16 a16 b16 cis8\dot r16 d16 e,8. d16 |
    d8^"piano"( d8 d8 d8) d8( d8 d8 d8) |
    d8( d8 d8 d8) d8( d8 d8 d8) |
    d'4_"forte" r16 a16 b16 cis16 d16(  e16  d16) a16\dot d16( e16 d16) a16\dot |
    fis16(  g16  fis16) d16\dot fis16( g16 fis16) d16\dot d'16 a16 d16 fis16 e16( d16 cis16) d16\dot |
    \stemDown e8 \stemUp a,,8^"piano"( \stemNeutral a8  a8) a8(  a8 a8  a8) |
    a8( a8 a8 a8) a8( a8 a8 a8) |
    a''4_"forte" r16 e16 fis16 gis16 a16(  b16  a16) e16\dot a16(  b16  a16) e16\dot |
    cis16(  d16  cis16) a16\dot cis16( d16 cis16) a16\dot a'16 e16 a16 cis16  b16( a16 gis16)  a16\dot |
    b8\dot e,8\dot r4 r2 |
    R1*2 |
    r4 r16 b16 cis16 d16 e16(  fis16  e16) g,16\dot e'16( fis16 e16) g,16\dot |
    fis8\dot r8 r4 d'16(  e16  d16) fis,16\dot d'16(  e16  d16) fis,16\dot |
    e8\dot r8 r4 r4 r16 a'16 fis16 d16 |
    b'8\dot r8 r16 gis16 e16 cis16 a'8\dot r8 r16 fis16 d16 b16 |
    gis'8(_"piano"  gis8 gis8  gis8) gis8( gis8 gis8 gis8) |
    a8(  a8 a8  a8) a8(  a8 a8  a8) |
    c,4_"forte" r16 c16 b16 a16 e'8\dot r8 r4 |
    g!1~ |
    g2~ g16 a,16 cis16 e16 g16 b16 a16 g16 |
    fis8 d8 r16 a16 b16 c16 d16(  e16  d16) a16\dot d16(  e16  d16) a16\dot |
    fis16(  g16  fis16) d16\dot fis16(  g16  fis16) d16\dot c'4 r4 |
    r4 r16 b16 g16 e16 cis'8\dot r8 r16 cis16 a16 fis16 |
    d'8\dot r8 r16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 |
    fis'8\dot r8 r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 |
    a'8\dot r8 r16 a16 fis16 d16 a'8\dot r8 r16 a,16 b16 cis16 |
    d16 fis16 d16 b16 g'16 b16 g16 e16 cis16 e16 cis16 a16 fis'16 a16 fis16 d16 |
    b16 d16 b16 g16 e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 |
    gis8( gis8 gis8 gis8) g16(  a16  g16) e16\dot  g16( a16  g16) e16\dot |
    fis8(  fis8 fis8  fis8) g8 r8 r16 fis'16 e16 d16 |
    cis8\dot r8 r16 g'16 fis16 e16 d8\dot r8 r16 a'16 g16 fis16 |
    e8\dot r8 r16 b'16 a16 g16 fis8\dot r8 r4 |
    fis16(  g16  fis16) d16\dot e16(  fis16  e16) cis16\dot d8 a8 ~  a16 d16(  cis16  e16) |
    d8 a8 ~  a16 d16(  cis16  e16) d16(  e16  d16) a16\dot fis'16(  g16  fis16) d16\dot |
    a'1 ~  |
    a4 ~  a16(  b16  a16) cis,16 d16 a16 d16 fis16 e16(  d16  cis16) d16\dot |
    e8\dot a,8\dot r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot |
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16 g16(  a16  g16) b,16\dot g'16(  a16  g16) b,16\dot |
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis16 a16 fis16 d16 b16 d16 b16 g16 |
    e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 g16 b16 g16 e16 |
    cis'8^"piano"(  cis8 cis8  cis8) cis8(  cis8 cis8  cis8) |
    d8(  d8 d8  d8) d8(  d8 d8  d8) |
    f4_"forte" r16 f16 e16 d16 a'8\dot r8 r4 |
    b,,16 cis16 d16 e16 fis16 g16 a16 b16 cis8\dot r16 d16 e,8.\trill d16 |
    d16\fermata d'16_"piano" d16 d16 a16 d16 fis,16_(  g16  a16) d16 d16 d16 a16 d16 fis,16_(  g16 |
      a16) a'16 a16 a16 e16 a16 cis,16(  d16  e16) a16 a16 a16 e16 a16 d,16( e16 |
    fis16) b16 b16 b16 fis16 b16 d,16(  e16  fis16) b b b fis16 b16 cis,16(  d16 |
      e16) b'16 b16 b16 gis16  b16 e,( fis16  gis16) b16 b b gis16 b16 fis( gis16 |
    a8) a,8 cis8 e8 a8 e8 cis8 a8 |
    r8 e8 g8 b8 e8 b8 g8 e8 |
    r8 ais8 cis8 e8 g8 e8 cis8 ais8 |
    r8 ais8 cis8 e8 fis8 e8 cis8 ais8 |
    fis8 b,8(  b8  b8) b8( b8 b8 b8) |
    b8(  b8 b8  b8) b8(  b8 b8  b8) |
    b''4_"forte" r16 fis16 gis16 ais16 b16(  cis16  b16) fis16\dot b16(  cis16  b16) fis16\dot |
    d16(  e16  d16) b16\dot d16(  e16  d16) b16\dot b'16 fis16 b16 d16 cis16( b16 ais16) b16 |
    cis8\dot fis,\dot r4 r2 |
    R1 |
    r4 r16 gis16 e16 cis16 ais'8\dot r8 r16 ais16 fis16 d16 |
    b'8\dot r8 r16 b16 gis16 e16 cis'8\dot r8 r16 cis16 ais16 fis16 |
    d'8\dot r8 r16 fis,16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 |
    fis'8\dot r8 r16 fis16 d16 b16 fis'8\dot r8 r16 fis16 g16 a16 |
    b16 d16 b16 g16 e16 g16 e16 cis16 a'16 cis16 a16 fis16 d16 fis16 d16 b16 |
    g'16 b16 g16 e16 cis16 e16 cis16 a16 fis'16 a16 fis16 d16 b16 d16 b16 g16 |
    eis'8( eis8 eis8 eis8) e16(  fis16  e16) cis16\dot e16(  fis16  e16) cis16\dot |
    dis8( dis8 dis8 dis8) d16(  e16  d16) b16\dot d16(  e16  d16) b16\dot |
    fis'16(  g16  fis16) d16\dot e16(  fis16  e16) cis16\dot d16( e16 d16) b16\dot  cis16( d16  cis16) ais16\dot |
    b4 r4 b16(  c16  b16) g16\dot a16( b16 a16) fis16\dot |
    e8(^"piano" e8 e8 e8) e8(  e8 e8  e8) |
    e8(  e8 e8  e8) e8(  e8 e8  e8) |
    r8 fis'8(  fis8  fis8) r8 fis8( fis8 fis8) |
    r8 fis8(  fis8  fis8) fis4 r4 |
    R1*2 |
    b16_"(forte)"(  cis16  b16) gis16\dot a16(  b16  a16) fis16\dot gis16(  a16  gis16) eis16\dot  fis16( gis16  fis16) d?16\dot |
    eis4 fis4 ~  fis16 eis16 dis16 eis16 eis8.\trill fis16 |
    fis4 r4 r2 |
}
\sinfMarks
>>
sinfVlnII = \relative c'' <<
{
    \commonMusic
    d4 r16 a16 b16 cis16 d16( e16 d16) a16\dot d16(  e16  d16) a16\dot |
    fis16(  g16  fis16) d16\dot fis16(  g16  fis16) d16\dot d'16 a16 d16 fis16 e16(  d16  cis16) d16\dot |
    e8 a,8 r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot  |
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16  g16( a16  g16) b,16\dot g'16(  a16  g16) b,16\dot |
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis16 a16 fis16 d16 b16 d16 b16 g16 |
    e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 g16 b16 g16 e16 |
    \once \override TextScript.extra-offset = #'( -2 . -2.5 ) b''8^\markup{ \musicglyph "scripts.prallup" } a8 ~  a16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 g16 a16 |
    b,16 cis16 d16 e16 fis16 g16 a16 b16 cis8\dot r16 d16 e,8. d16 |
    d8^"piano"( d8 d8 d8) d8( d8 d8 d8) |
    d8( d8 d8 d8) d8( d8 d8 d8) |
    d'4_"forte" r16 a16 b16 cis16 d16( e16 d16) a16\dot d16(  e16  d16) a16\dot |
    fis16(  g16  fis16) d16\dot fis16( g16 fis16) d16\dot d'16 a16 d16 fis16  e16( d16 cis16)  d16\dot |
    \stemDown e8 \stemUp a,,8^"piano"( \stemNeutral a8  a8) a8(  a8 a8  a8) |
    a8( a8 a8 a8) a8(  a8 a8  a8) |
    a''4_"forte" r16 e16 fis16 gis16 a16(  b16  a16) e16\dot a16(  b16  a16) e16\dot |
    cis16(  d16  cis16) a16\dot cis16(  d16  cis16) a16\dot a'16 e16 a16 cis16 b16(  a16 gis16)  a16\dot |
    b8\dot e,8\dot r4 r2 |
    R1*2 |
    r4 r16 b16 cis16 d16 e16(  fis16  e16) g,16\dot e'16(  fis16  e16) g,16\dot |
    fis8\dot r8 r4 d'16(  e16  d16) fis,16\dot d'16( e16 d16) fis,16\dot |
    e8\dot r8 r4 r4 r16 a'16 fis16 d16 |
    b'8\dot r8 r16 gis16 e16 cis16 a'8\dot r8 r16 fis16 d16 b16 |
    b8(_"piano"  b8 b8  b8) b8( b8 b8 b8) |
    c8(  c8 c8  c8) c8( c8 c8 c8) |
    a4_"forte" r16 fis16 gis16 a16 b8\dot r8 r4 |
    e1~ |
    e2 ~  e16 a,16 cis16 e16 g16 b16 a16 g16 |
    fis8 d8 r16 a16 b16 c16 d16(  e16  d16) a16\dot d16(  e16  d16) a16\dot |
    fis16(  g16  fis16) d16\dot fis16(  g16 fis16)  d16\dot c'4 r4 |
    r4 r16 b16 g16 e16 cis'8\dot r8 r16 cis16 a16 fis16 |
    d'8\dot r8 r16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 |
    fis'8\dot r8 r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 |
    a'8\dot r8 r16 a16 fis16 d16 a'8\dot r8 r16 a,16 b16 cis16 |
    d16 fis16 d16 b16 g'16 b16 g16 e16 cis16 e16 cis16 a16 fis'16 a16 fis16 d16 |
    b16 d16 b16 g16 e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 |
    gis8(  e8 e8  e8) e16(  fis16  e16) cis16\dot  e16( fis16  e16) cis16\dot |
    d8(  d8 d8  d8) d8 r8 r16 fis'16 e16 d16 |
    cis8\dot r8 r16 g'16 fis16 e16 d8\dot r8 r16 a'16 g16 fis16 |
    e8\dot r8 r16 b'16 a16 g16 fis8\dot r8 r4 |
    a,16(  b16  a16) fis16\dot  g16( a16  g16) e16\dot fis16( e16 fis8) r16 fis16( e16 g16) |
    fis16(  e16  fis8) r16 fis16(  e16  g16) fis16(  g16  fis16) d16\dot d'16(  e16  d16) a16\dot |
    fis'1 ~  |
    fis4 ~  fis16(  g16  fis16) cis16 d16 a16 d16 fis16 e16( d16 cis16) d16\dot |
    e8\dot a,8\dot r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot |
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16 g16(  a16  g16) b,16\dot g'16(  a16  g16) b,16\dot |
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis16 a16 fis16 d16 b16 d16 b16 g16 |
    e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 g16 b16 g16 e16 |
    cis'8(_"piano"  a8 a8  a8) a8 a8 a8 a8 |
    a8 a8 a8 a8 gis8(  gis8 b8  b8) |
    b4_"forte" r16 gis16 a16 b16 cis8\dot r8 r4 |
    b,16 cis16 d16 e16 fis16 g16 a16 b16 cis8\dot r16 d16 d8 cis8 |
    d8\fermata d,8_"piano" fis8 a8 d8 a8 fis8 d8 |
    r8 a'8 cis8 e8 a8 e8 cis8 a8 |
    r8 b8 d8 fis8 b8 fis8 d8 b8 |
    r8 gis8 b8 d8 e8 d8 b8 gis8 |
    e16 a16 a16 a16 e16 a16 cis,16(  d16  e16) a16 a16 a16 e16 a16 cis,16(  d16 |
      e16) e'16 e16 e16 b16 e16 g,16(  a16  b16) e16 e16 e16 b16 e16 ais,16(  b16 |
      cis16) g'16 g16 g16 e16 g16 ais,16( b16 cis16) ais'16 ais16 ais16 e16 g16 ais,16(  b16 |
      cis16) fis16 fis16 fis16 e16 g16 cis,16(  d16  e16) cis16 cis16 cis16 ais16 cis16 d,16( e16 |
    fis8) b,8(  b8  b8) b8(  b8 b8  b8) |
    b8( b8 b8 b8) b8( b8 b8 b8) |
    b''4_"forte" r16 fis16 gis16 ais16 b16( cis16 b16) fis16\dot b16(  cis16  b16) fis16\dot |
    d16(  e16  d16) b16\dot d16(  e16  d16) b16\dot b'16 fis16 b16 d16 cis16(  b16  ais16) b16\dot |
    cis8\dot fis,8\dot r4 r2 |
    R1 |
    r4 r16 gis16 e16 cis16 ais'8\dot r8 r16 ais16 fis16 d16 |
    b'8\dot r8 r16 b16 gis16 e16 cis'8\dot r8 r16 cis16 ais16 fis16 |
    d'8\dot r8 r16 fis,16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 |
    fis'8\dot r8 r16 fis16 d16 b16 fis'8\dot r8 r16 fis16 g16 a16 |
    b16 d16 b16 g16 e16 g16 e16 cis16 a'16 cis16 a16 fis16 d16 fis16 d16 b16 |
    g'16 b16 g16 e16 cis16 e16 cis16 a16 fis'16 a16 fis16 d16 b16 d16 b16 g16 |
    cis8(  cis8 cis8  cis8) cis16(  d16  cis16) ais16\dot cis16(  d16  cis16) ais16\dot |
    b8( b8 b8 b8) b16(  cis16  b16) gis16\dot b16(  cis16  b16) gis16\dot |
    ais4 r4 fis16(  g16  fis16) d16\dot  e16( fis16  e16) cis16\dot |
    fis4 r4 r2 |
    e8^"piano"(  e8 e8  e8) e8(  e8 e8  e8) |
    e8(  e8 e8  e8) e8(  e8 e8  e8) |
    r8 cis'8( cis8 cis8) r8 d8(  d8  d8) |
    r8 e8(  e8  cis8) b4 r4 |
    R1*2 |
    r2 b16_"(forte)"(  cis16 b16)  gis16\dot  a16( b16 a16)  fis16\dot |
    gis4 a4 ~  a8 b8 cis4 |
    cis4 r4 r2 |
}
\sinfMarks
>>
sinfVla = \relative c' <<
{
    \commonMusic
    \clef C
    fis8(   g8) a8( g8) fis8(   g8) a8(   g8) |
    fis8(   d'8) cis8(   b8) a8(   g8) a8(   b8) |
    cis8(   d8) cis8(   b8) a8 c8 a8 c8 |
    fis,4 r8 dis8 b8 b'8 g8 b8 |
    e,4 r8 cis8 a8 d4 g8 ~  |
    g8 cis,4 fis4 b,4 e8~ |
    e8 cis8 d8 e8 fis8 a,8 b8 cis8 |
    d4 r16 d16 cis16 b16 a'8\dot r16 d,16 d8 cis8 |
    d8_"piano"(  d8 d8  d8) d8(  d8 d8  d8) |
    d8( d8 d8 d8) d8( d8 d8 d8) |
    fis8_"forte"(   g8) a8( g8) fis8( g8) a8(   g8) |
    fis8(   d'8) cis8(   b8) a8(   g8) a8(   b8) |
    cis8 a,8^"piano"( a8 a8) a8(  a8 a8  a8) |
    a8(  a8 a8  a8) a8(  a8 a8  a8) |
    cis8_"forte"(   d8) e8(   d8) cis8( d8) e8(   d8)\dot |
    e8(   a8) gis8(   fis8) e8(   d8) e8(   fis8) |
    gis4 r4 r2 |
    R1*2 |
    r4 gis8 fis8 e8 g8 e8 g8 |
    cis,8 r8 r4 fis,8 fis'8 d8 fis8 |
    b,8 r8 r4 r4 r8 a'8 |
    b8 r8 r8 gis8 fis8 r8 r8 fis8 |
    e8(_"piano"  e8 e8  e8) e8(  e8 e8  e8) |
    e8(  e8 e8  e8) dis8(  dis8 fis8  fis8) |
    fis4_"forte" r16 a,16 b16 c16 b8\dot r8 r4 |
    cis'!1~ |
    cis2~   cis8 cis,8\dot e8\dot cis8\dot |
    d16(  e16 fis16 g16)  a8(   g8) fis8(   g8) a8(   g8) |
    a8(   d8) c8(   b8) a8 fis8 r4 |
    r8 d8( g8) b8 a8 e8(   a8) cis8 |
    b8 fis8(   b8) d8 cis8 a8(   e8) e8 |
    d8 a'4 a,8 cis8 e4 a8 |
    fis8 a4 a,8 cis8 e4 d16 cis16 |
    b8 fis'8(   g8) b,8 cis8 e8(   fis8) a,8 |
    b8 d8(   e8) g,8 a8 cis8(   d8) b8 |
    b8( b8 b8 b8) a8( a8 a8 a8) |
    a8(  a8 a8  a8) g8 g'8(  a8  b8) |
    e,8(  a8 b8  cis8) fis,8(  b8 cis8  d8) |
    a8(  cis,8 d8  e8) a,8 r8 r4 |
    r2 a16(  b16  a16) fis16\dot g16( a16 g16) e16\dot |
    fis16 d16 fis16 a16 d8 a8 a'16(  b16  a16) fis16\dot a16(  b16  a16) fis16\dot |
    d'1 ~  |
    d4. fis,16(   g16) a8(   g8) a8(   b8) |
    cis8( d8) cis8(   b8) a8 c8 a8 c8 |
    fis,4 r8 dis8 b8 b'8 g8 b8 |
    e,4 r8 cis8 a8 d4 g8 ~  |
    g8 cis,4 fis4 b,4 e8~ |
    e8_"piano" e8(  e8  e8) e8(  e8 e8  e8) |
    f8(  f8 f8  f8) f8(  f8 f8  f8) |
    d4_"forte" r16 d16 e16 f16 e8\dot r8 r4 |
    d4 r16 d16 cis16 b16 e8\dot r16 a,16 b8 a8 |
    a4\fermata r4 d4_"piano" r4 |
    e4 r4 fis4 r4 |
    fis4 r4 fis4 r4 |
    b4 r4 e,4 r4 |
    e4 r4 cis4 r4 |
    b4 r4 b4 r4 |
    e4 r4 e4 r4 |
    fis4 r4 fis4 r4 |
    fis8 b,8(  b8  b8) b8(  b8 b8  b8) |
    b8(  b8 b8  b8) b8( b8 b8 b8) |
    d8_"forte"(   e8) fis8(   e8) d8(   e8) fis8(   e8) |
    fis8(   b8) ais8(   b8) fis8(   e8)  fis8(  g8) |
    ais,4 r4 r2 |
    R1 |
    r8 b8^"forte"(   e8) gis8 fis8 cis8(   fis8) ais8 |
    b8 d,8( g8) b8 a8 e8(   a8) cis8 |
    b8 fis4 fis,8 ais8 cis4 fis8 |
    d8 fis4 fis,8 ais8(   cis8) b8(   a8) |
    g8 d'8(   e8) g8 a,8 cis8(   d8) fis8 |
    g,8 b8( cis8) e8 fis,8 a8(   b8) d8 |
    gis,8 ~  gis8 gis'8 ~  gis8 fis8(  fis8 fis8  fis8) |
    fis8(  fis8 fis8  fis8) eis8(  eis8 eis8  eis8) |
    cis4 r4 r2 |
    b'16(  c16  b16) g16\dot a16(  b16  a16) fis16\dot g16(  a16  g16) e16\dot fis16( g16 fis16) dis16\dot |
    e8(_"(piano)" e8 e8 e8) e8(  e8 e8  e8) |
    e8(  e8 e8  e8) e8( e8 e8 e8) |
    r8 ais,8(  ais8  ais8) r8 b8(  b8  b8) |
    r8 cis8(  cis8  fis8) d4 r4 |
    R1*2 |
    eis4^"(forte)" r8 fis8 cis'4 r8 d8 |
    b4 dis,4 cis4 gis'4 |
    a4 r4 r2 |
}
\sinfMarks
>>
sinfBasso = \relative c <<
{
    \commonMusic
    \clef F
    d8(   e8) fis8(   e8) d8(   e8) fis8(   e8) |
    d8(   b'8) a8(   g8) fis8(   e8) fis8(   d8) |
    a'8(   b8) a8(   g8) fis8(   g8) fis8(   e8) |
    dis4 r8 b8 e8(   fis8) e8( d8) |
    cis4 r8 a8 d8 fis8(   g8) b,8 |
    cis8 e8(   fis8) a,8 b8 d8( e8) g8 |
    cis,8 a8 b8 cis8 d8 fis,8 g8 a8 |
    b4 r16 e16 fis16 g16 g,8 r16 fis16 g8 a8 |
    << d,4 \new Voice { \voiceThree d' } >> r4 r2 |
    R1 |
    d8^"forte"( e8) fis8(   e8) d8( e8) fis8(   e8) |
    d8(   b'8) a8 g8 fis8(   e8) fis8(   d8) |
    a'8 a,8 r4 r2 |
    R1 |
    a8^"(forte)"(   b8) cis8(   b8) a8(   b8) cis8( b8) |
    a8(   fis'8) e8( d8) cis8( b8) cis8(   a8) |
    e'8 d8 cis8 e8 fis8 b8 gis8 e8 |
    a8 g8 fis8 a8 b8 e,8 cis8 a8 |
    d8 cis8 dis8 b8 cis8 fis8 dis8 b8 |
    e8( fis8) e8( d8) cis8(   d8) cis8(   b8) |
    ais8 fis8 ais8 fis8 b8(   cis8) b8(   a8) |
    gis8 e8 gis8 e8 a8 cis8(   d8) << fis,8 \new Voice { \tiny \stemUp \shiftOn fis' } >> |
    gis,8 b( cis) << e, \new Voice { \tiny \stemUp \shiftOn e' } >> fis, a( b) d |
    e,8^"(piano)"( e8 e8 e8) e8( e8 e8 e8) |
    e8(  e8 e8  e8) e8(  e8 e8  e8) |
    dis4^"(forte)" r16 a'16 gis16 fis16 d'8\dot r16 cis16 e8 e,8 |
    a4 r4 a4 r4 |
    a4 r4 r8 a8\dot cis8\dot a8\dot |
    d8(   e8) fis8(   e8) d8(   e8) fis8(   e8) |
    d8(   b8) a8(   g8) fis8 d8 r4 |
    r8 g8( e8) g8 a8 cis8(   fis,8) a8 |
    b8 d8(   g,8) b8 cis8 e8(   a,8) cis8 |
    d8(   e8) fis8(  d8)  a8(   b8) cis8(   a8) |
    d8( e8) fis8(   d8) a8(   g8) fis8(   a8) |
    b8 d8( e8) g8 a,8 cis8(   d8) fis8 |
    g,8 b8( cis8) e8 fis,8 a8( b8) d8 |
    e,8(  e8 e8  e8) a8(  a8 a8  a8) |
    d,8( d8 d8 d8) g8 e8 fis8 g8 |
    a8 fis8 g8 a8 b8 g8 a8 b8 |
    cis8 a8 b8 cis8 d8 r8 r4 |
    d,8 d'8 r4 d,8 d'8 r4 |
    d,8 d'8 r4 d,8 d'8 r4 |
    d,8 d'8 r4 d,8 d'8 r4 |
    d,8 d'8 r8 d16( e) fis8(   e8) fis8(   d8) |
    a'8(   b8) a8(   g8) fis8(   g8) fis8( e8) |
    dis4 r8 b8 e8(   fis8) e8(   d8) |
    cis4 r8 a8 d8 fis8(   g8) b,8 |
    cis8 e8(   fis8) a,8 b8 d8(   e8) e,8 |
    a8(^"(piano)"  a8 a8  a8) a8(  a8 a8  a8) |
    a8( a8 a8 a8) a8( a8 a8 a8) |
    gis4^"(forte)" r4 g8\dot r16 fis16 g8 a8 |
    b4 r16 e16 fis16 g16 a,8\dot r16 fis16 g8 a8 |
    d,4\fermata r4 d'4_"piano" r4 |
    cis4 r4 fis4 r4 |
    b,4 r4 a4 r4 |
    gis4 r4 e4 r4 |
    a4 r4 a'4 r4 |
    e4 r4 g4 r4 |
    cis,4 r4 e4 r4 |
    ais,4 r4 fis4 r4 |
    b4 r4 r2 |
    b4 r4 r2 |
    b8(_"forte" cis8) d8( cis8) b8( cis8) d8(   cis8) |
    b8(   g'8) fis8(   e8) d8( cis8) d8( b8) |
    fis'8 e8 d8 fis8 gis8 cis8 ais8 fis8 |
    b8 a8 g8 b8 cis,8 fis8 dis8 b8 |
    e8 g8(   cis,8) e8 fis8 ais8(   d,8) fis8 |
    g8 b8(   e,8) gis8 a8 cis8(   fis,8) ais8 |
    b8(   cis8) d8(   b8) fis8(   gis8) ais8(   fis8) |
    b,8(   cis8) d8( b8) fis8(  fis'16  e16) d8(   fis8) |
    g8 b8(   cis,8) e8 fis8 a8(   b,8) d8 |
    e8 g8(   a,8) cis8 <<
	{
	    \stemDown d8 fis8( g,8) b8 \stemNeutral |
	} \new Voice {
	    \tiny \voiceThree d8 fis8 g8 b8 |
	}
    >>
    cis,8(  cis8 cis8  cis8) fis,8( fis8 fis8 fis8) |
    b8( b8 b8 b8) eis,8(  eis8 eis8  eis8) |
    e4 r4 r2 |
    << dis4 \new Voice { \tiny \voiceThree dis' } >> r4 r2 |
    << e,4_"(piano)" \new Voice { \tiny \voiceThree e' } >> r4 r2 |
    << e,4 \new Voice { \tiny \voiceThree e' } >> r4 r2 |
    e,4 r4 d4 r4 |
    ais'4 r4 b4 r4 |
    e4 r4 g4 r4 |
    fis4 r16 g16 fis16 e16 d8 b8 fis'8 fis,8 |
    cis'4^"(forte)" r8 dis8 eis4 r8 fis8 |
    d4 bis4 cis4 << cis,4 \new Voice { \tiny \voiceThree cis' } >> |
    fis,4 r4 r2 |
}
\new FiguredBass {
    \figuremode {
        \set figuredBassAlterationDirection = #RIGHT
	\set figuredBassPlusDirection = #RIGHT
	s4 <6> s4 <6> |
	s <6 4 2>8 <5> <6>4 <6> |
	s2 <6\\ 5-> |
	<6 5>4 s8 <7 _+> s2 |
	<6 5>4 s8 <7> s <6> <7> s |
	<7>4 <7> <7> <5> |
	<7 5>8 <8 7>4
            \bassFigureExtendersOn
	    <8>8
            \bassFigureExtendersOff
	    s8 <6> <6 5>4 |
	<7>4 s <4 2>8 s16 <6> <6 5>4 |
	s1*2 |
	s4 <6> s <6> |
	s4 <6 4 2>8 <5> <6>4
            \bassFigureExtendersOn
	    <6>8
            \bassFigureExtendersOff
	    s |
	s1*2 |
	s4 <6> s <6> |
	s4 <6 4 _+>8 <5 3> <6> <6\\> <6>4 |
	<_+>4 <7> <7>8 <5> <6 3> <7 _+> |
	s4 <7> <7>8 <5> <6 5>4 |
	s4 <6 5>8 <6\\>16 <5> <7>8 <5> <6 5>4 |
	<_+>2 <7>4 <6\\ 5->8 <8> |
	<6 5>1 |
	<6 5>2. <7>4 |
	<7> <7> <7> <7> |
	<7 _+>2..
            \bassFigureExtendersOn
	    <_+>8 |
            \bassFigureExtendersOff
	<6- 4>4.
            \bassFigureExtendersOn
	    <4>8 <7/ 6- 4\! 2>4. <6->8 |
            \bassFigureExtendersOff
	<7- _+>4 s16 <4\+ 2> <6> <6\\> <4\+ 2>8. <6>16 <5 _+>4 |
	<7->2
            \bassFigureExtendersOn
	    <7->4 s |
            \bassFigureExtendersOff
	<7>4 s s8 <7> <6 5>4 |
	<7-> <6 5-> <7-> <6 5-> |
	<7-> <6 4 3-> <6 5-> s |
	s4. <6>8 s <6> s <6> |
	s <6> s <6> <6 5>4 <7>8 <6 5> |
	s4 <6> s <6> |
	s <6> s <5>8 <6> |
	<7>4 <7> <7> <7> |
	<7> <7> <7> <7> |
	<7 _+>2 <7-> |
	<7-> s8 <6\\> <6> <6 5> |
	s <6> <6> <6 5> s <6> <6> <6 5> |
	<6 5> <6> <6 5> <6 5> s2 |
	s1*3 |
	s2 <6> |
	s <6\\ 5-> |
	<6 5>4. <7 _+>8 s2 |
	<6 5>4. <7>8 s <6> <7> <6> |
	<7>4 <7> <7> <7> |
	<7>2..
            \bassFigureExtendersOn
	    <7>8 |
            \bassFigureExtendersOff
	<6- 4>2 <7/ 4 2> |
	<7- 5> <4 2>8. <6>16 <6 5>4 |
	s4 s16 <7>8. <7> <6>16 <6 5>4 |
	s1 |
	<6>2 <7> |
	<7>8 <6\\> s4 <6 4 2>2 |
	<6 5> <7 _+> |
	s1 |
	<5 _!>2 <6> |
	<6\\ 5-> <6 4\+ 2> |
	<6 5> <7 _+> |
	s1*2 |
	s4 <6> s <6> |
	s8 <7 5> <6 4> <6 4\+ 2> <6>4 <6> |
	<_+>4 <6>8 <_+> <7> <5\+> <6 5>4 |
	s4 <6> <7 5>8 <5> <6 5> <7 _+> |
	s4 <7 5> <_+>8 <6> <6> <_+> |
	<5>4. <6>8 s <6> s <6> |
	s4 <6> <_+> <6> |
	s <6> <_+> <6>8 <6> |
	<7 5>4 <7> <7> <7> |
	<7> <7> <7> <7> |
	<7 _+>2 <7- _+> |
	<7- _+> <7- 5> |
	<6 4\+ 2>4 s2. |
	<6>4 s2. |
	s1 |
	<6-> |
	<4\+ 2>2 <6> |
	<6 4>1 |
	<9>2 <6> |
	<7 _+>4..
            \bassFigureExtendersOn
	    <7>16
            \bassFigureExtendersOff
	<6>4 <6 4>8 <5 _+> |
	    <7 _+>4 s8 <6> <6 5>4 s |
	    <6 4\+ 2\+> <7- 5> <6 4> <5\+ _+> |
	s1
	\bar "|."
    }
}
\sinfMarks
>>
sinfBreaks = {
    s1*3^"Breaks left in"
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
    s1*5
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
    s1*5
    \bar "|."
}
