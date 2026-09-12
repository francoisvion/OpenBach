sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          a'4 g'8 [fis'] b'4 cis''
          d'' d'' cis''2\fermata
          b'8 [cis''] d''4 a'8 [g'] fis'4
          g' fis' e' d'\fermata }
          fis' gis' ais' b'8 [cis'']
          d''4 cis'' b'2\fermata
          cis''4 d'' e'' fis''
          e'' e'' d''2\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          fis'4 e'8 [d'] d' e'4 fis'8
          fis'4. e'8 e'2\fermata
          e'4 d' e' d'
          d' d'~ d'8 cis' a4\fermata }
          b8 fis'4 e'8 fis'4 fis'8 [e']
          fis'4 fis' fis'2\fermata
          g'4 a' a' a'
          b' a'8 [g'] fis'2\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          a4 a~ a8 g4 a16 [g]
          fis8 [b] a [gis] a2\fermata
          b4 a a a
          g a8 b~ b a16 [g] fis4\fermata }
          b b cis' b
          b ais8 [e'] d'2\fermata
          e'4 fis' e' d'
          d' cis' a2\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          d4 d g, a,
          b, e a,2\fermata
          g4 fis cis d8 [c]
          b, [bes,] a, [gis,] a,4 d\fermata }
          dis e e8 [d] g4
          fis8 [e] fis4 b,2\fermata
          e4 d d8 [cis] d4
          g a d2\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Auf mein Herz des Her -- ren Tag
      hat die Nacht der Furcht ver -- trie -- ben:
      Nun -- mehr bin ich recht ge -- tröst,
      Je -- sus hat die Welt er -- löst.
    }

sopranoVersoOneLyrics = \lyricmode {\set stanza = 1
      Chri -- stus, der ver -- gra -- ben lag,
      ist im To -- de nicht ge -- blie -- ben.
    }
