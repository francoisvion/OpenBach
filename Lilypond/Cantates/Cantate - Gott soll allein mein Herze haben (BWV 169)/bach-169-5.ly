\version "2.17.97"

\include "common.ly"

mvtVtimeLine = {
    \time 12/8
    \key b \minor

    s2. \bar ";" \segno s2. | %1
    s1.*37
    s2.  \dalSegno
    \bar "||"
}


mvtVbreaksBGA = {
    s1.*3^"BGA breaks left in" |
    \break
    s1.*3 |
    \break
    s1.*3 |
    \pageBreak

    s1.*3 |
    \break
    s1.*2 |
    \break
    s1.*3 |
    \pageBreak

    s1.*3 |
    \break
    s1.*3 |
    \break
    s1.*3 |
    \pageBreak

    s1.*2 |
    \break
    s1.*2 |
    \break
    s1.*2 |
    \pageBreak

    s1.*2 |
    \break
    s1.*2 |
    \break
    s1.*2 |
    \pageBreak

    s1.*3 |
    \break
    s1.*4 |
    \bar "|."
}


mvtVbreaksAutograph = {
    s1.*3^"Autograph breaks left in" | %3
    \pageBreak

    s1.*4 | %7
    \break
    s1.*4 | %11
    \break
    s1.*4 | %15
    \break
    s1.*3 s2. \bar "" %18+2.
    \pageBreak

    s2. | %19
    s1.*3 | %22
    s2. \bar ""
    \break
    s2. | %23
    s1.*3 | %26
    s2. \bar ""
    \break
    s2. | %27
    s1.*3 | %30
    s2. \bar ""
    \pageBreak

    s2. | %31
    s1.*3 | %34
    \break
    s1.*3 | %37
    s2. \bar ""
    \break
    s2. | %38
    s1.*3 | %41
    \pageBreak

    s1.*4 | %45
    \bar "|."
}


mvtVvlnI = <<
\relative c'' {
    d8. cis16 b8 b8. cis16 d8 g,4. e'4.~      | % 1
    e8. fis16 g8 g8. fis16 e8 d4\trill cis8 b4.~      | % 2
    b8. c16 b8 b8. cis16 dis8 e4 d8 cis4.~      | % 3
    cis8. d16 cis8 cis8. d16 e8 fis4 e8 dis4.~      | % 4
    dis8. e16 dis8 dis8. e16 fis8 g4 fis8 e4 d8      | % 5
    c8. ais16 b8 g8. e16 fis8 ais4 b8 d8. cis16 b8      | % 6
    b4\fermata r8 fis4 r8 g4 r8 b4 r8      | % 7
    b4 r8 ais4 r8 b4 r8 a4 r8      | % 8
    b4 r8 cis4 r8 d4 r8 b4 r8      | % 9
    a4 r8 a4 r8 a4 r8 a4 r8      | % 10
    b4 r8 fis4 r8 b4 r8 gis4 r8      | % 11
    a4 r8 d4 r8 cis4 r8 gis4 r8      | % 12
    cis4 r8 ais4 r8 b4 r8 gis4 r8      | % 13
    a4 r8 cis4 r8 cis b gis a4 r8      | % 14
    a8. gis16 fis8 fis8. gis16 a8 d,4. b'4.~ |
    b8. cis16 d8 d8. cis16 b8 a4 gis8 fis4.~ |
    fis8. g16 fis8 fis8. gis16 ais8 b4 a8 gis4.~ |
    gis8. a16 gis8 gis8. a16 b8 cis4 b8 ais4.~ |
    ais8. b16 ais8 ais8. b16 cis8 d4 cis8 b4 a8 |
    g8. eis16 fis8 d8. b16 cis8 eis4 fis8 a8. gis16 fis8 |

    % p188 s2
    fis4 r8 cis4 r8 d4 r8 fis4 r8 |
    fis4 r8 eis4 r8 fis4 r8 cis'4 r8 |
    a4 r8 fis4 r8 g4 r8 g4 r8 |
    a4 r8 gis4 r8 gis4 r8 ais4 r8 |
    cis4 r8 ais4 r8 b4 r8 cis4 r8 |
    d4 r8 e4 r8 fis4 r8 e4 r8 |

    % p189 s1
    d4 r8 cis4 r8 b4 r8 b4 r8 |
    b4 r8 ais4 r8 b4 r8 ais4 r8 |
    b4 r8 cis4 r8 b4 r8 bis4 r8 |
    cis4 r8 fis,4 r8 g?4 r8 e'4 r8 |
    cis4 r8 e4 r8 d4 r8 d4 r8 |
    d4 r8 b4 r8 gis4 fis8 eis4 r8 |

    % p190 s1
    e4 r8 ais4 r8 b4 r8 b4 r8 |
    a4 r8 a4 r8 g4 r8 b4 r8 |
    ais4 r8 b8 d8 cis8 b4 r8 b4 r8 |
    fis4 r8 fis4 r8 b,4 r8 b'4 r8 |
    ais4 r8 ais4 r8 b4 r8 b4 r8 |
    b4 r8 b4 r8 ais8 b8 cis8 d8 fis8 e8 |

    d8. cis16 b8 b8. cis16 d8 % g,4. e'4.~      | % 31
    % e8. fis16 g8 g8. fis16 e8 d4\trill cis8 b4.~      | % 32
    % b8. c16 b8 b8. cis16 dis8 e4 d8 cis4.~      | % 33
    % cis8. d16 cis8 cis8. d16 e8 fis4 e8 dis4.~      | % 34
    % dis8. e16 dis8 dis8. e16 fis8 g4 fis8 e4 d8      | % 35
    % c8. ais16 b8 g8. e16 fis8 ais4 b8 d8. cis16 b8      | % 36
    % b4. r4 r8 r2.
}
\mvtVtimeLine
>>


