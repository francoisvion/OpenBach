sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d''8 r
          d''4 d'' a'8 [b'] cis''4
          d''8 [cis''] b'4 a'\fermata d''
          cis'' b' a' b'8 [a']
          g' [fis'] e'4 d'\fermata } d'
          a' b' a' gis'
          a'2\fermata d'4 a'
          b' cis'' d''\fermata cis''
          d'' cis'' b'2
          a'4\fermata b' b' a'
          b'8 [a'] g'4 fis'\fermata d''
          cis'' b' a' b'8 [a']
          g' [fis'] e'4 d'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a'4
          a'8 [g'] fis' [e'] d'4 e'
          a8 a'4 gis'8 e'4\fermata b'
          e'8 [fis'] g'4 fis'8 [e'] d' [cis']
          b4 cis' a\fermata } d'
          cis'8 [fis'] e'4 e'8 [fis'] e'4
          e'2\fermata d'4 d'8 [c']
          b [d'] g'4 fis'\fermata fis'
          fis' e'8 [a'] fis'4 e'8 [d']
          cis'4\fermata e' d'8 [e'] fis'4
          fis' fis'8 [e'] dis'4\fermata fis'
          e' d'8 [g'] g' [fis'16 e'] fis'4
          g'8 [b] cis'4 a\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'8 [e']
          d' [e'] fis' [g'] a'4 g'
          fis' b8 [e'] cis'4\fermata fis8 [gis]
          a4 e'8 [d'] cis'4 b8 [cis']
          d'4 a8 [g] fis4\fermata } fis8 [g]
          a [d'] cis' [b] cis'4 b
          cis'2\fermata fis8 [g] a4
          d' e' a\fermata a
          a8 [gis] a4 a gis
          e\fermata g8 [a] b [cis'] d' [c']
          b4 b b\fermata b8 [a]
          g [a] b4 e'8 [cis'] d'4
          d' a8 [g] fis4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [cis']
          b4 a8 [g] fis [g] fis [e]
          fis4 e a,\fermata b,
          cis8 [d] e4 fis g8 [a]
          b [g] a [a,] d4\fermata } d8 [e]
          fis4 gis a8 [d] e4
          a,2\fermata b,4 fis
          g e d\fermata fis
          b, cis d e
          a,\fermata e8 [fis] g4 d
          dis e b,\fermata b,
          e8 [fis] g [e] cis [a,] d [cis]
          b, [g,] a,4 d\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Das Wort sie sol -- len las -- sen stahn
      und kein' Dank da -- zu ha - ben.
      Neh -- men sie uns den Leib,
      Gut, Ehr, Kind und Weib,
      lass fah -- ren da -- hin,
      sie ha -- bens kein' Ge -- winn;
      das Reich muss uns doch blei - ben.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Er ist bei uns wohl auf dem Plan
      mit sei -- nem Geist und Ga - ben.
    }
