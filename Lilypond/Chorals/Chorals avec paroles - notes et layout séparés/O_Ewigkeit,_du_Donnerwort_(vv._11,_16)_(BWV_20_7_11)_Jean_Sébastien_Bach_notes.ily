sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  f'8 [g']
          a'4 bes' c'' c''
          d'' e'' f''\fermata f'8 [g']
          a'4 bes' c'' c''
          bes' a' g'\fermata a'
          f' f' bes' a'
          g'2 f'4\fermata } c''
          g' a' bes' bes'
          a' a' g'\fermata c''
          d'' e'' f'' a'
          g'4 g' f'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'4
          f' e' f' a'
          bes'8 [a'] g'4 a'\fermata c'
          f' g' g' f'
          f'8 [e'] f'4 e'\fermata e'
          e' d' d'8 [e'] f'4
          f' e' c'\fermata } f'
          g' g' fis' g'
          g' fis' d'\fermata f'
          f' c''8 [bes'] a' [g'] f'4
          f' e' c'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a8 [bes]
          c'4 bes a8 [c'] f'4
          f' c' c'\fermata a
          d' d' c'8 [bes] a4
          bes c' c'\fermata a
          a a g a
          d' c'8 [bes] a4\fermata } a
          bes c' d' e'!
          a8 [bes] c'4 bes\fermata c'
          bes8 [a] g4 f8 [g] a [bes]
          c' [g] c' [bes] a4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f4
          f g a f
          bes c' f\fermata f8 [e]
          d4 c8 [bes,] a,4 d
          g, a,8 [bes,] c4\fermata cis
          d8 [e] f [d] g4 d8 [c]
          bes,4 c f,\fermata } f
          e ees d cis
          d d g,\fermata a,
          bes, c d8 [e] f4
          c c f,\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      \tweak X-offset #-4.0 \markup{"11. So"} -- lang ein Gott im Him -- mel lebt
      und ü -- ber al -- le Wol -- ken schwebt,
      Wird sol -- che Mar -- ter wäh -- ren:      
      Denn wird sich en -- den die -- se Pein,
      Wenn Gott nicht mehr wird e -- wig sein.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Es wird sie pla -- gen Kält und Hitz,
      Angst, Hun -- ger, Schre -- cken, Feu'r und Blitz
      und sie doch nicht ver -- zeh -- ren.
    }

versoOneLyrics = \lyricmode {\set stanza = 1
      \tweak X-offset #-4 \markup{"16. O"} E -- wig -- keit, du Don -- ner -- wort,
      O Schwert, das durch die See -- le bohrt,
      O An -- fang son -- der En -- de!      
      Nimm du mich, wenn es dir ge -- fällt,
      Herr Je -- su, in dein Freu -- den -- zelt!
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      O E -- wig -- keit, Zeit oh -- ne Zeit,
      ich weiß vor gro -- ßer Trau -- rigk -- eit
      Nicht, wo ich mich hin -- wen -- de.
    }
