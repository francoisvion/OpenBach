\version "2.17.97"

\include "common.ly"

mvtVIItimeLine = {
    \key a \major
    \time 4/4
    \partial 4

    s4 |
    s1*14 |
    s2. \bar "|."
}


mvtVIIsopr = <<
\relative c'' {
    a4 | % bar 0
    b4 b4 a4. gis8 | % bar 1
    fis4 e4 fis4 gis4 | % bar 2
    a2.\fermata cis8[ d8] | % bar 3
    e4 fis4 e4.( d8) | % bar 4
    cis8[ b8] a8[ gis8] fis4 gis4 | % bar 5
    a2\fermata cis4 cis4 | % bar 6
    cis4 b4 cis2 | % bar 7
    a4\fermata a4 b8[ cis8] d4 | % bar 8
    cis8[( b8] cis4) a2\fermata | % bar 9
    b8[ cis8] d4 cis8[ b8] a8[ gis8] | % bar 10
    fis4 e4 a8[ b8] cis4 | % bar 11
    b4. \melisma a8 gis4 fis4 \melismaEnd | % bar 12
    e2\fermata fis4 gis4 | % bar 13
    a2 b2 | % bar 14
    a2.\fermata
}
\mvtVIItimeLine
>>


mvtVIIalto = <<
\relative c' {
    e4 | % bar 0
    e4 e4 e4 e4 | % bar 1
    d4 e4 d8[ fis8] e4 | % bar 2
    e2.\fermata a4 | % bar 3
    a4 a4 b8[( a8] gis4) | % bar 4
    a4 e4 d8[ cis8] b4 | % bar 5
    cis2\fermata e8[ fis8] gis4 | % bar 6
    gis8[ fis8] eis8[ fis8] eis8( fis4 eis8) | % bar 7
    fis4\fermata fis4 gis8[ fis8] e4 | % bar 8
    e2 d2\fermata | % bar 9
    b'8[ a8] gis4 a4 e4 | % bar 10
    d8[ cis8] b4 a8[ e'8] e4 | % bar 11
    fis2~ fis8[ e8 e8 dis8] | % bar 12
    b2\fermata d4. d8 | % bar 13
    cis8[ d8] e4 fis4( e8[ d8]) | % bar 14
    cis2.\fermata
}
\mvtVIItimeLine
>>


mvtVIItenor = <<
\relative c' {
    cis4 | % bar 0
    b8[ a8] gis4 a8[ b8] cis4 | % bar 1
    a4 a4 a8[ d8] cis8[ b8] | % bar 2
    cis2.\fermata e4 | % bar 3
    e4 d8[ cis8] b4( e4) | % bar 4
    e8[ d8] cis8[ b8] a4 e4 | % bar 5
    e2\fermata a4 gis4 | % bar 6
    a4 b4 b8[ a8 gis8 cis8] | % bar 7
    cis4\fermata d4 d8[ cis8] b4 | % bar 8
    a8[ g8 fis8 e8] fis2\fermata | % bar 9
    e4 b'4 a2~ | % bar 10
    a4 gis8[ fis8] e8[ gis8] a8[ gis8] | % bar 11
    fis4 b4 b4( cis8[ b8]) | % bar 12
    gis2\fermata b4 b4 | % bar 13
    a2. gis4 | % bar 14
    e2.\fermata
}
\mvtVIItimeLine
>>


mvtVIIbasso = <<
\relative c' {
    \clef F
    a4 | % bar 0
    gis8[ fis8] e8[ d8] cis8[ b8] a4 | % bar 1
    d4 cis4 b4 e4 | % bar 2
    a,2.\fermata a'8[ b8] | % bar 3
    cis4 d4 gis,4( e4) | % bar 4
    a4 cis,4 d4 e4 | % bar 5
    a,2\fermata a'4 eis4 | % bar 6
    fis4 d4 cis2 | % bar 7
    fis4\fermata d8[ cis8] b8[ a8] gis4 | % bar 8
    a2 d2\fermata | % bar 9
    gis4 fis8[ e8] a4 cis,4 | % bar 10
    d2~ d4 cis4 | % bar 11
    dis8[ b8] cis8[ dis8] e8[ gis,8 a8 b8] | % bar 12
    e2\fermata b'4 eis,4 | % bar 13
    fis4( cis4) d4 e4 | % bar 14
    a,2.\fermata
   
}
\mvtVIItimeLine
>>


mvtVIIbc = <<
\relative c' {
    \partial 4*1
    \key a \major
    \clef F
    a4 | % bar 0
    gis8 fis8 e8 d8 cis8 b8 a4 | % bar 1
    d4 cis4 b4 e4 | % bar 2
    a,2.\fermata a'8[ b8] | % bar 3
    cis4 d4 gis,4( e4) | % bar 4
    a4 cis,4 d4 e4 | % bar 5
    a,2\fermata a'4 eis4 | % bar 6
    fis4 d4 cis2 | % bar 7
    fis4\fermata d8 cis8 b8 a8 gis4 | % bar 8
    a2 d2\fermata | % bar 9
    gis4 fis8[ e8] a4 cis,4 | % bar 10
    d2~ d4 cis4 | % bar 11
    dis8 b8 cis8 dis8 e8 gis,8 a8 b8 | % bar 12
    e,2\fermata b'4 eis,4 | % bar 13
    fis4 cis'4 d4 e4 | % bar 14
    a,2.\fermata
}
\mvtVIItimeLine
>>


mvtVIIlyrics = \lyricmode {
    Du sü -- ße Lie -- be, schenk uns dei -- ne Gunst,
    laß uns em -- pfin -- den der Lie -- be Brunst,
    daß wir uns von Her -- zen ein -- an -- der lie -- ben
    und in Frie -- de auf ei -- nem Sinn blei -- ben.
    \tag twoSyll {
	Ky -- ri -- e
    }
    \tag oneSyll {
	Ky -- rie
    }
    e -- leis. __ _
}
