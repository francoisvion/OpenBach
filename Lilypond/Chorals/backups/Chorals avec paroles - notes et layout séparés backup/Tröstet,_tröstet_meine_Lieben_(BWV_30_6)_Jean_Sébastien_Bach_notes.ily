sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          a'4 b' cis'' b'
          a' gis' fis'2
          e'\fermata a'4 b'
          cis'' d'' cis'' b'
          a'1\fermata }
          cis''4 d'' e'' d''
          cis'' b' cis''2\fermata
          e''4 e'' fis'' e''
          d'' cis'' b'2\fermata
          cis''8 [d''] e''4 d'' cis''8 [b']
          a'4 b' cis''2
          a'\fermata cis''8 [d''] e''4
          d'' cis'' b' cis''8. [d''16]
          b'2 a'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          e'4 e' a' dis'
          e'8 [fis'] fis' [e'] e'4 dis'
          b2\fermata fis'4 fis'8 [e']
          fis'4 b' b'8 [a'] a' [gis']
          e'1\fermata }
          a'4 a'8 [g'] g'4 fis'8 [gis']
          ais'4 b'8 [b] fis'2\fermata
          e'4 a'8 [g'] fis'4 gis'
          a'8 e'4 fis'8 gis'2\fermata
          a'4 b' a' gis'
          gis'8 [fis'] fis' [gis'] a'4 gis'
          fis'2\fermata ais'4 b'8 [fis']
          fis' [gis'] a'4 gis' a'
          a'8 [gis'16 fis'] gis'4 e'2\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          cis'4 e' e'8 [fis'] fis' [gis']
          cis' [b] b4 cis' b8 [a]
          gis2\fermata cis'4 b
          b8 [a] a [gis] e'4 e'8 [d']
          cis'1\fermata }
          e'4 b b8 [ais] b4
          fis8 fis'4 e'8 ais2\fermata
          a8 [b] cis'4 cis'8 [b] b [cis']
          cis' [b] cis' [dis'] e'2\fermata
          e'4 e' a8 [b] cis'4
          cis' d'8 [b] fis'4. eis'8
          cis'2\fermata fis'4 b8 [cis']
          d'4 e' e' e'
          e'4. d'8 cis'2\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          a,4 gis, a, b,
          cis8 [dis] e4 a, b,
          e,2\fermata fis,4 gis,
          a, b, cis8 [d] e4
          a,1\fermata }
          a,4 b, cis d8 [e]
          fis4 g fis2\fermata
          cis8 [b,] a,4 d e
          fis8 [gis] a4 e2\fermata
          a4 a8 [gis] fis4 eis
          fis8 [e] d4 a,8 [b,] cis4
          fis,2\fermata fis,4 gis,8 [ais,]
          b,4 cis8 [d] e [d] cis [a,]
          e4 e, a,2\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Ei -- ne Stim -- me läßt sich hö -- ren
      in der Wüs -- te weit und breit,
      ma -- chet Gott ein eb -- ne Bahn,
      al -- le Welt soll he -- ben an,
      al -- le Tä -- ler zu er -- hö -- ren,
      daß die Ber -- ge nie -- drig ste -- hen.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      al -- le Men -- schen zu be -- keh -- ren:
      macht dem Herrn den Weg be -- reit,
    }