mvtVvlnII = <<
\relative c'' {
    b4 fis8 fis4 b,8 cis8. d16 e8 e8. fis16 g8      | % 1
    g8. fis16 e8 ais8. b16 cis8 b4 ais8 fis8. d16 e8      | % 2
    fis8. g16 fis8 fis4 b8 b4 a8 gis8. fis16 eis8      | % 3
    fis4 cis'8 b8. d16 cis8 c4 b8 a8. g16 fis8      | % 4
    fis8. g16 a8 b8. cis16 dis8 e4 dis8 b4 a8      | % 5
    g4 fis8 cis8. e16 d8 g4 e8 fis8. e16 d8      | % 6
    d4\fermata r8 cis4 r8 d4 r8 fis4 r8      | % 7
    g4 r8 fis4 r8 fis4 r8 fis4 r8      | % 8
    e4 r8 e4 r8 d4 r8 f4 r8      | % 9
    e4 r8 d8. f16 e8 fis4 r8 fis4 r8      | % 10
    fis4 r8 d4 r8 e4 r8 eis4 r8      | % 11
    fis4 r8 b8. gis16 a8 gis8. eis16 fis8 eis4 r8      | % 12
    fis4 r8 cis4 r8 b fis' r b gis r      | % 13
    fis4 r8 gis4 r8 fis gis eis cis4 r8      | % 14
    fis4 cis8 cis8. b16 cis8 b8. cis16 d8 b8. cis16 d8 |
    d8. cis16 b8 eis8. fis16 gis8 fis4 eis8 cis8. a16 b8 |
    cis8. d16 cis8 cis4 fis8 fis4 e8 dis8. cis16 bis8 |
    cis4 gis'8 fis8. a16 gis8 g4 fis8 e8. d16 cis8 |
    cis8. d16 e8 fis8. gis16 ais8 b4 ais8 fis4 e8 |
    d4 cis8 gis8. b16 a8 d4 b8 cis8. b16 a8 |

    % p188 s2
    a4 r8 gis4 r8 a4 r8 cis4 r8 |
    d4 r8 cis4 r8 cis4 r8 fis4 r8 |
    d4 r8 d4 r8 d4 r8 d4 r8 |
    bis4 r8 bis4 r8 e4 r8 cis4 r8 |
    cis4 r8 fis4 r8 fis4 r8 fis4 r8 |
    fis4 r8 b,4 r8 cis4 r8 fis4 r8 |

    % p189 s1
    fis4 r8 fis4 r8 g4 r8 fis4 r8 |
    g4 r8 fis4 r8 fis4 r8 e4 r8 |
    d4 r8 ais4 r8 fis'4 r8 dis4 r8 |
    cis4 r8 bis4 r8 e4 r8 cis4 r8 |
    fis4 r8 fis4 r8 fis4 r8 g4 r8 |
    b4 r8 g4 r8 cis,4 d8 cis4 r8 |

    % p190 s1
    cis4 r8 cis8 fis8 r8 fis4 r8 e4 r8 |
    e4 r8 d4 r8 d4 r8 b4 r8 |
    cis4 r8 fis4 e8 d4 r8 d4 r8 |
    c4 r8 b4 r8 e4 r8 b4 r8 |
    cis4 r8 cis4 r8 fis4 r8 fis4 r8 |
    d4 r8 eis4 r8 fis8 gis8 ais8 b8 cis8 fis,8 |

    fis4 fis8 fis4 b,8 % cis8. d16 e8 e8. fis16 g8      | % 31
    % g8. fis16 e8 ais8. b16 cis8 b4 ais8 fis8. d16 e8      | % 32
    % fis8. g16 fis8 fis4 b8 b4 a8 gis8. fis16 eis8      | % 33
    % fis4 cis'8 b8. d16 cis8 c4 c8 a8. g16 fis8      | % 34
    % fis8. g16 a8 b8. cis16 dis8 e4 dis8 b4 a8      | % 35
    % g4 fis8 cis8. e16 d8 g4 e8 fis8. e16 d8      | % 36
    % d4. r4 r8 r2.
}
\mvtVtimeLine
>>


