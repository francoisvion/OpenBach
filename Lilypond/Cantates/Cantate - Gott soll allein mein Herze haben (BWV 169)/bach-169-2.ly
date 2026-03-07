\version "2.17.97"

\include "common.ly"


mvtIItimeLine = {
    \key b \minor

    \time 3/8
    s4.*16 | %16
    \bar "||"
    \time 4/4
    s1*6 | %22
    \bar "||"
    \time 3/8
    s4.*11 | %33
    \bar "||"
    \time 4/4
    s1*8 | %41
    \bar "||"
    \time 3/8
    s4.*12 | %53
    \bar "||"
    \time 4/4
    s1*2 | %55
    \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
    % \once \override Score.RehearsalMark #'direction = #DOWN
    \mark \markup{\musicglyph #"scripts.ufermata"}
    \bar "|."
}


mvtIIalto = <<
\relative c'' {
    \autoBeamOff
    R4.*8 | % bar 1
    d8 cis16[ b16] a16[ g16] | % bar 9
    fis16[( a16 c8]) r8 | % bar 10
    d,8 b'8 b8 | % bar 11
    b8 a16[ g16] fis16[ e16] | % bar 12
    a4 r8 | % bar 13
    e'8 e,16 fis16 g8 | % bar 14
    fis8 b16[ a16] d,16[ g16] | % bar 15
    e4\trill d8 | % bar 16
    r4 r8 fis8 cis'8 e,8 e8 fis8 | % bar 17
    g8 r16 g16 g8 e8 cis8 cis'8 e8 d8 | % bar 18
    b8 r16 b16 b8 fis8 dis8 dis8 a'8 gis8 | % bar 19
    e4 r8 e8 b'8 b8 b8 cis8 | % bar 20
    d8 b8 gis8 a8 b8 e,8 e'8 b8 | % bar 21
    cis4 r8 a8 a8[( cis,8]) r4 | % bar 22
    d'8 cis16[ b16] a16[ g16] | % bar 23
    fis16[( a16 c8]) r8 | % bar 24
    b8 cis8 d8 | % bar 25
    e,4 d8 | % bar 26
    e8 fis16[ g32 a32 g8]~ | % bar 27
    g8 fis8 b8 | % bar 28
    gis8 a16[ b32 cis32 b8]~ | % bar 29
    b8 a8 d8 | % bar 30
    r16 e,16 fis16[ \melisma gis16 a16 b16] | % bar 31
    cis16[ d16 e16] \melismaEnd g,16 fis8 | % bar 32
    r16 d'16 cis8 b16[ a16] | % bar 33
    a4 r8 fis8 b8 fis8 fis8 e8 | % bar 34
    dis8 dis8 r8 fis16 b,16 a'8 r16 b16 c8 a8 | % bar 35
    fis8 fis8 b8 fis8 g8 r16 e16 g8 b8 | % bar 36
    e8 cis8 ais8. cis16 d8 d8 r4 | % bar 37
    r4 d8 fis,16 g16 a8 d,8 c'8 r16 a16 | % bar 38
    fis32[( d32 fis32 a32 d16]) a16 c8 b8 b8 b8 r8 b8 | % bar 39
    b8 cis,8 r8 cis16 d16 e16 fis16 g16 a16 b8 g8 | % bar 40
    e8 e8 a8 e8 fis8 fis8 r4 | % bar 41
    d'8 cis16[ b16] a16[ g16] | % bar 42
    fis16[( a16 c8]) r8 | % bar 43
    b8 a16[ g16] fis16[ e16] | % bar 44
    dis16[( fis16 a8]) r8 | % bar 45
    g8 fis16[ e16] c'8 | % bar 46
    d,8 r16 c'16 b8 | % bar 47
    r16 e16 d16[( g,16]) c16[( a16]) | % bar 48
    a4 g8 | % bar 49
    b8 cis8 d8 | % bar 50
    e8 e,16[ fis16] g8 | % bar 51
    r16 fis16 b16[ a16] d,16[ g16] | % bar 52
    e4 d8 | % bar 53
    r8 d8 d'8 ais8 b8 r16 gis16 eis8. a16 | % bar 54
    fis8 fis8 r4 r2 | % bar 55
}
\mvtIItimeLine
>>


mvtIIlyrics = \lyricmode {
    Gott soll al -- lein __ mein Her -- ze ha -- ben, al -- lein,
    Gott soll al -- lein mein Her -- ze ha -- ben.

    Zwar merk ich an der Welt,
    die ih -- ren Kot un -- schätz -- bar hält,
    weil sie so freund -- lich mit mir tut,
    sie woll -- te gern al -- lein
    das Lieb --ste mei -- ner See -- le sein;
    doch nein: Gott soll al -- lein __ mein Her -- ze ha -- ben,
    ich find __ in ihm, ich find __ in ihm,
    ich find __ in ihm das höch -- ste Gut.
    
    Wir se -- hen zwar
    auf Er -- den hier und dar
    ein Bäch -- lein der Zu -- frie -- den -- heit,
    das von des Höch -- sten Gü -- te quil -- let:
    Gott a -- ber ist der Quell, met Strö -- men an -- ge -- fül -- let,
    da schöpf ich, was mich al -- le -- zeit
    kann satt -- sam und wahr -- haf -- tig la -- ben.

    Gott soll al -- lein, __ Gott soll al -- lein,
    Gott soll al -- lein, al -- lein mein Her -- ze ha -- ben,
    Gott soll al -- lein, al -- lein mein Her -- ze ha -- ben.
    Gott soll al -- lein mein Her -- ze ha -- ben.
}


mvtIIbc = <<
\relative c' {
    \clef F
    d8 cis16 b16 a16 g16 | % bar 1
    fis16( a16 c8) r8 | % bar 2
    b16( a16 g16 fis16 e16 d16) | % bar 3
    cis16( e16 g8) r8 | % bar 4
    fis16( e16) g16( fis16) e16( d16) | % bar 5
    cis16( b16) d16( cis16) b16( a16) | % bar 6
    d8 fis,8 a8 | % bar 7
    d,8 fis8 a8 | % bar 8
    d8 fis8 a8 | % bar 9
    d8 fis,8 r8 | % bar 10
    \slurDashed b16( a16 g16 fis16 e16 \slurSolid d16) | % bar 11
    cis16( e16 g8) r8 | % bar 12
    \slurDashed fis16( e16) g16( fis16) e16( d16) | % bar 13
    cis16( b16) d16( cis16) b16( \slurSolid a16) | % bar 14
    d8 g,8 b8 | % bar 15
    a4 d,8 | % bar 16
    ais'1~ | % bar 17
    ais1 | % bar 18
    dis1 | % bar 19
    gis,1~ | % bar 20
    gis1 | % bar 21
    a4 g2.  | % bar 22
    fis4 r8 | % bar 23
    d'8 e8 fis8 | % bar 24
    g16( fis16) g16( fis16) e16( d16) | % bar 25
    a'8 a,8 b8 | % bar 26
    cis16( b16) d16( cis16) b16( a16) | % bar 27
    \slurDashed d16( cis16) e16( d16) cis16( b16) | % bar 28
    e16( d16) fis16( e16) d16( cis16) | % bar 29
    fis16( e16) gis16( fis16) e16( \slurSolid d16) | % bar 30
    gis8 fis8 e8 | % bar 31
    a8 cis,8 d8 | % bar 32
    b8 e8 e,8 | % bar 33
    a4 dis2.~ | % bar 34
    dis1~ | % bar 35
    dis2 e2 | % bar 36
    cis2 b16( cis16 d16 e16) fis16( g16 a16 b16) | % bar 37
    fis,1~ | % bar 38
    fis2 g2~ | % bar 39
    g2 cis2~ | % bar 40
    cis2 \slurDashed ais16( b16 cis16 d16) e16( fis16 gis16 \slurSolid ais16) | % bar 41
    b4 cis8 | % bar 42
    d8 \slurDashed a16( g16 fis16 e16) | % bar 43
    dis4 e8 | % bar 44
    fis8 b,16( a16 g16 fis16) | % bar 45
    e4 e'8 | % bar 46
    fis8 d8 g8 | % bar 47
    c,8 b8 e8 | % bar 48
    c8 d8 g,8 | % bar 49
    g'16( fis16) g16( fis16) e16( d16) | % bar 50
    cis16( b16) d16( cis16) b16( a16) | % bar 51
    d8 fis,8 g8 | % bar 52
    a8 a'8 b8 | % bar 53
    fis2 d2 | % bar 54
    r4 cis4 fis,2 | % bar 55
}
\mvtIItimeLine
>>


