sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a'4
          bes' a' g' d''
          d''8 [c''] bes'4 a'2\fermata
          r4 c'' bes' a'
          g' a'8 [bes'16 c''] bes'4 a'
          g'2.\fermata } g'4
          a' f' e' d'8 [e']
          f'4 g' a'2\fermata
          r4 a' g' bes'
          a' bes' g' fis'
          g'2.\fermata
          g'4
          d'' bes' c'' d''
          c'' bes' a'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          fis'8 g'4 fis'8 g' [a'] bes'4
          a'4. g'8 fis'2\fermata
          r4 fis' g' f'
          ees'8 [f'] g'4 g' fis'
          d'2.\fermata } d'4
          e' d' cis' d'
          c' d'8 [e'] f'2\fermata
          r4 f' f'8 [ees'] d' [g']
          g' [fis'] g'4 g'8 [c'] d'4
          d'2.\fermata
          d'4
          d' g' f' f'8 [g']
          a'4 g' d'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  cis'4
          d' d' d' d'
          d' d' d'2\fermata
          r4 d' d' d'8 [c']
          bes4 ees' d'4. c'8
          bes2.\fermata } bes4
          a a a8 [g] f [g]
          a4 bes c'2\fermata
          r4 c' c' bes8. [c'16]
          d'4 d'8 [c'] bes [a16 g] a4
          bes2.\fermata
          bes4
          a d' c' bes
          ees' e' fis'\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          d d'8 [c'] bes4 a8 [g]
          fis4 g d2\fermata
          r4 a, bes,8 [c] d4
          ees d8 [c] d2
          g,2.\fermata } g4
          cis d a, bes,
          a, g, f,2\fermata
          r4 f, c g,
          d bes, ees d
          g,2.\fermata
          g4
          fis g a bes
          c' cis' d'\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      \tweak X-offset #-9 \markup{\concat{\small "Texte 1. " "Du"}} stellst, mein Je -- su, sel -- ber dich
      zum Vor -- bild wah -- rer Lie - be:
      dass ich bei al -- lem, wo ich kann,
      stets lieb und hel -- fe je -- der -- mann
      Nach dei -- nem Wort und Wei - se.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      gib mir auch Gnad und Kraft, dass ich
      Gott und den Näch -- sten lie - be:
    }

versoOneLyricsB = \lyricmode {\set stanza = 1
      \tweak X-offset #-9 \markup{\concat{\small "Texte 2. " "Herr,"}} durch den Glau -- ben wohn in mir,
      Lass ihn sich im -- mer stär - ken,
      dass er sei tä -- tig durch die Lieb,
      mit Freu -- den und Ge -- duld sich üb,
      dem Näch -- sten fort zu die - nen.
    }

versoTwoLyricsB = \lyricmode {\set stanza = 2
      dass er sei frucht -- bar für und für
      und reich in gu -- ten Wer - ken;
    }
