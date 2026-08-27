sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
            d2 e4
            f2 g4
            a2 d4
            cis2 cis4\fermata
            d2 e4
            f2.
            f,4 g4. g8
            f2.\fermata
          }
          g2 g4
          a2 c4
          bes2 g4
          a2 a4\fermata
          c2 c4
          d2 f4
          e d cis
          d2 d4\fermata \fine
        }

altoMusic = {
         \voiceTwo
         \repeat volta 2 {
            a,2 cis4
            d2 e4
            f4. g8 a4
            a2 a4\fermata
            a2 a4
            a4. g8 f [e]
            f2 e4
            c2.\fermata
          }
          e4 f g ~
          g8 f4 e8 f4
          f e8 [d] e4
          f2 f4\fermata
          a2 a8 [g]
          f [e] f [g] a4
          bes8 [g] f [e] e [g]
          fis2 fis4\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
            f8 [g] a4 g
            a2 bes4
            c d8 [e] f4
            e2 e4\fermata
            f2 e4
            d8 [cis] d [e] d [c]
            bes [a] d4 c8. [bes16]
            a2.\fermata
          }
          c2 c4
          c4. bes8 a4
          d2 c4
          c2 c4\fermata
          f2 f8 [ees]
          d2 c4
          bes b a
          a2 a4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
            d,8 [e] f [g] f [e]
            d4 c8 [bes] a [g]
            f [g] f [e] d4
            a'2 a4\fermata
            d8 [e] f [e] d [cis]
            d2. ~
            d8 [c] bes4 c
            f,2.\fermata
          }
          c'4 d e
          f g a 
          g g, c
          f2 f4\fermata
          f4 f,8 [g] a4
          bes bes' a
          g gis a
          d,2 d4\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Ihr Ge -- stirn', ihr hoh -- len Lüf -- te
      und du, lich -- tes Fir -- ma -- ment;
      Jauch -- zet fröh -- lich, lasst das Sin -- gen
      jetzt bis durch die Wol - ken drin -- gen.
     }

versoTwoLyrics = \lyricmode {\set stanza = 2
      tie -- fes Rund, ihr dun -- klen Klüf -- te,
      die der Wie -- der -- hall zer -- trennt.
    }
