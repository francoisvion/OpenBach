sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          g' a' b' c''
          d''4. c''8 b'4\fermata e''
          d'' c'' b' c''
          a'2 g'4\fermata } d''
          e'' e'' a'\fermata a'
          d'' d'' g'\fermata b'
          a' g' fis' g'
          e'2 d'4\fermata
          d''
          c'' b' a' b'
          a'2 g'4\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          d' d' d' g'
          g' fis' d'\fermata c'8 [b]
          a4 e' d' e'
          d'2 d'4\fermata } g'
          g' a'8 [g'] fis'4\fermata fis'
          g'4. f'8 e'4\fermata d'
          cis' b a b
          a2 a4\fermata
          g
          g8 [a] b [c'] d'4 d'
          d'2 d'4\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g4
          b a g g8 [a]
          b4 a g\fermata g
          fis g8 [a] b [fis] g4
          g fis b\fermata } b
          c'8 [b] a4 d'\fermata d'
          d'8 [c'] b [d'] c'4\fermata b8 [g]
          e4 d d8 [fis] e [d]
          d4 cis fis\fermata
          d
          e d8 [e] fis4 g
          g fis b\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g fis g e
          b, d g,\fermata c
          d e8 [fis] g4 c
          d2 g,4\fermata } g
          c cis d\fermata c
          b, b, c\fermata g,
          a, b,8 [cis] d4 g,
          a,2 d,4\fermata
          b,
          e8 [fis] g4 d8 [c] b, [g,]
          d2 g,4\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Was Gott thut, das ist wohl -- ge -- than,
      dar -- bei will ich ver -- blei -- ben.      
      so wird Gott mich
      Ganz vä -- ter -- lich
      in sei -- nen Ar -- men hal -- ten.
      Drum lass ich ihn nur wal -- ten.
      es bleibt ge -- recht sein Wil -- le;
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Es mag mich auf die rau -- he Bahn
      Not, Tod und E -- lend trei -- ben:
    }
