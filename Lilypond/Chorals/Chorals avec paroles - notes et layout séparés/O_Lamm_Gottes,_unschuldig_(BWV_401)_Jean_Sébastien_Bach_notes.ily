sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  f'4
          f' f' c'' c''
          d''2 c''4\fermata c''
          f' g' a' bes'
          a' g'8 [f'] f'4\fermata } a'
          a' a' g' a'
          f'8 [e'] d'4 c'\fermata c''
          d'' c'' c'' a'8 [bes']
          c''4 bes' a'\fermata d''
          c''8 [bes'] a'4 g' a'
          c'' a' g'2
          f'2.\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'4
          c'16 [d' ees'8] ees' [d'] e' [c'] f' [e']
          a'4 g'8 [f'] e'4\fermata e'~
          e'8 d'4 c'8 c' [d'16 e'] f'4~
          f'8 [e'16 d'] e'4 c'\fermata } f'
          f' f' f' e'
          d'8 c'4 b8 g4\fermata ees'
          d'8 [e'] f' [g'16 a'] g'4 f'
          a'4. g'4 fis'8\fermata g'4
          g' f' g'~ g'8 [f'16 e']
          f'4 f'2 e'4
          c'2.\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a8 [bes]
          c'4. bes16 [a] g4 c'~
          c' b g\fermata a
          a g f~ f8 [d']
          c'4 c'8. [bes16] a4\fermata } c'
          c' d' d' a
          a8 [g] a [g16 f] e4\fermata f
          f8 [g] a [bes] c'4. d'8
          ees'4 d' d'\fermata d'8 [f']
          e'4. d'4 c'8 c'4
          c'8 [a] f [a] d'4 c'8 [bes]
          a2.\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f,8 [g,]
          a,4 bes,~ bes, a,8 [g,]
          f,4 g, c\fermata a,
          d e f8 [e] d [bes,]
          c4 c, f,\fermata } f
          f8 [e] d [c] b,4 cis
          d8 [e] f [g] c4\fermata a,
          bes, f~ f8 [e] f4
          f8 [fis] g [g,] d4\fermata bes,8 [b,]
          c4 d e f
          a,8 [bes,16 c] d8 [c] bes,4 c
          f,2.\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      O Lamm Got -- tes, un -- schul -- dig,
      am Stamm des Kreuz ge -- schlach - tet,
      all Sünd' hast du ge -- tra - gen,
      sonst müß -- ten wir ver -- za - gen.
      Er -- barm' dich un -- ser, o _ Je -- su!
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
       all -- zeit er -- fund'n ge -- dul -- dig,
       wie -- wohl du warst ver -- ach - tet,
     }