mvtVvla = <<
\relative c' {
    \clef alto

    fis8. e16 d8 d8. e16 fis8 e8. fis16 g8 cis,8. d16 e8      | % 1
    ais,8. b16 cis8 cis8. b16 ais8 fis'4 e8 d8. b16 cis8      | % 2
    dis8. e16 dis8 dis8. e16 fis8 g4 fis8 eis8. fis16 gis8      | % 3
    cis,4 fis8 eis4 b'8 a4 g8 fis8. g16 a8      | % 4
    a8. g16 fis8 fis8. g16 a8 b4 a8 g4 fis8      | % 5
    e8. cis16 b8 ais8. cis16 b8 cis4 b8 b8. ais16 b8      | % 6
    b4\fermata r8 a4 r8 g4 r8 d4 r8      | % 7
    e4 r8 fis4 r8 b4 r8 fis4 r8      | % 8
    g4 r8 a4 r8 bes4 r8 gis4 r8      | % 9
    g4 r8 a4 r8 d4 r8 cis4 r8      | % 10
    b4 r8 a4 r8 gis4 r8 b4 r8      | % 11
    a4 r8 b4 r8 cis4 r8 b4 r8      | % 12
    ais4 r8 fis4 r8 b4 r8 eis,4 r8      | % 13
    fis4 r8 cis4 r8 fis4 r8 fis'4 r8      | % 14
    cis8. b16 a8 a8. gis16 fis8 gis8. a16 b8 gis8. a16 b8 |
    eis,8. fis16 gis8 gis8. fis16 eis8 cis'4 b8 a8. fis16 gis8 |
    ais8. b16 ais8 ais8. b16 cis8 d4 cis8 bis8. cis16 dis8 |
    gis,4 cis8 bis4 fis'8 e?4 d8 cis8. d16 e8 |
    e8. d16 cis8 cis8. d16 e8 fis4 e8 d4 cis8 |
    b8. gis16 fis8 eis8. gis16 fis8 gis4 fis8 fis8. eis16 fis8 |

    % p188 s2
    fis4 r8 e4 r8 d4 r8 a'4 r8 |
    b4 r8 cis4 r8 fis,4 r8 a4 r8 |
    fis4 r8 d4 r8 g4 r8 g4 r8 |
    fis4 r8 fis4 r8 e4 r8 e4 r8 |
    ais4 r8 fis4 r8 b4 r8 a4 r8 |
    gis4 r8 g4 r8 fis4 r8 ais4 r8 |

    % p189 s1
    b4 r8 a4 r8 g4 r8 d4 r8 |
    e4 r8 fis4 r8 b4 r8 cis,4 r8 |
    d4 r8 e4 r8 dis4 r8 fis4 r8 |
    eis4 r8 dis4 r8 e4 r8 g?4 r8 |
    fis4 r8 fis4 r8 b4 r8 b4 r8 |
    b4 r8 b4 r8 b4 r8 cis4 r8 |

    % p190 s1
    ais4 r8 fis4 r8 b4 r8 gis4 r8 |
    a4 r8 fis4 r8 g4 r8 g4 r8 |
    fis4 r8 fis4 r8 g4 r8 g4 r8 |
    dis4 r8 dis4 r8 e4 r8 g4 r8 |
    fis4 r8 fis4 r8 fis4 r8 fis4 r8 |
    gis4 r8 gis4 r8 fis4 r8 fis4 r8 |

    % p191 s1
    b8. cis16 d8 d8. e16 fis8 % e8. fis16 g8 cis,8. d16 e8      | % 31
    % ais,8. b16 cis8 cis8. b16 ais8 fis'4 e8 d8. b16 cis8      | % 32
    % dis8. e16 dis8 dis8. e16 fis8 g4 fis8 eis8. fis16 gis8      | % 33
    % cis,4 fis8 eis4 b'8 a4 g8 fis8. g16 a8      | % 34
    % a8. g16 fis8 fis8. g16 a8 b4 a8 g4 fis8      | % 35
    % e8. cis16 b8 ais8. cis16 b8 cis4 b8 b8. ais16 b8      | % 36
    % b4. r4 r8 r2.
}
\mvtVtimeLine
>>


