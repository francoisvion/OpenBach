sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  f'4
          f'8 [g'] a'4 g' f'
          e'2 d'4\fermata a'
          bes' g' a' g'
          f'2.\fermata } f'8 [g']
          a'4 a' bes' bes'
          c''2 g'4\fermata c''
          a' a' g' f'
          e'2 d'4\fermata a'
          bes' g' a' g'
          f'2.\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'4
          d'8 [e'] f'4 e' d'
          d' cis' a\fermata fis'
          g'8 [f'] e'4 f' e'
          c'2.\fermata } c'4
          f' fis' g' g'
          g' f' e'\fermata g'
          f' ees' d' d'
          d' cis' d'\fermata fis'
          g'8 [f'] e'4 f' e'
          c'2.\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a4
          bes c' c'8 [bes] a4
          bes a8 [g] f4\fermata d'
          d' c' c' c'8 [bes]
          a2.\fermata } a4
          d' d' d' d'
          c'2 c'4\fermata c'
          c' c' bes b
          e8 [f] g4 f\fermata c'
          d' c' c' c'8 [bes]
          a2.\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f4
          bes, f c d
          g, a, d\fermata d
          g,8 [a,] bes,4 a,8 [f,] c4
          f,2.\fermata } f8 [e]
          d4 c bes,8 [a,] g,4
          a,4. bes,8 c4\fermata e
          f fis g gis
          a a, bes,\fermata a,
          g,8 [a,] bes,4 a,8 [bes,] c4
          f,2.\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Er tödt uns durch dein Gü -- te,
      er -- weckt uns durch dein Gnad;
      wohl hier auf die -- ser Er -- den,
      den Sinn und all Be -- gier -- den
      und G'dan -- ken hab'n zu dir.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      den al -- ten Men -- schen krän -- ke,
      daß der neu' Le -- ben hab
    }
