PartPNineVoiceOne =  \relative f {
    \repeat volta 2 {
        \clef "bass" \time 4/4 \key f \major \transposition c \partial 4 f4 
        e4 f4 d4 a4
        bes8 [ c8 ] d8 [ e8 ] f4 ^\fermata f4
        bes4 a8 [ g8 ] a8 [ b8 ] c4
          f,4 g4 c,4 ^\fermata f4
        bes,4 c4 d8 [ e8 ] f4
        c2 f,4 ^\fermata } r4
    e'2 f2 ^\fermata
    c2 f,2 ^\fermata
    f8 [ g8 a8 f8 ] c'8 [ d8 e8 c8 ]
    f8 [ g8 a8 f8 ] c8 [ c'8 bes8 a8 ]
    g4 d8 [ c8 ] bes4 c4
    f,2 ^\fermata d'8 [ f8 a8 a,8 ]
    bes8 [ d8 f8 f,8 ] g4 a8 [ d8 ]
    b4 c4 f,4 ^\fermata \fine
    }