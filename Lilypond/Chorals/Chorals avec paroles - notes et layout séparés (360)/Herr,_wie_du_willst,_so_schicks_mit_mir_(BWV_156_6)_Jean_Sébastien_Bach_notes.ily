sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c''4
          b' c'' d'' d''
          c'' d'' e''\fermata f''
          e'' d'' c'' b'8 [a']
          b'4 c'' d''2
          c''2.\fermata } c''4
          d''8 [e''] f''4 e''8 [d''] c''4
          d''8 [c''] b'4 a'\fermata b'
          g' g' d'' e''
          f''8 [e''] d''4 c''\fermata g''
          e'' f''8 [e''] d''4. c''8
          b'4 c'' d''2
          c''2.\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          g'4. f'8 g'4 gis'
          e'8 [c'] g'4 g'\fermata g'
          g' g'8 [f'] e'4 f'8 [e']
          d'4 g' a' g'8 [f']
          e'2.\fermata } g'4
          g' a' b' a'
          a'4. g'8 fis'4\fermata fis'
          e' e'8 [fis'] g'4 e'
          d' e' e'\fermata g'
          g' f'8 [g'] a' [f'] g' [a']
          g'4 g' g'4. f'8
          e'2.\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          d' c' b b
          c'8 [f'] b4 c'\fermata d'
          c' b c'8 [e'] d'4
          g' c'2 b4
          g2.\fermata } e'4
          d' c' b e'
          d' d' d'\fermata b
          b b8 [c'] d'4 a
          a b a\fermata d'
          c' c'8 [b] a4 e'
          d' c' c' b
          g2.\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c4
          g a g8 [f] e4
          a g c'\fermata b
          c' g a8 [g] f4~
          f e fis g
          c2.\fermata } c'4
          b a gis a8 [g]
          fis4 g d\fermata dis
          e8 [fis] g [a] b4 cis'
          d' gis a\fermata b
          c'8 [b] a [g] f [d] e [f]
          g [f] e [c] g,2
          c2.\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Herr, wie du willst, so schicks mit mir
      im Le -- ben und __ _ _ im Ster -- ben;
      Er -- halt mich nur in dei -- ner Huld,
      sonst wie du willst, gieb mir Ge -- duld,
      dein Will', der ist __ _ _ der be -- ste.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      al -- lein zu dir steht mein Be -- gier,
      lass mich, Herr, nicht  __ _ _ ver -- der -- ben.
    }
