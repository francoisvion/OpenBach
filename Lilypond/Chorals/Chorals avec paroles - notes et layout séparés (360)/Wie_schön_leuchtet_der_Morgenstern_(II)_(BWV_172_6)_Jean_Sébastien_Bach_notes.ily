sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  f'4
          c''8 [bes'] a' [g'] f'4 c''
          d'' d'' c''\fermata c''
          d'' e'' f'' e''
          d'' d'' c''\fermata a'
          d'' c'' bes' a'
          g'2 f'4\fermata } r
          c''2 a'\fermata
          c'' a'\fermata
          a'4 a' g' g'
          a' a' g' g'
          a' a' g'2
          f'\fermata f''4 e''
          d'' c'' bes' a'
          g'2 f'4\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'4
          c' c' d'8 [e'] f'4
          f' f' f'\fermata g'
          a' g' f'8 [g'] g'4
          f' f' e'\fermata f'
          f' e' f'8 [g'] f'4
          f' e' f'\fermata } r
          g'2 a'\fermata
          g' f'\fermata
          f'4 f' e'8 [d'] c'4
          c' c'8 [d'] e'4 e'
          f' f' f' e'
          f'2\fermata a'4 g'
          f' e' d' c'
          d' c' c'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a4
          g f8 [g] a [bes] c'4
          c'8 [bes16 a] bes8 [bes] a4\fermata c'
          c' b c'8 [d'] e' [g]
          a [d'] b4 c'\fermata c'
          bes8 [a] g4 d'8 [c'] c'4
          c'2 c'4\fermata } r
          c'2 c'\fermata
          c' c'\fermata
          c'4 c' c' c'8 [bes]
          a [bes] c'4 c' c'
          c' d' d' c'8 [bes]
          a2\fermata d'8 [c'] bes4
          bes8 [a] g4 f8 [g] a [c']
          bes8. [a16] g4 a\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f4
          e f8 [e] d4 a,
          bes,8 [c] d [e] f4\fermata e
          f g a8 [b] c' [e]
          f [d] g4 c\fermata f
          bes, c d8 [e] f [bes,]
          c2 f,4\fermata } r
          e2 f\fermata
          c f,\fermata
          f,8 [g,] a, [bes,] c [d] e [c]
          f [g] a [bes] c' [bes] a [g]
          f [e] d [c] bes, [g,] c4
          f,2\fermata d,8 [f,] g, [a,]
          bes,4 c d8 [e] f [a,]
          bes, [g,] c4 f,\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Von Gott kommt mir ein Freu -- den -- schein,
      wenn du mit dei -- nen Äu -- ge -- lein
      mich freund -- lich tust an -- bli -- cken.     
      Nimm mich
      freund -- lich
      in dein' Ar -- me, dass ich war -- me Werd' von Gna -- den:
      auf dein Wort komm' ich ge -- la -- den.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      O Herr Je -- su, mein trau -- tes Gut,
      dein Wort, dein Geist, dein Leib und Blut
      mich in -- ner -- lich er -- qui -- cken!
    }
