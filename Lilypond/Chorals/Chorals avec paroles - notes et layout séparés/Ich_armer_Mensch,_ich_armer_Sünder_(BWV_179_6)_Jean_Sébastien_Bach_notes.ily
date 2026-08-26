sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          a' b' c'' b'
          a' b' gis'4. fis'8
          e'4\fermata g' g' f'
          e' a' a' gis'
          a'2.\fermata } b'4
          c'' d'' e'' e''
          d'' d'' c''\fermata e''
          d'' c'' b' a'
          c'' b' a'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          e'16 [d'] f'4 e'16 [d'] c'8 a'4 g'8
          g' [fis'16 e'] fis'8 [fis'] fis' [e'] d' [c']
          b4\fermata e'8 [d'] cis'4 d'
          b8 [c'] d' [e'] fis'4 e'
          e'2.\fermata } gis'4
          a' b' c''8 [g'] c'' [bes']
          a'4 b' g'\fermata g'
          f' fis' gis' a'
          dis'8 [fis'] f' [e'16 d'] cis'4\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c'4
          c'8 [b16 a] gis8 [e'] e'4 dis'
          e' b b4. a8
          gis4\fermata e a a
          gis8 [a] b [c'] c' [b] b4
          cis'2.\fermata } e'4
          e'16 [c'] f'4 e'16 [d'] c'8 [d'] e'4
          f'4. e'16 [d'] e'4\fermata c'
          c'8 [b] a [gis16 a] e8 [d'] c' [b]
          a4. gis8 e4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a8 [g]
          f4 e a, b,
          cis dis e2
          e4\fermata cis a, d
          d8 [c] f [e] dis4 e
          a,2.\fermata } e4
          a g8 [g,] c [b,] a, [g,]
          f, [d,] g,4 c,\fermata c
          d dis e f
          fis8 [dis] e [e,] a,4\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Ich ar -- mer Mensch, ich ar -- mer Sün - der
      steh hier vor Got -- tes An -- ge -- sicht.
      Er -- bar -- me dich, er -- bar -- me dich,
      Gott, mein Er -- bar -- mer, ü -- ber mich!
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Ach Gott, ach Gott, ver -- fahr ge -- lin - der
      und geh nicht mit mir ins Ge -- richt!
    }
