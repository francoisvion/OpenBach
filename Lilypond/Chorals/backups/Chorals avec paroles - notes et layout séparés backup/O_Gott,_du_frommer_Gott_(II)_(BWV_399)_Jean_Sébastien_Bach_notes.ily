sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b'4
          b' e'' d'' c''16 [b' c''8]
          b'2.\fermata b'8 [c'']
          d''4 g' a' b'
          a'2 g'4\fermata } a'
          a' b' c''8 [e''] d'' [c'']
          b'2.\fermata b'4
          a' d''8 [e''16 fis''] e''4 d''8 [cis'']
          d''2.\fermata d''4
          d'' b' c'' d''
          e''2.\fermata a'4
          b'8 [c''16 d''] c''8 [b'] b'4 a'8 [g']
          g'2.\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          fis' g'8 [fis'] g'4 fis'
          g'2. g'4
          g'8 [fis'] e' [fis'16 g'] fis'4 g'~
          g'8 [e'] fis'4 d' } e'
          d' fis' g' a'
          g'2. g'8 [fis']
          e' [d'16 cis'] d'4 g'8 [b'] a' [g']
          fis'2. a'4
          g' g' g' g'
          g'2. fis'4
          g' g' g' fis'
          d'2. \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g8 [a]
          b4. a8 b [e'] d'4
          d'2. d'8 [c']
          b [a] g4 d' d'
          d'4. c'8 b4 } cis'
          d' d' c'8 [b] a [d']
          d'2. d'4
          cis'8 [a] g [fis] b [g'] fis' [e']
          d'2. fis'4
          g' d' e' f'
          e'2. d'4
          d' d'8 [e'] d'4 c'
          b2. \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4~
          e8 d4 c8 b, [c] d4
          g,2.\fermata g,8 [a,]
          b,4 c~ c8 [b,] a, [g,]
          d2 g,4\fermata } g~
          g8 [fis] e [d] e4 fis
          g2.\fermata g,4
          g8 [fis] b [a] g [e] a4
          d2.\fermata d'8 [c']
          b [a] g [f] e [d] c [b,]
          c2.\fermata d4
          g,8 [a,] b, [c] d4 d
          g,2.\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      O Gott, du from -- mer Gott,
      du Brunn -- quell al -- ler Ga -- ben,
      ge -- sun -- den Leib gieb mir
      und lab in sol -- chem Leib
      ein un -- ver -- letz -- te Seel
      und rein Ge -- wis -- sen bleib.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
       Ohn' den nichts ist, was ist,
       von dem wir al -- les ha -- ben,
    }
