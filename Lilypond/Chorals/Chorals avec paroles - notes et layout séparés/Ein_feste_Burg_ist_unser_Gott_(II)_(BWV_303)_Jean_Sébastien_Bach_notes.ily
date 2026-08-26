sopranoMusic = {
          \repeat volta 2 {
          \voiceOne
          \partial 4  d''4
          d'' d'' a'8 [b'] cis''4
          d''8 [cis''] b'4 a'\fermata d''
          cis'' b' a' b'8 [a']
          g' [fis'] e'4 d'\fermata }
          \partial 4  d'
          a' b' a' gis'
          a'\fermata d' a' b'8 cis''
          d''4\fermata cis'' d''8 cis'' b' [b']
          a'4\fermata
          \partial 32 * 24  b' b' a'
          b'8 [a'] g'4 fis'\fermata d''
          cis'' b' a' b'8 [a']
          g' [fis'] e'4 d'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a'4
          a'8 [g' fis' g'] a' [fis' g' a']
          fis' [e' d' e'] cis'4\fermata fis'
          e'8 [fis'] g'4 fis'8 [e'] d'4
          d' cis' a\fermata }
          \partial 4  d'
          cis'8 [fis'] e'4 cis'8 [d'] b4
          a\fermata d' d' g'8 g'
          fis'4\fermata fis' fis'16 [gis' a'8] a' [gis']
          a'4\fermata
          \partial 32 * 24 g' g' fis'
          fis' e' dis'\fermata fis'8 [gis']
          a'4 g' g' fis'8 [e']
          d'4 cis' a\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'8 [e']
          d'4 c'8 [b] d'4 e'
          a a8 [gis] a4\fermata fis8 [gis]
          a4 e'8 [d'] cis'4 b8 [cis']
          d'4 a8 [g] fis4\fermata }
          \partial 4  fis8 [gis]
          a [d' cis' b] e' [fis' e' d']
          cis'4\fermata fis8 [g] a4 e'8 e'
          d'4\fermata a b8 e' fis' [e']
          cis'4\fermata
          \partial 32 * 24 b8 [cis'] d'4 d'8 [c']
          b4 b b\fermata b
          e' e' e' d'8 [a]
          b4 e8 [a] fis4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [cis']
          b4 a8 [g] fis4 e
          d e a,\fermata b,
          cis8 [d] e4 fis g8 [a]
          b [g a a,] d4\fermata }
          \partial 4  d8 [e]
          fis4 gis a8 [d] e4
          a,\fermata b, fis e8 a,
          d4\fermata fis b,8 cis d [e]
          a,4\fermata
          \partial 32 * 24 e b8 [cis'] d4
          dis e b,\fermata b,
          cis8 [d e d] cis [a, d cis]
          b, [g,] a,4 d\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Ein' fe -- ste Burg ist un -- ser Gott, ein' gu -- te Wehr und Waf - fen.
      Der _ alt bö -- se Feind, mit Ernst er's jetzt meint,
      groß Macht und viel List sein grau -- sam Rüst -- zeug ist, auf Erd ist nicht seins Glei - chen.}

versoTwoLyrics = \lyricmode {\set stanza = 2
       Er hilf uns frei aus al -- ler Not, die uns jetz hat be -- tro - fen.}
