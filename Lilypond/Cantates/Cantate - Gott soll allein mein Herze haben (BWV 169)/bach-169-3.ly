\version "2.17.97"

\include "common.ly"

mvtIIItimeLine = {
    \override Beam.breakable = ##t
    \time 4/4
    \key d \major

    s1*47
    \daCapo
    \bar "|."
}

mvtIIIalto = <<
\relative c' {
    \autoBeamOff

    R1*8 |
    % p181 s5
    d'8 d,16[ e fis g] a8 a4. b16[ cis] |
    d8[ cis16 b a8] g fis e16[( fis d8]) r |

    R1*2 |
    % p182 s2
    d'8 d,16[ e fis g] a8 a4. b16[ cis] |
    d8[ cis16 b a8] g fis e16[ fis d8] a' |
    gis a e a b8.[ cis32 d] cis4 |
    b4 r8 a gis16[ a b cis d8] cis |
    b4 r8 d cis b a b |
    \autoBeamOn e,8 \melisma fis16 gis a b cis d \autoBeamOff e8 \melismaEnd cis16 a d8 cis |
    a4 r r2 |
    r2 e'8 a,16[ b cis d] e8 |
    fis,4. fis8 b16[ \melisma cis ais  b] cis[ \melismaEnd d] b[ cis] |

    % p183 s1
    d8 cis16[ d b8] d fis,[ g16 a g fis] e[ d] |
    c'8[ b] r a g16[( fis e d] g8) fis |
    fis8 e a4 r8 b16[( cis d8]) b |
    g fis g16[ e fis g a b cis d e8] g, |
    fis8 g16 e fis4~ fis16[ d e fis g a] b8 |
    b a e'16[( d cis b] a8) g16 fis e8 cis' |
    d fis, b4~ \set melismaBusyProperties = #'() \schleifer b8 e g,
	\set melismaBusyProperties = #'( melismaBusy slurMelismaBusy tieMelismaBusy beamMelismaBusy )
	fis16[ e] |
    a[ cis] d fis, g8 e d4 r |
    R1*3 |
    R1\fermataMarkup |

    % p184 s2
    b'8 fis16[( e fis gis ais b]  cis8) fis, cis'4~ |
    cis8 d16[ e] d[ cis] d[ b] ais4 r8 fis |
    d'8 cis b4. a16[ gis] e'8 d |
    cis8 b a4. gis16[ fis] d'8 cis |
    b8 a \autoBeamOn gis4~ \melisma gis16 b a gis cis b a gis |
    fis a gis fis b a gis fis \autoBeamOff eis8 \melismaEnd dis16[ e cis8] gis'8 |
    gis8[( fis]) fis4 r r8 b8 |
    b8[( a]) a d~ d cis \autoBeamOn cis16 \melisma b ais b |

    % 185 s1
    ais8 b cis4. \autoBeamOff \melismaEnd d,16[ cis] d8 fis |
    eis8 fis gis fis16[ eis] fis8 gis a fis |
    d'8 gis, gis16[ fis] eis[ fis] \autoBeamOn b4~ \melisma b16 d cis b |
    \autoBeamOff cis8 \melismaEnd fis, a[ gis] fis \set melismaBusyProperties = #'() \schleifer fis e'
	\set melismaBusyProperties = #'( melismaBusy slurMelismaBusy tieMelismaBusy beamMelismaBusy )
	d16[ cis] |
    d16[ cis] b[ a] gis[ fis] gis[ a] \autoBeamOn b16 \melisma a gis fis eis fis gis eis |
    cis32 b' a gis a16 fis eis8.\trill fis16 \autoBeamOff \melismaEnd fis4 r |
}
\mvtIIItimeLine
>>


