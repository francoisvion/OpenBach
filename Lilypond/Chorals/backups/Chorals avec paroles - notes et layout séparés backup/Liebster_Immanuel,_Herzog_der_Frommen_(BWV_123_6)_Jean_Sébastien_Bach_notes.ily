sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          d''2 d'' d''
          cis''2. b'4 a'2\fermata
          b' g' fis'4 e'
          e'1 d'2\fermata
          a' a' fis'
          b'2. cis''4 d''2\fermata
          d'4 e' e'2. fis'4
          fis'1.\fermata }
          fis'2 fis' g'
          a' fis'1\fermata
          b'2 ais' b'
          cis''\glissando \override NoteColumn.force-hshift = #0 fis'1\fermata \glissando
          d''2 cis'' b'
          ais'2. fis'4 b'2
          cis''4 d'' ais'2. b'4
          b'1.\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          fis'2 fis' eis'4 fis'
          gis'2 eis' fis'\fermata
          g' e' d'
          d' cis' a\fermata
          d' e' d'
          d' g' fis'\fermata
          fis' e'4 d' cis' b
          cis'1.\fermata }
          d'2 d' d'
          e' d'1\fermata
          fis'2 e' fis'
          fis'\glissando \override NoteColumn.force-hshift = #0 ais'1\fermata\glissando
          fis'2 g' e'
          fis'2. fis'4 fis'2
          g' fis' fis'
          fis'1.\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          b2 b b4 a
          gis2 cis' cis'\fermata
          d' e'4 a a2
          a2. g4 fis2\fermata
          a a a
          g4 a b2 b\fermata
          b b e'
          ais1.\fermata }
          b2 b b
          a a1\fermata
          b2 cis' d'
          ais cis'1\fermata
          b2 ais b
          cis'2. cis'4 b2
          e'4 d' cis'2 cis'
          dis'1.\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          b,2 b4 a gis fis
          eis2 cis fis\fermata
          b, cis d
          a a, d\fermata
          fis cis d
          g e b,\fermata
          g, g, g
          fis1.\fermata }
          b,2 d e
          cis d1\fermata
          d2 cis b,
          fis fis1\fermata
          b2 e g
          fis e d
          e fis fis,
          b,1.\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Drum fahrt nur im -- mer hin,
      ihr Ei -- tel - kei -- ten,
      du, Je -- su, du bist mein,
      und __ _ ich bin dein;
      Mein gan -- zes Le -- ben
      sei dir er -- ge -- ben,
      bis man mich ein -- sten legt ins __ _ Grab hin -- ein.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      ich will mich von der Welt
      zu dir be - rei -- ten;
      du sollst in mei -- nem Herz
      und __ _ Mun -- de sein.
    }