mvtValto = <<
\relative c' {
    \autoBeamOff

    R1.*6 |
    \mark \markup{ \musicglyph #"scripts.ufermata" }
    % p186 s3
    fis2.~ fis8. d'16[ cis8] b4.~ |
    b8. a16[( g fis] e8.) g16[ fis8] d8. d16[( fis b] d4.~) |
    d8. cis16[ b8] a16[( d cis b a]) g f8. e16[ d8] b'8. cis?16[ d8] |

    % p187 s1
    a4.~ a8. f16[ e8] d2. |
    d'4.~ d8. cis16[ d8] e,4. r8 cis eis |
    fis8. eis16[ fis8] d'[ b] a16[ gis] eis8 fis16[ eis] dis[ cis] cis'4.~ |

    cis8[ fis,] ais cis16[( d e]) d[( cis8]) \autoBeamOn cis \melisma e16 d cis\trill b b8. d16 cis b |
    a16 gis fis eis fis b gis4.\trill \autoBeamOff \melismaEnd fis r |

    R1.*6 |
    % p188 s2
    cis2.~ cis8. a'16[ gis8] fis4.~ |
    fis16 d'[ \melisma cis gis a fis] eis8. \melismaEnd d?16[ cis8] \appoggiatura b8 a4. r |
    c'2.~ c8. ais16[ b8] b g16[( a b cis] |

    dis4) bis8 gis4 bis8 d8. bis16 cis8 r4. |
    e,8. d16[ cis8] \autoBeamOn ais'8. \melisma b16 cis8 d8. ais16 b8 cis4 \autoBeamOff \melismaEnd fis,8 |
    b4.~ b8. d16[ cis8] ais16[ b cis ais b gis] fis4. |

    % p189 s1
    \autoBeamOn r16 d' \melisma cis b ais b fis d' cis b ais b e, d' cis b ais b d, d' cis b ais b |
    \autoBeamOff g8. \melismaEnd e16 fis[ gis ais] b cis8 e, d[ e16 d] cis[ b] fis'4.~ |

    fis8. g?16[ fis8] fis8. gis16[ ais8] b a16[( gis a8]) gis[ dis] bis |
    gis'8. a16[ gis8] gis8. ais16[ b8] cis b16[( ais b8]) ais[ e] cis |

    ais'8. b16[ ais8] ais8. b16[ cis8] d cis16[( b cis8]) b a16[( g]) a8 |
    \autoBeamOn g8. \melisma eis16 fis8 d8. d'16 cis8 eis,16[ gis b8] \autoBeamOff \melismaEnd a8 a[ cis16 b] a[ gis] |

    % p190 s1
    \autoBeamOn e'?4.~ \melisma e16 d cis b ais gis fis ais b cis d8~ d16 cis b a gis fis |
    e16 gis a b c8~ c16 b a g fis e d8[ c'16 ais] \autoBeamOff \melismaEnd b8 e,4 e8 |

    e8. g16[ fis8] d'[( cis16 b]) cis8 b4.~ b8[ c16 b] a[ g] |
    \autoBeamOn a8. \melisma b16 c8~ c8. b16 a8 g4 \autoBeamOff \melismaEnd fis8 e4 r8 |

    r4. cis'16[ d e8] ais, b4 r8 r4. |
    <> \startTrillSpan \autoBeamOn eis,2. \melisma <> \stopTrillSpan e8 d cis b[ ais] \autoBeamOff \melismaEnd cis |

    % p191 s1
    cis8[( b]) r r4. % r2. |
    % R1.*6 |
}
\mvtVtimeLine
>>


