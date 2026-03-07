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

    R1*8 | % bar 1
    fis16(  g16  fis16) d16\dot e16( fis16 e16) cis16\dot d8(   a8) ~  a16  d16( cis16  e16) | % bar 9
    d8(   a8) ~  a16 d16(  cis16  e16) d16( e16 d16) a16\dot fis'16(  g16  fis16) d16\dot | % bar 10
    a'1~ | % bar 11
    a2 r2 | % bar 12
    e16(  fis16  e16) cis16\dot d16(  e16  d16) b16\dot cis16(  b16  cis8) r16 cis16(  b16  d16) | % bar 13
    cis16(  b16  cis8) r16 cis16(  b16  d16)  cis16( d16  cis16) a16\dot b16(  cis16  b16) gis16\dot | % bar 14
    a1~ | % bar 15
    a2 r2 | % bar 16
    r16 b16 cis16 d16 e4 ~  e16  d16( cis16  d16) b'8\dot d,8\dot | % bar 17
    \appoggiatura d8 cis4 r16 a16 b16 cis16 d4 r16 cis16 d16 e16 | % bar 18
    a,4 r16 a'16 gis16 fis16 e4 r16 a16 gis16 fis16 | % bar 19
    e16(  b16 e16  dis16) e8\dot r8 r2 | % bar 20
    r16 e16 cis16 ais16 fis16 ais16 cis16 e16 d8 r8 r4 | % bar 21
    r8 gis8\dot b8\dot gis8\dot a16 e16 cis16 a16 fis'8\dot r8 | % bar 22
    r16 d16 b16 gis16 e'8\dot r8 r16 cis16 a16 fis16 d'8\dot r8 | % bar 23
    d16(  e16  d16) b16\dot  d16( e16  d16) b16\dot gis16 e16 d'8\dot d4 | % bar 24
    c16(  d16  c16) a16\dot  c16( d16  c16) a16\dot fis16 a16 dis8\dot dis4 | % bar 25
    fis,16(  gis16 a16  b16) c16(  dis16 e16  fis16) gis8\dot r16 a16\trill b,8. a16 | % bar 26
    a4 r16 e'16 fis16 g16  a16( b16  a16) e16\dot a16( b16 a16) e16\dot | % bar 27
    cis16(  d16  cis16) a16\dot cis16(  d16  cis16) a16\dot g'4 r4 | % bar 28
    fis1 ~  | % bar 29
    fis2 ~  fis8 fis8\dot a8\dot fis8\dot | % bar 30
    g16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 fis'8\dot r8 | % bar 31
    r16 fis16 d16 b16 g'8\dot r8 r16 g16 e16 cis16 a'8\dot r8 | % bar 32
    r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 a'8\dot r8 | % bar 33
    r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 a'4 ~  | % bar 34
    a4 g2 fis4 ~  | % bar 35
    fis4 e2 d4~ | % bar 36
    d16(  e16  d16) b16\dot d16(  e16  d16) b16\dot cis8( cis8 cis8 cis8) | % bar 37
    c16( d16 c16) a16\dot c16(  d16  c16) a16\dot b16 d16 cis16 e16 d16 fis16( e16 d16) | % bar 38
    cis16 e16 d16 fis16 e16 g16(  fis16  e16) d16 fis16 e16 g16 fis16 a16(  g16  fis16) | % bar 39
    e16 g16 fis16 a16 g16 b16(  a16  g16) fis16 b16( a16 g16 fis16 e16 d16 e16) | % bar 40
    \stemDown fis8 \stemUp d,8(^"piano" \stemNeutral d8  d8) d8(  d8 d8  d8) | % bar 41
    d8 d8 d8 d8 d8(  d8 d8  d8) | % bar 42
    r16 a'16^"(forte)" b16 cis16 d16(  fis16  e16) cis16\dot d16(  fis16  e16) cis16\dot d16(  e16  d16) a16\dot | % bar 43
    fis16(  g16  fis16) d16\dot fis16( g16 fis16) d16\dot d'16 a16 d16 fis16 e16(  d16  cis16) d16\dot | % bar 44
    e8 a,8 r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot | % bar 45
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16 g16(  a16  g16) b,16\dot g'16(  a16  g16) b,16\dot | % bar 46
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis8\dot a8\dot b8\dot g8\dot | % bar 47
    e8\dot g8\dot a8\dot fis8\dot d8 fis8 g4~ | % bar 48
    g16(  a16 g16)  e16\dot g16(  a16  g16) e16\dot cis16 a16 g'8\dot g4 | % bar 49
    f16(  g16  f16) d16\dot f16(  g16  f16) d16\dot b16 d16 gis8\dot gis4 | % bar 50
    b16(  a16 gis16  f16) e16(  d16 cis16  b16) a8\dot r16 d16 e8 cis8 | % bar 51
    d4 r4 g,8\dot r16 fis16 e8.-\parenthesize\trill d16 | % bar 52
    d4\dot\fermata r4 fis'4_"cantabile" ~  fis16(  g16 a16  b16) | % bar 53
    \appoggiatura fis8 e2 ~  e4 ~  e16 cis16( b16 a16) | % bar 54
    d2 ~  d16 cis16(  b16 cis16 d16 cis16 e16  d16) | % bar 55
    d2 ~  d4.\startTrillSpan cis8\stopTrillSpan | % bar 56
    cis4 r4 r2 | % bar 57
    R1*3 | % bar 58
    r16 fis16(  gis16  ais16) b16( fis16)  gis16( ais16)  b16(  fis16  e16) cis16 d16(   fis16) e16( cis16) | % bar 61
    d8(   e16) g16  fis16( d16)  e16( g16)  fis16( d16 cis16)  e16  d16( b16)  cis16( e16) | % bar 62
    d1 ~  | % bar 63
    d2 ~  d4 r4 | % bar 64
    r16 cis16 d16 e16 fis4 ~  fis16 e16(  dis16  e16) cis'8\dot e,8\dot | % bar 65
    d4 r16 b16 cis16 dis16 e4 r16 dis16 e16 fis16 | % bar 66
    b,16 b16 g16 e16 cis'8\dot r8 r16 cis16 ais16 fis16 d'8\dot r8 | % bar 67
    r16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 fis'8\dot r8 | % bar 68
    r16 fis16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 fis'8\dot r8 | % bar 69
    r16 fis16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 fis'4 ~  | % bar 70
    fis4 e2 d4~ | % bar 71
    d4 cis2 b4~ | % bar 72
    b16(  cis16  b16) gis16\dot b16(  cis16  b16) gis16\dot ais8(  ais8 ais8  ais8) | % bar 73
    a16(  b16  a16) fis16\dot a16(  b16  a16) fis16\dot gis8( gis8 gis8 gis8) | % bar 74
    fis4 r4 r2 | % bar 75
    R1 | % bar 76
    e'16(  f16  e16) c16\dot d16(  e16  d16) b16\dot c8 g8 ~  g16 c16(  b16  d16) | % bar 77
    c8 g8 ~  g16 c16(  b16  d16)  c16( d16  c16) g16\dot e'16(  f16 e16)  c16\dot | % bar 78
    fis1 ~  | % bar 79
    fis1~ | % bar 80
    fis8. a16 g8 fis16\trill e16 e2 ~  | % bar 81
    e16 fis,16(  gis16 ais16 b16 cis16 d16 e16)  fis8\dot r16 g16 d8\trill cis16 b16 | % bar 82
    b1 ~  | % bar 83
    b4 a4~ a8 gis8 gis8.\trill fis16 | % bar 84
    fis4 r4 r2 | % bar 85
}