mvtIIIlyrics = \lyricmode {
    Gott soll al -- lein mein Her -- ze ha -- ben, __
    Gott soll al -- lein mein Her -- ze ha -- ben, __
    ich find in ihm das höch -- ste Gut,
    das höch -- ste Gut,
    ich find in ihm das höch -- ste, das höch -- ste Gut;

    Gott soll al -- lein mein Her -- ze ha -- ben, __
    Gott soll __ al -- lein __ mein Her -- ze ha -- ben, __
    Gott soll __ al -- lein mein Her -- ze ha -- ben, __
    ich find __ in ihm das höch -- ste, das höch -- ste Gut,
    ich find __ _ in ihm das höch -- ste, das höch -- ste Gut.

    Er liebt __ mich in __ der bö -- sen Zeit
    und will mich in der Se -- lig -- keit
    mit Gü -- tern sei -- nes Hau -- ses la -- ben. __
    Er liebt __ mich, er liebt __ mich in __ der bö -- sen Zeit
    und will mich in der Se -- lig -- keit
    mit Gü -- tern sei -- nes Hau -- ses la -- ben,
    mit Gü -- tern sei -- nes Hau -- ses la -- ben.
}


mvtIIIorgRH = <<
\relative c'' {
    d16 a32 g32 fis32 g32 a16~ a16 g32 fis32 g32 fis32 e32 d32 a'16 gis16 a8~ a16 b32 cis32 d32 cis32 b32 cis32 | % bar 1
    d16 b32 a32 b16 g'16~ g16 fis32 g32 a32 g32 fis32 e32 fis16 g32 e32 d8~ d32 a32 b32 cis32 d32 cis32 d32 e32 | % bar 2
    fis32 e32 d32 cis32 d32 fis32 b16~ b32 cis32 d32 cis32 b32 a32 gis32 fis32 e32 d32 cis32 b32 cis32 e32 a16~ a32 b32 cis32 b32 a32 gis32 fis32 e32 | % bar 3
    d32 gis32 b,32 cis32 d32 a'32 b,32 cis32 d32 b'32 b,32 cis32 d32 fis32 e32 d32 cis32 b32 cis32 d32 cis32 b32 cis32 b32 a4~ | % bar 4
    a32 e'32 dis32 e32 fis32 g32 a32 c,32 b32 dis32 fis32 a32 c32 b32 a16~ a32 g32 fis32 e32 dis32 fis32 c32 b32 g'16 a32 fis32 g8~ | % bar 5
    g32 b,32 ais32 b32 cis32 d32 e32 g,32 fis32 ais32 cis32 e32 g32 fis32 e16~ e32 d32 cis32 b32 ais32 cis32 g32 fis32 d'16 e32 cis32 d8~ | % bar 6
    d32 cis32 b32 cis32 d32 b32 cis32 d32 e32 b32 d32 e32 fis32 b,32 e32 fis32 g32 fis32 e32 d32 cis32 b32 a32 b32 cis32 g'32 b,32 cis32 d32 g32 cis,32 d32 | % bar 7
    e32 g32 fis32 e32 fis32 e32 d32 cis32 b32 a32 g32 fis32 g32 e'32 d32 cis32 d32 g,32 fis32 e32 fis32 a32 fis32 e32 \change Staff = mvtIIIorgLH \voiceOne d16 cis32 b32 a32 g32 fis32 e32 | % bar 8
    d8 \change Staff = mvtIIIorgRH \oneVoice r8 r4 a'''16 e32 d32 cis32 d32 e16~ e16 d32 cis32 d32 cis32 b32 a32 | % bar 9
    d8 r8 r4 r r32 d,32 e32 fis32 g32 fis32 g32 a32 | % bar 10
    b32 a32 g32 fis32 g32 b32 e16~ e32 fis32 g32 fis32 e32 d32 cis32 b32 a32 g32 fis32 e32 fis32 a32 d16~ d32 e32 fis32 e32 d32 cis32 b32 a32 | % bar 11
    g32 cis32 e,32 fis32 g32 d'32 e,32 fis32 g32 e'32 e,32 fis32 g32 b32 a32 g32 fis32 e32 fis32 g32 fis32 e32 fis32 e32 d32 a'32 fis32 e32 d32 d'32 fis,32 e32 | % bar 12
    d8 r8 r4 a''16 e32 d32 cis32 d32 e16~ e16 d32 cis32 d32 cis32 b32 a32 | % bar 13
    d8 r8 r4 d16 a32 g32 fis32 g32 a16~ a16 g32 fis32 g32 fis32 e32 d32 | % bar 14
    d'8 r8 r4 r2 |
    r32 gis32 b,32 cis32 d32 a'32 b,32 cis32 d16 b'16 r8 r2 | % bar 16
    r32 gis32 b,32 cis32 d32 a'32 b,32 cis32 d16 b'16 r8 r2 |
    R1 |
    a,16 e32 d32 cis32 d32 e16~ e16 d32 cis32 d32 cis32 b32 a32 e'16 fis32 dis32 e8~ e16 fis32 gis32 a32 gis32 fis32 gis32 | % bar 19
    a16 fis32 e32 fis16 d'16~ d16 cis32 d32 e32 d32 cis32 b32 cis16 d32 b32 a8 r4 | % bar 20
    fis'16 cis32 b32 ais32 b32 cis16~ cis16 b32 ais32 b32 ais32 gis32 fis32 fis'8 r8 r4 | % 21
    R1 | % 22
    r32 g32 fis32 e32 d32 g32 b,32 cis32 d32 g32 cis,32 d32 e32 g32 d32 e32 fis8 r8 r4 | % bar 23
    a16 e32 d32 cis32 d32 e16~ e16 d32 cis32 d32 cis32 b32 a32 d16 e32 cis32 d8~ d16 e32 fis32 g32 fis32 e32 fis32 | % bar 24
    g8 r8 r4 r2 |
    d16 a32 g32 fis32 g32 a16~ a16 g32 fis32 g32 fis32 e32 d32 d'16 e32 cis32 d8~ d16 e32 fis32 g32 fis32 e32 fis32 | % bar 26
    g8 r8 r4 r2 |
    r32 cis,32 b32 cis32 d32 b32 cis32 d32 e32 b32 d32 e32 fis32 b,32 e32 fis32 g32 fis32 e32 d32 cis32 b32 a32 b32 cis32 g'32 b,32 cis32 d32 g32 cis,32 d32 | % bar 28
    e32 g32 fis32 e32 fis32 e32 d32 cis32 b32 a32 g32 fis32 g32 e'32 d32 cis32 d32 g,32 fis32 e32 fis32 a32 fis32 e32 d32 fis32 a32 d32 fis32 g32 a16~ | % bar 29
    a32 e32 dis32 e32 fis32 g32 a32 c,32 b32 dis32 fis32 a32 c32 b32 a16~ a32 g32 fis32 e32 dis32 fis32 c32 b32 g'16 a32 fis32 g8~ | % bar 30
    g32 b,32 ais32 b32 cis32 d32 e32 g,32 fis32 ais32 cis32 e32 g32 fis32 e16~ e32 d32 cis32 b32 ais32 cis32 g32 fis32 d'16 e32 cis32 d8~ | % bar 31
    d32 cis32 b32 cis32 d32 b32 cis32 d32 e32 b32 d32 e32 fis32 b,32 e32 fis32 g32 fis32 e32 d32 cis32 b32 a32 b32 cis32 g'32 b,32 cis32 d32 g32 cis,32 d32 | % bar 32
    e32 g32 fis32 e32 fis32 e32 d32 cis32 b32 a32 g32 fis32 g32 e'32 d32 cis32 d32 g,32 fis32 e32 fis32 a32 fis32 e32 d4\fermata | % bar 33
    r2 r32 b'32 ais32 b32 cis32 d32 e32 g,32 fis32 ais32 cis32 e32 g32 fis32 e16~ | % bar 34
    e32 d32 cis32 b32 ais32 b32 e,16 r8 g'8~ g16 cis,32 b32 ais32 b32 cis16~ cis16 b32 ais32 b32 ais32 gis32 fis32 | % bar 35
    fis'8 r8 r16 b,32 cis32 d32 fis32 b,32 cis32 d16 gis16 r8 r4 | % bar 36
    r4 r16 a,32 b32 cis32 e32 a,32 b32 cis16 fis16 r8 r4 | % bar 37
    r4 r16 gis,32 a32 b32 d32 gis,32 a32 b16 eis16 r8 r4 | % bar 38
    R1 |
    r16 cis32 b32 a32 b32 cis16~ cis16 b32 a32 b32 a32 gis32 fis32 cis'16 d32 bis32 cis8~ cis16 dis32 eis32 fis32 eis32 dis32 eis32 | % bar 40
    fis16 cis32 b32 cis16 a'16~ a16 gis32 a32 b32 a32 gis32 fis32 eis16 fis32 dis32 cis8 r4 | % bar 41
    r32 b32 ais32 b32 cis32 d32 e32 g,32 fis32 ais32 cis32 e32 g32 fis32 e16~ e32 d32 cis32 b32 ais32 cis32 g32 fis32 d'16 e32 cis32 d8~ | % bar 42
    d32 fis32 eis32 fis32 gis32 a32 b32 d,32 cis32 eis32 gis32 b32 d32 cis32 b16~ b32 a32 gis32 fis32 eis32 gis32 d32 cis32 a'16 b32 gis32 a8 | % bar 43
    r2 r32 b32 b,32 cis32 d32 b'32 cis,32 dis32 eis32 b'32 dis,32 eis32 fis32 b32 eis,32 fis32 | % bar 44
    gis8 r8 r4 r16 cis,32 b32 \once \set suggestAccidentals = ##t ais32 b32 cis16~ cis16 b32 \once \set suggestAccidentals = ##t ais?32 b32 \once \set suggestAccidentals = ##t ais?32 gis32 fis32 | % bar 45
    fis'4~ fis32 e32 d32 cis32 b32 a32 gis32 fis32 d'4~ d32 cis32 b32 a32 b32 a32 gis32 fis32 | % bar 46
    cis'8~ cis64 d64 cis64 b64 cis32 d32 gis,8. fis16 fis4 r4 | % bar 47
}
\mvtIIItimeLine
>>


mvtIIIorgLH = <<
\relative c {
    \clef F
    d8 d'8 cis8 b8 cis,8 cis'8 b8 a8 | % bar 1
    b,8 e8 cis8 a8 d,8 d'8 fis8 a8 | % bar 2
    d8 b8 a8 gis8 cis8 a8 gis8 fis8 | % bar 3
    b8 a8 gis8 e8 a8 a,8 a'8 g8 | % bar 4
    fis8 e8 dis8 b8 e8 b'8 e8 d8 | % bar 5
    cis8 b8 ais8 fis8 b8 b,8 b'8 a8 | % bar 6
    g8 b16 a16 g8 fis8 e8 g16 fis16 e8 d8 | % bar 7
    cis8 d8 g,8 a8 d,4 \voiceTwo r4 \oneVoice | % bar 8
    d'8 d'8 cis8 b8 cis,8 cis'8 b8 a8 | % bar 9
    b,8 e8 cis8 a8 d8 e8 fis8 d8 | % bar 10
    g8 e8 d8 cis8 fis8 d8 cis8 b8 | % bar 11
    e8 d8 cis8 a8 d8 d,8 fis8 a8 | % bar 12
    d8 d'8 cis8 b8 cis,8 cis'8 b8 a8 | % bar 13
    b,8 e8 cis8 a8 d8 e8 fis8 d8 | % bar 14
    b8 cis8 d8 cis8 b8 gis'8 a8 a,8 | % bar 15
    e'8 fis8 gis8 cis,8 b8 a8 gis8 a8 | % bar 16
    e'8 fis8 gis8 e8 a8 gis8 fis8 d'8~ | % bar 17
    d8 cis16 b16 cis8 fis,8 cis8 d8 e8 e,8 | % bar 18
    a8 a'8 gis8 fis8 gis,8 gis'8 fis8 e8 | % bar 19
    fis,8 b8 gis8 e8 a8 cis8 e8 cis8 | % bar 20
    ais8 g'?8 fis8 e8 d8 g8 e8 fis8 | % bar 21
    b,8 e8 d8 cis8 b8[ b'16 cis16 d8 fis,8] | % bar 22
    g,8[ g'16 a16 b8 cis8] d8 fis,8 e8 d8 | % bar 23
    a8 g'8 fis8 e8 fis8 d8 b8 d8 | % bar 24
    e8 b'8 e8 d8 cis8 b8 cis8 a8 | % bar 25
    d,8 a'8 d8 c8 b8 a8 b8 e,8 | % bar 26
    cis8 e8 cis8 a8 fis8 b8 g8 a8 | % bar 27
    b8[ b'16 a16 g8 fis8] e8[ g16 fis16 e8 d8] | % bar 28
    <<
        {
            cis16 a16 d16 b16
        } \\ {
            a8[ d8]
        }
    >>
    g,8 a8 d,8 a'8 d8 e8 | % bar 29
    fis8 e8 dis8 b8 e8 b'8 e8 d8 | % bar 30
    cis8 b8 ais8 fis8 b8 cis8 b8 a8 | % bar 31
    g8 b16 a16 g8 fis8 e8 g16 fis16 e8 d8 | % bar 32
    cis8 d8 g,8 a8 d,8\fermata a'8 d8 cis8 | % bar 33
    b8 d'8 cis8 b8 ais8 e'8 d8 cis8 | % bar 34
    b8 g8 fis8 e8 fis8 e'8 d8 cis8 | % bar 35
    b8 cis8 d8 b8 e,8 d'8 cis8 b8 | % bar 36
    a8 b8 cis8 a8 d,8 cis'8 b8 a8 | % bar 37
    gis8 a8 b8 gis8 cis,8 b'8 a8 cis,8 | % bar 38
    d8 a'8 gis8 b,8 cis8 eis8 gis8 b8 | % bar 39
    a8 cis8 a8 fis8 eis8 b'8 a8 gis8 | % bar 40
    fis8 e'?8 d8 b8 cis8 cis,8 dis8 eis8 | % bar 41
    fis8 cis'16 b16 ais8 fis8 b8 fis8 b8 a8 | % bar 42
    gis8 fis8 eis8 cis8 fis8 fis,8 fis'8 gis16 a16 | % bar 43
    b8 d16 cis16 b8 a8 gis8 b16 a16 gis8 fis8 | % bar 44
    eis8 fis8 b,8 cis8 fis,8 gis8 ais8 fis8 | % bar 45
    b8 d16 cis16 b8 a8 gis8 b16 a16 gis8 fis8 | % bar 46
    eis8 fis8 cis'4 fis,4 r4 | % bar 47
}
\mvtIIItimeLine
>>


mvtIIIfigs = <<
\new FiguredBass \figuremode {
    % p181
    s4 <6 4 2> <6> <7 4 2> |
    <7>8 <5> <6 5>4 s <6> |

    s <6 4 2>8 <7 5> <7 5> <6> <6 4 2> <7 5> |
    <6\\> <6 4> <6 5> <7 _+> s2 |

    <6\\>4 <6 5> <4> <3> |
    <6\\ 5-> <6 5> <4> <3> |

    <6 5> <6 4 2>8 <6> <7> <6 4 2> <6> <6 4> |
    <6 5>4 <6 5> s s |

    s <6 4 2> <6> <3> |
    <5>8 <6 5> <6> <7> s2 |

    % p182
    s4 <6 4 2>8 <7 5> <5> <6> <6 4 2> <7 5> |
    <6> <6 4> <6 5> <7> s2 |

    s4 <6 4 2> <6> <7 4 2> |
    <5>8 <6 5> <6> <7> s4 <6> |

    <6\\>8 <6> <6 4\+ 2> <6> <6\\> <6 5> s4 |
    <_+> <6>8 <6> <6\\>4 <6 5> |
    <_+> <6>8 <7 _+> s <6 5> s <6> |

    <4\+ 2>4 <6>8 <6> <6> <7 5> <5>4 |
    s <6 4> <6> <7>8 <_+> |

    <5>8 <6\\ 5> <6> <7 _+> s4 <6 4> |
    <6 5> <_+> <6> <6 5>8 <_+> |

    % p183
    s8 <6 4\+ 2> <6> <6 4 2> <5> <6> s <6 5-> |
    <4!> <3> <6> <6 5> <4> <6> <6>4 |

    <6 4> <7 5> <6>8 <6> s <6> |
    <9>4 <8> <6 5> <6 5> |

    <9> <8> <5> <6> |
    <7>8 <6 4> <6 5> s <6> <5> <6 5>4 |

    <5>4 <6> <5> <6>8 <6 4> |
    <6 5>4 <6 5> s8 <6 4> s4 |

    <6\\ 5->4 <6 5> <4> <3> |
    <6\\ 5-> <6 5> <4> <3> |

    % p184
    <6 5> <6 4 2>8 <6> <7> <6 4 2> <6> <6 4 2> |
    <6 5>4 <6 5> s2 |

    s8 <6> <6\\> s <6 5> <6 4\+ 2> <7 5\+> <6\\> |
    <9> <3> <6 4> <7 5> <_+> <6 4\+ 2> <6> <6\\> |

    <9>4 <6>8 <7> <7 _+> s s <6\\> |
    <9>4 <6> <7 5> s |

    <9>4 <6\\>8 <7> <7 _+>4 <6> |
    <5> <7>8 <6\\ 5> <_+> <6> <6\\ 4> <6 4\+ 2> |

    <7>4 <6> <6>8 <6 4\+ 2> <7 5\+> <6\\> |
    <4> <3> <7 5> <6\\ 5> <_+> s <7> <5-> |

    % p185
    <_+>8 <6\\> <6 5>4 <9 4> <8 3> |
    <6\\ 5-> <6 5> <4> <3> |

    <6\\ 5> <6\\ 4\+ 2> <6 5> <6\\ 4 3>8 <6 4> |
    <6 5> s <7 5> <_+> s4 <6 5> |

    <9>8 <6> <6\\ 5> <6 4 2> <6\\ 5-> s <6\\ 5-> <6 4 2> |
    <6 5>4 <_+> s s |
}
\mvtIIItimeLine
>>


mvtIIIbreaksAutograph = {
    s1*3 | %3
    \break
    s1*2 | %5
    s2. \bar ""
    \break
    s4 | %6
    s1*2 | %8
    s2 \bar ""
    \break
    s2 | %9
    s1*2 | %11
    s2 \bar ""
    \break
    s2 | %12
    s1*3 | %15
    \break
    s1*3 | %18
    s2 \bar ""
    \break
    s2 | %19
    s1*3 | %22
    \pageBreak

    s1*3 | %25
    s2. \bar ""
    \break
    s4 | %26
    s1*2 | %28
    s2 \bar ""
    \break
    s2 | %29
    s1*2 | %31
    \break
    s1*3 | %34
    \break
    s1*3 | %37
    s4 \bar ""
    \break
    s2. | %38
    s1*2 | %39
    s2 \bar ""
    \break
    s2 | %41
    s1*2 | %43
    \pageBreak

    s1*3 | %47
    \break
    s1 | %48
    \bar "|."
}