mvtVlyrics = \lyricmode {
    Stirb __ in mir, stirb __ in mir,
    Welt __ und al -- le dei -- ne Lie -- be,
    stirb __ in mir,
    daß __ die Brust
    sich auf Er -- den für und für
    in der Lie -- be Got -- tes ü -- be,

    stirb __ in mir, __ stirb __ in mir,
    stirb __ in mir,
    Hof -- fart, Reich -- tum, Au -- gen -- lust,
    ihr ver -- worf -- nen Flei -- sches -- trie -- be,
    Welt __ und al -- le dei -- ne Lie -- be,
    Welt __ und al -- le dei -- ne Lie -- be,
    ihr ver -- worf -- nen Flei -- sches -- trie -- be,
    Hof -- fart, Reich -- tum, Au -- gen -- lust,
    ihr ver -- worf -- nen Flei -- sches -- trie -- be,
    Welt und al -- le dei -- ne Lie -- be,

    stirb __ in mir, stirb __ in mir,
    stirb __ in mir!
}


mvtVorgRH = <<
\relative c' {
    R1.*6 |
    \mark \markup{ \musicglyph #"scripts.ufermata" }
    fis8. g16 fis8 fis8. g16 fis8 b8. d16 cis8 b4.~ | % bar 7
    b16 g'16 fis16 cis16 d16 b16 e,8. g16 fis8 d8. cis16 b8 d'4.~ | % bar 8
    d8. cis16 b8 a8. b16 g8 f'8. e16 d8 es8. cis?16 d8 | % bar 9
    e,?16 g16 a16 cis16 d16 g16 f8. d16 cis8 d2.~ | % bar 10
    d8. cis16 b8 b8. cis16 d8 e,8. b'16 d8 cis4.~ | % bar 11
    cis8. b'16 a8 g?8. eis16 fis8 eis8. cis16 d8 cis4.~ | % bar 12
    cis8. e16 g8 e16 fis16 g16 fis16 e8~ e16 d16 cis16 b16 d8~ d16 cis16 b16 a16 cis8~ | % bar 13
    cis16 b16 a16 d16 cis16 fis16 eis16 a16 gis16 b16 a16 gis16 a16 fis16 eis16 fis16 gis16 b,16 a16 cis16 eis16 gis16 fis8 | % bar 14
    R1.*6 | % 15
    cis,8. d16 cis8 cis8. d16 cis8 fis8. a16 gis8 fis4.~ | % bar 21
    fis16 d'16 cis16 gis16 a16 fis16
    \tag CANTATA {
        \change Staff = mvtVorgLH \voiceOne b,8. d16 cis8 a8. gis16 fis8 r16 fis a cis16 \change Staff = mvtVorgRH \oneVoice fis16 a16 | % bar 22
    }
    \tag CONCERTO {
        b,8. d16 cis8 a16 cis dis eis fis r r16 cis a cis16 fis16 a | % 22
    }
    c4.~ c8. e16 d8 c8. ais16 b8 b4. | % bar 23
    dis4.~ dis8. fis16 e8 dis8. bis16 cis8 g'?4.~ | % bar 24
    g8. fis16 e8 d8. e16 cis8 d8. fis16 e8 fis4 fis,8 | % bar 25
    b4.~ b16 e16 fis16 g16 cis,16 d16 \appoggiatura b8 ais2. | % bar 26
    fis8. g16 fis8 fis8. g16 fis8 b8. d16 cis8 b4.~ | % bar 27
    b16 g'16 fis16 cis16 d16 b16 e,8. g16 fis8 d8. cis16 b8 fis'4.~ | % bar 28
    fis8. g16 fis8 fis8. gis16 ais8 b4 a8 gis4.~ | % bar 29
    gis8. a16 gis8 gis8. ais16 b8 cis4 b8 ais4.~ | % bar 30
    ais8. b16 ais8 ais8. b16 cis8 d4 cis8 b4 a8 | % bar 31
    g8. eis16 fis8 d'8. b16 cis8 eis4 fis8 a,8. gis16 fis8 | % bar 32
    g8. fis16 g8 e'4.~ e8. e,16 fis8 d'4.~ | % bar 33
    d8. d,16 e8 c'4.~ c8. ais16 b8 g'?8. eis16 fis8 | % bar 34
    e,8. g16 fis8 d'8 cis16( b16 ais16 b16) b8. d16 cis16 ais16 b16 g16 a16 fis16 dis16 e16 | % bar 35
    a8. b16 c8 c8. b16 a8 g4 fis8 e4.~ | % bar 36
    e16 cis16 d16 g16 fis16 b16 ais16 d16 cis16 g'16 fis16 e16 d16 b16 ais16 b16 cis16 e,16 d16 fis16 ais16 b16 g?16 fis16 | % bar 37
    eis16 d'16 cis16 b16 ais16 b16 gis'16 fis16 eis16 fis16 dis16 \once \set suggestAccidentals = ##t e16 cis16 d16 b16 c16 ais16 b16 eis,16 fis16 d'16 cis16 b16 ais16 | % bar 38
    b4 r8 r4. % r2. | %
    % R1.*6 |
}
\mvtVtimeLine
>>


