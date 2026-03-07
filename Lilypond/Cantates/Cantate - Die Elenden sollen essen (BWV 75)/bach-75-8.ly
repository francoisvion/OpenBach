\version "2.17.20"

\include "common.ly"


mvtVIIItimeLine = {
    s1*52
    \bar ""
    s1
    \bar "|."
}

mvtVIIItromba = <<
\relative c'' {
    \commonMusic

    \transposition g

    \key c \major
    R1*7 | % bar 1
    r4^\markup{\bold\upright{"Melodie: \"Was Gott thut, das ist wohlgethan\""}} g c d | % bar 8
    e a g4. f8 | % bar 9
    e1~ | % bar 10
    e2 r | % bar 11
    R1*3 | % bar 12
    r2 r4 a4 | % bar 15
    g4. f8 e4 e4 | % bar 16
    d2 c2~ | % bar 17
    c1 | % bar 18
    R1 | % bar 19
    r4 g4 c4 d4 | % bar 20
    e4 a4 g4. f8 | % bar 21
    e1 ~  | % bar 22
    e2 r2 | % bar 23
    R1*3 | % bar 24
    r2 r4 a4 | % bar 27
    g4. f8 e4 e4 | % bar 28
    d2 c2 ~  | % bar 29
    c1 | % bar 30
    R1*7 | % bar 31
    r2 r4 g'4 | % bar 38
    a4 a4 d,4 d4 | % bar 39
    g4 g4 c,4 e4 | % bar 40
    d4 c4 b4 b4 | % bar 41
    a2 g2~ | % bar 42
    g1 | % bar 43
    R1*3 | % bar 44
    r2 r4 g'4 | % bar 47
    a4 g4 f4 e4 | % bar 48
    d2 c2 ~  | % bar 49
    c1 ~  | % bar 50
    c1 ~  | % bar 51
    c\breve-\parenthesize\fermata | % bar 52
}
\mvtVIIItimeLine
>>


