\version "2.18.0"

\include "common.ly"

vturn = \markup\tiny{\rotate #90 {\musicglyph #"scripts.turn"}}

mvtItimeLine = {
    \time 4/4
    \key d \major
    \partial 8

    s8 |
    s1*111 |
    s2..
    \daCapo
    \bar "|."
}

mvtIobI = \transpose a c' <<
\relative c'' {
    r8 | % bar 0
    R1 | % bar 1
    r2 r4 r8 e8-. | % bar 2
    fis8-. e8-. g8-. fis8-. e8 d8 a'4~ | % bar 3
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a16 g'16 fis16 e16 | % bar 4
    a,16 fis'16 e16 d16 a16 e'16 d16 cis16 a16 d16 cis16 b16 a16 c16 b16 a16 | % bar 5
    b16 a16 g16 fis16 e16 fis'16 e16 d16 cis16 b16 a16 g16 fis16 g'16 fis16 e16 | % bar 6
    d16 cis16 b16 a16 g16 a'16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 e16 | % bar 7
    d8. e16 e8. d16 d8 r8 r4 | % bar 8
    R1*4 | % bar 9
    r8 e'8_"(pia)" d8 cis8 r8 d8 cis8 b8 | % bar 13
    r8 b8 a8 gis8 fis8 e8 r4 | % bar 14
    R1 | % bar 15
    r2 r8 a16 b16 cis16 d16 e16 cis16 | % bar 16
    d8 a8 a8 fis8 fis8 d8 d8\noBeam r8 | % bar 17
    r2 r4 r8 e'8\pDO\pF | % bar 18
    fis8-. e8-. g8-. fis8\pDS e8 d8 a'4~ | % bar 19
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a16 g'16 fis16 e16 | % bar 20
    fis8 r8 e8 r8 d8 r8 c8 r8 | % bar 21
    b8 r8 cis8 r8 d8 r8 r4 | % bar 22
    r4 r8 d8_"pia" e8 b8 b8 gis8 | % bar 23
    a4 r4 r2 | % bar 24
    r4 r8 fis'8 gis8 b8 b8 gis8 | % bar 25
    a4 r4 r2 | % bar 26
    R1*2 | % bar 27
    r2 r4 r8 b,8-\parenthesize-. | % bar 29
    cis8-. b8-. d8-. cis8-. b8 a8 e'4 ~  | % bar 30
    e16 a,16 gis16 a16 b8 a8 gis16 a16 b16 gis16 e16 d'16 cis16 b16 | % bar 31
    e,16 cis'16 b16 a16 e16 b'16 a16 gis16 e16 a16 gis16 fis16 e16 g16 fis16 e16 | % bar 32
    fis16 e16 d16 cis16 b16 cis'16 b16 a16 gis16 fis16 e16 d16 cis16 d'16 cis16 b16 | % bar 33
    a16 gis16 fis16 e16 d16 e'16 d16 cis16 b16 a16 gis16 fis16 e16 fis'16 e16 d16 | % bar 34
    cis8. b16 b8. a16 a8 b8 a8 g8 | % bar 35
    fis4 e8 d8 cis8 e8 g4 ~  | % bar 36
    g8 fis8 r4 r2 | % bar 37
    R1*3 | % bar 38
    r2 r4 r8 cis'8\pDO | % bar 41
    d8-. cis8-. e8-. d8\pDS cis8 b8 r4 | % bar 42
    r2 r16 fis16 a16 cis16 fis16 e16 d16 cis16 | % bar 43
    fis,16 d'16 cis16 b16 fis16 cis'16 b16 a16 fis16 b16 a16 gis16 a16 cis16 fis16 eis16 | % bar 44
    fis2 ~  fis8 eis8 fis8 b,8 | % bar 45
    a8. gis'16 eis8. fis16 fis4 r4 | % bar 46
    R1 | % bar 47
    r2 r4 r8 e8\pDO | % bar 48
    fis8-. e8-. g8-. fis8\pDS e8 d8 r8 a'8_"pia" | % bar 49
    a8 fis8 fis8 d8 d8 b8 b8 e8 | % bar 50
    e8 cis8 cis8 a8 a8 fis8 d8 d'8\f | % bar 51
    b16 d16 e16 fis16 g16 fis16 e16 d16 cis16 e16 fis16 g16 a16 g16 fis16 e16 | % bar 52
    d8 cis8 d8 b8 a8 e8 a8 b16 cis16 | % bar 53
    d4 r8 fis,8 d4 r8 fis8 | % bar 54
    d'4 r8 fis,8 d4 r8 e'8\pDO | % bar 55
    fis8-. e8-. g8-. fis8\pDS e8 d8 a'4 ~  | % bar 56
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a8 cis8 | % bar 57
    fis8 r8 e8 r8 d8 r8 c8 r8 | % bar 58
    b16 a16 g16 fis16 e16 fis'16 e16 d16 cis16 b16 a16 g16 fis16 g'16 fis16 e16 | % bar 59
    d16 cis16 b16 a16 g16 a'16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 e16 | % bar 60
    d8. e16 e8. d16 d4\fermata r4 | % bar 61
    r2 r8 b'8 b,4 | % bar 62
    r2 r8 b'8 b,4 | % bar 63
    r2 r8 b'8 b,4 | % bar 64
    r2 r8 b'8 b,4 | % bar 65
    r8 d'8( c8 b8) r8 b8(  a8  g8) | % bar 66
    fis4 r4 r4 r8 b8 | % bar 67
    e4 r8 g,8 e4 r8 g8 | % bar 68
    e'4 r8 g,8 e4 r8 fis'8\pDO | % bar 69
    g8-. fis8-. a8-. g8\pDS fis8 e8 b'4 ~  | % bar 70
    b16 e,16 dis16 e16 fis8 e8 dis8 b8 r8 dis8 | % bar 71
    e16 b16 c16 a'16 dis,8. e16 e16 e,16 g16 b16 e16 d16 c16 b16 | % bar 72
    e,16 c'16 b16 a16 e16 b'16 a16 g16 e16 a16 g16 fis16 g8 g'8 ~  | % bar 73
    g8 fis4 e8 ~  e8 dis8 e8 a,8 | % bar 74
    g8 e'4 dis8 e4 r4 | % bar 75
    R1*2 | % bar 76
    r2 d2 ~  | % bar 78
    d2 d4 r8 d,8 | % bar 79
    g4 r8 b,8 g'4 r8 b,8 | % bar 80
    g'4 r8 b,8 g'4 r8 a8\pDO | % bar 81
    b8-. a8-. c8-. b8\pDS a8 g8 d'4 ~  | % bar 82
    d16 fis,16 g16 a16 fis16 e'16 d16 c16 b16\f a16 g16 f16 e16 f'16 e16 d16 | % bar 83
    c16 b16 a16 g16 fis16 e16 d16 c16 b8 g'8 a,8 fis'8 | % bar 84
    g16( b16) b16( dis16) dis16( e16) e16( fis16) fis4 r4 | % bar 85
    R1 | % bar 86
    fis1~ | % bar 87
    fis2 ~  fis8 r8 r4 | % bar 88
    r4 fis4 ~  fis8 e4 d8 ~  | % bar 89
    d16 b16 ais16 b16 cis8 fis8 ~  fis8 d8 b8 e8 | % bar 90
    cis8 ais8 fis8 r r4 r8 fis | % bar 91
    b8 fis8 fis8 d8 b4 r8 fis'8 | % bar 92
    a8 fis8 fis8 dis8 b4 r8 b'8 | % bar 93
    g'1 | % bar 94
    fis1 ~  | % bar 95
    fis4 r8 fis8 fis,8 gis8 ais8 b8 | % bar 96
    c2 b2 | % bar 97
    bes2 a2 | % bar 98
    b8 r8 e8 r8 e8 r8 d8 r8 | % bar 99
    cis8 r8 b8 r8 cis8 r8 fis8 d8 | % bar 100
    ais8 cis8 cis8 e8 ais,8 cis8 cis8 e8 | % bar 101
    d4 r4 r16 b,16 d16 fis16 b16 a16 g16 fis16 | % bar 102
    b,16 g'16 fis16 e16 b16 fis'16 e16 d16 b16 e16 d16 cis16 d8 d'8 ~  | % bar 103
    d8 cis4 b8~ b8 ais8 b8 d8 | % bar 104
    e8 r8 fis8 r8 b,4 r8 e8 | % bar 105
    fis8 r8 g8 r8 cis,4 r8 fis8 | % bar 106
    g8 r8 a8 r8 d,4 r8 g8 | % bar 107
    g8(   fis8) fis8(   e8) e8(   d8) d8(   cis8) | % bar 108
    cis4 r8 d8 d8(   cis8) r8 e8 | % bar 109
    e8(   d8) r8 fis8 fis8(   e8) r8 g8 | % bar 110
    g16 e16 fis8-. fis16 d16 e8-. fis4 r4 | % bar 111
    r2 r4 r8
}
\mvtItimeLine
>>


mvtIobII = \transpose a c' <<
\relative c'' {
    r8 | % bar 0
    R1 | % bar 1
    r2 r4 r8 cis8-. | % bar 2
    d8-. e8-. d8-. cis8-. b8 a8 r8 cis8 | % bar 3
    d8 fis8 b,8 a8 g8 b8 e,8 a8 | % bar 4
    fis8 r8 e8 r8 d8 r8 d8 r8 | % bar 5
    g8 d8 b'16 a16 g16 fis16 e8 cis8 cis'16 b16 a16 g16 | % bar 6
    fis8 d8 d'16 cis16 b16 a16 g16 fis16 e16 d16 cis16 b16 a8 | % bar 7
    r8 d4 cis8 d8 r8 r4 | % bar 8
    R1*4 | % bar 9
    r8 cis'8_"(pia)" gis8 a8 r8 b8 fis8 gis8 | % bar 13
    r8 e8 fis8 cis8 d8 a8 r4 | % bar 14
    R1 | % bar 15
    r2 r8 e'8 a8 cis8 | % bar 16
    a8 fis8 fis8 d8 d8 a8 a8\noBeam r8 | % bar 17
    r2 r4 r8 cis'8\pDO\pF | % bar 18
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 cis8 | % bar 19
    d8 fis8 b,8 a8 g8 b8 e,8 a8 | % bar 20
    a8 r8 a8 r8 d8 r8 d,8 r8 | % bar 21
    d8 r8 a'8 r8 a8 r8 r4 | % bar 22
    r4 r8 b8_"pia" b8 gis8 gis8 e8 | % bar 23
    e4 r4 r2 | % bar 24
    r4 r8 d'8 d8 b8 b8 e8 | % bar 25
    e4 r4 r2 | % bar 26
    R1*2 | % bar 27
    r2 r4 r8 gis,8\pDO | % bar 29
    a8-. b8-. a8-. gis8\pDS fis8 e8 r8 gis8 | % bar 30
    a8 cis8 fis,8 e8 d8 fis8 b,8 e8 | % bar 31
    cis8 r8 b8 r8 a8 r8 a8 r8 | % bar 32
    d8 a8 fis'16 e16 d16 cis16 b8 gis8 gis'16 fis16 e16 d16 | % bar 33
    cis8 a8 a'16 gis16 fis16 e16 d16 cis16 b16 a16 b16 d16 cis16 b16 | % bar 34
    a8 a'4 gis8 a8 fis8 e8 d8 | % bar 35
    cis8 d8 e8 g8 ~  g8 e8 ais8 cis8 | % bar 36
    e,4 r4 r2 | % bar 37
    R1*2 | % bar 38
    r8 fis8 d4 r8 fis8 d4 | % bar 40
    r8 fis8 d4 r8 fis8 d8 cis'8 | % bar 41
    b2 ~  b8 eis,8 r4 | % bar 42
    r2 r4 r8 a8 | % bar 43
    b8 r8 cis8 r8 eis8 r8 fis8 r8 | % bar 44
    fis,8 r8 a8 r8 b8 r8 cis8 cis8 | % bar 45
    fis,8 d'8 cis8 cis8 cis4 r4 | % bar 46
    R1 | % bar 47
    r2 r4 r8 cis8\pDO | % bar 48
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 fis'8_"pia" | % bar 49
    fis8 d8 d8 a8 b8 d,8 g8 b8 | % bar 50
    a8 a8 a8 e8 fis8 a,8 a16 fis'16\f g16 a16 | % bar 51
    b4 ~  b16 g16 a16 b16 cis4 ~  cis16 a16 b16 cis16 | % bar 52
    d8 fis8 b,8 e8 e,8 a8 d,8 g8 | % bar 53
    a4 r8 a8 b4 r8 a8 | % bar 54
    a4 r8 a8 a4 r8 e'8\pDO | % bar 55
    d8-. e8-. d8-. cis8\pDS b a r8 cis8 | % bar 56
    d8 fis8 b,8 a8 g8 b8 e,8 a8 | % bar 57
    a8 r8 a8 r8 d8 r8 d,8 a'8 ~  | % bar 58
    a8 d,8 g8 b8 ~  b8 e,8 a8 cis8~ | % bar 59
    cis8 fis,8 b8 d8 e4 r8 e8 | % bar 60
    a,8 b8 b8 a8 a4\fermata r4 | % bar 61
    r2 r8 b8 b,4 | % bar 62
    r2 r8 b'8 b,4 | % bar 63
    r2 r8 b'8 b,4 | % bar 64
    r2 r8 b'8 b,4 | % bar 65
    R1*2 | % bar 66
    r4 r8 b'8 a8 e8 a,8 e'8 | % bar 68
    e4 r8 dis'8 e8 b8 e,8 a8\pDO | % bar 69
    g8-. d'8\pDS e4 dis8 e8 fis8 g8 | % bar 70
    a8 g8 c,8 a8 fis4 r4 | % bar 71
    r2 r4 r8 g8 | % bar 72
    a8 r8 b8 r8 dis8 r8 e8 r8 | % bar 73
    e,8 r8 g8 r8 a8 r8 b8 b8 | % bar 74
    e8 c8 b8 a8 g4 r4 | % bar 75
    R1*2 | % bar 76
    r2 a2 ~  | % bar 78
    a4 d,4 fis2 | % bar 79
    d4 g2 d'4 | % bar 80
    c8 g8 c8 b8 c8 b4 a8\pDO | % bar 81
    g8-. d8\pDS g4 a8 b8 c8 fis,8 | % bar 82
    d8 e8 a,8 fis'8 g2~\f | % bar 83
    g16 d'16 c16 b16 a4 ~  a8 g8 e8 d8 | % bar 84
    d16( g16)  g16(  a16) a16( b16) b16( fis16) fis4 r4 | % bar 85
    R1 | % bar 86
    cis'8 r8 cis8 fis,8 b8 r8 cis8 b8 | % bar 87
    ais8 r8 cis8 ais8 b8 r8 r4 | % bar 88
    r4 r8 fis8 g8 r8 fis8 r8 | % bar 89
    e8 r8 e8 r8 d8 fis4 e8~ | % bar 90
    e8 cis8 d8 r8 r2 | % bar 91
    fis2 b2 | % bar 92
    a2 b4 r8 b8 | % bar 93
    b8 g8 g8 e8 e8 fis8 g8 e8 | % bar 94
    fis8 gis8 ais8 b8 ais8 b8 cis8 b8 | % bar 95
    ais8 b8 cis8 b8 ais8 b8 cis8 b8 | % bar 96
    a2 ~  a8 fis8 g4 ~  | % bar 97
    g2 ~  g8 e8 fis8 fis8 | % bar 98
    b,8 r8 g'8 r8 cis,8 r8 b8 r8 | % bar 99
    cis8 r8 d8 r8 cis8 r8 b8 d8 | % bar 100
    fis1~ | % bar 101
    fis8 g8 fis8 e8 d4 r8 b8 | % bar 102
    e8 r8 fis8 r8 ais8 r8 b8 r8 | % bar 103
    b,8 r8 d8 r8 e8 r8 fis8 fis8 | % bar 104
    e8 r8 b'8 r8 b4 r8 ais8 | % bar 105
    fis8 r8 cis'8 r8 cis4 r8 b8 | % bar 106
    g8 r8 d'8 r8 d4 r8 cis8 | % bar 107
    ais8 r8 b8 r8 ais8 r8 fis8 r8 | % bar 108
    fis4 r8 b8 \slurDashed b8( \slurSolid  ais8) r8 cis8 | % bar 109
    cis8(   b8) r8 d8 d8(   cis8) r8 e8 | % bar 110
    e16 cis16 d8-. d16 b16 cis8-. cis4 r4 | % bar 111
    r2 r4 r8
}
\mvtItimeLine
>>

mvtItaille = <<
\relative c'' {
    r8 | % bar 0
    R1 | % bar 1
    r2 r4 r8 a8-. | % bar 2
    a8-. a8-. d,8-. fis8-. g8 a8 r8 a8 | % bar 3
    fis8 a8 b,8 d8 e8 g,8 a8 cis8 | % bar 4
    d8 r8 e8 r8 fis8 r8 a8 r8 | % bar 5
    d,8 g4 b8 a8 e8 a8 cis8 | % bar 6
    b8 fis8 d8 e8 a,4 r8 cis8 | % bar 7
    d8 b8 a8 a8 a8 r8 r4 | % bar 8
    R1*7 | % bar 9
    r2 r8 cis16 d16 e16 fis16 g16 e16 | % bar 16
    fis8 d8 d8 a8 a8 a8 a8\noBeam r8 | % bar 17
    r2 r4 r8 a'8\pDO\pF | % bar 18
    a8-. a,8-. d8-. fis8\pDS g8 a8 r8 a8 | % bar 19
    fis8 a8 b,8 d8 e8 gis,8 a8 cis8 | % bar 20
    d8 r8 e8 r8 fis8 r8 a8 r8 | % bar 21
    g8 r8 e8 r8 fis8 r8 r4 | % bar 22
    r4 r8 gis8_"pia" gis8 e8 e8 b8 | % bar 23
    cis4 r4 r2 | % bar 24
    r4 r8 b'8 e,8 d8 d8 b8 | % bar 25
    a4 r4 r2 | % bar 26
    R1*2 | % bar 27
    r2 r4 r8 e'8\pDO | % bar 29
    e8-. e8-. a,8-. cis8\pDS d8 e8 r8 e8 | % bar 30
    cis8 e8 fis8 a,8 b8 b8 e8 gis,8 | % bar 31
    a8 r8 b r8 cis r8 e r8 | % bar 32
    a,8 d4 fis8 e8 b8 e8 gis8 | % bar 33
    fis8 cis8 fis8 a8 e4 r8 gis8 | % bar 34
    a8 fis8 e8 d8 cis8 d8 cis8 b8 | % bar 35
    ais8 b8 cis8 b8 ais8 b8 cis8 b8 | % bar 36
    ais4 r4 r2 | % bar 37
    R1*2 | % bar 38
    r4 r8 fis'8 d4 r8 fis8 | % bar 40
    d4 r8 fis8 d4 r8 fis8\pDO | % bar 41
    d8-. fis8-. e8-. fis8\pDS gis8 gis,8 r4 | % bar 42
    r2 r4 r8 fis'8 | % bar 43
    fis8 r8 a8 r8 b8 r8 cis8 r8 | % bar 44
    b8 r8 cis8 r8 cis8 r8 a8 gis8 | % bar 45
    d'8 gis,8 gis8 gis8 a4 r4 | % bar 46
    R1 | % bar 47
    r2 r4 r8 a8\pDO | % bar 48
    a8-. a,8-. b8-. fis'8\pDS g8 a8 r8 c8_"pia" | % bar 49
    c8 a8 a8 d,8 g8 b8 b8 g8 | % bar 50
    g8 e8 e8 a,8 d8 fis8 a4 | % bar 51
    r16 b,16\f cis16 d16 e4 ~  e16 cis16 d16 e16 fis4 ~  | % bar 52
    fis8 fis8 fis8 b,8 cis8 cis8 d16 cis16 d16 e16 | % bar 53
    fis4 r8 fis8 fis4 r8 cis8 | % bar 54
    d4 r8 g8 fis4 r8 a8\pDO | % bar 55
    a8-. a,8-. d8-. fis8\pDS g8 a8 r8 a8 | % bar 56
    fis8 a8 b,8 d8 e8 gis,8 a8 cis8 | % bar 57
    d8 r8 e8 r8 fis8 r8 a8 r8 | % bar 58
    d,4 e2 fis4~ | % bar 59
    fis4 g8 b8 b4 r8 a8 | % bar 60
    a8 d,8 g8 e8 fis4\fermata r4 | % bar 61
    r2 r8 b8 b,4 | % bar 62
    r2 r8 b'8 b,4 | % bar 63
    r2 r8 b'8 b,4 | % bar 64
    r2 r8 b'8 b,4 | % bar 65
    R1*2 | % bar 66
    r4 r8 e8 e4 r8 g8 | % bar 68
    a8 b8 r8 b,8 e4 r8 c8\pDO | % bar 69
    e8-. fis8-. e8-. g8\pDS a8 b8 dis,8 e8 | % bar 70
    fis8 b8 a8 a,8 b4 r4 | % bar 71
    r2 r4 r8 e8 | % bar 72
    e8 r8 g8 r8 a8 r8 b8 r8 | % bar 73
    a8 r8 b8 r8 c8 r8 g8 fis8 | % bar 74
    c'8 fis,8 fis8 b,8 b4 r4 | % bar 75
    R1*2 | % bar 76
    r2 fis'2 | % bar 78
    d4 b4 a2 | % bar 79
    b4 d4 c8 e8 d8 g8 ~  | % bar 80
    g8 d8 d8 d8 c8 fis,8 g8 d'8\pDO | % bar 81
    d8-. fis8-. g8\pDS d8 ~  d8 d8 d8 a'8 | % bar 82
    g8 g,8 d'8 d8 d8\f d8 c8 d8 | % bar 83
    e8 a,8 d8 a8 b8 b8 c8 a8 | % bar 84
    b16( d16) d16( fis16) fis16( g16) g16( a16) a4 r4 | % bar 85
    R1 | % bar 86
    fis8 r8 d8 fis8 fis8 r8 fis8 fis8 | % bar 87
    e8 r8 e8 cis8 dis8 r8 r4 | % bar 88
    r4 r8 dis8 e8 r8 cis8 r8 | % bar 89
    b8 r8 fis'8 r8 b,8 b8 e8 g8 | % bar 90
    fis8 fis8 fis8 r8 r2 | % bar 91
    d2 fis2 ~  | % bar 92
    fis2 e4 r8 a8 | % bar 93
    g8 e8 e8 b8 b8 a8 b8 b8 | % bar 94
    cis8 d8 e8 fis8 fis4 r8 fis8 | % bar 95
    fis,8 gis8 ais8 b8 fis4 r4 | % bar 96
    dis'2 fis8 dis8 b4 | % bar 97
    cis2 e8 cis8 a8 a8 | % bar 98
    g8 r8 e'8 r8 fis8 r8 fis8 r8 | % bar 99
    fis8 r8 fis8 r8 fis8 r8 fis8 b,8 | % bar 100
    cis1 | % bar 101
    d8 b8 b8 ais8 b4 r8 b8 | % bar 102
    b8 r8 d8 r8 e8 r8 fis8 r8 | % bar 103
    e8 r8 fis8 r8 g8 r8 d8 b'8 | % bar 104
    g8 r8 fis8 r8 e4 r8 e8 | % bar 105
    d8 r8 g8 r8 fis4 r8 fis8 | % bar 106
    b8 r8 a8 r8 g4 r16 b16 g16 e16 | % bar 107
    cis8 r8 fis8 r8 fis8 r8 fis8 r8 | % bar 108
    fis8 e8 d8 b8 cis8 e8 ais,8 cis8 | % bar 109
    d8 fis8 b,8 d8 e8 g8 cis,8 e8 | % bar 110
    fis8 r8 fis8 r8 ais4 r4 | % bar 111
    r2 r4 r8
}
\mvtItimeLine
>>

mvtIvlnI = <<
\relative c'' {
    a8 | % bar 0
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d,16 a'16 fis16 a16 | % bar 1
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d16 a16 e'16 a,16 | % bar 2
    fis'8-. e8-. g8-. fis8-. e8 d8 a'4~ | % bar 3
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a16 g'16 fis16 e16 | % bar 4
    a,16 fis'16 e16 d16 a16 e'16 d16 cis16 a16 d16 cis16 b16 a16 c16 b16 a16 | % bar 5
    b16 a16 g16 fis16 e16 fis'16 e16 d16 cis16 b16 a16 g16 fis16 g'16 fis16 e16 | % bar 6
    d16 cis16 b16 a16 g16 a'16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 e16 | % bar 7
    d8. e16 e8. d16 d8 d'8-._"pia" d8-. a8-. | % bar 8
    a8-. fis8-. fis8-. d8-. d8 a8 a8 r8 | % bar 9
    \tag CANTATA {
        R1*5 | % bar 10
        dis'2_"pia" e2~ | % bar 15
    }
    \tag CONCERTO {
        R1*3 | % bar 10
        r8 e8_"pia" d8 cis8 r8 d8 cis8 b8 | % bar 13
        r8 b8 a8 gis8 fis8 e8 r4 | % bar 14
        dis'2 e2~ | % bar 15
    }
    e4 r4 r8 a,16 b16 cis16 d16 e16 cis16 | % bar 16
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d,16 a'16 fis16 a16 | % bar 17
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d16 a16 e'16 a,16 | % bar 18
    fis'8\pDO\pF e8-. g8-. fis8\pDS e8 d8 a'4~ | % bar 19
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a g' fis e | % bar 20
    fis8 r8 e8 r8 d8 r8 c8 r8 | % bar 21
    b8 r8 cis8 r8 d8 r8 r4 | % bar 22
    \tag CANTATA {
        R1 | % bar 23
        r4 r8 e8_"(pia)" fis8 cis8 cis8 a8 | % bar 24
    }
    \tag CONCERTO {
        r4 r8 d8_"pia" e8 b8 b8 gis8 | % bar 23
        a4 r8 e'8 fis8 cis8 cis8 a8 | % bar 24
    }
    b4 r8 fis'8 gis8 b8 b8 gis8 | % bar 25
    a4 r4 r2 | % bar 26
    r2 r4 r8 e,8 | % bar 27
    a16(  gis16  a16) cis16 a16 e16 cis16 e16 a,16 e'16 cis16 e16 a,16 e'16 cis16 e16 | % bar 28
    a16(  gis16  a16) cis16 a16 e16 cis16 e16 a,16 e'16 cis16 e16 a16 e16 b'16 e,16 | % bar 29
    cis'8\pDO b8-. d8-. cis8\pDS b8 a8 e'4 ~  | % bar 30
    e16 a,16 gis16 a16 b8 a8 gis16 a16 b16 gis16 e16 d'16 cis16 b16 | % bar 31
    e,16 cis'16 b16 a16 e16 b'16 a16 gis16 e16 a16 gis16 fis16 e16 g16 fis16 e16 | % bar 32
    fis16 e16 d16 cis16 b16 cis'16 b16 a16 gis16 fis16 e16 d16 cis16 d'16 cis16 b16 | % bar 33
    a16 gis16 fis16 e16 d16 e'16 d16 cis16 b16 a16 gis16 fis16 e16 fis'16 e16 d16 | % bar 34
    \tag CANTATA {
        cis8. b16 b8. a16 a8 d,8 cis8 b8 | % bar 35
        ais8 b8 cis8 b8 ais8 b8 cis8 b8 | % bar 36
        ais4 r4 r2 | % bar 37
    }
    \tag CONCERTO {
        cis'8. b16 b8. a16 a8 b8 a8 g8 | % bar 35
        fis4 e8 d8 cis8 e8 g4 ~  | % bar 36
        g8 fis8 r4 r2 | % bar 37
    }
    r4 r8 fis'8 fis8 cis8 cis8 ais8 | % bar 38
    b8 fis8 r4 r4 r8 fis8 | % bar 39
    b16(  ais16  b16) d16 b16 fis16 d16 fis16 b,16 fis'16 d16 fis16 b,16 fis'16 d16 fis16 | % bar 40
    b16(  ais16  b16) d16 b16 fis16 d16 fis16 b,16 fis'16 d16 fis16 b16 fis16 cis'16 fis,16 | % bar 41
    d'8\pDO cis8-. e8-. d8\pDS cis8 b8 r4 | % bar 42
    r2 r16 fis16 a16 cis16 fis16 e16 d16 cis16 | % bar 43
    fis,16 d'16 cis16 b16 fis16 cis'16 b16 a16 fis16 b16 a16 gis16 a16 cis16 fis16 eis16 | % bar 44
    fis2 ~  fis8 eis8 fis8 b,8 | % bar 45
    a8. gis'16 eis8. fis16 fis4 r8 a,8 | % bar 46
    d16(  cis16  d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d,16 a'16 fis16 a16 | % bar 47
    d16( cis16 d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d16 a16 e'16 a,16 | % bar 48
    fis'8\pDO  e8-. g8-. fis8\pDS e8 d8 r8 a'8_"pia" | % bar 49
    a8 fis8 fis8 d8 d8 b8 b8 e8 | % bar 50
    e8 cis8 cis8 a8 a8 fis8 d8 d'8\f | % bar 51
    b16 d16 e16 fis16 g16 fis16 e16 d16 cis16 e16 fis16 g16 a16 g16 fis16 e16 | % bar 52
    d8 cis8 d8 b8 a8 e8 a8 b16 cis16 | % bar 53
    \slurDashed d16( cis16 \slurSolid d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d,16 a'16 fis16 a16 | % bar 54
    \slurDashed d16( cis16 \slurSolid d16) fis16 d16 a16 fis16 a16 d,16 a'16 fis16 a16 d16 a16 e'16 a,16 | % bar 55
    fis'8\pDO e8-. g8-. fis8\pDS e8 d8 a'4 ~  | % bar 56
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a8 cis8 | % bar 57
    fis8 r8 e8 r8 d8 r8 c8 r8 | % bar 58
    b16 a16 g16 fis16 e16 fis'16 e16 d16 cis16 b16 a16 g16 fis16 g'16 fis16 e16 | % bar 59
    d16 cis16 b16 a16 g16 a'16 g16 fis16 e16 d16 cis16 b16 a16 g16 fis16 e16 | % bar 60
    d8. e16 e8. d16 d4\fermata r4 | % bar 61
    r2 r8 b'8 b,4 | % bar 62
    r2 r8 b'8 b,4 | % bar 63
    r2 r8 b'8 b,4 | % bar 64
    r2 r8 b'8 b,4 | % bar 65
    \tag CANTATA {
        R1 | % bar 66
        r2 r4 r8 b'8 | % bar 67
    }
    \tag CONCERTO {
        r8 d8( c8 b8) r8 b8(  a8  g8) | % bar 66
        fis4 r4 r4 r8 b8 | % bar 67
    }
    \slurDashed e16( dis16 \slurSolid e16) g16 e16 b16 g16 b16 e,16 b'16 g16 b16 e,16 b'16 g16 b16 | % bar 68
    \slurDashed e16(  dis16  \slurSolid e16) g16 e16 b16 g16 b16 e,16 b'16 g16 b16 e16 b16 fis'16 b,16 | % bar 69
    g'8\pDO fis8-. a8-. g8\pDS fis8 e8 b'4 ~  | % bar 70
    \tag CANTATA {
        b16 e,16 dis16 e16 fis8 e8 dis8 b8 r4 | % bar 71
        r2 r16 e,16 g16 b16 e16 d16 c16 b16 | % bar 72
    }
    \tag CONCERTO {
        b'16 e,16 dis16 e16 fis8 e8 dis8 b8 r8 dis8 | % bar 71
        e16 b16 c16 a'16 dis,8. e16 e16 e,16 g16 b16 e16 d16 c16 b16 | % bar 72
    }
    e,16 c'16 b16 a16 e16 b'16 a16 g16 e16 a16 g16 fis16 g8 g'8~ | % bar 73
    g8 fis4 e8 ~  e8 dis8 e8 a,8 | % bar 74
    g8 e'4 dis8 e4 r4 | % bar 75
    R1*2 | % bar 76
    r2 d2 ~  | % bar 78
    d2 d4 r8 d,8 | % bar 79
    g16(  fis16  g16) b16 g16 d16 b16 d16 g,16 d'16 b16 d16 g,16 d'16 b16 d16 | % bar 80
    g16 fis16 g16 b16 g16 d16 b16 d16 g,16 d'16 b16 d16 g16 d16 a'16 d,16 | % bar 81
    b'8\pDO a8-. c8-. b8\pDS a8 g8 d'4 ~  | % bar 82
    d16 fis,16 g16 a16 fis16 e'16 d16 c16 b16\f a16 g16 f16 e16 f'16 e16 d16 | % bar 83
    c16 b16 a16 g16 fis16 e16 d16 c16 b8 g'8 a,8 fis'8 | % bar 84
    \tag CANTATA {
        g8 r8 r4 r4 r8 dis'8 | % bar 85
    }
    \tag CONCERTO {
        g,16( b16) b16( dis16) dis16( e16) e16( fis16) fis4 r8 dis | % bar 85
    }
    e16 b16 cis16 d16 e16 cis16 d16 e16 cis,8 r8 r4 | % bar 86
    fis'1~ | % bar 87
    fis2 ~  fis8 r8 r4 | % bar 88
    r4 fis4 ~  fis8 e4 d8 ~  | % bar 89
    d16 b16 ais16 b16 cis8 fis8 ~  fis8 d8 b8 e8 | % bar 90
    cis8 ais8 fis8 r8 r4 r8 fis8 | % bar 91
    \slurDashed b16( ais16 b16) d16 b16 fis16 d16 fis16 b,16 fis'16 d16 fis16 b,16 fis'16 d16 fis16 | % bar 92
    a16(  g16 \slurSolid a16) c16 a16 fis16 dis16 fis16 b,16 e16 g16 b16 e16 b16 fis'16 b,16 | % bar 93
    g'1 | % bar 94
    fis1 ~  | % bar 95
    fis4 r8 fis8 fis,8 gis8 ais8 b8 | % bar 96
    c2 b2 | % bar 97
    bes2 a2 | % bar 98
    b8 r8 e8 r8 e8 r8 d8 r8 | % bar 99
    cis8 r8 b8 r8 cis8 r8 fis8 d8 | % bar 100
    ais8 cis8 cis8 e8 ais,8 cis8 cis8 e8 | % bar 101
    d4 r4 r16 b,16 d16 fis16 b16 a16 g16 fis16 | % bar 102
    b,16 g'16 fis16 e16 b16 fis'16 e16 d16 b16 e16 d16 cis16 d8 d'8 ~  | % bar 103
    d8 cis4 b8~ b8 ais8 b8 d8 | % bar 104
    e8 r8 fis8 r8 b,4 r8 e8 | % bar 105
    fis8 r8 g8 r8 cis,4 r8 fis8 | % bar 106
    g8 r8 a8 r8 d,4 r8 g8 | % bar 107
    g8(   fis8) fis8(   e8) e8(   d8) d8(   cis8) | % bar 108
    cis4 r8 d8 d8(   cis8) r8 e8 | % bar 109
    e8(   d8) r8 fis8 fis8(   e8) r8 g8 | % bar 110
    g16 e16 fis8-. fis16 d16 e8-. fis4 r4 | % bar 111
    r2 r4 r8
}
\mvtItimeLine
>>

mvtIvlnII = <<
\relative c'' {
    r8 | % bar 0
    R1 | % bar 1
    r2 r4 r8 cis8\pDO | % bar 2
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 cis8 | % bar 3
    d8 fis8 b,8 a8 g8 b8 e,8 a8 | % bar 4
    fis8 r8 e8 r8 d8 r8 d8 r8 | % bar 5
    g8 d8 b'16 a16 g16 fis16 e8 cis8 cis'16 b16 a16 g16 | % bar 6
    fis8 d8 d'16 cis16 b16 a16 g16 fis16 e16 d16 cis16 b16 cis8 | % bar 7
    b8 d4 cis8 d8 a'8\pDO_"pia" a8-. fis8-. | % bar 8
    fis8-. d8-. d8-. a8\pDS a8 g8 a8 r8 | % bar 9
    \tag CANTATA {
        R1*5 | % bar 10
        b'2_"pia" b2 | % bar 15
    }
    \tag CONCERTO {
        R1*3 | % bar 10
        r8 cis8_"pia" gis8 a8 r8 b8 fis8 gis8 | % bar 13
        r8 e8 fis8 cis8 d8 a8 r4 | % bar 14
        b'2 b2 | % bar 15
    }
    a4 r4 r8 e8 a8 cis8 | % bar 16
    a8 fis8 fis8 d8 d8 a8 a8\noBeam r8 | % bar 17
    r2 r4 r8 cis'8\pDO\pF | % bar 18
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 cis8 | % bar 19
    d8 fis8 b,8 a8 g8 b8 e,8 a8 | % bar 20
    a8 r8 a8 r8 d8 r8 d,8 r8 | % bar 21
    d8 r8 a'8 r8 a8 r8 r4 | % bar 22
    \tag CANTATA {
        R1 | % bar 23
        r4 r8 cis8_"(pia)" cis8 a8 a8 fis8 | % bar 24
    }
    \tag CONCERTO {
        r4 r8 b8_"pia" b8 gis8 gis8 e8 | % bar 23
        e4 r8 cis'8 cis8 a8 a8 fis8 | % bar 24
    }
    fis4 r8 d'8 d8 b8 b8 e8 | % bar 25
    e4 r4 r2 | % bar 26
    R1 | % bar 27
    r8 a,8 a8 e8 e8 e8 cis8 r8 | % bar 28
    r2 r4 r8 gis'8\pDO | % bar 29
    a8-. b8-. a8-. gis8\pDS fis8 e8 r8 gis8 | % bar 30
    a8 cis8 fis,8 e8 d8 fis8 b,8 e8 | % bar 31
    cis8 r8 b8 r8 a8 r8 a8 r8 | % bar 32
    d8 a8 fis'16 e16 d16 cis16 b8 e8 gis16 fis16 e16 d16 | % bar 33
    cis8 a8 a'16 gis16 fis16 e16 d16 cis16 b16 a16 gis16 d'16 cis16 b16 | % bar 34
    \tag CANTATA {
        a8 a'4 gis8 a8 d,8 cis8 b8 | % bar 35
        ais8 b8 cis8 b8 ais8 b8 cis8 b8 | % bar 36
        ais4 r4 r2 | % bar 37
    }
    \tag CONCERTO {
        a8 a'4 gis8 a8 fis8 e8 d8 | % bar 35
        cis8 d8 e8 g8 ~  g8 e8 ais8 cis8 | % bar 36
        e,4 r4 r2 | % bar 37
    }
    r4 r8 d'8 cis8 fis8 fis8 cis8 | % bar 38
    d8 fis8 r4 r2 | % bar 39
    r8 fis,8 d4 r8 fis8 d4 | % bar 40
    r8 fis8 d4 r8 fis8 d8 cis'8 | % bar 41
    b2 ~  b8 eis,8 r4 | % bar 42
    r2 r4 r8 a8 | % bar 43
    b8 r8 cis8 r8 eis8 r8 fis8 r8 | % bar 44
    fis,8 r8 a8 r8 b8 r8 cis8 cis8 | % bar 45
    fis,8 d'8 cis8 cis8 cis4 r8 d,8 | % bar 46
    d8 fis8 fis8 fis8 a8 d8 d8 r8 | % bar 47
    r2 r4 r8 cis8\pDO | % bar 48
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 fis'8_"pia" | % bar 49
    fis8 d8 d8 a8 b8 d,8 g8 b8 | % bar 50
    a8 a8 a8 e8 fis8 a,8 a16 fis'16\f g16 a16 | % bar 51
    b4 ~  b16 g16 a16 b16 cis4 ~  cis16 a16 b16 cis16 | % bar 52
    d8 fis8 b,8 e8 e,8 a8 d,8 g8 | % bar 53
    a4 r8 a8 b4 r8 a8 | % bar 54
    a4 r8 a8 a4 r8 e'8\pDO | % bar 55
    d8-. e8-. d8-. cis8\pDS b8 a8 r8 cis8 | % bar 56
    d8 fis8 b,8 a8 g8 b8 e,8 a8 | % bar 57
    a8 r8 a8 r8 d8 r8 d,8 a'8~ | % bar 58
    a8 d,8 g8 b8~ b8 e,8 a8 cis8~ | % bar 59
    cis8 fis,8 b8 d8 e4 r8 e8 | % bar 60
    a,8 b8 b8 a8 a4\fermata r4 | % bar 61
    r2 r8 b8 b,4 | % bar 62
    r2 r8 b'8 b,4 | % bar 63
    r2 r8 b'8 b,4 | % bar 64
    r2 r8 b'8 b,4 | % bar 65
    R1*2 | % bar 66
    r4 r8 b'8 a8 e8 a,8 e'8 | % bar 68
    e4 r8 dis'8 e8 b8 e,8 a8\pDO | % bar 69
    g8-. d'8\pDS e4 dis8 e8 fis8 g8 | % bar 70
    a8 g8 c,8 a8 fis4 r4 | % bar 71
    r2 r4 r8 g8 | % bar 72
    a8 r8 b8 r8 dis8 r8 e8 r8 | % bar 73
    e,8 r8 g8 r8 a8 r8 b8 b8 | % bar 74
    e8 c8 b8 a8 g4 r4 | % bar 75
    R1*2 | % bar 76
    r2 a2 ~  | % bar 78
    a4 d,4 fis2 | % bar 79
    d4 g2 d'4 | % bar 80
    c8 g8 c8 b8 c8 b4 a8\pDO | % bar 81
    g8-. d8\pDS g4 a8 b8 c8 fis,8 | % bar 82
    d8 e8 a,8 fis'8 g2~\f | % bar 83
    g16 d'16 c16 b16 a4 ~  a8 g8 e8 d8 | % bar 84
    \tag CANTATA {
        d8 r8 r4 r4 r8 b'8 | % bar 85
    }
    \tag CONCERTO {
        d,16( g16)  g16(  a16) a16( b16) b16( fis16) fis4 r8 b | % bar 85
    }
    b8 b8 ais8 b8 e,8 r8 r4 | % bar 86
    cis'8 r8 cis8 fis,8 b8 r8 cis8 b8 | % bar 87
    ais8 r8 cis8 ais8 b8 r8 r4 | % bar 88
    r4 r8 fis8 g8 r8 fis8 r8 | % bar 89
    e8 r8 e8 r8 d8 fis4 e8~ | % bar 90
    e8 cis8 d8 r8 r2 | % bar 91
    fis2 b2 | % bar 92
    a2 b4 r8 b8 | % bar 93
    b8 g8 g8 e8 e8 fis8 g8 e8 | % bar 94
    fis8 gis8 ais8 b8 ais8 b8 cis8 b8 | % bar 95
    ais8 b8 cis8 b8 ais8 b8 cis8 b8 | % bar 96
    a2~ a8 fis8 g4 ~  | % bar 97
    g2~  g8 e8 fis8 fis8 | % bar 98
    b,8 r8 g'8 r8 cis,8 r8 b8 r8 | % bar 99
    cis8 r8 d8 r8 cis8 r8 b8 d8 | % bar 100
    fis1~ | % bar 101
    fis8 g8 fis8 e8 d4 r8 b8 | % bar 102
    e8 r8 fis8 r8 ais8 r8 b8 r8 | % bar 103
    b,8 r8 d8 r8 e8 r8 fis8 fis8 | % bar 104
    e8 r8 b'8 r8 b4 r8 ais8 | % bar 105
    fis8 r8 cis'8 r8 cis4 r8 b8 | % bar 106
    g8 r8 d'8 r8 d4 r8 cis8 | % bar 107
    ais8 r8 b8 r8 ais8 r8 fis8 r8 | % bar 108
    fis4 r8 b8 \slurDashed b8(  \slurSolid ais8) r8 cis8 | % bar 109
    cis8(   b8) r8 d8 d8(   cis8) r8 e8 | % bar 110
    e16 cis16 d8-. d16 b16 cis8-. cis4 r4 | % bar 111
    r2 r4 r8
}
\mvtItimeLine
>>

mvtIvla = <<
\relative c'' {
    \clef C
    r8 | % bar 0
    R1 | % bar 1
    r2 r4 r8 a8\pDO | % bar 2
    a8-. a8-. d,8-. fis8\pDS g8 a8 r8 a8 | % bar 3
    fis8 a8 b,8 d8 e8 g,8 a8 cis8 | % bar 4
    d8 r8 e8 r8 fis8 r8 a8 r8 | % bar 5
    d,8 g4 b8 a8 e8 a8 cis8 | % bar 6
    b8 fis8 d8 e8 a,4 r8 a16 g16 | % bar 7
    fis8 b8 a8 a8 fis8 fis'8\pDO_"pia" fis8-. d8-. | % bar 8
    d8-. a8-. a8-. fis8\pDS fis8 e8 fis8 r8 | % bar 9
    \tag CANTATA {
        R1*5 | % bar 10
        fis'2_"pia" gis4 r8 d8 | % bar 15
    }
    \tag CONCERTO \relative c' {
        R1*4 | % bar 10
        r8 b\p d e e, fis r4 | %14
        fis'2 gis4 r8 d8 | % bar 15
    }
    cis4 r4 r8 cis16 d16 e16 fis16 g16 e16 | % bar 16
    fis8 d8 d8 a8 a8 a8 fis8\noBeam r8 | % bar 17
    r2 r4 r8 a'8\pDO\pF | % bar 18
    a8-. a,8-. d8-. fis8\pDS g8 a8 r8 a8 | % bar 19
    fis8 a8 b,8 d8 e8 gis,8 a8 cis8 | % bar 20
    d8 r8 e8 r8 fis8 r8 a8 r8 | % bar 21
    g8 r8 e8 r8 fis8 r8 r4 | % bar 22
    \tag CANTATA {
        R1 | % bar 23
        r4 r8 a8_"(pia)" a8 fis8 fis8 cis8 | % bar 24
    }
    \tag CONCERTO {
        r4 r8 gis'8_"pia" gis8 e8 e8 b8 | % bar 23
        cis4 r8 a'8 a8 fis8 fis8 cis8 | % bar 24
    }
    d4 r8 b'8 e,8 d8 d8 b8 | % bar 25
    a4 r4 r2 | % bar 26
    R1 | % bar 27
    r8 cis8 cis8 a8 a8 e8 e8 r8 | % bar 28
    r2 r4 r8 e'8\pDO | % bar 29
    e8-. e8-. a,8-. cis8\pDS d8 e8 r8 e8 | % bar 30
    cis8 e8 fis,8 a8 b8 d,8 e8 gis8 | % bar 31
    a8 r8 b8 r8 cis8 r8 e8 r8 | % bar 32
    a,8 d4 fis8 e8 b8 e8 gis8 | % bar 33
    fis8 cis8 fis8 a8 e4 r8 gis8 | % bar 34
    a8 fis8 e8 d8 cis8 d8 cis8 b8 | % bar 35
    ais8 b8 cis8 b8 ais8 b8 cis8 b8 | % bar 36
    ais4 r4 r2 | % bar 37
    r4 r8 fis'8 ais8 cis8 cis,8 fis8 | % bar 38
    fis8 d8 r4 r2 | % bar 39
    r4 r8 fis8 d4 r8 fis8 | % bar 40
    d4 r8 fis8 d4 r8 fis8\pDO | % bar 41
    d8-. fis8-. e8-. fis8\pDS gis8 gis,8 r4 | % bar 42
    r2 r4 r8 fis'8 | % bar 43
    fis8 r8 a8 r8 b8 r8 cis8 r8 | % bar 44
    b8 r8 cis8 r8 cis8 r8 a8 gis8 | % bar 45
    d'8 gis,8 gis8 gis8 a4 r8 fis,8 | % bar 46
    fis8 a8 a8 d8 d8 fis8 fis8 r8 | % bar 47
    r2 r4 r8 a8\pDO | % bar 48
    a8-. a,8-. b8-. fis'8\pDS g8 a8 r8 c8_"pia" | % bar 49
    c8 a8 a8 d,8 g8 b8 b8 g8 | % bar 50
    g8 e8 e8 a,8 d8 fis8 a4 | % bar 51
    r16 b,16\f cis16 d16 e4 ~  e16 cis16 d16 e16 fis4 ~  | % bar 52
    fis8 fis8 fis8 b,8 cis8 cis8 d16 cis16 d16 e16 | % bar 53
    fis4 r8 fis8 fis4 r8 cis8 | % bar 54
    d4 r8 g8 fis4 r8 a8\pDO | % bar 55
    a8-. a,8-. d8-. fis8\pDS g8 a8 r8 a8 | % bar 56
    fis8 a8 b,8 d8 e8 gis,8 a8 cis8 | % bar 57
    d8 r8 e8 r8 fis8 r8 a8 r8 | % bar 58
    d,4 e2 fis4~ | % bar 59
    fis4 g8 b8 b4 r8 a8 | % bar 60
    a8 d,8 g8 e8 fis4\fermata r4 | % bar 61
    r2 r8 b8 b,4 | % bar 62
    r2 r8 b'8 b,4 | % bar 63
    r2 r8 b'8 b,4 | % bar 64
    r2 r8 b'8 b,4 | % bar 65
    R1*2 | % bar 66
    r4 r8 e8 e4 r8 g8 | % bar 68
    a8 b8 r8 b,8 e4 r8 c8\pDO | % bar 69
    e8-. fis8-. e8-. g8\pDS a8 b8 dis,8 e8 | % bar 70
    fis8 b8 a8 a,8 b4 r4 | % bar 71
    r2 r4 r8 e8 | % bar 72
    e8 r8 g8 r8 a8 r8 b8 r8 | % bar 73
    a8 r8 b8 r8 c8 r8 g8 fis8 | % bar 74
    c'8 fis,8 fis8 b,8 b4 r4 | % bar 75
    R1*2 | % bar 76
    r2 fis'2 | % bar 78
    d4 b4 a2 | % bar 79
    b4 d4 c8 e8 d8 g8 ~  | % bar 80
    g8 d8 d8 d8 c8 fis,8 g8 d'8\pDO | % bar 81
    d8-. fis8-. g8\pDS d8 ~  d8 d8 d8 a'8 | % bar 82
    g8 g,8 d'8 d8 d8\f d8 c8 d8 | % bar 83
    e8 a,8 d8 a8 b8 b8 c8 a8 | % bar 84
    \tag CANTATA {
        b8 r8 r4 r4 r8 fis'8 | % bar 85
    }
    \tag CONCERTO {
        b,16( d16) d16( fis16) fis16( g16) g16( a16) a4 r8 fis | % bar 85
    }
    e8 g8 e8 g8 cis,8 r8 r4 | % bar 86
    fis8 r8 d8 fis8 fis8 r8 fis8 fis8 | % bar 87
    e8 r8 e8 cis8 dis8 r8 r4 | % bar 88
    r4 r8 dis8 e8 r8 cis8 r8 | % bar 89
    b8 r8 fis' r8 b,8 b8 e g | % bar 90
    fis8 fis8 fis8 r8 r2 | % bar 91
    d2 fis2 ~  | % bar 92
    fis2 e4 r8 a8 | % bar 93
    g8 e8 e8 b8 b8 a8 b8 b8 | % bar 94
    cis8 d8 e8 fis8 fis4 r8 fis8 | % bar 95
    fis,8 gis8 ais8 b8 fis4 r4 | % bar 96
    dis'2 fis8 dis8 b4 | % bar 97
    cis2 e8 cis8 a8 a8 | % bar 98
    g8 r8 e'8 r8 fis8 r8 fis8 r8 | % bar 99
    fis,8 r8 fis8 r8 fis8 r8 fis8 b8 | % bar 100
    cis1 | % bar 101
    d8 b8 b8 ais8 b4 r8 b8 | % bar 102
    b8 r8 d8 r8 e8 r8 fis8 r8 | % bar 103
    e8 r8 fis8 r8 g8 r8 d8 b'8 | % bar 104
    g8 r8 fis8 r8 e4 r8 e8 | % bar 105
    d8 r8 g8 r8 fis4 r8 fis8 | % bar 106
    b8 r8 a8 r8 g4 r16 b16 g16 e16 | % bar 107
    cis8 r8 fis r8 fis r8 fis8 r8 | % bar 108
    fis8 e8 d8 b8 cis8 e8 ais,8 cis8 | % bar 109
    d8 fis8 b,8 d8 e8 g8 cis,8 e8 | % bar 110
    fis8 r8 fis8 r8 ais4 r4 | % bar 111
    r2 r4 r8
}
\mvtItimeLine
>>

mvtIorgRH = <<
\relative c'' {
    r8 | % bar 0
    R1*7 | % bar 1
    r2 r4 r8 a8 | % bar 8
    d,16 e16 fis8-. fis16 g16 a8-. a16 b16 cis8-. d8 \slurDashed d32(  e32  \slurSolid fis16) | % bar 9
    e8 d8 cis8 b8 a16( gis16)  a16(  gis16) a16 e'16 fis32(  e32  d16) | % bar 10
    \slurDashed a16( gis16) a16( \slurSolid gis16) a16 fis'16 g32(  fis32  e16) a,16   gis16  a16  gis16 a16 g'16 a32  g32  fis16 | % bar 11
    \slurDashed g16( fis16) g16( \slurSolid e16) a,16 cis16 e16  fis32  g32 fis16 e16 fis16 d16 a16 cis16 d16(  e32  fis32) | % bar 12
    e16 fis16 gis16 a16 b,16 cis16 b16 cis16 d16 fis16 gis16 a16 a,16 b16 a16 b16 | % bar 13
    cis8 b8 \slurDashed b32(  cis32  \slurSolid d16) cis8 b8 a8 fis'4 ~  | % bar 14
    fis16 e16 dis16 e16 a,8 b8 gis16 b16 d16 e32 fis32 e4~ | % bar 15
    e8 a,8 cis16 b16 a16 gis16 a4 r8 a8 | % bar 16
    d,16 e16 fis8-. fis16 g16 a8-. a16 b16 cis8-. d8 d16 e16 | % bar 17
    fis8 d8 fis8 a8 fis16 e16 d16 e16 fis16 g16 a16 g16 | % bar 18
    fis8 e8 g8 fis8 e8 d8 a'4~ | % bar 19
    a16 d,16 cis16 d16 e8 fis8 g4 ~  g16 cis,16 d16 e16 | % bar 20
    a,16 fis'16 e16 d16 a16 e'16 d16 cis16 a16 d16 cis16 b16 a16 c16 b16 a16 | % bar 21
    b16 a16 g16 fis16 e16 b'16 a16 g16 fis16 g16 a16 fis16 d8 d'8 | % bar 22
    d16 cis16 b8-. b16 a16 gis8-. gis16 b16 e8 e4~ | % bar 23
    e16 d16 cis8-. cis16 b16 a8-. a16 cis16 fis8 fis4 ~  | % bar 24
    fis16 e16 d8-\parenthesize-. d16 cis16 b8-\parenthesize-. b16 d16 gis8 gis16 cis,16 d8~ | % bar 25
    d16 b16 cis16 e16 a16 gis16 a8~ a16 e16 dis16 fis16 a16 fis16 gis16 a16 | % bar 26
    gis16 a16 b16 gis16 d16 fis16 e16 d16 cis8. b16 b8. a16 | % bar 27
    a16 b16 cis8-\parenthesize-. cis16 d16 e8-. e16 fis16 gis8-. a8 e8 | % bar 28
    fis16 g16 fis16 e16 d16 cis16 b16 a16 << e'8. { s8 <>^\vturn } >> fis16 cis8 b16 a16 | % bar 29
    a4 r4 r2 | % bar 30
    R1*4 | % bar 31
    r2 r4 r8 e8 | % bar 35
    e16 fis16 g8 g16 fis16 e8 cis'16 b16 cis8 e,16 g16 fis16 e16 | % bar 36
    cis'16 ais16 b16 cis16 fis,16 e'16 d16 cis16 e16 d16 cis16 d16 b8 fis'8 | % bar 37
    fis16 e16 d16 fis16 e16 d16 cis16 b16 cis16 b16 ais16 gis16 fis16 ais16 cis16 e16 | % bar 38
    d16 cis16 b16 fis'16 e16 d16 cis16 b16 fis'2~ | % bar 39
    fis1 ~  | % bar 40
    fis2 ~  fis16 g16 fis16 e16 d16 cis16 b16 ais16 | % bar 41
    \once \override TextScript.avoid-slur = #'inside
    % \once \override TextScript.outside-staff-priority = ##f
    << b8. { s8 <>^\vturn } >> cis16 cis8.\prall b16 b16 d16 cis16 b16 eis16 fis16 gis16 b,16 | % bar 42
    a8. gis16 gis8. fis16 fis2~ | % bar 43
    fis2. ~  fis16 a16 b16 cis16 | % bar 44
    d16 eis16 fis16 gis16 cis,16 eis16 fis16 gis16 b,16 eis16 fis16 gis16 a,16 cis16 eis16 gis16 | % bar 45
    fis16 eis16 fis16 b16 gis8. fis16 fis4 r8 a,8 | % bar 46
    fis16 e16 d16 e16 fis16 g16 a16 g16 fis8 a16( g16) a8 d16 e16 | % bar 47
    fis8 fis16( g32 a32) fis8 d8 d8 a8 a8 e'8 | % bar 48
    fis8 e8 g8 fis8 e8 d8 a'4 ~  | % bar 49
    a16 c,16 b16 c16 d8 c8 b16 a16 g16 b16 e4 ~  | % bar 50
    e16 g,16 fis16 g16 a8 g8 fis16 a16 d16 e16 fis4~ | % bar 51
    fis16 d16 cis16 b16 g'4 ~  g16 e16 d16 cis16 a'4~  | % bar 52
    a16 g16 fis16 e16 d16 fis16 e16 d16 cis16 d16 e16 cis16 a16 cis16 g16 cis16 | % bar 53
    fis,16 e16 fis16 a16 fis16 a16 d16 cis16 fis16 e16 d16 cis16 d8 a'8 ~  | % bar 54
    a16 b16 a16 g16 fis16 e16 d16 cis16 d8 a8 fis8 a8 | % bar 55
    fis'8 e8 g8 fis8 e8 d8 a'4 ~  | % bar 56
    a16 d,16 cis16 d16 e8 d8 cis16 d16 e16 cis16 a16 g'16 fis16 e16 | % bar 57
    a,16 fis'16 e16 d16 a16 e'16 d16 cis16 a16 d16 cis16 b16 a16 c16 b16 a16 | % bar 58
    b4 ~  b16 a16 g16 fis16 e8 cis'8 ~  cis16 b16 a16 g16 | % bar 59
    fis8 d'8 ~  d16 cis16 b16 a16 g16 fis'16 e16 d16 cis16 b16 a16 g16 | % bar 60
    fis8 d'8 e,8 cis'8 d4\fermata r8 fis8 | % bar 61
    << fis4 { s8 s32 <>^\vturn } >> g16 fis16 e16 g16 fis16 e32 d32 e16 d32 cis32 d16 b16 fis'8 | % bar 62
    fis16 g16 e16 fis16 g16 fis16 e16 g16 fis8 b,8 r8 b8 | % bar 63
    cis8 cis32(  dis32  e16) dis8 dis32(  e32  fis16) \grace fis8 e4 r8 dis8 | % bar 64
    e8 e16( g16) fis8 \slurDashed fis16( \slurSolid a16) g8 fis8 r8 g16 e16 | % bar 65
    a8 g8 r8 fis16 e16 f16 dis16 e8 c4 ~  | % bar 66
    c16 b16 a16 c16 b16 a32 g32 a16 g32 fis32 g16 b16 e16 fis16 fis8. e16 | % bar 67
    e4 r8 b8 c8 b8 c8 b8 | % bar 68
    a16 fis16 g8 r8 b8 g16 fis16 e16 fis16 g16 a32 b32 a16 b32 c32 | % bar 69
    b16( a16) c16( b16) e16( d16) d16( c16) c16( b16) b16( a16) a16( g16) g16( fis16) | % bar 70
    fis8 b,8 c'4~  c16 b16 a16 c16 dis,16 c'16 b16 a16 | % bar 71
    g8. fis16 fis8. e16 e4 r8 e'8 | % bar 72
    c16 dis16 e8 r8 b8 a16 dis16 e8 r16 g,16 a16 b16 | % bar 73
    c16 dis16 e16 fis16 b,16 dis16 e16 fis16 a,16 dis16 e16 fis16 g,16 b16 dis16 fis16 | % bar 74
    e16 dis16 e16 a16 fis8. e16 e16( d16) d16( cis16) cis16( b16) b16(   ais16) | % bar 75
    ais16 g'16 fis8 ~  fis16 a,16 b16 c16 gis16 fis'16 e8 ~  e16 g,16 a16 b16 | % bar 76
    fis16 e'16 d16 cis16 b16 a'16 gis16 fis16 eis16 d?16 cis16 b16 a16 gis16 fis16 eis16 | % bar 77
    fis16 ais16 b16 d16 cis16 eis16 fis16 a16 c,4 ~  c16 e16 d16 c16 | % bar 78
    b16 a16 c16 b16 a16 g16 fis16 g16 a16 fis16 e16 d16 d'16 c16 b16 c16 | % bar 79
    b8 g8 r8 d'8 e8 g16 fis16 g8 d8 | % bar 80
    e8 d8 r8 d16 f16 e8 d8 c8 b32(  c32  d16) | % bar 81
    b8 a8 r8 g'8 fis8 g8^\prall a8 c,8 | % bar 82
    b8. a16 a8. g16 g4 r4 | % bar 83
    R1 | % bar 84
    r4 r8 b8 c8 b16 a16 g16 fis16 b8 | % bar 85
    a16 g16 fis16 e16 g'4 ~  g16 cis,16 d16 e16 ais,16 b32 cis32 b16 cis32 d32 | % bar 86
    cis16 ais16 gis16 fis16 b16 cis32 d32 cis16 d32 e32 d16 b16 ais16 gis16 cis16 d32 e32 d16 e32 fis32 | % bar 87
    e16 cis16 b16 ais16 cis16 g16 fis16 e16 dis16 c'16 b16 a16 b16 f16 e16 d16 | % bar 88
    cis16 b'16 a16 g16 a16 e16 dis16 cis16 b16 g'16 fis16 e16 ais16 g16 fis16 e16 | % bar 89
    b'16 g16 fis16 e16 cis'16 g16 fis16 e16 d'16 ais16 b16 fis16 g16 cis16 d16 e16 | % bar 90
    ais,16 g'16 fis16 e16 d16 e16 e16\prall d32 e32 fis8. b,16 cis8 ais8 | % bar 91
    b4 r8 fis8 d'2 | % bar 92
    dis2\trill e4 r8 b8 | % bar 93
    e,16 fis16 g8-. g16 a16 b8-. b16 cis16 dis8-\parenthesize-. e8 \slurDashed e32(  fis32 \slurSolid g16) | % bar 94
    ais,8 b8 cis8 d8 cis16 b16 ais16 gis16 fis16 cis'16 d16 b16 | % bar 95
    cis16 b16 ais16 gis16 fis16 fis'16 d16 b16 cis16 b16 ais16 gis16 fis8 a16 gis16 | % bar 96
    a8 c16 b16 c8 a8 dis16 e16 fis16 dis16 e8 g,16 fis16 | % bar 97
    g8 bes16 a16 bes8 g8 cis16 d16 e16 cis16 d8 d32(  e32  fis16) | % bar 98
    e8 d8 cis8 b8 \slurDashed fis16(   eis16) fis16(   eis16) fis16 cis'16 d32( cis32 b16) | % bar 99
    fis16(   eis16) fis16(   eis16) fis16 d'16 e32(  d32  cis16) fis,16(   eis16) fis16(   eis16) fis16 e'16 fis32(  e32 \slurSolid d16) | % bar 100
    e32 fis32 g16 fis8 ~  fis16 b,16 ais16 cis16 e,16 fis32 g32 fis8 ~  fis16 ais16 cis16 g'16 | % bar 101
    fis16 e16 d16 cis16 e16 d16 cis16 d16 b4 r8 b8 | % bar 102
    g16 ais16 b8 r8 fis8 e16 ais16 b8 r16 d16 ais16 b16 | % bar 103
    g16 ais16 b16 cis16 fis,16 ais16 b16 cis16 e,16 ais16 b16 cis16 d,16 fis16 b8 ~  | % bar 104
    b16 c16 b16 g16 a16 b16 a16 fis16 g16 e16 cis'8 cis4~ | % bar 105
    cis16 d16 cis16 ais16 b16 cis16 b16 gis16 ais16 fis16 d'8 d4~ | % bar 106
    d16 e16 d16 b16 c16 d16 c16 ais16 b16 dis16 e8 e4 ~  | % bar 107
    e16 fis16 e16 cis16 d16 e16 d16 b16 cis16 d16 cis16 ais16 b16 cis16 b16 gis16 | % bar 108
    ais16 fis16 gis16 ais16 b16 cis16 d16 b16 e,16 gis16 ais16 b16 cis16 d16 e16 cis16 | % bar 109
    fis,16 ais16 b16 cis16 d16 e16 fis16 d16 g,16 b16 cis16 d16 e16 fis16 g16 e16 | % bar 110
    ais16 g?16 fis16 e16 b'16 g16 fis16 e16 cis'16 g16 fis16 e16 d16 ais16 b16 g'16 | % bar 111
    fis8 r8 d8 cis16 b16 b4 r8
}
\mvtItimeLine
>>

mvtIorgLH = <<
\relative c' {
    \clef F
    r8 | % bar 0
    R1 | % bar 1
    r2 r4 r8 a8\pDO | % bar 2
    d8-. cis8-. b8-. a8\pDS g8 fis8 r8 fis8  | % bar 3
    b8 a8 g8 fis8 e8 d8 cis8 a8 | % bar 4
    d8 r8 cis8 r8 b8 r8 fis8 r8 | % bar 5
    g8 b8 g8 e8 a8 cis8 a8 fis8 | % bar 6
    b8 d8 b8 g8 cis4 r8 a8 | % bar 7
    b8 g8 a8 a8 d,4 r4 | % bar 8
    r2 r4 r8 b'8 | % bar 9
    cis8 d8 e8 d8 cis8 b8 cis8 d8 | % bar 10
    cis8 b8 a8 cis8 d8 e8 fis8 d8 | % bar 11
    e8 d8 cis8 a8 d8 e8 fis8 d8 | % bar 12
    cis4 r8 a8 b4 r8 e8 | % bar 13
    a8 gis8 fis8 e8 d8 cis8 r8 d8 | % bar 14
    a'8 fis8 dis8 b8 d4 r8 gis8 | % bar 15
    a8 fis8 d8 e8 a,8 g8 fis8 e8 | % bar 16
    d4 r8 e8 fis4 r8 fis'8 | % bar 17
    b,8 a8 b8 cis8 d4 r8 a'8 | % bar 18
    d8 cis8 b8 a8 g8 fis8 r8 fis8 | % bar 19
    b8 a8 g8 fis8 e8 d8 cis8 a8 | % bar 20
    d8 r8 cis8 r8 b8 r8 fis8 r8 | % bar 21
    g8 r8 a8 r8 d,8 d'8 fis8 d8 | % bar 22
    r8 b8 d8 b8 d,4 r4 | % bar 23
    r8 cis'8 e8 cis8 e,4 r4 | % bar 24
    r8 d'8 fis8 d8 r8 b8 e,8 e'8 | % bar 25
    a8 gis8 fis8 e8 dis8 fis8 b,8 dis8 | % bar 26
    e8 e,8 fis8 gis8 a8 d8 e8 e,8 | % bar 27
    fis4 r4 cis'4 r8 a'8 | % bar 28
    d,8 cis8 d8 e8 cis8 a8 e8 e'8 | % bar 29
    a8 gis8 fis8 e8 d8 cis8 r8 cis8 | % bar 30
    fis8 e8 d8 cis8 b8 a8 gis8 e8 | % bar 31
    a8 r8 gis8 r8 fis8 r8 cis'8 r8 | % bar 32
    d8 fis8 d8 b8 e8 gis8 e8 cis8 | % bar 33
    fis8 a8 fis8 d8 gis4 r8 e8 | % bar 34
    fis8 d8 e8 e,8 a4 r4 | % bar 35
    R1 | % bar 36
    r8 fis8 gis8 ais8 b8 cis8 d8 cis8 | % bar 37
    b8 b'8 ais8 b8 fis8 gis8 ais8 fis8 | % bar 38
    b8 d,8 cis8 b8 ais16 d16 cis16 b16 ais16 gis16 fis16 e16 | % bar 39
    d4 r8 fis8 gis4 r8 ais8 | % bar 40
    b4 r8 cis8 d4 r8 fis8 | % bar 41
    b8 a8 g?8 fis8 eis8 cis8 r8 cis8 | % bar 42
    fis8 b8 cis8 cis,8 fis8 gis8 a8 fis8 | % bar 43
    b8 r8 a8 r8 gis8 r8 fis8 r8 | % bar 44
    b,8 r8 a8 r8 gis8 r8 fis8 cis'8 | % bar 45
    d8 b8 cis8 cis8 fis,4 r4 | % bar 46
    r2 r4 r8 d'8 | % bar 47
    d8 fis8 fis8 a8 a8 d8 d8 a8 | % bar 48
    d8 cis8 b8 a8 g8 fis8 r16 fis16 g16 a16 | % bar 49
    d,4 r16 d16 e16 fis16 g4 r16 e16 fis16 g16 | % bar 50
    cis,4 r16 a16 b16 cis16 d4 r16 d16 e16 fis16 | % bar 51
    g4 r16 e16 fis16 g16 a4 r16 fis16 g16 a16 | % bar 52
    b8 a8 b8 gis8 a8 g8 fis8 e8 | % bar 53
    d8 e8 d8 cis8 b8 b'8 a8 g8 | % bar 54
    fis8 e8 d8 e8 fis8 a8 b8 cis8 | % bar 55
    d8 cis8 b8 a8 g8 fis8 r8 fis8 | % bar 56
    b8 a8 g8 fis8 e8 d8 cis8 a8 | % bar 57
    d8 r8 cis8 r8 b8 r8 fis8 r8 | % bar 58
    g8 b8 g8 e8 a8 cis8 a8 fis8 | % bar 59
    b8 d8 b8 g8 cis4 r8 cis8 | % bar 60
    d8 b8 g8 a8 d,4\fermata r4 | % bar 61
    r8 b'16 ais16 b8 cis8 d8 g8 fis8 e8 | % bar 62
    d8 cis16 b16 e8 e,8 b'8 cis8 d8 b8 | % bar 63
    e8 g8 fis8 a8 g8 fis8 e8 fis8 | % bar 64
    g8 e8 dis8 b8 e8 dis16 b16 e8 d8 | % bar 65
    c8 b8 a8 g8 a8 g8 fis8 e8 | % bar 66
    dis4 r8 dis'8 e8 c8 a8 b8 | % bar 67
    g8 fis8 g8 e8 a4 r8 b8 | % bar 68
    c8 b8 c8 b8 c4 r8 a8 | % bar 69
    e'8 d8 c8 b8 a8 g8 fis8 e8 | % bar 70
    dis8 g8 a8 fis8 b4 r8 b'8 | % bar 71
    c8 a8 b8 b,8 e8 fis8 g8 e8 | % bar 72
    a8 r8 g8 r8 fis8 r8 e8 r8 | % bar 73
    a,8 r8 g8 r8 fis8 r8 e8 b'8 | % bar 74
    c8 a8 b8 b8 e,4 r8 e'8 | % bar 75
    fis8 e8 dis8 b8 e8 d8 cis8 a8 | % bar 76
    d8 cis8 d8 b8 cis8 eis8 fis8 cis8 | % bar 77
    d8 gis,8 a8 fis8 r8 d'8 e8 fis8 | % bar 78
    g8 a8 b8 g8 d8 c8 b8 a8 | % bar 79
    g8 a8 b8 g8 c8 b16 a16 b8 g'8 | % bar 80
    c,8 b8 a8 g8 c8 d8 e8 fis8 | % bar 81
    g8 fis8 e8 d8 c8 b8 fis8 d8 | % bar 82
    g8 c8 d8 d,8 g8 b8 c8 b8 | % bar 83
    a8 c8 d8 fis8 g8 e8 c8 d8 | % bar 84
    g,8 g'8 fis8 e8 dis4 r8 b8 | % bar 85
    e8 d8 cis8 b8 ais8 b8 fis'8 gis8 | % bar 86
    ais8 r8 gis8 ais8 b8 r8 ais8 b8 | % bar 87
    cis8 r8 ais8 fis8 b8 a8 gis8 e8 | % bar 88
    a8 fis8 dis8 b8 e r8 fis8 r | % bar 89
    g8 r8 ais,8 r8 b8 d8 e8 cis8 | % bar 90
    fis8 fis,8 b8 cis8 d8 g8 e8 fis8 | % bar 91
    b,8 d8 d8 fis8 fis8 a8 a8 c8 | % bar 92
    c8 a8 fis8 b8 g8 b16 a16 g16 fis16 e16 dis16 | % bar 93
    e8 b8 b8 g8 g8 e8 e8 e'8~ | % bar 94
    e8 d8 cis8 b8 fis8 gis8 ais8 b8 | % bar 95
    fis4 r4 fis4 r4 | % bar 96
    fis'8 fis8 dis8 dis8 b8 b8 g8 g8 | % bar 97
    e'8 e8 cis8 cis8 a8 a8 fis8 d'8 | % bar 98
    g8 fis8 e8 g8 ais,8 fis8 b8 gis8 | % bar 99
    ais8 fis8 b8 gis8 ais8 fis8 d'8 b8 | % bar 100
    fis8 ais8 ais8 cis8 cis8 e8 e8 ais,8 | % bar 101
    b8 e8 fis8 fis,8 b4 r8 dis8 | % bar 102
    e8 r8 d8 r8 cis8 r8 b8 r8 | % bar 103
    e8 r8 d8 r8 cis8 r8 b8 b8 | % bar 104
    cis8 r8 dis8 r8 e4 r8 cis8 | % bar 105
    d8 r8 e8 r8 fis4 r8 d8 | % bar 106
    e8 r8 fis8 r8 g4 r16 g16 e16 cis16 | % bar 107
    fis,1~^"tasto solo" | % bar 108
    fis1 ~  | % bar 109
    fis1 ~  | % bar 110
    fis2 ~  fis8 ais'8 b8 g8 | % bar 111
    d8 e8 fis8 fis,8 b4.
}
\mvtItimeLine
>>


mvtIfigs = <<
\new FiguredBass \figuremode {
    % p3
    s8 |
    s1*2 |
    s8 <6> <6> <6> <6> <6> s <5> |

    <7> s <6> <6> <6> <6> <6> <7> |
    s4 <6> <7> <6> |
    s <6> <5> <6> |
    <5> <6> <6 5> s8 <7> |

    % p4
    <5> <6 5> <4> <3> s2 |
    s2.. <6\\>8 |
    <6> <6 5> <6 4> <6 4\+> <6>4 <6> |
    <6>4. <6 5>8 s4 <6> |

    s <6 5> s <6> |
    <6> s <6\\> s8 <7 _+> |
    s <6> <6> <6 _+> <6> <6> s4 |
    <6 4\+ 2>8 <6\\> <6 5>4 <6 4\+ 2> s8 <6 5> |

    s4 <7 5>8 <_+> s4 <7 5 2> |
    s s8 <7 4 2> <6>4 s |
    <7 5>4. <6>8 s2 |
    s8 <6> <6> <6> <6> <6> s <7> |

    % p5
    <7>8 s <6> <6> <6> <6> <6> <7> |
    s4 <6> s <6 5!> |
    s <7 3> s2 |
    s4 <6> <6 4\+ 2> s |

    s8 <6> s4 <6 4 2> s |
    s8 <6> s4 s8 <6\\> <7 _+> s |
    <4>4 <5> <6 5> <7 _+> |
    <_+> <6>8 <6 5> <9> <7 5> <4> <_+> |

    <5>4 s <6> s |
    s8 <6> <6 5> <_+> <6> s <6 4> <5 _+> |
    s <6> <6> <6 _+> <6> <6> s <6> |
    <7 5> s <6> <6> <6\\> <6 4 2> <6 5> <7 _+> |

    % p6
    s4 <6> <7 5> <6> |
    <5> <6> <5 _+> <6 _+> |
    <5> <6> <6 5> s8 <7 _+> |
    <5> <7 5> <4> <_+> s2 |

    s1 |
    s8 <_+> <7> <6 5> s <6\\> <6> <6\\> |
    s4 <6 5> <_+> <6>8 <7 _+> |
    s <6> <6\\> s <6>4 <6>8 <_+> |

    <6>4 s8 <6 _+> <7 5>4 s8 <6 5> |
    s4. <6\\>8 <6>4. <7 _+>8 |
    s4 <6 4\+ 3> <6 5> s8 <7 _+> |
    <7 5>4 <_+> s <6> |

    % p7
    s4 <6> <7> <5> |
    s <6> <7>8 <6\\> s <7 _+> |
    <5> <7 5> <_+>4 s2 |
    s1 |

    s8 <6> s <6 4> s2 |
    s8 <6> <6> <6> <6> <6> <6 5->4 |
    <7-> <7-> s <5> |
    <6 5> s2. |

    <7 5>4 <6> <7 5> <6> |
    <7> <6\\>8 <6 5> s <6 4 2> <6> <6> |
    s2 <5>4 <6 4 2> |
    <6>8 <6> s <6> <6> <6 4> <7 5> <6 5> |

    % p8
    s <6> <6> <6> <6> <6> s4 |
    <7 5> <6>8 <6> <6> <6 4> <6 5> s |
    s4 <6> <5> <6>8 <5-> |
    <5>4 <6> <5> <6> |

    <5> <6> <6 5> s8 <6 5> |
    <9> <5> <6 5> s s2 |
    s4 <6>8 <6\\ 5-> <6> <6> <6 4> <6 4\+ 2> |
    <6> s <9> <8> <4> s <6> s |

    <6 5>4 <6\\> <6>8 <6\\> s <6\\> |
    <6> s <6> <7 _+> s <6> s <6 4 2> |
    <6> <6 4> <6 4\+ 2> <6> <6-> <6> <6\\ 5-> <6 4> |
    <7- 5->4 s8 <6 5> <9> s <6 5> <_+> |

    % p9
    <6>4 <6> <_-> s8 <6 4> |
    <6 4 3> <6 4> <6 4 3> <6 4> <7 5>4 s8 <6 4\+ 2> |
    <5>4 <6>8 <6> <6 4\+> <6> <6\\> s |
    <6> <6> <6> <7> <_+>4 s8 <7 _+> |

    <5> <7 5> <_+> s s4 <6> |
    <_!> <6> <6\\> s |
    <_!> <6> <6\\> s8 <7 5 _+> |
    <5> <7 5> <_+> s s4 s8 <7 5> |

    <_+>4 <6 5-> <9 _+> <6 5> |
    <9> <8 6> <7 _+>8 <6 5> s <7 5 _+> |
    <5> <6\\ 5-> <6>4 <7-> s8 <6 5-> |
    <9>4 <6> s <6>8 <6> |

    % p10
    s4 <6> s8 <6> <6>4 |
    s8 <6> s <7-> s <6 4> <6 5> s |
    s <6> <6> <6 4> <6 4 2> <6> <6 5-> <7-> |
    s <7 5> s4 s8 <6> <5>4 |

    <5>8 <6> s <6 5-> <9>4 <6 5> |
    s <6\\>8 <5> <7- 5>4 s8 <7 _+> |
    s <6 4 2> <6\\ 5->4 <6 4> <_+> |
    <6> <7>8 <6 5> s4 <6> |

    <6\\> <6 5>8 <7 _+> <9 _+>4 <6 5-> |
    <9>8 <5> <6 5> <7 _+> s4 <7 _+> |
    <6> <6 5> s8 <6> <9> <7 5> |

    % p11
    <7 _+>4 s8 <6\\> s <5> <6 5> <_+> |
    s2 <6 4> |
    <6 4\+ 2>4 <6\\> <6>8. <6 4\+>16 <6>8 <5 2> |
    s4 <6 4> <6> s |

    <6 4\+ 2>8 <6> <6\\>4 <_+> <6> |
    <_+> s <_+> s |
    <6\\ 5-> <7- 5-> <7 _+> <6> |
    <6 5-> <7- 5-> <7> <6> |

    <6>8 <6> <6> <6> <6 5> s s <7 5> |
    <6>4 <5>8 <7> <6>4 s |
    <7 _+> <6 5> <6\\> <6 4\+ 2> |

    % p12
    s8 <7 5> <6 4> <_+> s4 s8 <6> |
    s4 <6> <6\\> s |
    s <6> <6\\> s |
    <7 5> <5-> s s8 <6\\> |

    <6>4 <7 5> <_+> s |
    <7> <5-> <5> <6> |
    <7 _+>1 |

    s1*2 |
    s2 s8 <6 5> s <6> |
    <6> <6 5> <6 4> <5 _+> s4.
}
\mvtItimeLine
>>

mvtIbreaksBGA = {
    s8^"BGA breaks left in" |
    s1*3
    \break
    s1*4 |
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 |
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 |
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 |
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 |
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 |
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*4 |
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*3 |
    \pageBreak
    s1*4
    \break
    s1*4
    \break
    s1*3 |
    \pageBreak
    s1*4
    \break
    s1*3
    \break
    s1*3 |
    s2..
    \bar "||"
}

mvtIbreaksAutograph = {
    s8^"Autograph breaks left in" |
    s1*4 | %4
    s2. \bar "" \break s4 | %5
    s1*4 | %9
    s2 \bar "" \break s2 | %10
    s1*3 | %13
    s2 \bar "" \pageBreak

    s2 | %14
    s1*4 | %18
    s2 \bar "" \break s2 | %19
    s1*4 | %23
    s2 \bar "" \break s2 | %24
    s1*4 | %28
    s2 \bar "" \pageBreak

    s2 | %29
    s1*4 | %33
    \break
    s1*4 | %37
    s2 \bar "" \break s2 | %38
    s1*4 | %42
    \pageBreak

    s1*5 | %47
    \break
    s1*5 | %52
    \break
    s1*4 | %56
    s2 \bar "" \pageBreak

    s2 | %57
    s1*4 | %61
    \break
    s1*5 | %66
    \break
    s1*4 | %70
    s2 \bar "" \pageBreak

    s2 | %71
    s1*4 | %75
    \break
    s1*4 | %79
    s2 \bar "" \break s2 | %80
    s1*4 | %84
    \pageBreak

    s1*4 | %88
    s2 \bar "" \break s2 | %89
    s1*4 | %93
    \break
    s1*4 | %97
    \pageBreak

    s1*5 | %102
    \break
    s1*4 | %106
    s2 \bar "" \break s2 | %107
    s1*4 | %111
    s2..
    \bar "||"
}
