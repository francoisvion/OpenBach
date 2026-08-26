sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  cis''4
          a' b' cis'' e''
          d'' d'' cis''\fermata e''
          d'' cis'' b' b'
          cis''2.\fermata } b'4
          b' b' cis'' b'
          a' b' gis'\fermata gis'
          a' b' cis'' b'8 [cis'']
          d''4 cis'' b'2
          a'2.\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a'4
          fis' gis' a' b'
          a' b' a'\fermata a'
          a' a' a' gis'
          a'2.\fermata } gis'4
          e' gis' a' gis'
          fis' gis' eis'\fermata eis'
          fis' gis' a' e'
          a' a' a' gis'
          e'2.\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          d' d' e' e'
          fis' e' e'\fermata e'
          fis' e' fis' e'
          e'2.\fermata } e'4
          b e' e' e'8 [d']
          cis'4 d' cis'\fermata cis'
          cis' e' e'2
          d'4 e' fis' e'8 [d']
          cis'2.\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a,4
          d8 [cis] b,4 a, gis,
          fis, gis, a,\fermata cis
          fis8 [gis] a4 d e
          a,2.\fermata } e8 [fis]
          gis4 e a e
          fis b, cis\fermata cis
          fis e a gis
          fis e d e
          a,2.\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Du Frie -- de -- fürst, Herr Je -- su Christ,
      wahr' Mensch und wah -- rer Gott,
      drum wir al -- lein im Na -- men dein
      zu dei -- nem Va - - ter schrei -- en.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      ein star -- ker Noth -- hel -- fer du bist
      im Le -- ben und im Tod:
    }
