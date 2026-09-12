sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          a'4 e'8 [fis'] gis'4 a'
          b'8 [c''16 d''] c''8 [b'] b'4 a'\fermata
          c'' b' a' b'
          c'' d'' e''2\fermata }
          e''4 f'' g'' c''
          f'' e'' d'' c''\fermata
          d'' d'' e'' a'
          d'' c''8 [b'] b'2
          a'2.\fermata r4 \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          e'8 [d'] c'4 b d'8 [c']
          e'4 e'8 [f'] e'4 e'\fermata
          a'8 [g'] f' [e'] e' a'4 gis'8
          a' [e'] a' [b'16 a'] gis'2\fermata }
          a'4 a' g' a'8 [g']
          a' [d''] g'4. g'16 [f'] e'4\fermata
          g'8 [a'] b'4. gis'8 a' [g']
          f' [e'] e' [f'] e'4. d'8
          cis'2.\fermata r4 \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          c'8 [b] a4 e8 [e'] a4
          b8 [gis] a4. gis8 c'4\fermata
          e' d' c' f8 [e]
          e a4 gis16 [a] b2\fermata }
          c'4 d'4. c'8 c'4
          c'8 [b] c'4. b8 g4\fermata
          b8 [d'] g' [f'] e'4. d'8
          c' [b] a4 a gis
          e2.\fermata r4 \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          a,8 [b,] c [d] e4 fis
          gis8 [e] a [d] e [e,] a,4\fermata
          a,8 a4 gis8 a [f] d [e]
          a, [g,] f,4 e,2\fermata }
          a,8 [a] g [f] e4 f8 [e]
          d4 e8 [f] g [g,] c4\fermata
          g8 [f] e [d] c [d] c [b,]
          a, [gis,] a, [d] e4 e,
          a,2.\fermata r4 \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Herr, ich ha -- be miss -- ge -- han -- delt, ja mich drückt der Sün -- den Last;
      und jetzt wollt' ich gern aus Schre -- cken mich vor dei -- nem Zorn ver -- ste -- cken.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      ich bin nicht den Weg ge -- wan -- delt, den du mir ge -- zei -- get hast;
    }
