sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          b'4 a'8 [g'] a'4 d''
          b' g' a'2\fermata
          g'4 g' g' g'
          a' b' a'2
          g'1\fermata }
           d'4 d' e' fis'
          g' a' fis' d'\fermata
          g' g' g' g'
          a' b' a'2
          g'1\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          d'4 d' d' fis'
          d' d'8 [e'] fis'2\fermata
          e'4 f' e' d'
          e'8 [fis'] g'4 g' fis'
          d'1\fermata }
           b4 a b8 [cis'] d'4
          e' e' d' a\fermata
          d'8 [b] c' [d'] e'4 e'
          e'8 [fis'] g'4 g' fis'
          d'1\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          g8 [a] b4 a a
          b8 [c'] d'4 d'2\fermata
          b4 b c' g
          c' d' e'8 [c'] a [d'16 c']
          b1\fermata }
           g4 a g a
          b a a fis\fermata
          g4. f8 e [fis] g [a16 b]
          c'4 d' d'4. c'8
          b1\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          g,4 g~ g8 [fis] e [d]
          g [a] b [g] d2\fermata
          e,8 e4 d8 c, c4 b,8
          a,4 g,8 [b,] c [a,] d4
          g,1\fermata }
           g,8 g4 fis8 e4 d
          d cis d d\fermata
          b,8 [g,] a, [b,] c [d] c [b,]
          a,4 g,8 [b,] d2
          g,1\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Lieb -- ster Je -- su, wir sind hier,
      dich und dein Wort an -- zu -- hö -- ren;
      daß die Her -- zen von der Er -- den
      ganz zu dir ge -- zo -- gen wer -- den.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      len -- ke Sin -- nen und Be -- gier
      auf die sü -- ßen Him -- mels -- leh -- ren,
    }