mvtIIfigs = <<
\new FiguredBass \figuremode {
    % p179
    s4. |
    <6>8 <6 4 2> s |
    <6> s <5> |
    <6 5> <6 4 2> s |
    <6> s <7 5> |
    <6 5> <5 4 2> s |
    <9> <6> s |
    s4. |

    s8 <6> s |
    <8> <6 5-> s |
    <6> s <7 5> |
    <7 5> <6 4 2> s |
    <6> <6 4 2> <7 4 2> |
    <6> <5 4 2> s |
    <5> <6 5> <6 4 3> |
    <4> <3> s |

    <6>2 <5-> |
    <7 5>1 |
    <6>2 <5-> |

    <6>1 |
    <5-> |
    s4 <6 4\+ 2>2. |

    <6>8 s s |
    s <6!> <6 5-> |
    <5> <6 4 2> <7 4 2> |
    <4> <3> <5> |
    <6> <5 4 2> s |
    <9 4> <7 4 2> <7 4 2> |

    <7 _+> <6 4 2> s |
    <9/ 4> <7 4 2> <7 4 2> |
    <6 5> s s |
    <9> <6> <9> |
    <7 5> <6 4> <5 _+> |

    % p180
    s4 <6>2. |
    <6>4 <5->2. |
    s2 <5> |

    <6\\>2 s4 <6 4> |
    <6>4 <5->2. |
    s2 <5> |

    <6 4 2> <6 5>4 <7> |
    <7> <6>8 <5> <6 5>4 s |

    <5>8 <6> <6 5> |
    s <6 _!> <6\\ 5> |
    <6> <5> s |
    <6\\> <7 _+> s |
    <5> s <6!> |
    <6 5!> s s |

    <6 5> <6> <6!> |
    <6 5>4. |
    <5>8 <6 4 2> <7 4 2> |
    <6 5> <5 4 2> s |
    <9> <6> <7 5> |
    <4> <3> <5> |

    <3>4 <6 _+> <6> <4\+ 2\+> |
    s <6 4>8 <5 _+> s2 |
}
\mvtIItimeLine
>>

mvtIIbreaksAutograph = {
    s4.*11^"Autograph breaks left in" | %11
    \break
    s4.*5 | %16
    s1 | %17
    s2 \bar ""
    \break s2 | %18
    s1*2 | %20
    s2 \bar ""
    \break s2 | %21
    s1 | %22
    s4.*6 | %28
    \break
    s4.*5 | %33
    s1 | %34
    s4 \bar ""
    \break s2. | %35
    s1*2 | %37
    s4 \bar ""
    \break s2. | %38
    s1 | %39
    s2. \bar ""
    \break s4 | %40
    s1 | %41
    s4.*5 | %46
    \break
    s4.*7 | %53
    s1*2 | %55
    \bar "|."
}
