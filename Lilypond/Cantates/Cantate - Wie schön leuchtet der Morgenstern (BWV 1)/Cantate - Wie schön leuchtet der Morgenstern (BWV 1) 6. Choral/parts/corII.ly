PartPOneVoiceTwo =  \relative c'' {
    \repeat volta 2 {
        \time 4/4  \key c \major \transposition f' \clef "treble" \partial 4 c4
        d8 [ g,8 c8 c,8 ] e8 [ c8 e8 g8 ]
        c16 [ f16 e16 d16 ] c8 [ d8 ] e4 ^\fermata e4
        c8 [ d16 e16 ] f8 [ g16 f16 ] e8 [ d8 d8 g8 ]
        g8 [ fis16 e16 ] fis4 ^\trill g4
        ^\fermata c,4 ~
        c8 [ f8 e8 d8 ] c8 [ g8 c8 g8 ]
        g8 [ e16 c16 g'8 g16 g16 ] e4 ^\fermata } r4
    d'8 [ g,16 ( g16 ) ] g16 ( [ g16 g16 g16 ) ] c2 ^\fermata
    d16 [ c16 d16 e16 ] d4 ^\trill c2 ^\fermata
    c8 [ g8 c8 g8 ] g'8 [ f16 e16 ] f8 [ g16 f16 ]
    e8 [ d8 c8 g8 ] g'4. g,8
    d'8 [ c16 b16 ] c4 ~ c8 [ c,8 g'8 g16 g16 ]
    e2 ^\fermata e'16 [ d16 e16 f16 ] g4 ~
    g8 f4 e4 d4 c8 ~
    c8 [ c,8 ] g'8 [ g16 g16 ] e4 ^\fermata \fine
    }