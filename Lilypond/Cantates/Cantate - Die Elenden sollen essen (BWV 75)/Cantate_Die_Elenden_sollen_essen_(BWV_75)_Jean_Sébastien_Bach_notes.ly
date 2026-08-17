\version "2.24.0"
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
    R1*7 |
    r4^\markup{\bold\upright{"Mélodie : \"Was Gott thut, das ist wohlgethan\""}} g c d |
    e a g4. f8 |
    e1~ |
    e2 r |
    R1*3 |
    r2 r4 a4 |
    g4. f8 e4 e4 |
    d2 c2~ |
    c1 |
    R1 |
    r4 g4 c4 d4 |
    e4 a4 g4. f8 |
    e1 ~  |
    e2 r2 |
    R1*3 |
    r2 r4 a4 |
    g4. f8 e4 e4 |
    d2 c2 ~  |
    c1 |
    R1*7 |
    r2 r4 g'4 |
    a4 a4 d,4 d4 |
    g4 g4 c,4 e4 |
    d4 c4 b4 b4 |
    a2 g2~ |
    g1 |
    R1*3 |
    r2 r4 g'4 |
    a4 g4 f4 e4 |
    d2 c2 ~  |
    c1 ~  |
    c1 ~  |
    c\breve-\parenthesize\fermata |
}
\mvtVIIItimeLine
>>
mvtVIIIvlnI = <<
\relative c'' {
    \commonMusic
    \key g \major
    r8 g8 g8 g8 e'8 fis16 g16 a fis g16 a16 |
    d,8 e16 fis16 g4 ~  g4 fis4 |
    g4 ~  g16 e16 fis16 g16 a16 fis16 g16 a16 b16 g16 a16 b16 |
    e,8 cis d2 cis4 |
    d16 cis16 d16 e16 fis16 d16 e16 fis16 g16 e16 fis16 g16 fis16 d16 e16 fis16 |
    g16 e16 fis16 g16 a16 fis16 g16 a16 d,8 e16 fis16 g16 e16 fis16 g16 |
    c,2 ~  c16 e16 d16 c16 b16 d16 c16 b16 |
    a16 g a b c a b c b g a b a fis g a |
    g8 b'~ b a16 g a g fis g a fis g a |
    d,8 g~ g fis16 e fis e dis e fis dis e fis |
    b,8 cis16 dis e2 dis4 |
    e4 r4 r2 |
    r8 e,8 e8 e8 c'8 d16 e16 f16 d16 e16 f16 |
    b,16 b16 c16 d16 e16 c16 d16 e16 a,4 a'4~  |
    a4 gis4 a8\noBeam a, a a |
    d16 e fis g a fis g a d,8 e16 fis16 g4 ~  |
    g4 fis4 g16 a,16 b16 c16 d16 b16 c16 d16 |
    e16 c16 d16 e16 d16 b16 c16 d16 e16 c16 d16 e16 f4~ |
    f4 e4 fis4 g4 ~  |
    g4 fis4 g16 b,16 c16 d16 c16 a16 b16 c16 |
    b8 b'8~ b8 a16 g16 a16 g16 fis16 g16 a16 fis16 g16 a16 |
    d,8 g8 ~  g8 fis16 e16 fis16 e16 dis16 e16 fis16 dis16 e16 fis16 |
    b,8 cis16 dis16 e2 dis4 |
    e4 r4 r2 |
    r8 e,8 e8 e8 c'8 d16 e16 f16 d16 e16 f16 |
    b,16 b16 c16 d16 e16 c16 d16 e16 a,4 a'4~  |
    a4 gis4 a8\noBeam a,8 a8 a8 |
    d16 e16 fis16 g16 a16 fis16 g16 a16 d,8 e16 fis16 g4 ~  |
    g4 fis4 g16 fis16 g16 a16 b16 g16 a16 b16 |
    c16 a16 b16 c16 b16 g16 a16 b16 c16 a16 b16 c16 d16 b16 c16 d16 |
    g,8 a16 b16 c2 b4 ~  |
    b16 e,16 fis16 gis16 a2 g4 ~  |
    g16 cis,16 dis16 e16 fis2 e4~ |
    e4 dis4 e2 ~  |
    e16 d16 e16 fis16 g16 e16 fis16 g16 cis,16 b16 cis16 d16 e16 cis16 d16 e16 |
    fis16 d16 e16 fis16 e16 cis16 d16 e16 fis16 d16 e16 fis16 g4~ |
    g4 fis4 e2 |
    d16 e16 fis16 g16 a16 fis16 g16 a16 d,8 d8 g8 f8 |
    e16 e16 fis16 g16 a16 fis16 g16 a16 d,8 a8 d4~ |
    d16 d16 e16 fis16 g16 fis16 g16 a16 b16 a16 g16 fis16 e4~ |
    e16 d16 cis16 d16 e16 cis16 d16 e16 a,8 d,8 d'4 ~  |
    d4 cis4 d16 cis16 d16 e16 fis16 d16 e16 fis16 |
    g16 e16 fis16 g16 fis16 d16 e16 fis16 g16 e16 fis16 g16 a16 fis16 g16 a16 |
    d,8 e16 fis16 g4 ~  g16 fis16 g16 a16 b16 g16 a16 b16 |
    e,8 fis16 gis16 a4 ~  a16 gis16 a16 b16 c16 a16 b16 c16 |
    fis,16 fis16 g16 a16 b16 g16 a16 b16 e,16 e16 fis16 g16 a16 fis16 g16 a16 |
    d,8 e16 fis16 g4 ~  g4 fis4 |
    g16 b16 a16 g16 fis16 g16 a16 b16 c8 a8 d,8 g8 |
    e8 c8 a8 d8 g,8 d'8 ~  d8 c8 |
    b8 f'8 ~  f8 e8 d16 fis,!16 g16 a16 b16 g16 a16 b16 |
    c16 a16 b16 c16 b16 g16 a16 b16 c16 a16 b16 c16 d16 b16 c16 d16 |
    g,8 a16 b16 c2 b8 a8 |
    b1\fermata |
}
\mvtVIIItimeLine
>>
mvtVIIIvlnII = <<
\relative c' {
    \commonMusic
    \key g \major
    R1 |
    r8 d8 d8 d8 a'8 b16 c16 d16 b16 c16 d16 |
    g,8 a16 b16 c4 ~  c4 b4 |
    a4 ~  a16 fis16 g16 a16 b16 g16 a16 b16 e,16 a16 g16 a16 |
    fis16 e16 fis16 g16 a16 fis16 g16 a16 b16 g16 a16 b16 a16 fis16 g16 a16 |
    b16 g16 a16 b16 c4 ~  c8 b16 a16 b4~ |
    b16 g16 a16 b16 c16 a16 b16 c16 fis,8 d8 r8 g8 |
    e c a d g,16 b c d c a b c |
    d8 d'~ d c16 b c8 c~ c b16 a |
    b8 b~ b a16 g a8 a~ a g16 fis |
    g fis g a b g a b c a b c fis, b a b |
    g8\noBeam b,8 b8 b8 g'8 a16 b16 c16 a16 b16 c16 |
    fis,8 g16 a16 b2 a4 ~  |
    a4 gis4 a8 e'8 c8 a8 |
    d16 e16 d16 c16 b16 e16 d16 e16 c16 b16 c16 d16 e16 c16 d16 e16 |
    a,8 c8 b8 a8 g4 r8 g8 |
    a4 r8 d8 d16 fis,16 g16 a16 b16 g16 a16 b16 |
    c16 a16 b16 c16 b16 g16 a16 b16 c16 a16 b16 c16 d16 b16 c16 d16 |
    g,8 a16 b c4 ~  c4 b4 |
    a2 g16 g16 a16 b16 a16 fis16 g16 a16 |
    g8 d'8 ~  d8 c16 b16 c8 c8 ~  c8 b16 a16 |
    b8 b8 ~  b8 a16 g16 a8 a8 ~  a8 g16 fis16 |
    g16 fis16 g16 a16 b16 g16 a16 b16 c16 a16 b16 c16 fis,16 b16 a16 b16 |
    \tiny g8\noBeam \normalsize b,8 b8 b8 g'8 a16 b16 c16 a16 b16 c16 |
    fis,8 g16 a b2 a4 ~  |
    a4 gis4 a8 e'8 c8 a8 |
    d16 e16 d16 c16 b16 e16 d16 e16 c16 b16 c16 d16 e16 c16 d16 e16 |
    a,8 c8 b8 a8 g4 r8 g8 |
    a4 r8 d8 d16 a16 b16 c16 d16 b16 c16 d16 |
    e16 c16 d16 e16 d16 b16 c16 d16 e16 c16 d16 e16 f4~ |
    f4 e4 d2 |
    c2 b2 |
    a2 ~  a16 c16 b16 a16 g16 b16 a16 g16 |
    fis16 e16 fis16 g16 a16 fis16 g16 a16 g8\noBeam g'8 g8 g8 |
    a,2 ~  a16 gis16 a16 b16 cis16 a16 b16 cis16 |
    d16 b16 cis16 d16 cis16 a16 b16 cis16 d16 b16 cis16 d16 e16 cis16 d16 e16 |
    a,4 d2 cis4 |
    d8\noBeam d,8 d8 d8 b'16 a16 b16 c16 d16 b16 c16 d16 |
    g,8 d'8 c8 b8 a16 g16 fis16 g16 a16 fis16 g16 a16 |
    b8 c8 b8 a8 g16 fis16 g16 a16 b16 g16 a16 b16 |
    e,4 r4 r16 fis16 g16 a16 b16 g16 a16 b16 |
    e,16 e16 fis16 g16 a16 b16 a16 g16 fis16 e16 fis16 g16 a16 fis16 g16 a16 |
    b16 g16 a16 b16 a16 fis16 g16 a16 b16 g16 a16 b16 c4 ~  |
    c4 b8 e8 cis8 d16 e16 fis8 d8 |
    b8 e8 c8 a8 d8 e16 f16 e8 c8 |
    a16 a16 b16 c16 d16 b16 c16 d16 g,4 r8 e'8 |
    a,8 d8 b8 g8 c16 d16 c16 b16 a16 d16 c16 d16 |
    b8 c8 d8 e16 fis16 g8 a8 b8 b,8 |
    c4 ~  c16 a16 b16 c16 b16 g16 a16 b16 e,4 |
    r8 b'8 g8 c8 b16 a,16 b16 c16 d16 b16 c16 d16 |
    e16 c16 d16 e16 d16 b16 c16 d16 e16 c16 d16 e16 f4 ~  |
    f4 e4 d2~ |
    d1\fermata |
}
\mvtVIIItimeLine
>>
mvtVIIIvla = <<
\relative c' {
    \commonMusic
    \key g \major
    \clef C
    R1*2 |
    r8 g8 g8 g8 d'8 e16 fis16 g16 e16 fis16 g16 |
    cis,8 g'8 fis8 a,8 g8 fis'8 e8 a,8 |
    a8 d8 d8 d8 r8 d8 d8 d8 |
    r8 d'8 c16 b16 a16 g16 fis16 e16 d16 c16 d16 g16 a16 b16 |
    g4~ g8 e8 fis8 g16 a16 d,8 e8 |
    c8 a d4~ d8 g~ g fis |
    g fis e a d, a' fis d |
    g16 a b c d b c d fis,8 fis dis b |
    e\noBeam b b b fis'16 a g fis b8 b |
    b16 fis16 g16 a16 b16 g16 a16 b16 e,16 e16 fis16 g16 a16 fis16 g16 a16 |
    dis,16 dis16 e16 fis16 e16 d16 c16 b16 a4 r4 |
    r16 e'16 d16 c16 b8 b'8 e,16 e16 f16 gis16 a8 c,8 |
    f8 b,8 e8 e8 e4 r8 e8 |
    fis8 a8 g8 fis8 b16 a, b c d16 b16 c16 d16 |
    e16 c16 d16 e16 a,16 d16 c16 d16 b8\noBeam g8 g8 g8 |
    r8 g8 g8 g8 r8 g8 g8 g8 |
    e'8 fis16 g16 a16 fis16 g16 a16 d,16 fis16 g16 a16 b16 g16 a16 b16 |
    c8 b8 a8 d8 b8\noBeam g,8 g8 g8 |
    g'8 fis8 e8 a8 d,8 a'8 fis8 d8 |
    g16 a16 b16 c16 d16 b16 c16 d16 fis,8 fis8 dis8 b8 |
    e8\noBeam b8 b8 b8 fis'16 a16 g16 fis16 b8 b8 |
    \tiny b16\noBeam \normalsize fis16 g16 a16 b16 g16 a16 b16 e,16 e16 fis16 g16 a fis g a |
    dis,16 dis16 e16 fis16 e16 d16 c16 b16 a4 r4 |
    r16 e'16 d16 c16 b8 b'8 e,16 e16 fis16 gis16 a8 a,8 |
    f'8 b,8 e8 e8 e4 r8 e8 |
    fis8 a8 g8 fis8 b16 a,16 b16 c16 d16 b16 c16 d16 |
    e16 c16 d16 e16 a,16 d16 c16 d16 b8\noBeam g8 g8 g8 |
    r8 g8 g8 g8 r8 g8 g8 g8 |
    d'8 e16 f16 g16 e16 fis16 g16 a16 fis16 gis16 a16 b16 gis16 a16 b16 |
    e,4 ~  e16 fis16 dis16 e16 fis16 dis16 e16 fis16 g16 e16 fis16 g16 |
    cis,8 c'16 b16 c16 a16 b16 c16 dis,4 e16 g16 fis16 e16 |
    c'16 b16 a16 g16 fis8 b8 b8\noBeam b8 b8 b8 |
    e,8 g8 e8 cis8 a8\noBeam a8 a8 a8 |
    r8 a8 a8 a8 r8 a8 a8 a8 |
    cis8 d16 e16 fis16 d16 e16 fis16 b,16 a'16 g16 fis16 e16 a16 g16 a16 |
    fis8 r8 r4 r8 b,8 b8 b8 |
    g'8 a16 b16 c16 a16 b16 c16 d4 r8 d8 |
    g,16 fis16 g16 a16 b16 d,16 e16 fis16 g8 b8 g8 e8 |
    a8 a,8 a'4 ~  a16 g16 fis16 e16 d8 fis8 |
    b16 a16 g16 fis16 e8 a,8 a8\noBeam d8 d8 d8 |
    r8 d8 d8 d8 r8 d'8 c16 b16 a16 g16 |
    fis8 a8 g16 e16 fis16 g16 a8 g8 fis8 fis8 |
    gis8 b8 a8 c8 b8 a8 gis8 e8 |
    c16 c16 d16 e16 fis16 d16 e16 fis16 b,16 b16 c16 d16 e16 a,16 b16 c16 |
    fis,8 a8 e'4 ~  e16 c16 d16 e16 fis16 b16 a16 b16 |
    e,8 a8 ~  a8 g16 fis16 e8 d8 d8 d8 |
    a'8 b16 c16 d4 ~  d16 d,16 e16 f16 g16 e16 f16 g16 |
    f16 d16 e16 f16 b,8 g'8 g8\noBeam g,8 g8 g8 |
    r8 g8 g8 g8 r8 g8 g8 g8 |
    d'8 e16 f16 g16 \once \set suggestAccidentals = ##t fis16 g16 a16 d,4 e8 fis!8 |
    g1\fermata |
}
\mvtVIIItimeLine
>>
mvtVIIIbasso = <<
\relative c {
    \commonMusic
    \key g \major
    \clef F
    g4 b4 c4 c'4 ~  |
    c16 fis,16 g16 a16 b16 g16 a16 b16 c8 a8 d8 d,8 |
    e8 d8 e8 c8 fis8 d8 g4~ |
    g16 cis,16 d16 e16 fis16 d16 e16 fis16 g16 e16 fis16 g16 a8 a,8 |
    d4 r4 d4 r4 |
    d4 r4 r8 g,8 g8 g8 |
    e'8 fis16 g16 a16 fis16 g16 a16 d,8 e16 fis16 g4~ |
    g fis g8\noBeam g, g g |
    g16 g' a b c a b c fis,8 d e fis |
    g16 fis g a b g a b dis,8 b cis dis |
    e16 dis e fis g e fis g a fis g a b8 b, |
    e4 d4 c8 b8 a4 ~  |
    a4 gis4 a16 a'16 b16 c16 d16 b16 c16 d16 |
    e8\noBeam e,,8 e8 e8 c'8 d16 e16 f16 d16 e16 f16 |
    b,8 c16 d16 e8 e,8 a16 gis'16 a16 b16 c16 a16 b16 c16 |
    fis,8 d8 e8 fis8 g16 fis16 g16 a16 b16 g16 a16 b16 |
    c16 a16 b16 c16 d8 d,8 g,4 r4 |
    g4 r4 g4 r4 |
    r2 r8 d'8 d8 d8 |
    a'8 b16 c16 d16 b16 c16 d16 g,4 r4 |
    r16 g16 a16 b16 c16 a16 b16 c16 fis,8 d8 e8 fis8 |
    g16 fis16 g16 a16 b16 g16 a16 b16 dis,8 b8 cis8 dis8 |
    e16 dis16 e16 fis16 g16 e16 fis16 g16 a16 fis16 g16 a16 b8 b,8 |
    e4 d4 c8 b8 a4~ |
    a4 gis4 a16 a'16 b16 c16 d16 b16 c16 d16 |
    e8\noBeam e,,8 e8 e8 c'8 d16 e16 f16 d16 e16 f16 |
    b,8 c16 d16 e8 e,8 a16 gis'16 a16 b16 c16 a16 b16 c16 |
    fis,8 d8 e8 fis8 g16 fis16 g16 a16 b16 g16 a16 b16 |
    c16 a16 b16 c16 d8 d,8 g,4 r4 |
    g4 r4 g4 r4 |
    r16 b'16 c16 d16 e16 c16 d16 e16 fis,4 gis4 |
    a16 gis16 a16 b16 c16 a16 b16 c16 dis,4 e4 |
    fis16 e16 fis16 g16 a16 fis16 g16 a16 b,8 b'8 c8 g8 |
    a8 fis8 b8 b,8 e16 dis16 e16 fis16 g16 e16 fis16 g16 |
    cis,16 b16 cis16 d16 e16 cis16 d16 e16 a,4 r4 |
    a4 r4 a4 r4 |
    r16 a'16 b16 cis16 d16 b16 cis16 d16 g,8 e8 a8 a,8 |
    d8 e8 fis8 c8 g'8 f8 e8 d8 |
    c8 b8 a8 g8 fis?16 a16 d16 e16 fis16 d16 e16 fis16 |
    b,8 a8 g8 fis8 e16 b'16 e16 fis16 g16 e16 fis16 g16 |
    cis,16 e16 a16 b16 cis16 a16 b16 cis16 d8 cis8 b8 a8 |
    g8 e8 a8 a,8 d4 r4 |
    d4 r4 d4 r4 |
    r16 b16 c16 d16 e16 cis16 d16 e16 a,8 b16 cis16 d4~ |
    d16 c16 d16 e16 f16 d16 e16 f16 b,8 c16 d16 e4~ |
    e8 a,8 d4 ~  d16 g,16 a16 b16 c4 ~  |
    c16 b16 c16 d16 e16 c16 d16 e16 a,8 b16 c16 d4~ |
    d8 c8 ~  c16 b16 c16 d16 e16 d16 e16 fis16 g16 e16 fis16 g16 |
    c,16 c16 d16 e16 f4 ~  f16 b,16 c16 d16 e16 c16 d16 e16 |
    d16 b16 c16 d16 e16 c16 d16 e16 g,4 r4 |
    g4 r4 g4 r4 |
    r16 b16 c16 d16 e16 d16 e16 fis16 g2 |
    g,1\fermata |
}
\mvtVIIItimeLine
>>
