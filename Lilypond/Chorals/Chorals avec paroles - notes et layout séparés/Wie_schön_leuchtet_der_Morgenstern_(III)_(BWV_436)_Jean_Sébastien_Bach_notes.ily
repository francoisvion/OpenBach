sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          b' gis'8 [fis'] e'4 b'
          cis'' cis'' b'\fermata b'
          cis'' dis'' e'' dis''
          cis'' cis'' b'\fermata gis'
          cis'' b' a' gis'
          fis'2 e'4\fermata } r
          b'2 gis'\fermata
          b' gis'\fermata
          a'4 gis' fis' gis'
           a' gis' fis' gis'
          a' gis' fis'2
          e'\fermata e''4 dis''
          cis'' b' a' gis'
          fis'2 e'4\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b4
          b b cis' dis'
          gis' fis' fis'\fermata gis'
          a' a' gis' fis'
          fis'8 [gis'] fis' [e'] dis'4\fermata e'
          e' dis' e'8 [fis'] gis' [e']
          e'4 dis' b\fermata } r
          fis'2 e'\fermata
          fis' e'\fermata
          fis'4 e' dis' e'
          fis' e' dis' e'
          fis' e'8 [dis'] cis' [dis'16 e'] dis'4
          b2\fermata gis'4 fisis'
          gis' gis'8 [fis'] e'4 e'
          e' dis' b\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  gis4
          fis e8 [fis] gis [ais] b4
          b ais dis'\fermata e'
          e' fis' b b
          b ais b\fermata b
          a8 [gis] fis4 cis' b
          b4. a8 gis4\fermata } r
          b2 b\fermata
          dis' b\fermata
          cis'4 b b b
          b b b b
          cis'8 [dis'] e'4~ e'8 [cis'] b [a]
          gis2\fermata cis'8 [b] ais4
          gis dis' cis' b
          cis' b8 [a] gis4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          dis e cis gis
          e fis b,\fermata e
          a gis8 [fis] gis [ais] b4
          fis fis, b,\fermata e
          a, b, cis8 [dis] e4
          b,2 e4\fermata } r
          dis2 e\fermata
          b, e\fermata
          fis4 gis a8 [gis] fis [e]
          dis4 e b,8 [b] a [gis]
          fis4 cis8 [b,] a,4 b,
          e2\fermata cis4 dis
          eis8 [fisis] gis4 cis8 [dis] e4
          ais, b, e\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Wie schön leuch -- tet der Mor -- gen -- stern
      voll Gnad' und Wahr -- heit von dem Herrn,
      die sü -- ße Wur -- zel Jes -- se;
      Lieb -- lich,
      freund -- lich,
      schön und herr -- lich, Groß und ehr -- lich, Reich von Ga -- ben,
      hoch und sehr präch -- tig er -- ha -- ben.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      du Sohn Da -- vids aus Ja -- kobs Stamm
      mein Kö -- nig und mein Bräu -- ti -- gam,
      Hast mir mein Herz be -- ses -- sen.
    }
