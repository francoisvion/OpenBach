sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          b'2 e'4 b'
          c'' b'8 [a'] g'4 a'
          b'2\fermata b'
          c''4 d'' c''8 [b'] a'4 g'
          f' e'2\fermata }
          a' g'4 c''
          b' a' d''8 [c''] b'4
          a'2\fermata c''
          b'4 c'' d'' g'
          b' a' g'2\fermata
          g' c''4 b'
          a' e' g' f'
          e'1\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          e'2 e'4 gis'
          a' g'8 [fis'] e'4 fis'
          gis'2\fermata gis'
          a'4 b' c'' f'
          e' d'8 [c'] b2\fermata }
          e' d'4 e'8 [fis']
          g'4 a' b'8 [a'] gis'4
          e'2\fermata a'
          g'4 g' g'8 [f'] e'4
          d' c' b2\fermata
          e' e'4 e'8 [d']
          c'4 c' d'2~
          d'4 c' b2\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          gis2 a4 d'
          e' d' e'8 [d'] c'4
          b2\fermata e'
          e'4 f' g' c'
          c'8 [b] a4 gis2\fermata }
          a b4 c'
          d' d'8 [e'] f'4 b
          c'2\fermata e'
          e'4 e' d' c'
          fis8 g4 fis8 g2\fermata
          g a4 gis
          a g g a
          b a gis2\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          d2 c4 b,
          a, b, c8 [b,] a,4
          e2\fermata e
          a4 g8 [f] e4 f
          c d e2\fermata }
          c b,4 a,
          g,8 [g] f [e] d4 e
          a,2\fermata a
          e4 d8 [c] b,4 c
          d d, g,2\fermata
          c a,4 e
          f c bes, a,
          gis, a, e,2\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Ob bei uns ist der Sün -- den viel,
      bei Gott ist viel mehr Gna - de,
      Er ist al -- lein der gu -- te Hirt,
      der Is -- ra -- el er -- lö -- sen wird
      aus sei -- nen Sün -- den al - len.
    }

sopranoVersoOneLyrics = \lyricmode {\set stanza = 1
      sein' Hand zu hel -- fen hat kein Ziel,
      Wie groß auch sei der Scha - de.
    }

altoLyrics = \lyricmode {
      \repeat unfold 37 {\skip1}
      al - len.
    }
