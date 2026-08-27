sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a'8 [b']
          cis''4 d'' e'' d''
          cis'' b' cis''\fermata cis''
          cis'' b'8 [cis''] d'' [cis''] b'4
          a' b' a'\fermata } a'
          b' cis'' d'' cis''
          b' cis'' b'\fermata b'
          cis'' d'' e'' d''
          cis'' b' cis''\fermata cis''
          cis'' b'8 [cis''] d'' [cis''] b'4
          a'8 [fis'] gis'4 a'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          a' a' gis' fis'8 [gis']
          a'4 gis' a'\fermata e'
          fis' fis'8 [e'] d'4 e'
          e'8 a'4 gis'8 e'4\fermata } e'
          e' e' d'8 [e'] fis'4
          fis'8 [e'] e' [d'16 cis'] d'4\fermata e'
          e' fis' gis' fis'
          e' d'8 [fis'16 eis'] fis'4\fermata e'
          fis' fis'8 [e'] d'4 e'
          e'8 [fis'] e'4 e'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  cis'8 [d']
          e'4 fis' b8 [cis'] d'4
          e' e' e'\fermata a
          a2. d'8 [b]
          e' [d'16 cis'] d'4 cis'\fermata } cis'
          gis ais b ais
          b ais fis\fermata b
          a a b a8 [b]
          cis'4 fis8 [gis] ais4\fermata a
          a2 b4 gis
          a8 [d'] b4 cis'\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a,4
          a8 [gis] fis4 e b,
          cis8 [d] e4 a,\fermata a8 [gis]
          fis [e] d [cis] b, [a,] gis,4
          cis8 [a,] e4 a,\fermata } a,
          e d8 [cis] b,4 e8 [fis]
          g4 fis b,\fermata gis
          a8 [gis] fis4 e fis8 [gis]
          a [ais] b4 fis\fermata a8 [gis]
          fis [e] d [cis] b, [cis] d4
          cis8 [d] e4 a,\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Der Herr ist mein ge -- treu -- er Hirt,
      dem ich mich ganz ver -- trau - e,
      zum fri -- schen Was -- ser leit' er mich,
      mein Seel zu la -- ben kräf -- tig -- lich
      durchs se -- lig Wort der Gna - den.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
       zu Weid er mich, sein Schäf -- lein, führt,
       auf schö -- ner grü -- nen Au - e,

    }
