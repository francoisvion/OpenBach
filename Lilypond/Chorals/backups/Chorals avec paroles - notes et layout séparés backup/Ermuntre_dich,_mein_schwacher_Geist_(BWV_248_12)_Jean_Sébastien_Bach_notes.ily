sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          g' a' b'8 [cis''] d''4
          d'' cis'' d''\fermata b'
          c'' b' a' b'
          a'2 g'4\fermata } a'
          a' b' c'' c''
          b'8 [a'] b'4 a'\fermata b'
          b' b' c''8 [d''] e''4
          e'' dis'' e''\fermata
          fis''
          g'' b' c'' b'
          a'2 a'4\fermata d''
          e'' d'' c'' b'8 [c'']
          a'2 g'4\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          e' fis' d'8 [e'] fis'4
          e'8 [fis'] g'4 fis'\fermata fis'
          e' d'8 [e'] fis'4 g'~
          g' fis' d'\fermata } fis'8 [g']
          a'4. gis'8 a' [gis'] a'4
          a' gis' e'\fermata e'8 [dis']
          e'4 e' e'8 [fis'] g' [fis']
          fis' [g'] a'4 g'\fermata a'
          g'8 [a'] b'4. a'4 g'8
          g'2 fis'4\fermata g'8 [fis']
          e'4 fis' g'8 [a'] d'4
          e' d' d'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          b8 c'4 d'8 b [a] a4
          a a a\fermata b8 [a]
          g [a] b [c'] d'4 d'
          d'4. c'8 b4\fermata } d'8 [e']
          fis' [e'] d'4 e' fis'
          b e'8 [d'] c'4\fermata g8 [a]
          b [c'] d' [e'] c'4 cis'
          b b b\fermata
          d'
          d' g' g8 [a] b4
          e'8 [d'] e' [cis'] d'4\fermata d'~
          d'8 c' c' [b] b [a] g4
          g8 [fis16 e] fis4 b\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g8 [fis]
          e4 d g fis8 [g]
          a4 a, d\fermata dis
          e8 [fis] g c~ c b, a, [g,]
          d4 d, g,\fermata } d
          d'8 [c'] b4 a dis
          e e, a,\fermata e8 [fis]
          g4 gis a ais
          b b, e\fermata
          d8 [c]
          b, [a,] g, [fis,] e, [fis,] g, [e,]
          cis [b,] cis [a,] d4\fermata b,
          c d e8 [fis] g4
          c d g,\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Brich an, o schö -- nes Mor -- gen -- licht,
      und laß dem Him -- mel ta -- gen!
      daß die -- ses schwa -- che Knä -- be -- lein
      soll un -- ser Trost und Freu -- de sein,
      da -- zu den Sa -- tan zwin -- gen
      und letzt -- lich Frie -- de brin -- gen!
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Du Hir -- ten -- volk, er -- schre -- cke nicht,
      weil dir die En -- gel sa -- gen,
    }