mvtVIIIvlnI = <<
\relative c'' {
    \commonMusic

    \key g \major
    r8 g8 g8 g8 e'8 fis16 g16 a fis g16 a16 | % bar 1
    d,8 e16 fis16 g4 ~  g4 fis4 | % bar 2
    g4 ~  g16 e16 fis16 g16 a16 fis16 g16 a16 b16 g16 a16 b16 | % bar 3
    e,8 cis d2 cis4 | % bar 4
    d16 cis16 d16 e16 fis16 d16 e16 fis16 g16 e16 fis16 g16 fis16 d16 e16 fis16 | % bar 5
    g16 e16 fis16 g16 a16 fis16 g16 a16 d,8 e16 fis16 g16 e16 fis16 g16 | % bar 6
    c,2 ~  c16 e16 d16 c16 b16 d16 c16 b16 | % bar 7
    a16 g a b c a b c b g a b a fis g a | % 8
    g8 b'~ b a16 g a g fis g a fis g a | % 9
    d,8 g~ g fis16 e fis e dis e fis dis e fis | % 10
    b,8 cis16 dis e2 dis4 |
    e4 r4 r2 | % bar 12
    r8 e,8 e8 e8 c'8 d16 e16 f16 d16 e16 f16 | % bar 13
    b,16 b16 c16 d16 e16 c16 d16 e16 a,4 a'4~  | % bar 14
    a4 gis4 a8\noBeam a, a a | % bar 15
    d16 e fis g a fis g a d,8 e16 fis16 g4 ~  | % bar 16
    g4 fis4 g16 a,16 b16 c16 d16 b16 c16 d16 | % bar 17
    e16 c16 d16 e16 d16 b16 c16 d16 e16 c16 d16 e16 f4~ | % bar 18
    f4 e4 fis4 g4 ~  | % bar 19
    g4 fis4 g16 b,16 c16 d16 c16 a16 b16 c16 | % bar 20
    b8 b'8~ b8 a16 g16 a16 g16 fis16 g16 a16 fis16 g16 a16 | % bar 21
    d,8 g8 ~  g8 fis16 e16 fis16 e16 dis16 e16 fis16 dis16 e16 fis16 | % bar 22
    b,8 cis16 dis16 e2 dis4 | % bar 23
    e4 r4 r2 | % bar 24
    r8 e,8 e8 e8 c'8 d16 e16 f16 d16 e16 f16 | % bar 25
    b,16 b16 c16 d16 e16 c16 d16 e16 a,4 a'4~  | % bar 26
    a4 gis4 a8\noBeam a,8 a8 a8 | % bar 27
    d16 e16 fis16 g16 a16 fis16 g16 a16 d,8 e16 fis16 g4 ~  | % bar 28
    g4 fis4 g16 fis16 g16 a16 b16 g16 a16 b16 | % bar 29
    c16 a16 b16 c16 b16 g16 a16 b16 c16 a16 b16 c16 d16 b16 c16 d16 | % bar 30
    g,8 a16 b16 c2 b4 ~  | % bar 31
    b16 e,16 fis16 gis16 a2 g4 ~  | % bar 32
    g16 cis,16 dis16 e16 fis2 e4~ | % bar 33
    e4 dis4 e2 ~  | % bar 34
    e16 d16 e16 fis16 g16 e16 fis16 g16 cis,16 b16 cis16 d16 e16 cis16 d16 e16 | % bar 35
    fis16 d16 e16 fis16 e16 cis16 d16 e16 fis16 d16 e16 fis16 g4~ | % bar 36
    g4 fis4 e2 | % bar 37
    d16 e16 fis16 g16 a16 fis16 g16 a16 d,8 d8 g8 f8 | % bar 38
    e16 e16 fis16 g16 a16 fis16 g16 a16 d,8 a8 d4~ | % bar 39
    d16 d16 e16 fis16 g16 fis16 g16 a16 b16 a16 g16 fis16 e4~ | % bar 40
    e16 d16 cis16 d16 e16 cis16 d16 e16 a,8 d,8 d'4 ~  | % bar 41
    d4 cis4 d16 cis16 d16 e16 fis16 d16 e16 fis16 | % bar 42
    g16 e16 fis16 g16 fis16 d16 e16 fis16 g16 e16 fis16 g16 a16 fis16 g16 a16 | % bar 43
    d,8 e16 fis16 g4 ~  g16 fis16 g16 a16 b16 g16 a16 b16 | % bar 44
    e,8 fis16 gis16 a4 ~  a16 gis16 a16 b16 c16 a16 b16 c16 | % bar 45
    fis,16 fis16 g16 a16 b16 g16 a16 b16 e,16 e16 fis16 g16 a16 fis16 g16 a16 | % bar 46
    d,8 e16 fis16 g4 ~  g4 fis4 | % bar 47
    g16 b16 a16 g16 fis16 g16 a16 b16 c8 a8 d,8 g8 | % bar 48
    e8 c8 a8 d8 g,8 d'8 ~  d8 c8 | % bar 49
    b8 f'8 ~  f8 e8 d16 fis,!16 g16 a16 b16 g16 a16 b16 | % bar 50
    c16 a16 b16 c16 b16 g16 a16 b16 c16 a16 b16 c16 d16 b16 c16 d16 | % bar 51
    g,8 a16 b16 c2 b8 a8 | % bar 52
    b1\fermata | % bar 53
}
\mvtVIIItimeLine
>>


