sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          d''4 ees'' f'' f''
          ees'' d'' c'' c''\fermata
          d'' ees'' f'' d''
          c''4. c''8 bes'2\fermata }
           c''4 d'' ees'' ees''
          d''4. c''8 c''2\fermata
          ees''4 f'' g'' g''
          f'' f''8. [ees''16] ees''2\fermata
           d''4 ees'' f'' bes'
          ees'' d'' c'' c''\fermata
          d'' ees'' f'' d''
          c'' c'' bes' bes'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          bes'4 bes' a' bes'8 [a']
          g' [a'] bes'4 a' a'\fermata
          bes' a'8 [g'] f'4 g'
          g' f' f'2\fermata }
           a'4 b' c'' g'
          g' f'8 [ees'] ees'2\fermata
          g'4 bes' bes' bes'
          bes' bes'8 [aes'] g'2\fermata
          g'4 g' f' ees'
          f' f' f' f'\fermata
          f' g' f' f'
          g' f' f' f'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          d'4 bes8 [c'] d'4 d'
          ees' f' f' f'\fermata
          f' ees' d'8 [c'] bes4
          bes a d'2\fermata }
           f'4 f g c'
          c'8 [a] b4 g2\fermata
          c'4 d' ees' ees'
          ees'8 [c'] d'4 bes2\fermata
          bes4 bes bes8 [aes] g4
          c' bes a a\fermata
          bes bes c' bes
          bes a d' d'\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          bes4 g d g
          c bes, f f\fermata
          bes, c d g8 [f]
          ees4 f bes,2\fermata }
           f4 d c8 [d] ees [f]
          g4 g, c2\fermata
          c'4 bes8 [aes] g [f] ees4
          bes bes, ees2\fermata
          g4 f8 [ees] d4 ees
          a, bes, f f\fermata
          bes a8 [g] a [f] bes4
          ees f bes, bes,\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Je -- su, mei -- ner Freu -- den Freu -- de,
      Je -- su, mei -- nes Glau -- bens Licht,
      o wie kommt dein Na -- me mir
      so ge -- wünscht und lieb -- lich vor
      dein Ge -- dächt -- nis, Je -- su, ma -- chet,
      daß mein trau -- rigs Her -- ze la -- chet.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Je -- su, mei -- ner See -- len Wei -- de,
      Je -- su, mei -- ne Zu -- ver -- sicht,
    }
