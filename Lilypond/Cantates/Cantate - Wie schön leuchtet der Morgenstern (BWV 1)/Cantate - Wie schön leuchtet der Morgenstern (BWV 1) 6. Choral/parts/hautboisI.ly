PartPTwoVoiceOne =  \relative c' {
    \repeat volta 2 {
        \clef "alto" \time 4/4 \key f \major \partial 4 c4 
        c4 c4 d4 f4
        bes4 bes4 a4 ^\fermata a4
        bes4 bes4 c8 ( [ d8 ) c8 ( g8 ) ]
          a4 g4 g4 ^\fermata f4
        f4 e4 f8 [ g8 c,8 f8 ]
        f4 ( e4 ) c4 ^\fermata } r4
    g'2 f2 ^\fermata
    f8 ( [ e16 d16 ) ] e4 ^\trill f2 ^\fermata
    f4 f4 e4 e4
    f4 f4 e4 f4
    g4 f8 ( [ e8 ) ] d4 ( e4 )
    f2 ^\fermata a4 a8 ( [ g8 ) ]
    f4 f4 f8 ( [ e8 ) c8 ( f8 ) ]
    f4 ( e4 ) c4 \fine
    }