mvtVIIIvlnII = <<
\relative c' {
    \commonMusic

    \key g \major
    R1 | % bar 1
    r8 d8 d8 d8 a'8 b16 c16 d16 b16 c16 d16 | % bar 2
    g,8 a16 b16 c4 ~  c4 b4 | % bar 3
    a4 ~  a16 fis16 g16 a16 b16 g16 a16 b16 e,16 a16 g16 a16 | % bar 4
    fis16 e16 fis16 g16 a16 fis16 g16 a16 b16 g16 a16 b16 a16 fis16 g16 a16 | % bar 5
    b16 g16 a16 b16 c4 ~  c8 b16 a16 b4~ | % bar 6
    b16 g16 a16 b16 c16 a16 b16 c16 fis,8 d8 r8 g8 | % bar 7
    e c a d g,16 b c d c a b c | % 8
    d8 d'~ d c16 b c8 c~ c b16 a | % 9
    b8 b~ b a16 g a8 a~ a g16 fis | % 10
    g fis g a b g a b c a b c fis, b a b | % 11
    g8\noBeam b,8 b8 b8 g'8 a16 b16 c16 a16 b16 c16 | % bar 12
    fis,8 g16 a16 b2 a4 ~  | % bar 13
    a4 gis4 a8 e'8 c8 a8 | % bar 14
    d16 e16 d16 c16 b16 e16 d16 e16 c16 b16 c16 d16 e16 c16 d16 e16 | % bar 15
    a,8 c8 b8 a8 g4 r8 g8 | % bar 16
    a4 r8 d8 d16 fis,16 g16 a16 b16 g16 a16 b16 | % bar 17
    c16 a16 b16 c16 b16 g16 a16 b16 c16 a16 b16 c16 d16 b16 c16 d16 | % bar 18
    g,8 a16 b c4 ~  c4 b4 | % bar 19
    a2 g16 g16 a16 b16 a16 fis16 g16 a16 | % bar 20
    g8 d'8 ~  d8 c16 b16 c8 c8 ~  c8 b16 a16 | % bar 21
    b8 b8 ~  b8 a16 g16 a8 a8 ~  a8 g16 fis16 | % bar 22
    g16 fis16 g16 a16 b16 g16 a16 b16 c16 a16 b16 c16 fis,16 b16 a16 b16 | % bar 23
    \tiny g8\noBeam \normalsize b,8 b8 b8 g'8 a16 b16 c16 a16 b16 c16 | % bar 24
    fis,8 g16 a b2 a4 ~  | % bar 25
    a4 gis4 a8 e'8 c8 a8 | % bar 26
    d16 e16 d16 c16 b16 e16 d16 e16 c16 b16 c16 d16 e16 c16 d16 e16 | % bar 27
    a,8 c8 b8 a8 g4 r8 g8 | % bar 28
    a4 r8 d8 d16 a16 b16 c16 d16 b16 c16 d16 | % bar 29
    e16 c16 d16 e16 d16 b16 c16 d16 e16 c16 d16 e16 f4~ | % bar 30
    f4 e4 d2 | % bar 31
    c2 b2 | % bar 32
    a2 ~  a16 c16 b16 a16 g16 b16 a16 g16 | % bar 33
    fis16 e16 fis16 g16 a16 fis16 g16 a16 g8\noBeam g'8 g8 g8 | % bar 34
    a,2 ~  a16 gis16 a16 b16 cis16 a16 b16 cis16 | % bar 35
    d16 b16 cis16 d16 cis16 a16 b16 cis16 d16 b16 cis16 d16 e16 cis16 d16 e16 | % bar 36
    a,4 d2 cis4 | % bar 37
    d8\noBeam d,8 d8 d8 b'16 a16 b16 c16 d16 b16 c16 d16 | % bar 38
    g,8 d'8 c8 b8 a16 g16 fis16 g16 a16 fis16 g16 a16 | % bar 39
    b8 c8 b8 a8 g16 fis16 g16 a16 b16 g16 a16 b16 | % bar 40
    e,4 r4 r16 fis16 g16 a16 b16 g16 a16 b16 | % bar 41
    e,16 e16 fis16 g16 a16 b16 a16 g16 fis16 e16 fis16 g16 a16 fis16 g16 a16 | % bar 42
    b16 g16 a16 b16 a16 fis16 g16 a16 b16 g16 a16 b16 c4 ~  | % bar 43
    c4 b8 e8 cis8 d16 e16 fis8 d8 | % bar 44
    b8 e8 c8 a8 d8 e16 f16 e8 c8 | % bar 45
    a16 a16 b16 c16 d16 b16 c16 d16 g,4 r8 e'8 | % bar 46
    a,8 d8 b8 g8 c16 d16 c16 b16 a16 d16 c16 d16 | % bar 47
    b8 c8 d8 e16 fis16 g8 a8 b8 b,8 | % bar 48
    c4 ~  c16 a16 b16 c16 b16 g16 a16 b16 e,4 | % bar 49
    r8 b'8 g8 c8 b16 a,16 b16 c16 d16 b16 c16 d16 | % bar 50
    e16 c16 d16 e16 d16 b16 c16 d16 e16 c16 d16 e16 f4 ~  | % bar 51
    f4 e4 d2~ | % bar 52
    d1\fermata | % bar 53
}
\mvtVIIItimeLine
>>