\sinfMarks
>>

sinfObII = \relative c'' <<
{
    \commonMusic

    R1*8 | % bar 1
    a16(  b16  a16) fis16\dot g16(  a16  g16) e16\dot  fis16( e16  fis8) r16 fis16(  e16  g16) | % bar 9
    fis16(  e16  fis8) r16 fis16 e16 g16 fis16(  g16  fis16) d16\dot d'16(  e16  d16) a16\dot | % bar 10
    fis'1~ | % bar 11
    fis2 r2 | % bar 12
    cis16(  d16  cis16) a16\dot b16(  cis16  b16) gis16\dot a8 e8 ~  e16 a16 gis16 b16 | % bar 13
    a8 e8 ~  e16 a16(  gis16  b16) a16(  b16  a16) e16\dot gis16(  a16  gis16) d16\dot | % bar 14
    e1~ | % bar 15
    e2 r2 | % bar 16
    r4 r16 e16 fis16 gis16 a4 r16 gis16 a16 b16 | % bar 17
    cis16 e,16 fis16 g16 a4 ~  a16  g16( fis16  g16) e'8\dot g,8\dot | % bar 18
    fis4 r16 b16 cis16 dis16 e4 r16 dis16 e16 fis16 | % bar 19
    b,16(  gis16 b16  a16) b8\dot r8 r2 | % bar 20
    r8 ais8\dot cis8\dot ais8\dot b8 r8 r4 | % bar 21
    r16 d16 b16 gis16 e16 gis16 b16 d16 cis16 e16 cis16 a16 fis'8\dot r8 | % bar 22
    r16 d16 b16 gis16 e'8\dot r8 r16 cis16 a16 fis16 d'8\dot r8 | % bar 23
    r2 d16(   cis16) cis16( b16) b16( a16)  a16(  gis16) | % bar 24
    a4 r4 c16( b16) b16( a16) a16(   g16) g16(   fis16) | % bar 25
    fis16(  gis16 a16  b16) c16(  dis16 e16  fis16) gis8\dot r16 e16 gis,8.\trill a16 | % bar 26
    a16(  b16 cis16  d16)  e8(  d8) cis8(   d8) e8(   d8) | % bar 27
    cis8(   a'8) g8(   fis8) e8 cis8 r4 | % bar 28
    c1 ~  | % bar 29
    c2 ~  c16 d,16 fis16 a16 c16 e16 d16 c16 | % bar 30
    b16 d16 b16 g16 e'8\dot r8 r16 e16 cis!16 a16 fis'8\dot r8 | % bar 31
    r16 fis16 d16 b16 g'8\dot r8 r16 g16 e16 cis16 a'8\dot r8 | % bar 32
    r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 a'8\dot r8 | % bar 33
    r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 e16 fis4 ~  | % bar 34
    fis4 e2 d4~  | % bar 35
    d4 cis2 b4~ | % bar 36
    b16( cis16 b16) gis16\dot b16(  cis16  b16) gis16\dot a8( a8 a8 a8) | % bar 37
    a16(  b16  a16) fis16\dot a16(  b16  a16) fis16\dot g8\dot g8\dot a8\dot b8\dot | % bar 38
    e,8\dot a8\dot b8\dot cis8\dot fis,8\dot b8\dot cis8\dot d8\dot | % bar 39
    e8 a,8 d,8 a'8 d8 cis16(  b16 a16 g16 fis16  e16) | % bar 40
    d8(  d8^"(piano)" d8  d8) d8(  d8 d8  d8) | % bar 41
    d8(  d8 d8  d8) d8( d8 d8 d8) | % bar 42
    r16 fis16^"(forte)" g16 e16 fis16(  a16  g16) e16\dot fis16(  a16  g16) e16\dot fis16(  g16 fis16)  e16\dot | % bar 43
    fis8 a8 d8 fis,16 g16 a8 g8 a8 b8 | % bar 44
    cis8 d8 cis8 b8 a8 c8 a8 c8 | % bar 45
    fis,8 b8 dis8 dis8 e8 b8 g8 b8 | % bar 46
    e,8 a8 cis8 cis8 d8 d8 ~  d16 g16 d16 b16 | % bar 47
    e8 cis8 ~  cis16 fis16 cis16 a16 d8 b8~ b16 e16 b16 g16 | % bar 48
    cis4 r4 e16( d16) d16( cis16) cis16( b16) b16( a16) | % bar 49
    a4 r4 f'16(   e16) e16( d16) d16( c16) c16( b16) | % bar 50
    b4 r16 d16(  cis16  b16) a8\dot r16 a16 b8 a16 g16 | % bar 51
    fis4 r4 g8\dot r16 fis16 e8.\trill d16 | % bar 52
    d4\dot\fermata r4 r2 | % bar 53
    R1*3 | % bar 54
    r2 cis'4_"cantabile" ~  cis16( b16 cis16 a16) | % bar 57
    g'2 ~  g4 ~  g16 e16(  fis16  g16) | % bar 58
    \appoggiatura b,8 ais2 ~  ais16 gis16(  fis16 gis16 ais16 b16 cis16 e32  d32) | % bar 59
    e2 ~  e4.\startTrillSpan d8\stopTrillSpan | % bar 60
    d16(  fis16  e16) cis16\dot d16( fis16) e16( cis16) d8(   e16) g16 fis16( d16) e16( g16) | % bar 61
    fis16 fis,16(  gis16  ais16) b16( fis16) gis16(  ais16)   b8(  ais16) cis16 b16( fis16) ais16( cis16) | % bar 62
    b1 ~  | % bar 63
    b2 ~  b4 r4 | % bar 64
    r4 r16 fis16 gis16 ais16 b4 r16 cis16 b16 cis16 | % bar 65
    d16 fis,16 g16 a16 b4~ b16 a16( gis16 a16) fis'8\dot a,8\dot | % bar 66
    g16 b16 g16 e16 cis'8\dot r8 r16 cis16 ais16 fis16 d'8\dot r8 | % bar 67
    r16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 fis'8\dot r8 | % bar 68
    r16 fis16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 fis'8\dot r8 | % bar 69
    r16 fis16 d16 b16 fis'8\dot r8 r16 cis16 ais16 cis16 d4 ~  | % bar 70
    d4 cis2 b4 ~  | % bar 71
    b4 a2 g4 | % bar 72
    gis16( a16 gis16) eis16\dot gis16(  a16  gis16) eis16\dot fis8(  fis8 fis8  fis8) | % bar 73
    fis16(  g16  fis16) dis16\dot fis16( g16 fis16) dis16\dot b'8(  b8  b8 b8) | % bar 74
    ais4 r4 r2 | % bar 75
    R1 | % bar 76
    g16(  a16  g16) e16\dot f16(  g16  f16) d16\dot e16(  d16  e8) r16 e16(  d16  f16) | % bar 77
    e16(  d16  e8) r16 e16(  d16  f16)  e16( f16  e16) c16\dot c'16(  d16  c16) g16\dot | % bar 78
    cis16(  d16  cis16) ais16\dot b16( d16) cis16( e16)  d16( e16  d16) b16\dot cis16( e16) d16( fis16) | % bar 79
    e16(  fis16  e16) cis16\dot d16( fis16) e16( cis16) b8 fis8 d'8 e16 fis16 | % bar 80
    b,2 ~  b8. d16 cis8 b16\trill ais16 | % bar 81
    ais4 r16 ais16 b16 cis16 d8\dot r16 cis16 b8 ais8\trill | % bar 82
    eis1 ~  | % bar 83
    eis8 gis8 fis4~ fis16 cis'16(  b16 cis32 d32)  b8.\trill a16 | % bar 84
    a4 r4 r2 | % bar 85
}

\sinfMarks
>>

sinfFg = \relative c' <<
{
    \commonMusic

    \clef F
    R1*8 | % bar 1
    r2 a16(  b16  a16) fis16\dot g16( a16 g16) e16\dot | % bar 9
    fis16 d16 fis16 a16 d8\dot a8 ~  a16(  b16  a16) fis16\dot a16(  b16  a16) fis16\dot | % bar 10
    d'1~ | % bar 11
    d2 r2 | % bar 12
    r2 e16(  fis16  e16) cis16\dot d16(  e16 d16)  b16\dot | % bar 13
    cis16 a,16 cis16 e16 a8 e8 e'16(  fis16  e16) cis16\dot d16(  e16  d16) b16\dot | % bar 14
    cis1~ | % bar 15
    cis2 r2 | % bar 16
    r4 r16 cis,16 d16 e16 fis4 r16 e16 fis16 gis16 | % bar 17
    a4 r16 fis16 g16 a16 b4 r16 a16 b16 cis16 | % bar 18
    d16 fis,16 gis16 a16 b4 ~  b16 a16(  gis16  a16) fis'8\dot a,8\dot | % bar 19
    gis16(  e16 gis16  fis16) gis8 r8 r2 | % bar 20
    r8 fis8\dot ais8\dot fis8\dot b8 r8 r4 | % bar 21
    r8 e,8\dot gis8\dot e8\dot a8 a4 d8 ~  | % bar 22
    d8 gis,4 cis4 fis,4 b8~ | % bar 23
    b8 e,8 r4 b'16( a16) a16(  gis16)   gis16( fis16)   fis16(  e16) | % bar 24
    e4 r4 a16(   g16) g16( fis16) fis16( e16) e16( dis16) | % bar 25
    dis4 r16 a'16(  gis16  fis16) d'8\dot r16 cis16 e8 e,8 | % bar 26
    a8(   b8) cis8(   b8) a8(   b8) cis8(   b8) | % bar 27
    a8(   fis8) e8(   d8) cis8 a8 r4 | % bar 28
    a'1 ~  | % bar 29
    a2 ~  a8 d,8\dot fis8\dot d8\dot | % bar 30
    g8 g4 e4 a4 fis8~ | % bar 31
    fis8 b4 g4 cis4 a8 | % bar 32
    a1~\trill | % bar 33
    a2~  a4 r16 fis16 g16 a16 | % bar 34
    b2 a2 | % bar 35
    g2 fis2 | % bar 36
    e8(  e8 e8  e8) a8(  a8 a8  a8) | % bar 37
    d,8( d8 d8 d8) g8( e8 fis8 g8) | % bar 38
    a8(  fis8 g8  a8) b8( g8 a8 b8) | % bar 39
    cis8(  a8 b8  cis8) d16 d,16(  e16 fis16 g16 a16  b16 cis16) | % bar 40
    d8(  d8_"(piano)" d8  d8) d8(  d8 d8  d8) | % bar 41
    d8(  d8 d8  d8) d8(  d8 d8  d8) | % bar 42
    d8 a8^"(forte)" fis8 a8 d,8 a'8 fis8 a8 | % bar 43
    d8 a8 fis16(  e16  d16) e16\dot fis8 e8 fis8 d8 | % bar 44
    a'8(  b8 a8  g8) fis8(  g8 fis8  e8) | % bar 45
    dis4 r8 b8 e8(  fis8 e8  d8) | % bar 46
    cis4 r8 a8 d8\dot fis8\dot g8\dot b,8\dot | % bar 47
    cis8 e8 fis8 a,8 b8 d8 e8 e,8 | % bar 48
    a4 r4 g''16(   fis16)  fis16( e16)  e16( d16)  d16(  cis16) | % bar 49
    d4 r4 d16(   c16) c16(  b16)  b16(  a16)  a16(   gis16) | % bar 50
    gis4 r16 b16 cis16 d16 g,8\dot r16 fis16 g8 a8 | % bar 51
    b,4 r16 e16(  fis16  g16) a,8\dot r16 fis16 g8 a8 | % bar 52
    d,4\fermata r4 a''2_"(cantabile)" ~  | % bar 53
    a1 ~  | % bar 54
    a16 gis16(  fis16 gis16 a16 gis16 a16 cis32  b32) b2 ~  | % bar 55
    b2 ~  b4.\startTrillSpan a8\stopTrillSpan | % bar 56
    a4 r4 e'2 ~  | % bar 57
    e1 ~  | % bar 58
    e16 d16( cis16  b16 ais16 gis16 fis16  d'16) \appoggiatura d8 cis2 ~  | % bar 59
    cis16 d16( e16 d16 cis16 b16 ais16 b16) ais4.\startTrillSpan b8\stopTrillSpan | % bar 60
    b4 r4 r16 fis16(  gis16  ais16) b16( fis16)  gis16(  ais16) | % bar 61
    b16(  fis16  e16) cis16 d16(  fis16)  e16( cis16) d8(  e16)  g16 fis16( d16) e16(   g16) | % bar 62
    fis1 ~  | % bar 63
    fis2 ~  fis4 r4 | % bar 64
    r4 r16 d16 e16 fis16 gis,4 r16 fis'16 gis16 ais16 | % bar 65
    b,4 r16 g'16 a16 b16 cis,4 r16 b'16 cis16 dis16 | % bar 66
    e,8 e4 cis'4 fis,4 d'8 ~  | % bar 67
    d8 g,4 e'4 a,4 fis8 | % bar 68
    fis1\trill ~  | % bar 69
    fis2 ~  fis4 r16 d16 e16 fis16 | % bar 70
    g2 fis2 | % bar 71
    e2 d2 | % bar 72
    cis8( cis8 cis8 cis8) fis8(  fis8 fis8  fis8) | % bar 73
    b,8( b8 b8 b8) eis8( eis8 eis8 eis8) | % bar 74
    e!4 r4 r2 | % bar 75
    R1 | % bar 76
    r2 g16(  a16  g16) e16\dot f16(  g16 f16)  d16\dot | % bar 77
    e16 c16 e16 g16 c8 g8 ~  g16(  a16  g16) e16\dot g16(  a16  g16) e16\dot | % bar 78
    ais16(  b16  ais16) fis16\dot gis16( b16) ais16( cis16)  b16( cis16  b16) gis16\dot ais16( cis16) b16( d16)  | % bar 79
    cis16( d16  cis16) ais16\dot b16( d16) cis16( e16) d16( e16 d16) b16\dot b16(  cis16  b16) g16\dot | % bar 80
    g16(  a16  g16) e16\dot e16( fis16 e16) cis16\dot cis16( d16 cis16) ais16\dot ais16(  b16  ais16) fis16\dot | % bar 81
    fis4 r16 g'16(  fis16 e16)  d8 b8 fis'8 fis,8 | % bar 82
    gis'1 ~  | % bar 83
    gis4 fis8 bis,8 cis2 | % bar 84
    fis,4 r4 r2 | % bar 85
}

\sinfMarks
>>

sinfVlnI = \relative c'' <<
{
    \commonMusic

    d4 r16 a16 b16 cis16 d16(  e16  d16) a16\dot d16(  e16  d16) a16\dot | % bar 1
    fis16(  g16  fis16) d16\dot fis16(  g16  fis16) d16\dot d'16 a16 d16 fis16 e16(  d16  cis16) d16\dot | % bar 2
    e8 a,8 r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot  | % bar 3
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16  g16( a16  g16) b,16\dot g'16(  a16  g16) b,16\dot | % bar 4
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis16 a16 fis16 d16 b16 d16 b16 g16 | % bar 5
    e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 g16 b16 g16 e16 | % bar 6
    \once \override TextScript.extra-offset = #'( -2 . -2.5 ) b''8^\markup{ \musicglyph "scripts.prallup" } a8 ~  a16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 g16 a16 | % bar 7
    b,16 cis16 d16 e16 fis16 g16 a16 b16 cis8\dot r16 d16 e,8. d16 | % bar 8
    d8^"piano"( d8 d8 d8) d8( d8 d8 d8) | % bar 9
    d8( d8 d8 d8) d8( d8 d8 d8) | % bar 10
    d'4_"forte" r16 a16 b16 cis16 d16(  e16  d16) a16\dot d16( e16 d16) a16\dot | % bar 11
    fis16(  g16  fis16) d16\dot fis16( g16 fis16) d16\dot d'16 a16 d16 fis16 e16( d16 cis16) d16\dot | % bar 12
    \stemDown e8 \stemUp a,,8^"piano"( \stemNeutral a8  a8) a8(  a8 a8  a8) | % bar 13
    a8( a8 a8 a8) a8( a8 a8 a8) | % bar 14
    a''4_"forte" r16 e16 fis16 gis16 a16(  b16  a16) e16\dot a16(  b16  a16) e16\dot | % bar 15
    cis16(  d16  cis16) a16\dot cis16( d16 cis16) a16\dot a'16 e16 a16 cis16  b16( a16 gis16)  a16\dot | % bar 16
    b8\dot e,8\dot r4 r2 | % bar 17
    R1*2 | % bar 18
    r4 r16 b16 cis16 d16 e16(  fis16  e16) g,16\dot e'16( fis16 e16) g,16\dot | % bar 20
    fis8\dot r8 r4 d'16(  e16  d16) fis,16\dot d'16(  e16  d16) fis,16\dot | % bar 21
    e8\dot r8 r4 r4 r16 a'16 fis16 d16 | % bar 22
    b'8\dot r8 r16 gis16 e16 cis16 a'8\dot r8 r16 fis16 d16 b16 | % bar 23
    gis'8(_"piano"  gis8 gis8  gis8) gis8( gis8 gis8 gis8) | % bar 24
    a8(  a8 a8  a8) a8(  a8 a8  a8) | % bar 25
    c,4_"forte" r16 c16 b16 a16 e'8\dot r8 r4 | % bar 26
    g!1~ | % bar 27
    g2~ g16 a,16 cis16 e16 g16 b16 a16 g16 | % bar 28
    fis8 d8 r16 a16 b16 c16 d16(  e16  d16) a16\dot d16(  e16  d16) a16\dot | % bar 29
    fis16(  g16  fis16) d16\dot fis16(  g16  fis16) d16\dot c'4 r4 | % bar 30
    r4 r16 b16 g16 e16 cis'8\dot r8 r16 cis16 a16 fis16 | % bar 31
    d'8\dot r8 r16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 | % bar 32
    fis'8\dot r8 r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 | % bar 33
    a'8\dot r8 r16 a16 fis16 d16 a'8\dot r8 r16 a,16 b16 cis16 | % bar 34
    d16 fis16 d16 b16 g'16 b16 g16 e16 cis16 e16 cis16 a16 fis'16 a16 fis16 d16 | % bar 35
    b16 d16 b16 g16 e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 | % bar 36
    gis8( gis8 gis8 gis8) g16(  a16  g16) e16\dot  g16( a16  g16) e16\dot | % bar 37
    fis8(  fis8 fis8  fis8) g8 r8 r16 fis'16 e16 d16 | % bar 38
    cis8\dot r8 r16 g'16 fis16 e16 d8\dot r8 r16 a'16 g16 fis16 | % bar 39
    e8\dot r8 r16 b'16 a16 g16 fis8\dot r8 r4 | % bar 40
    fis16(  g16  fis16) d16\dot e16(  fis16  e16) cis16\dot d8 a8 ~  a16 d16(  cis16  e16) | % bar 41
    d8 a8 ~  a16 d16(  cis16  e16) d16(  e16  d16) a16\dot fis'16(  g16  fis16) d16\dot | % bar 42
    a'1 ~  | % bar 43
    a4 ~  a16(  b16  a16) cis,16 d16 a16 d16 fis16 e16(  d16  cis16) d16\dot | % bar 44
    e8\dot a,8\dot r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot | % bar 45
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16 g16(  a16  g16) b,16\dot g'16(  a16  g16) b,16\dot | % bar 46
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis16 a16 fis16 d16 b16 d16 b16 g16 | % bar 47
    e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 g16 b16 g16 e16 | % bar 48
    cis'8^"piano"(  cis8 cis8  cis8) cis8(  cis8 cis8  cis8) | % bar 49
    d8(  d8 d8  d8) d8(  d8 d8  d8) | % bar 50
    f4_"forte" r16 f16 e16 d16 a'8\dot r8 r4 | % bar 51
    b,,16 cis16 d16 e16 fis16 g16 a16 b16 cis8\dot r16 d16 e,8.\trill d16 | % bar 52
    d16\fermata d'16_"piano" d16 d16 a16 d16 fis,16_(  g16  a16) d16 d16 d16 a16 d16 fis,16_(  g16 | % bar 53
      a16) a'16 a16 a16 e16 a16 cis,16(  d16  e16) a16 a16 a16 e16 a16 d,16( e16 | % bar 54
    fis16) b16 b16 b16 fis16 b16 d,16(  e16  fis16) b b b fis16 b16 cis,16(  d16 | % bar 55
      e16) b'16 b16 b16 gis16  b16 e,( fis16  gis16) b16 b b gis16 b16 fis( gis16 | % bar 56
    a8) a,8 cis8 e8 a8 e8 cis8 a8 | % bar 57
    r8 e8 g8 b8 e8 b8 g8 e8 | % bar 58
    r8 ais8 cis8 e8 g8 e8 cis8 ais8 | % bar 59
    r8 ais8 cis8 e8 fis8 e8 cis8 ais8 | % bar 60
    fis8 b,8(  b8  b8) b8( b8 b8 b8) | % bar 61
    b8(  b8 b8  b8) b8(  b8 b8  b8) | % bar 62
    b''4_"forte" r16 fis16 gis16 ais16 b16(  cis16  b16) fis16\dot b16(  cis16  b16) fis16\dot | % bar 63
    d16(  e16  d16) b16\dot d16(  e16  d16) b16\dot b'16 fis16 b16 d16 cis16( b16 ais16) b16 | % bar 64
    cis8\dot fis,\dot r4 r2 | % bar 65
    R1 | % bar 66
    r4 r16 gis16 e16 cis16 ais'8\dot r8 r16 ais16 fis16 d16 | % bar 67
    b'8\dot r8 r16 b16 gis16 e16 cis'8\dot r8 r16 cis16 ais16 fis16 | % bar 68
    d'8\dot r8 r16 fis,16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 | % bar 69
    fis'8\dot r8 r16 fis16 d16 b16 fis'8\dot r8 r16 fis16 g16 a16 | % bar 70
    b16 d16 b16 g16 e16 g16 e16 cis16 a'16 cis16 a16 fis16 d16 fis16 d16 b16 | % bar 71
    g'16 b16 g16 e16 cis16 e16 cis16 a16 fis'16 a16 fis16 d16 b16 d16 b16 g16 | % bar 72
    eis'8( eis8 eis8 eis8) e16(  fis16  e16) cis16\dot e16(  fis16  e16) cis16\dot | % bar 73
    dis8( dis8 dis8 dis8) d16(  e16  d16) b16\dot d16(  e16  d16) b16\dot | % bar 74
    fis'16(  g16  fis16) d16\dot e16(  fis16  e16) cis16\dot d16( e16 d16) b16\dot  cis16( d16  cis16) ais16\dot | % bar 75
    b4 r4 b16(  c16  b16) g16\dot a16( b16 a16) fis16\dot | % bar 76
    e8(^"piano" e8 e8 e8) e8(  e8 e8  e8) | % bar 77
    e8(  e8 e8  e8) e8(  e8 e8  e8) | % bar 78
    r8 fis'8(  fis8  fis8) r8 fis8( fis8 fis8) | % bar 79
    r8 fis8(  fis8  fis8) fis4 r4 | % bar 80
    R1*2 | % bar 81
    b16_"(forte)"(  cis16  b16) gis16\dot a16(  b16  a16) fis16\dot gis16(  a16  gis16) eis16\dot  fis16( gis16  fis16) d?16\dot | % bar 83
    eis4 fis4 ~  fis16 eis16 dis16 eis16 eis8.\trill fis16 | % bar 84
    fis4 r4 r2 | % bar 85
}

