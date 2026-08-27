sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d''4
          bes' a'8 [bes'16 c''] bes'8 [a'] g' [a']
          bes'8. [c''16] c''4 d''\fermata d''8 [ees'']
          f'' [ees''] d'' [c''] bes'4 c''8 [d'']
          ees''2 d''4\fermata } f''
          g'' f''8 [ees''] d'' [c''] bes' [c'']
          d'' [ees''] c''4 bes'\fermata d''
          d'' d'' c'' bes'8 [a']
          a'2 g'\fermata
          bes'4 a' g'2
          f'4\fermata f' bes' bes'
          c'' c'' d''\fermata ees''
          d'' c'' bes'8 [a'] g' [a']
          bes'4 a' g'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a'4
          g' fis' g'8 [fis'] g' [fis']
          g'4. a'8 fis'4\fermata g'
          f' f' g' f'
          ees'8 g'4 fis'8 g'4\fermata } f'8 [bes'16 aes']
          g'4 a' a' bes'
          bes'8 [c''] a'4 f'\fermata f'8 [g']
          a' [c''] bes' [a'] g' [fis'] g'4
          g' fis' g'2\fermata
          g'4. f'4 e'16 [d'] e'4
          c'\fermata c' f' ees'8 [f']
          g' [ees'] g' [f'] g'4\fermata g'
          g'8 [fis'] g' [a'] g' [fis'] g'4
          g' fis' d'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          d'8 ees'4 d'16 [c'] d'2~
          d'8 d' c'16 [bes a g] a4\fermata bes
          c' bes8 [aes] g4 a8 [b]
          c' [bes] a4 bes\fermata } bes
          bes8 [ees'] d' [c'] d'4. ees'8
          f' [g'] f' [ees'] d'4\fermata bes
          a g c'8 [d'] ees'4
          d'8 c'4 bes8 bes2\fermata
          c'4 c' d' c'8 [bes]
          a4\fermata a bes8 [aes] g [bes]
          ees' [g'] c'4 b\fermata c'8 [bes]
          a4 g8 [d'] d'4. ees'8
          d'4. c'8 b4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  fis4
          g2~ g8 a bes [a]
          g [f] ees4 d\fermata g,
          a, bes, ees8 [f] ees [d]
          c2 g,4\fermata } d
          ees f fis g
          f8 [ees] f4 bes,\fermata bes
          fis g8 [f] ees4 d8 [c]
          d2 ees\fermata
          e4 f bes, c
          f,\fermata f8 [ees] d4 ees8 [d]
          c [bes,] aes,4 g,\fermata c
          d e8 [fis] g [a] bes [c']
          d'4 d g,\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Ich lieg im Streit und wi -- der -- streb,
      hilf, o Herr Christ, dem Schwa -- chen!
      Kommt nun An -- fech -- tung, Herr, so wehr,
      daß sie mich nicht um -- sto -- ßen.
      Du kannst ma -- ßen,
      daß mirs nicht bring Ge -- fahr;
      ich weiß, du wirsts nicht las - sen.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      An dei -- ner Gnad al -- lein ich kleb,
      du kannst mich stär -- ker ma -- chen.
    }
