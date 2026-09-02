sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          e''4 e'' b' c''
          d'' c''8 [b'] b'4 a'\fermata
          c'' c'' b' a'
          gis' a' b'2\fermata }
          b'4 c'' d''8 [c''] b'4
          c'' b'8 [a'] a'4 g'\fermata
          c'' d'' e''8 [d''] c''4
          f'' e'' d'' c''\fermata
          b' c'' d'' e''
          d'' c'' b'2\fermata
          a'4 b' c''8 [b'] d''4
          c'' b'8 [a'] a'2\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          a'8 [b'] c''4 b' a'8 [gis']
          a' [b'] a'4. gis'8 e'4\fermata
          e' a'8 [g'] f' e'4 d'8
          d' [e'16 f'] e'8 [fis'] gis'2\fermata }
          gis'4 a' a' g'
          g'8 [fis'] g'4 fis' d'\fermata
          c' g' g' a'8 [g']
          a' [b'] c''4 b' g'\fermata
          g' f'8 [e'] d'4 g'8 [a']
          b'4 a' gis'2\fermata
          a'8 [g'] f' [e'] e' [f'] e' [d']
          e'4~ e'8. [d'16] cis'2\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          c'8 [b] a4 e' e'
          d'8 [b] c' [d'] e'4 c'\fermata
          c'8 [b] a4. gis8 a4
          b8 [c'16 d'] c'8 [e'16 dis'] e'2\fermata }
          e'4 e' d' d'
          c'8 [d'] e'4 d'8 [c'] b4\fermata
          e' b c'8 [b] a4
          d' g g'8 [f'] e'4\fermata
          d' c' g'8 [f'] e'4
          f' e' e'2\fermata
          e'4 d' c'8 [d'] gis [a]
          a4 gis e2\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          a,4 a gis fis8 [e]
          fis [gis] a4 e a,\fermata
          a8 [g] f [e] d [e] f4
          b, c8 [a,] e2\fermata }
          e4 a8 [g] fis [d] g [fis]
          e4 d8 [c] d4 g,\fermata
          a g8 [f] e4 f8 [e]
          d4 e8 [f] g4 c\fermata
          g a b c'8 [b]
          a [gis] a4 e2\fermata
          c8 [b,] a, [gis,] a, [d] e [f]
          e [d] e4 a,2\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Je -- su, der du mei -- ne See -- le
      hast durch dei -- nen bit -- tern Tod
      kräf -- tig -- lich her -- aus -- ge -- ris -- sen
      und mich sol -- ches las -- sen wis -- sen
      durch dein an -- ge -- neh -- mes Wort:
      sei doch itzt, o Gott, mein Hort!
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      aus des Teu -- fels fin -- strer Höh -- le
      und der schwe -- ren Sün -- der -- noth
    }
