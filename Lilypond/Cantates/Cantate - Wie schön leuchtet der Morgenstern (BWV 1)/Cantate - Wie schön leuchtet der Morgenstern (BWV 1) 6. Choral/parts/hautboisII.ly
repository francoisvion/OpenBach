PartPTwoVoiceTwo =  \relative a {
    \repeat volta 2 {
        \time 4/4  \key f \major \clef "alto" \partial 4 a4 
        g4 a4 a4 a4
        f4 f'4 f4 ^\fermata f4
        f4 g4 f8 ( [ d8 ) ] e4
          f8 ( [ e8 ) ] d4 e4 ^\fermata c8
        ( [ a8 ) ]
        f8 [ g8 ] a4 ~ a8 [ g8 a8 f8 ]
        g8 [ a8 ] bes4 a4 ^\fermata } r4
    c2 c2 ^\fermata
    c2 c2 ^\fermata
    c4 c4 c4 c4
    c4 c4 c4 c4
    d4 d4 d4 ( c4 )
    c2 ^\fermata d4 c4
    d8 ( [ bes8 ) f8 ( a8 ) ] bes4 c8 ( [ a8 ) ]
    d4 g,16 ( ^\trill [ f16 g8 ) ] a4 ^\fermata \fine
    }