mvtVorgLH = <<
\relative c {
    \clef F
    r8 b8 b'8 r8 b,8 b'8 r8 b,8 b'8 r8 b,8 b'8 | % bar 1
    r8 b,8 b'8 r8 b,8 b'8 r8 b,8 b'8 r8 b,8 b'8 | % bar 2
    r8 a,8 a'8 r8 a,8 a'8 r8 g,8 g'8 r8 b,8 b'8 | % bar 3
    r8 ais,8 ais'8 r8 gis,8 gis'8 r8 a,8 a'8 r8 c,8 c'8 | % bar 4
    r8 b,8 b'8 r8 b,8 b'8 r8 e,,8 e'8 r8 e,8 e'8 | % bar 5
    r8 e,8 d'8 r8 e,8 d'8 r8 e,8 g'8 r8 fis,8 fis'8 | % bar 6
    << { b,4\fermata } \\ { r8 b8 b'8 } >> r8 a,8 a'8 r8 g,8 g'8 r8 d,8 d'8 | % bar 7
    r8 e,8 e'8 r8 fis,8 fis'8 r8 b,8 b'8 r8 fis,8 fis'8 | % bar 8
    r8 g,8 g'8 r8 a,8 a'8 r8 bes,8 bes'8 r8 gis,8 gis'8 | % bar 9
    r8 g,8 g'8 r8 a,8 a'8 r8 d,8 d'8 r8 cis,8 cis'8 | % bar 10
    r8 b,8 b'8 r8 a,8 a'8 r8 gis,8 gis'8 r8 b,8 b'8 | % bar 11
    r8 a,8 a'8 r8 b,8 b'8 r8 cis,8 cis'8 r8 b,8 b'8 | % bar 12
    r8 ais,8 ais'8 r8 fis,8 fis'8 r8 b,8 b'8 r8 eis,,8 eis'8 | % bar 13
    r8 fis,8 fis'8 r8 cis8 cis'8 r8 fis,,8 fis'8 r8 fis,8 fis'8 | % bar 14
    r8 fis,8 fis'8 r8 fis,8 fis'8 r8 fis,8 fis'8 r8 fis,8 fis'8 | % bar 15
    r8 fis,8 fis'8 r8 fis,8 fis'8 r8 fis,8 fis'8 r8 fis,8 fis'8 | % bar 16
    r8 e,8 e'8 r8 e,8 e'8 r8 d,8 d'8 r8 fis,8 fis'8 | % bar 17
    r8 eis,8 eis'8 r8 dis,8 dis'8 r8 e,8 e'8 r8 g,8 g'8 | % bar 18
    r8 fis,8 fis'8 r8 fis,8 fis'8 r8 b,8 b'8 r8 b,8 b'8 | % bar 19
    r8 b,8 a'8 r8 b,8 a'8 r8 b,8 d'8 r8 cis,8 cis'8 | % bar 20
    r8 fis,,8 fis'8 r8 e,8 e'8 r8 d,8 d'8 r8 a8 a'8 | % bar 21
    r8 b,8 b'8 \voiceTwo r8 cis,8 cis'8 r8 fis,,8 fis'8 r8 a,8 a'8 \oneVoice | % bar 22
    r8 fis,8 fis'8 r8 d,8 d'8 r8 g,8 g'8 r8 g,8 g'8 | % bar 23
    r8 fis,8 fis'8 r8 fis,8 fis'8 r8 e,8 e'8 r8 e,8 e'8 | % bar 24
    r8 ais,8 ais'8 r8 fis,8 fis'8 r8 b,8 b'8 r8 a,8 a'8 | % bar 25
    r8 gis,8 gis'8 r8 g,8 g'8 r8 fis,8 e'8 r8 d8 cis'8 | % bar 26
    r8 b,8 b'8 r8 a,8 a'8 r8 g,8 g'8 r8 d,8 d'8 | % bar 27
    r8 e,8 e'8 r8 fis,8 fis'8 r8 b,8 b'8 r8 cis,8 cis'8 | % bar 28
    r8 d,8 d'8 r8 e,8 e'8 r8 dis,8 dis'8 r8 fis,8 fis'8 | % bar 29
    r8 eis,8 eis'8 r8 dis,8 dis'8 r8 e,8 e'8 r8 g,8 g'8 | % bar 30
    r8 fis,8 fis'8 r8 fis,,8 fis'8 r8 b,8 b'8 r8 b,8 b'8 | % bar 31
    r8 b,8 a'8 r8 b,8 a'8 r8 b,8 d'8 r8 cis,8 cis'8 | % bar 32
    r8 ais,8 ais'8 r8 fis,8 fis'8 r8 b,8 b'8 r8 gis,8 gis'8 | % bar 33
    r8 a,8 a'8 r8 fis,8 fis'8 r8 g,8 g'8 r8 g,8 g'8 | % bar 34
    r8 fis,8 fis'8 r8 fis,8 fis'8 r8 g,8 g'8 r8 g,8 g'8 | % bar 35
    r8 dis,8 dis'8 r8 dis,8 dis'8 r8 e,8 e'8 r8 g,8 g'8 | % bar 36
    r8 fis,8 fis'8 r8 fis,8 fis'8 r8 fis,8 fis'8 r8 fis,8 fis'8 | % bar 37
    r8 gis,8 gis'8 r8 gis,8 gis'8 r8 fis,8 fis'8 r8 fis,8 fis'8 | % bar 38
    r8 b,8 b'8 r8 b,8 b'8 % r8 b,8 b'8 r8 b,8 b'8 | % bar 39
    % r8 b,8 b'8 r8 b,8 b'8 r8 b,8 b'8 r8 b,8 b'8 | % bar 40
    % r8 a,8 a'8 r8 a,8 a'8 r8 g,8 g'8 r8 b,8 b'8 | % bar 41
    % r8 ais,8 ais'8 r8 gis,8 gis'8 r8 a,8 a'8 r8 c,8 c'8 | % bar 42
    % r8 b,8 b'8 r8 b,8 b'8 r8 e,,8 e'8 r8 e,8 e'8 | % bar 43
    % r8 e,8 d'8 r8 e,8 d'8 r8 e,8 g'8 r8 fis,8 fis'8 | % bar 44
    % b,4 r8 r4. r4. r4. | % bar 45
}
\mvtVtimeLine
>>


mvtVfigs = <<
\new FiguredBass \figuremode {
    % p186
    s2. <6 4 2> |
    <7/ 4 2>4. <7/ 4 2> <8 5 3> s |
    <6 4\+> <6 4\+ 2> <6> <6\\ 4\+ 2\+> |

    <6> <6\\> <6 _-> <6 4\+ 2\+> |
    <7 _+> s <5 3>4 <7/ 4 2>8 <8> s <7 5> |
    <6- 8>4 <7 5>8 <6\\ 4\+ 3>4 <6>8 <6 4\+ 2>4 <6>8 <6 4>4 <5 _+>8 |

    s4. <6> <7 5> <6> |
    <7 5> <_+> s <6> |
    <6 5> <8>4 <7>8 <5->4. <7- 5-> |

    % p187
    <6 4 2> <6- 4>4 <5 3>8 <_+>4. <6 4 2> |
    s <6 4 2> <6 5> <6\\ 4\+ 2> |
    <6> <6->4 <5>8 <_+>4. <6\\ 4\+ 2> |

    <6> <7 _+> <5 4>4 <3>8 <7 5>4. |
    <5> <_+> s s |

    s s <6 4> s |
    s s <6 4> s |
    <6 4\+ 2> s <6> <6\\ 4\+ 2\+> |

    % p188
    <6> <6\\> <6 _-> <6 4\+ 2\+> |
    <_+>4. s <5 3>4 <7/ 4 2>8 <8> s <7-> |
    <6> s <6> <6\\ 4\+ 3> s <6> <4\+ 2> s <6> <6 4> s <5 _+> |

    s4. <6 _+> <5> <6> |
    <7 5> <7 _+> s <6> |
    <6 5-> <7-> <4-> <3> |
    <6\\ 4\+ 2\+> s <7/ 5\+>4 <6>8 <6 4\+ 3!>4. |
    <7 5> <7 _+> s <6> |
    <7> <6> <_+>4 <6 4\+ 2>8 <6>4 <6\\>8 |

    % p189
    s4. <6> <7 5> <6> |
    <7 5> <_+> s <6\\> |

    <6> <6 4\+ 2> <6> <6\\ 4\+ 2\+> |
    <6 _+> <6\\> <6 _-> <6 4\+ 2\+> |

    <7 _+>4. <7 _+> <8 3>4 <[7/] 4 2>8 <8>4 <7>8 |
    <6->4 <6>8 <6>4 <6 3>8 <6\\ 4\+>4 <6>8 <6 4>4 <5 _+>8 |

    % p190
    <7- 5->4. <7 _+> <4>4 <3>8 <6 5>4. |
    <4>4 <3->8 <6 5->4. <4->4 <3>8 <6\\>4. |

    <7 _+> <6 4>4 <5 _+>8 <7>4. <6> |
    <7- 5->2 \bassFigureExtendersOn <7- 5->4 \bassFigureExtendersOff <7- 5->4. <6> |

    \bassFigureExtendersOn <7 _+>2 <7 _+>4 \bassFigureExtendersOff <6 4>4. s |
    <6\\ 5-> s <7 _+>8 <6 4>8 s <5 4> <_+>4 |

    s4. s % <6 4 2> s |
    % <7/ 4 2> <7/ 4 2> <8 5 3> s |
    % <6 4\+> <6 4\+ 2> <6> <6\\ 4\+ 2> |

    % <6>4. <6\\> <6 _-> <6 4\+ 2\+> |
    % <7 _+> s <5 3>4 <7/ 4 2>8 <8>4 <7 5>8 |
    % <6- 8>4 <6>8 <6\\ 4\+ 3>4 <6>8 <6 4\+ 2>4 <6>8 <6 4>4 <5 _+>8 |
    % s1. |
}
\mvtVtimeLine
>>
