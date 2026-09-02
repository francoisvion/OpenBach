sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          g'8 [a'] b'4 a' g'
          a' a' b'\fermata g'8 [a']
          b'4 c'' d'' c''8 [b']
          a' [g'] a'4 g'\fermata } b'
          b' a' g' fis'
          g'8 [a'] b'4 a'\fermata a'
          g' fis' g' d'
          g' a' b'\fermata g'8 [a']
          b'4 c'' d'' c''8 [b']
          a' [g'] a'4 g'\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          e'8 [fis'] g'4 g'8 [fis'] g'4
          g' fis' g'\fermata e'8 [fis']
          g' b'4 a'16 [g'] fis'4 g'
          g' fis' d'\fermata } g'
          g'4. fis'8 fis' [e'] e' [dis']
          e'4 d' d'\fermata d'
          d'8 [c'] d'4 d'8 [c'] b4
          b e' dis'\fermata b
          e' e' d'8 [e'16 fis'] g'4
          g' fis' d'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          b e' e'8 [d'] d'4
          e'8 [c'] a [d'] d'4\fermata e'
          d' g8 [a] b [c'] d'4
          d' c'8 [b] b4\fermata } d'
          d' d'8 [c'] b [c'] fis [b]
          b [a] a [g] fis4\fermata fis
          g8 [a] b [c'] b [a] g4
          g fis8 [e] fis4\fermata e8 [fis]
          g4. a8 b [c'] d'4
          d' c'8 [b] b4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g8 [fis]
          e4. d8 c4. b,8
          c [a,] d4 g,\fermata c
          g8 [fis] e4 b8 [a] g4
          d' d g\fermata } g8 [a]
          b [c'] d'4 g8 [a] b4
          e8 [fis] g4 d\fermata d'8 [c']
          b4. a8 g4. fis8
          e [d] c4 b,\fermata e
          e8 [d] c4 b,8 [a,] g,4
          d2 g,4\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Ich steh an dei -- ner Krip -- pen hier,
      o Je -- su -- lein, mein Le - ben;
      Nimm hin! Es ist mein Geist und Sinn,
      Herz, Seel und Mut, nimm al -- les hin,
      und lass dirs wohl -- ge -- fal - len!
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      ich kom -- me, bring und schen -- ke dir,
      was du mir hast ge -- ge - ben.
    }
