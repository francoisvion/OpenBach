sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          b'4 b' a' g'
          fis'2 e'\fermata
          b'4 b' cis'' dis''
          e''2 dis''\fermata
          e''4 g'' fis''4. fis''8
          e''1\fermata }
          b'4 b' c'' b'
          a'4. g'8 g'2\fermata
          b'4 cis'' d'' b'
          e'' d'' cis''2
          b'\fermata b'4 b'
          a' g' fis'2
          e'1\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          g'4 g'8 [fis'] e'4 e'
          e' dis' b2\fermata
          g'4 g' a'8 [g'] fis'4
          e' fis' fis'2\fermata
          g'8 [a'] b'4 b' a'
          g'1\fermata }
          g'8 [fis'] e' [dis'] e' [fis'] g'4
          g' fis' d'2\fermata
          g'4 g' fis' fis'
          g' fis' fis'4. e'8
          dis'2\fermata d'8 [e'] f'4
          e'8 [fis'] g' [e'] e'4 dis'
          b1\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          e'4 d' c' b
          c' b8 [a] g2\fermata
          e'4 d' a8 [b] c'4
          b cis' b2\fermata
          b4 e' e' dis'
          b1\fermata }
          e'4 b a g
          e' d' b2\fermata
          d'4 e' ais b
          ais b b ais
          fis2\fermata gis4 gis
          a8 [c'] b4 cis' b8 [a]
          gis1\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          e8 [fis] g4 c8 [d] e4
          a, b, e2\fermata
          e8 [fis] g4 fis8 [g] a4
          gis ais b2\fermata
          g8 [fis] e4 b b,
          e1\fermata }
          e8 [fis] g4 c8 [d] e4
          cis d g,2\fermata
          g8 [fis] e4 fis8 [e] d4
          cis d8 [e] fis2
          b,\fermata b,8 [cis] d4
          cis8 [dis] e4 ais, b,
          e,1\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Gu -- te Nacht, o We -- sen,
      das die Welt er -- le -- sen!
      Mir ge -- fällst du nicht.
      Gu -- te Nacht, du Stolz und Pracht!
      Dir sei ganz, o La -- ster -- le -- ben,
      gu -- te Nacht ge -- ge -- ben!
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      \repeat unfold 3 {\skip1} ihr Sün -- den,
      blei -- bet weit da -- hin -- ten,
      kommt nicht mehr ans Licht!
    }