mvtVIIIvla = <<
\relative c' {
    \commonMusic

    \key g \major
    \clef C
    R1*2 | % bar 1
    r8 g8 g8 g8 d'8 e16 fis16 g16 e16 fis16 g16 | % bar 3
    cis,8 g'8 fis8 a,8 g8 fis'8 e8 a,8 | % bar 4
    a8 d8 d8 d8 r8 d8 d8 d8 | % bar 5
    r8 d'8 c16 b16 a16 g16 fis16 e16 d16 c16 d16 g16 a16 b16 | % bar 6
    g4~ g8 e8 fis8 g16 a16 d,8 e8 | % bar 7
    c8 a d4~ d8 g~ g fis | % 8
    g fis e a d, a' fis d | % 9
    g16 a b c d b c d fis,8 fis dis b | % 10
    e\noBeam b b b fis'16 a g fis b8 b | % 11
    b16 fis16 g16 a16 b16 g16 a16 b16 e,16 e16 fis16 g16 a16 fis16 g16 a16 | % bar 12
    dis,16 dis16 e16 fis16 e16 d16 c16 b16 a4 r4 | % bar 13
    r16 e'16 d16 c16 b8 b'8 e,16 e16 f16 gis16 a8 c,8 | % bar 14
    f8 b,8 e8 e8 e4 r8 e8 | % bar 15
    fis8 a8 g8 fis8 b16 a, b c d16 b16 c16 d16 | % bar 16
    e16 c16 d16 e16 a,16 d16 c16 d16 b8\noBeam g8 g8 g8 | % bar 17
    r8 g8 g8 g8 r8 g8 g8 g8 | % bar 18
    e'8 fis16 g16 a16 fis16 g16 a16 d,16 fis16 g16 a16 b16 g16 a16 b16 | % bar 19
    c8 b8 a8 d8 b8\noBeam g,8 g8 g8 | % bar 20
    g'8 fis8 e8 a8 d,8 a'8 fis8 d8 | % bar 21
    g16 a16 b16 c16 d16 b16 c16 d16 fis,8 fis8 dis8 b8 | % bar 22
    e8\noBeam b8 b8 b8 fis'16 a16 g16 fis16 b8 b8 | % bar 23
    \tiny b16\noBeam \normalsize fis16 g16 a16 b16 g16 a16 b16 e,16 e16 fis16 g16 a fis g a | % bar 24
    dis,16 dis16 e16 fis16 e16 d16 c16 b16 a4 r4 | % bar 25
    r16 e'16 d16 c16 b8 b'8 e,16 e16 fis16 gis16 a8 a,8 | % bar 26
    f'8 b,8 e8 e8 e4 r8 e8 | % bar 27
    fis8 a8 g8 fis8 b16 a,16 b16 c16 d16 b16 c16 d16 | % bar 28
    e16 c16 d16 e16 a,16 d16 c16 d16 b8\noBeam g8 g8 g8 | % bar 29
    r8 g8 g8 g8 r8 g8 g8 g8 | % bar 30
    d'8 e16 f16 g16 e16 fis16 g16 a16 fis16 gis16 a16 b16 gis16 a16 b16 | % bar 31
    e,4 ~  e16 fis16 dis16 e16 fis16 dis16 e16 fis16 g16 e16 fis16 g16 | % bar 32
    cis,8 c'16 b16 c16 a16 b16 c16 dis,4 e16 g16 fis16 e16 | % bar 33
    c'16 b16 a16 g16 fis8 b8 b8\noBeam b8 b8 b8 | % bar 34
    e,8 g8 e8 cis8 a8\noBeam a8 a8 a8 | % bar 35
    r8 a8 a8 a8 r8 a8 a8 a8 | % bar 36
    cis8 d16 e16 fis16 d16 e16 fis16 b,16 a'16 g16 fis16 e16 a16 g16 a16 | % bar 37
    fis8 r8 r4 r8 b,8 b8 b8 | % bar 38
    g'8 a16 b16 c16 a16 b16 c16 d4 r8 d8 | % bar 39
    g,16 fis16 g16 a16 b16 d,16 e16 fis16 g8 b8 g8 e8 | % bar 40
    a8 a,8 a'4 ~  a16 g16 fis16 e16 d8 fis8 | % bar 41
    b16 a16 g16 fis16 e8 a,8 a8\noBeam d8 d8 d8 | % bar 42
    r8 d8 d8 d8 r8 d'8 c16 b16 a16 g16 | % bar 43
    fis8 a8 g16 e16 fis16 g16 a8 g8 fis8 fis8 | % bar 44
    gis8 b8 a8 c8 b8 a8 gis8 e8 | % bar 45
    c16 c16 d16 e16 fis16 d16 e16 fis16 b,16 b16 c16 d16 e16 a,16 b16 c16 | % bar 46
    fis,8 a8 e'4 ~  e16 c16 d16 e16 fis16 b16 a16 b16 | % bar 47
    e,8 a8 ~  a8 g16 fis16 e8 d8 d8 d8 | % bar 48
    a'8 b16 c16 d4 ~  d16 d,16 e16 f16 g16 e16 f16 g16 | % bar 49
    f16 d16 e16 f16 b,8 g'8 g8\noBeam g,8 g8 g8 | % bar 50
    r8 g8 g8 g8 r8 g8 g8 g8 | % bar 51
    d'8 e16 f16 g16 \once \set suggestAccidentals = ##t fis16 g16 a16 d,4 e8 fis!8 | % bar 52
    g1\fermata | % bar 53
}
\mvtVIIItimeLine
>>


