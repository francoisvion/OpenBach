sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          r4 c''2 g'4
          c'' c'' bes' bes'8 [a']
          a'2 g'\fermata
          r4 ees'2 g'4
          f' ees'8 [d'] ees'4 d'
          c'1\fermata }
          \repeat volta 2 {
          ees'2 f'4 g'
          aes' aes' g' g'
          f'2 ees'\fermata }
          g'4 a' bes' g'
          c'' c'' b'2\fermata
          c''4 ees'' d'' c''
          c'' b' c''2\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          r4 ees'2 d'4
          fis'8 [g'] a'4 a'8 [g'] g'4
          g' fis' d'2\fermata
          r4 c'2 c'4
          d'8 [b] c'4 c' b
          g1\fermata }
           \repeat volta 2 {
          c'2 d'4 ees'
          f' f' f'8 [d'] ees'4
          ees' d' bes2\fermata }
          ees'4 ees' f' ees'
          ees' ees'8 [d'] d'2\fermata
          g'4 g' aes'8 g'4 f'8
          g'4 g' g'2\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          r4 g2 bes4
          c' ees'8 [d'] d'4 ees'
          d'4. c'8 b2\fermata
          r4 c'2 g4
          aes a g g8 [f]
          ees1\fermata }
           \repeat volta 2 {
          g2 bes
          c'4 bes bes c'
          c' bes8 [aes] g2\fermata }
          bes4 c' bes bes
          c'8 [bes] a4 g2\fermata
          g4 c' c'8 [b] c' [d']
          ees'4 d' e'2\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          r4 c2 bes,4
          a, fis g c
          d2 g,\fermata
          r4 aes2 ees4
          f fis g g,
          c1\fermata }
           \repeat volta 2 {
          c4 bes, aes, g,
          f, d ees c
          aes, bes, ees2\fermata}
          ees4 c d ees
          aes,8 [g,] fis,4 g,2\fermata
          ees8 [d] c4 f8 [g] aes4
          g g, c,2\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Komm, o Tod, du Schla -- fes Bru -- der,
      Komm und füh -- re mich nur fort;
      Es mag, _ wer da will, dich scheu -- en,     
      denn durch dich komm ich her -- ein
      zu dem schön -- sten Je -- su -- lein.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      lö -- se mei -- nes Schiff -- leins Ru -- der,
      brin -- ge mich an si -- chern Port!
      du kannst _ mich viel -- mehr er -- freu -- en;
    }
