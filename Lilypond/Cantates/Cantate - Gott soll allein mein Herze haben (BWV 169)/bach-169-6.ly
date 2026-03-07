\version "2.17.97"

\include "common.ly"

mvtVItimeLine = {
    \time 4/4
    \key b \minor

    s1*5
    \bar "|."
}

mvtVIalto = <<
\relative c' {
    \autoBeamOff
    r4 r8 e8 a8 a8 a8 b8 | % bar 1
    g4 r8 g8 g8 e8 cis8 e8 | % bar 2
    fis8 r16 d16 fis8 g8 a8 a8 b8 cis8 | % bar 3
    gis8 gis8 r8 b8 cis8 e8 a,8 e8 | % bar 4
    fis8[ gis16] a16 a8 e8 r2 | % bar 5
}
\mvtVItimeLine
>>


mvtVIlyrics = \lyricmode {
    Doch meint es auch da -- bei
    mit eu -- rem Näch -- sten -- treu;
    denn so steht in der Schrift ge -- schrie -- ben:
    Du sollst Gott und den Näch -- sten lie -- ben.
}


mvtVIbc = <<
\relative c {
    \clef F
    cis1~ | % bar 1
    cis1 | % bar 2
    d1~ | % bar 3
    d2 cis2 | % bar 4
    dis2 e4 a,4\fermata | % bar 5
}
\mvtVItimeLine
>>


mvtVIfigs = <<
\new FiguredBass \figuremode {
    <6>1 |
    <5-> |
    s2. <6>4 |
    <6 4\+ 2>2 <6> |
    <6 5> <6 4>8 <5 _+> s4 |
}
\mvtVItimeLine
>>