mvtVIIIbasso = <<
\relative c {
    \commonMusic

    \key g \major
    \clef F
    g4 b4 c4 c'4 ~  | % bar 1
    c16 fis,16 g16 a16 b16 g16 a16 b16 c8 a8 d8 d,8 | % bar 2
    e8 d8 e8 c8 fis8 d8 g4~ | % bar 3
    g16 cis,16 d16 e16 fis16 d16 e16 fis16 g16 e16 fis16 g16 a8 a,8 | % bar 4
    d4 r4 d4 r4 | % bar 5
    d4 r4 r8 g,8 g8 g8 | % bar 6
    e'8 fis16 g16 a16 fis16 g16 a16 d,8 e16 fis16 g4~ | % bar 7
    g fis g8\noBeam g, g g | % 8
    g16 g' a b c a b c fis,8 d e fis | % 9
    g16 fis g a b g a b dis,8 b cis dis | % 10
    e16 dis e fis g e fis g a fis g a b8 b, | % 11
    e4 d4 c8 b8 a4 ~  | % bar 12
    a4 gis4 a16 a'16 b16 c16 d16 b16 c16 d16 | % bar 13
    e8\noBeam e,,8 e8 e8 c'8 d16 e16 f16 d16 e16 f16 | % bar 14
    b,8 c16 d16 e8 e,8 a16 gis'16 a16 b16 c16 a16 b16 c16 | % bar 15
    fis,8 d8 e8 fis8 g16 fis16 g16 a16 b16 g16 a16 b16 | % bar 16
    c16 a16 b16 c16 d8 d,8 g,4 r4 | % bar 17
    g4 r4 g4 r4 | % bar 18
    r2 r8 d'8 d8 d8 | % bar 19
    a'8 b16 c16 d16 b16 c16 d16 g,4 r4 | % bar 20
    r16 g16 a16 b16 c16 a16 b16 c16 fis,8 d8 e8 fis8 | % bar 21
    g16 fis16 g16 a16 b16 g16 a16 b16 dis,8 b8 cis8 dis8 | % bar 22
    e16 dis16 e16 fis16 g16 e16 fis16 g16 a16 fis16 g16 a16 b8 b,8 | % bar 23
    e4 d4 c8 b8 a4~ | % bar 24
    a4 gis4 a16 a'16 b16 c16 d16 b16 c16 d16 | % bar 25
    e8\noBeam e,,8 e8 e8 c'8 d16 e16 f16 d16 e16 f16 | % bar 26
    b,8 c16 d16 e8 e,8 a16 gis'16 a16 b16 c16 a16 b16 c16 | % bar 27
    fis,8 d8 e8 fis8 g16 fis16 g16 a16 b16 g16 a16 b16 | % bar 28
    c16 a16 b16 c16 d8 d,8 g,4 r4 | % bar 29
    g4 r4 g4 r4 | % bar 30
    r16 b'16 c16 d16 e16 c16 d16 e16 fis,4 gis4 | % bar 31
    a16 gis16 a16 b16 c16 a16 b16 c16 dis,4 e4 | % bar 32
    fis16 e16 fis16 g16 a16 fis16 g16 a16 b,8 b'8 c8 g8 | % bar 33
    a8 fis8 b8 b,8 e16 dis16 e16 fis16 g16 e16 fis16 g16 | % bar 34
    cis,16 b16 cis16 d16 e16 cis16 d16 e16 a,4 r4 | % bar 35
    a4 r4 a4 r4 | % bar 36
    r16 a'16 b16 cis16 d16 b16 cis16 d16 g,8 e8 a8 a,8 | % bar 37
    d8 e8 fis8 c8 g'8 f8 e8 d8 | % bar 38
    c8 b8 a8 g8 fis?16 a16 d16 e16 fis16 d16 e16 fis16 | % bar 39
    b,8 a8 g8 fis8 e16 b'16 e16 fis16 g16 e16 fis16 g16 | % bar 40
    cis,16 e16 a16 b16 cis16 a16 b16 cis16 d8 cis8 b8 a8 | % bar 41
    g8 e8 a8 a,8 d4 r4 | % bar 42
    d4 r4 d4 r4 | % bar 43
    r16 b16 c16 d16 e16 cis16 d16 e16 a,8 b16 cis16 d4~ | % bar 44
    d16 c16 d16 e16 f16 d16 e16 f16 b,8 c16 d16 e4~ | % bar 45
    e8 a,8 d4 ~  d16 g,16 a16 b16 c4 ~  | % bar 46
    c16 b16 c16 d16 e16 c16 d16 e16 a,8 b16 c16 d4~ | % bar 47
    d8 c8 ~  c16 b16 c16 d16 e16 d16 e16 fis16 g16 e16 fis16 g16 | % bar 48
    c,16 c16 d16 e16 f4 ~  f16 b,16 c16 d16 e16 c16 d16 e16 | % bar 49
    d16 b16 c16 d16 e16 c16 d16 e16 g,4 r4 | % bar 50
    g4 r4 g4 r4 | % bar 51
    r16 b16 c16 d16 e16 d16 e16 fis16 g2 | % bar 52
    g,1\fermata | % bar 53
}
\mvtVIIItimeLine
>>