\sinfMarks
>>

sinfVlnII = \relative c'' <<
{
    \commonMusic

    d4 r16 a16 b16 cis16 d16( e16 d16) a16\dot d16(  e16  d16) a16\dot | % bar 1
    fis16(  g16  fis16) d16\dot fis16(  g16  fis16) d16\dot d'16 a16 d16 fis16 e16(  d16  cis16) d16\dot | % bar 2
    e8 a,8 r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot  | % bar 3
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16  g16( a16  g16) b,16\dot g'16(  a16  g16) b,16\dot | % bar 4
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis16 a16 fis16 d16 b16 d16 b16 g16 | % bar 5
    e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 g16 b16 g16 e16 | % bar 6
    \once \override TextScript.extra-offset = #'( -2 . -2.5 ) b''8^\markup{ \musicglyph "scripts.prallup" } a8 ~  a16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 g16 a16 | % bar 7
    b,16 cis16 d16 e16 fis16 g16 a16 b16 cis8\dot r16 d16 e,8. d16 | % bar 8
    d8^"piano"( d8 d8 d8) d8( d8 d8 d8) | % bar 9
    d8( d8 d8 d8) d8( d8 d8 d8) | % bar 10
    d'4_"forte" r16 a16 b16 cis16 d16( e16 d16) a16\dot d16(  e16  d16) a16\dot | % bar 11
    fis16(  g16  fis16) d16\dot fis16( g16 fis16) d16\dot d'16 a16 d16 fis16  e16( d16 cis16)  d16\dot | % bar 12
    \stemDown e8 \stemUp a,,8^"piano"( \stemNeutral a8  a8) a8(  a8 a8  a8) | % bar 13
    a8( a8 a8 a8) a8(  a8 a8  a8) | % bar 14
    a''4_"forte" r16 e16 fis16 gis16 a16(  b16  a16) e16\dot a16(  b16  a16) e16\dot | % bar 15
    cis16(  d16  cis16) a16\dot cis16(  d16  cis16) a16\dot a'16 e16 a16 cis16 b16(  a16 gis16)  a16\dot | % bar 16
    b8\dot e,8\dot r4 r2 | % bar 17
    R1*2 | % bar 18
    r4 r16 b16 cis16 d16 e16(  fis16  e16) g,16\dot e'16(  fis16  e16) g,16\dot | % bar 20
    fis8\dot r8 r4 d'16(  e16  d16) fis,16\dot d'16( e16 d16) fis,16\dot | % bar 21
    e8\dot r8 r4 r4 r16 a'16 fis16 d16 | % bar 22
    b'8\dot r8 r16 gis16 e16 cis16 a'8\dot r8 r16 fis16 d16 b16 | % bar 23
    b8(_"piano"  b8 b8  b8) b8( b8 b8 b8) | % bar 24
    c8(  c8 c8  c8) c8( c8 c8 c8) | % bar 25
    a4_"forte" r16 fis16 gis16 a16 b8\dot r8 r4 | % bar 26
    e1~ | % bar 27
    e2 ~  e16 a,16 cis16 e16 g16 b16 a16 g16 | % bar 28
    fis8 d8 r16 a16 b16 c16 d16(  e16  d16) a16\dot d16(  e16  d16) a16\dot | % bar 29
    fis16(  g16  fis16) d16\dot fis16(  g16 fis16)  d16\dot c'4 r4 | % bar 30
    r4 r16 b16 g16 e16 cis'8\dot r8 r16 cis16 a16 fis16 | % bar 31
    d'8\dot r8 r16 d16 b16 g16 e'8\dot r8 r16 e16 cis16 a16 | % bar 32
    fis'8\dot r8 r16 a16 fis16 d16 a'8\dot r8 r16 e16 cis16 a16 | % bar 33
    a'8\dot r8 r16 a16 fis16 d16 a'8\dot r8 r16 a,16 b16 cis16 | % bar 34
    d16 fis16 d16 b16 g'16 b16 g16 e16 cis16 e16 cis16 a16 fis'16 a16 fis16 d16 | % bar 35
    b16 d16 b16 g16 e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 | % bar 36
    gis8(  e8 e8  e8) e16(  fis16  e16) cis16\dot  e16( fis16  e16) cis16\dot | % bar 37
    d8(  d8 d8  d8) d8 r8 r16 fis'16 e16 d16 | % bar 38
    cis8\dot r8 r16 g'16 fis16 e16 d8\dot r8 r16 a'16 g16 fis16 | % bar 39
    e8\dot r8 r16 b'16 a16 g16 fis8\dot r8 r4 | % bar 40
    a,16(  b16  a16) fis16\dot  g16( a16  g16) e16\dot fis16( e16 fis8) r16 fis16( e16 g16) | % bar 41
    fis16(  e16  fis8) r16 fis16(  e16  g16) fis16(  g16  fis16) d16\dot d'16(  e16  d16) a16\dot | % bar 42
    fis'1 ~  | % bar 43
    fis4 ~  fis16(  g16  fis16) cis16 d16 a16 d16 fis16 e16( d16 cis16) d16\dot | % bar 44
    e8\dot a,8\dot r16 e'16 fis16 g16 a16(  b16  a16) c,16\dot a'16(  b16  a16) c,16\dot | % bar 45
    b16 a'16 fis16 dis16 b16 dis16 fis16 a16 g16(  a16  g16) b,16\dot g'16(  a16  g16) b,16\dot | % bar 46
    a16 g'16 e16 cis16 a16 cis16 e16 g16 fis16 a16 fis16 d16 b16 d16 b16 g16 | % bar 47
    e'16 g16 e16 cis16 a16 cis16 a16 fis16 d'16 fis16 d16 b16 g16 b16 g16 e16 | % bar 48
    cis'8(_"piano"  a8 a8  a8) a8 a8 a8 a8 | % bar 49
    a8 a8 a8 a8 gis8(  gis8 b8  b8) | % bar 50
    b4_"forte" r16 gis16 a16 b16 cis8\dot r8 r4 | % bar 51
    b,16 cis16 d16 e16 fis16 g16 a16 b16 cis8\dot r16 d16 d8 cis8 | % bar 52
    d8\fermata d,8_"piano" fis8 a8 d8 a8 fis8 d8 | % bar 53
    r8 a'8 cis8 e8 a8 e8 cis8 a8 | % bar 54
    r8 b8 d8 fis8 b8 fis8 d8 b8 | % bar 55
    r8 gis8 b8 d8 e8 d8 b8 gis8 | % bar 56
    e16 a16 a16 a16 e16 a16 cis,16(  d16  e16) a16 a16 a16 e16 a16 cis,16(  d16 | % bar 57
      e16) e'16 e16 e16 b16 e16 g,16(  a16  b16) e16 e16 e16 b16 e16 ais,16(  b16 | % bar 58
      cis16) g'16 g16 g16 e16 g16 ais,16( b16 cis16) ais'16 ais16 ais16 e16 g16 ais,16(  b16 | % bar 59
      cis16) fis16 fis16 fis16 e16 g16 cis,16(  d16  e16) cis16 cis16 cis16 ais16 cis16 d,16( e16 | % bar 60
    fis8) b,8(  b8  b8) b8(  b8 b8  b8) | % bar 61
    b8( b8 b8 b8) b8( b8 b8 b8) | % bar 62
    b''4_"forte" r16 fis16 gis16 ais16 b16( cis16 b16) fis16\dot b16(  cis16  b16) fis16\dot | % bar 63
    d16(  e16  d16) b16\dot d16(  e16  d16) b16\dot b'16 fis16 b16 d16 cis16(  b16  ais16) b16\dot | % bar 64
    cis8\dot fis,8\dot r4 r2 | % bar 65
    R1 | % bar 66
    r4 r16 gis16 e16 cis16 ais'8\dot r8 r16 ais16 fis16 d16 | % bar 67
    b'8\dot r8 r16 b16 gis16 e16 cis'8\dot r8 r16 cis16 ais16 fis16 | % bar 68
    d'8\dot r8 r16 fis,16 d16 b16 fis'8\dot r8 r16 cis16 ais16 fis16 | % bar 69
    fis'8\dot r8 r16 fis16 d16 b16 fis'8\dot r8 r16 fis16 g16 a16 | % bar 70
    b16 d16 b16 g16 e16 g16 e16 cis16 a'16 cis16 a16 fis16 d16 fis16 d16 b16 | % bar 71
    g'16 b16 g16 e16 cis16 e16 cis16 a16 fis'16 a16 fis16 d16 b16 d16 b16 g16 | % bar 72
    cis8(  cis8 cis8  cis8) cis16(  d16  cis16) ais16\dot cis16(  d16  cis16) ais16\dot | % bar 73
    b8( b8 b8 b8) b16(  cis16  b16) gis16\dot b16(  cis16  b16) gis16\dot | % bar 74
    ais4 r4 fis16(  g16  fis16) d16\dot  e16( fis16  e16) cis16\dot | % bar 75
    fis4 r4 r2 | % bar 76
    e8^"piano"(  e8 e8  e8) e8(  e8 e8  e8) | % bar 77
    e8(  e8 e8  e8) e8(  e8 e8  e8) | % bar 78
    r8 cis'8( cis8 cis8) r8 d8(  d8  d8) | % bar 79
    r8 e8(  e8  cis8) b4 r4 | % bar 80
    R1*2 | % bar 81
    r2 b16_"(forte)"(  cis16 b16)  gis16\dot  a16( b16 a16)  fis16\dot | % bar 83
    gis4 a4 ~  a8 b8 cis4 | % bar 84
    cis4 r4 r2 | % bar 85
}

\sinfMarks
>>

sinfVla = \relative c' <<
{
    \commonMusic

    \clef C
    fis8(   g8) a8( g8) fis8(   g8) a8(   g8) | % bar 1
    fis8(   d'8) cis8(   b8) a8(   g8) a8(   b8) | % bar 2
    cis8(   d8) cis8(   b8) a8 c8 a8 c8 | % bar 3
    fis,4 r8 dis8 b8 b'8 g8 b8 | % bar 4
    e,4 r8 cis8 a8 d4 g8 ~  | % bar 5
    g8 cis,4 fis4 b,4 e8~ | % bar 6
    e8 cis8 d8 e8 fis8 a,8 b8 cis8 | % bar 7
    d4 r16 d16 cis16 b16 a'8\dot r16 d,16 d8 cis8 | % bar 8
    d8_"piano"(  d8 d8  d8) d8(  d8 d8  d8) | % bar 9
    d8( d8 d8 d8) d8( d8 d8 d8) | % bar 10
    fis8_"forte"(   g8) a8( g8) fis8( g8) a8(   g8) | % bar 11
    fis8(   d'8) cis8(   b8) a8(   g8) a8(   b8) | % bar 12
    cis8 a,8^"piano"( a8 a8) a8(  a8 a8  a8) | % bar 13
    a8(  a8 a8  a8) a8(  a8 a8  a8) | % bar 14
    cis8_"forte"(   d8) e8(   d8) cis8( d8) e8(   d8)\dot | % bar 15
    e8(   a8) gis8(   fis8) e8(   d8) e8(   fis8) | % bar 16
    gis4 r4 r2 | % bar 17
    R1*2 | % bar 18
    r4 gis8 fis8 e8 g8 e8 g8 | % bar 20
    cis,8 r8 r4 fis,8 fis'8 d8 fis8 | % bar 21
    b,8 r8 r4 r4 r8 a'8 | % bar 22
    b8 r8 r8 gis8 fis8 r8 r8 fis8 | % bar 23
    e8(_"piano"  e8 e8  e8) e8(  e8 e8  e8) | % bar 24
    e8(  e8 e8  e8) dis8(  dis8 fis8  fis8) | % bar 25
    fis4_"forte" r16 a,16 b16 c16 b8\dot r8 r4 | % bar 26
    cis'!1~ | % bar 27
    cis2~   cis8 cis,8\dot e8\dot cis8\dot | % bar 28
    d16(  e16 fis16 g16)  a8(   g8) fis8(   g8) a8(   g8) | % bar 29
    a8(   d8) c8(   b8) a8 fis8 r4 | % bar 30
    r8 d8( g8) b8 a8 e8(   a8) cis8 | % bar 31
    b8 fis8(   b8) d8 cis8 a8(   e8) e8 | % bar 32
    d8 a'4 a,8 cis8 e4 a8 | % bar 33
    fis8 a4 a,8 cis8 e4 d16 cis16 | % bar 34
    b8 fis'8(   g8) b,8 cis8 e8(   fis8) a,8 | % bar 35
    b8 d8(   e8) g,8 a8 cis8(   d8) b8 | % bar 36
    b8( b8 b8 b8) a8( a8 a8 a8) | % bar 37
    a8(  a8 a8  a8) g8 g'8(  a8  b8) | % bar 38
    e,8(  a8 b8  cis8) fis,8(  b8 cis8  d8) | % bar 39
    a8(  cis,8 d8  e8) a,8 r8 r4 | % bar 40
    r2 a16(  b16  a16) fis16\dot g16( a16 g16) e16\dot | % bar 41
    fis16 d16 fis16 a16 d8 a8 a'16(  b16  a16) fis16\dot a16(  b16  a16) fis16\dot | % bar 42
    d'1 ~  | % bar 43
    d4. fis,16(   g16) a8(   g8) a8(   b8) | % bar 44
    cis8( d8) cis8(   b8) a8 c8 a8 c8 | % bar 45
    fis,4 r8 dis8 b8 b'8 g8 b8 | % bar 46
    e,4 r8 cis8 a8 d4 g8 ~  | % bar 47
    g8 cis,4 fis4 b,4 e8~ | % bar 48
    e8_"piano" e8(  e8  e8) e8(  e8 e8  e8) | % bar 49
    f8(  f8 f8  f8) f8(  f8 f8  f8) | % bar 50
    d4_"forte" r16 d16 e16 f16 e8\dot r8 r4 | % bar 51
    d4 r16 d16 cis16 b16 e8\dot r16 a,16 b8 a8 | % bar 52
    a4\fermata r4 d4_"piano" r4 | % bar 53
    e4 r4 fis4 r4 | % bar 54
    fis4 r4 fis4 r4 | % bar 55
    b4 r4 e,4 r4 | % bar 56
    e4 r4 cis4 r4 | % bar 57
    b4 r4 b4 r4 | % bar 58
    e4 r4 e4 r4 | % bar 59
    fis4 r4 fis4 r4 | % bar 60
    fis8 b,8(  b8  b8) b8(  b8 b8  b8) | % bar 61
    b8(  b8 b8  b8) b8( b8 b8 b8) | % bar 62
    d8_"forte"(   e8) fis8(   e8) d8(   e8) fis8(   e8) | % bar 63
    fis8(   b8) ais8(   b8) fis8(   e8)  fis8(  g8) | % bar 64
    ais,4 r4 r2 | % bar 65
    R1 | % bar 66
    r8 b8^"forte"(   e8) gis8 fis8 cis8(   fis8) ais8 | % bar 67
    b8 d,8( g8) b8 a8 e8(   a8) cis8 | % bar 68
    b8 fis4 fis,8 ais8 cis4 fis8 | % bar 69
    d8 fis4 fis,8 ais8(   cis8) b8(   a8) | % bar 70
    g8 d'8(   e8) g8 a,8 cis8(   d8) fis8 | % bar 71
    g,8 b8( cis8) e8 fis,8 a8(   b8) d8 | % bar 72
    gis,8 ~  gis8 gis'8 ~  gis8 fis8(  fis8 fis8  fis8) | % bar 73
    fis8(  fis8 fis8  fis8) eis8(  eis8 eis8  eis8) | % bar 74
    cis4 r4 r2 | % bar 75
    b'16(  c16  b16) g16\dot a16(  b16  a16) fis16\dot g16(  a16  g16) e16\dot fis16( g16 fis16) dis16\dot | % bar 76
    e8(_"(piano)" e8 e8 e8) e8(  e8 e8  e8) | % bar 77
    e8(  e8 e8  e8) e8( e8 e8 e8) | % bar 78
    r8 ais,8(  ais8  ais8) r8 b8(  b8  b8) | % bar 79
    r8 cis8(  cis8  fis8) d4 r4 | % bar 80
    R1*2 | % bar 81
    eis4^"(forte)" r8 fis8 cis'4 r8 d8 | % bar 83
    b4 dis,4 cis4 gis'4 | % bar 84
    a4 r4 r2 | % bar 85
}

\sinfMarks
>>

sinfBasso = \relative c <<
{
    \commonMusic

    \clef F
    d8(   e8) fis8(   e8) d8(   e8) fis8(   e8) | % bar 1
    d8(   b'8) a8(   g8) fis8(   e8) fis8(   d8) | % bar 2
    a'8(   b8) a8(   g8) fis8(   g8) fis8(   e8) | % bar 3
    dis4 r8 b8 e8(   fis8) e8( d8) | % bar 4
    cis4 r8 a8 d8 fis8(   g8) b,8 | % bar 5
    cis8 e8(   fis8) a,8 b8 d8( e8) g8 | % bar 6
    cis,8 a8 b8 cis8 d8 fis,8 g8 a8 | % bar 7
    b4 r16 e16 fis16 g16 g,8 r16 fis16 g8 a8 | % bar 8
    << d,4 \new Voice { \voiceThree d' } >> r4 r2 | % bar 9
    R1 | % bar 10
    d8^"forte"( e8) fis8(   e8) d8( e8) fis8(   e8) | % bar 11
    d8(   b'8) a8 g8 fis8(   e8) fis8(   d8) | % bar 12
    a'8 a,8 r4 r2 | % bar 13
    R1 | % bar 14
    a8^"(forte)"(   b8) cis8(   b8) a8(   b8) cis8( b8) | % bar 15
    a8(   fis'8) e8( d8) cis8( b8) cis8(   a8) | % bar 16
    e'8 d8 cis8 e8 fis8 b8 gis8 e8 | % bar 17
    a8 g8 fis8 a8 b8 e,8 cis8 a8 | % bar 18
    d8 cis8 dis8 b8 cis8 fis8 dis8 b8 | % bar 19
    e8( fis8) e8( d8) cis8(   d8) cis8(   b8) | % bar 20
    ais8 fis8 ais8 fis8 b8(   cis8) b8(   a8) | % bar 21
    gis8 e8 gis8 e8 a8 cis8(   d8) << fis,8 \new Voice { \tiny \stemUp \shiftOn fis' } >> | % bar 22
    gis,8 b( cis) << e, \new Voice { \tiny \stemUp \shiftOn e' } >> fis, a( b) d | % bar 23
    e,8^"(piano)"( e8 e8 e8) e8( e8 e8 e8) | % bar 24
    e8(  e8 e8  e8) e8(  e8 e8  e8) | % bar 25
    dis4^"(forte)" r16 a'16 gis16 fis16 d'8\dot r16 cis16 e8 e,8 | % bar 26
    a4 r4 a4 r4 | % bar 27
    a4 r4 r8 a8\dot cis8\dot a8\dot | % bar 28
    d8(   e8) fis8(   e8) d8(   e8) fis8(   e8) | % bar 29
    d8(   b8) a8(   g8) fis8 d8 r4 | % bar 30
    r8 g8( e8) g8 a8 cis8(   fis,8) a8 | % bar 31
    b8 d8(   g,8) b8 cis8 e8(   a,8) cis8 | % bar 32
    d8(   e8) fis8(  d8)  a8(   b8) cis8(   a8) | % bar 33
    d8( e8) fis8(   d8) a8(   g8) fis8(   a8) | % bar 34
    b8 d8( e8) g8 a,8 cis8(   d8) fis8 | % bar 35
    g,8 b8( cis8) e8 fis,8 a8( b8) d8 | % bar 36
    e,8(  e8 e8  e8) a8(  a8 a8  a8) | % bar 37
    d,8( d8 d8 d8) g8 e8 fis8 g8 | % bar 38
    a8 fis8 g8 a8 b8 g8 a8 b8 | % bar 39
    cis8 a8 b8 cis8 d8 r8 r4 | % bar 40
    d,8 d'8 r4 d,8 d'8 r4 | % bar 41
    d,8 d'8 r4 d,8 d'8 r4 | % bar 42
    d,8 d'8 r4 d,8 d'8 r4 | % bar 43
    d,8 d'8 r8 d16( e) fis8(   e8) fis8(   d8) | % bar 44
    a'8(   b8) a8(   g8) fis8(   g8) fis8( e8) | % bar 45
    dis4 r8 b8 e8(   fis8) e8(   d8) | % bar 46
    cis4 r8 a8 d8 fis8(   g8) b,8 | % bar 47
    cis8 e8(   fis8) a,8 b8 d8(   e8) e,8 | % bar 48
    a8(^"(piano)"  a8 a8  a8) a8(  a8 a8  a8) | % bar 49
    a8( a8 a8 a8) a8( a8 a8 a8) | % bar 50
    gis4^"(forte)" r4 g8\dot r16 fis16 g8 a8 | % bar 51
    b4 r16 e16 fis16 g16 a,8\dot r16 fis16 g8 a8 | % bar 52
    d,4\fermata r4 d'4_"piano" r4 | % bar 53
    cis4 r4 fis4 r4 | % bar 54
    b,4 r4 a4 r4 | % bar 55
    gis4 r4 e4 r4 | % bar 56
    a4 r4 a'4 r4 | % bar 57
    e4 r4 g4 r4 | % bar 58
    cis,4 r4 e4 r4 | % bar 59
    ais,4 r4 fis4 r4 | % bar 60
    b4 r4 r2 | % bar 61
    b4 r4 r2 | % bar 62
    b8(_"forte" cis8) d8( cis8) b8( cis8) d8(   cis8) | % bar 63
    b8(   g'8) fis8(   e8) d8( cis8) d8( b8) | % bar 64
    fis'8 e8 d8 fis8 gis8 cis8 ais8 fis8 | % bar 65
    b8 a8 g8 b8 cis,8 fis8 dis8 b8 | % bar 66
    e8 g8(   cis,8) e8 fis8 ais8(   d,8) fis8 | % bar 67
    g8 b8(   e,8) gis8 a8 cis8(   fis,8) ais8 | % bar 68
    b8(   cis8) d8(   b8) fis8(   gis8) ais8(   fis8) | % bar 69
    b,8(   cis8) d8( b8) fis8(  fis'16  e16) d8(   fis8) | % bar 70
    g8 b8(   cis,8) e8 fis8 a8(   b,8) d8 | % bar 71
    e8 g8(   a,8) cis8 <<
	{
	    \stemDown d8 fis8( g,8) b8 \stemNeutral | % bar 72
	} \new Voice {
	    \tiny \voiceThree d8 fis8 g8 b8 | % bar 72
	}
    >>
    cis,8(  cis8 cis8  cis8) fis,8( fis8 fis8 fis8) | % bar 73
    b8( b8 b8 b8) eis,8(  eis8 eis8  eis8) | % bar 74
    e4 r4 r2 | % bar 75
    << dis4 \new Voice { \tiny \voiceThree dis' } >> r4 r2 | % bar 76
    << e,4_"(piano)" \new Voice { \tiny \voiceThree e' } >> r4 r2 | % bar 77
    << e,4 \new Voice { \tiny \voiceThree e' } >> r4 r2 | % bar 78
    e,4 r4 d4 r4 | % bar 79
    ais'4 r4 b4 r4 | % bar 80
    e4 r4 g4 r4 | % bar 81
    fis4 r16 g16 fis16 e16 d8 b8 fis'8 fis,8 | % bar 82
    cis'4^"(forte)" r8 dis8 eis4 r8 fis8 | % bar 83
    d4 bis4 cis4 << cis,4 \new Voice { \tiny \voiceThree cis' } >> | % bar 84
    fis,4 r4 r2 | % bar 85
}

\new FiguredBass {
    \figuremode {
        \set figuredBassAlterationDirection = #RIGHT
	\set figuredBassPlusDirection = #RIGHT

	% p3
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

	% p4
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

	% p5
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

	% p6
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

	% p7
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

	% p8
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

	% p9
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