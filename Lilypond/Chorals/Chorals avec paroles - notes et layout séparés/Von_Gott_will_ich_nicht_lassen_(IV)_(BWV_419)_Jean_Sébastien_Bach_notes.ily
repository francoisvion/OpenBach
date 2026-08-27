sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a'4
          a' b' c'' d''
          b'4. a'8 g'4\fermata g'
          a' a' b' b'
          e'2.\fermata } e''4
          d'' c'' b' a'
          b'2.\fermata b'4
          c'' d'' e'' e''
          d''2 b'4\fermata d''
          c'' b' a' a'
          b'4. a'8 g'4\fermata f'
          e' a'8 [b'] c''4 b'
          a'2.\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          f' f' g' a'
          g' fis' e'\fermata e'
          e' d'8 [e'] f'4 e'8 [d']~
          d' [c'16 b] c'2\fermata } e'8 [fis']
          gis'4 a'8 [g'] f'4 e'8 [fis']
          gis'2.\fermata gis'4
          a' b' c''8 [b'] a' [g']
          a' [g'] fis'4 g'\fermata f'
          e'8 a'4 g'8 g' [f'16 e'] f'4
          fis'8 [dis'] e' [fis'] b4\fermata b
          c' c'8 [d'] e'4 e'8 [d']
          c'2.\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c'4
          c' d' g d'
          d'8 [e'] fis'4 b\fermata b
          a a a gis
          a2.\fermata } g8 [a]
          b4 e'8 [c'] d' [b] c'4
          b2.\fermata e'4
          e' f' g' c'8 [b]
          a4 d' d'\fermata b
          a8 [e'] e'4 e'8 [d'16 cis'] d'8 [c']
          b [a] g [fis] e4\fermata f
          g a a gis
          a2.\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a8 [g]
          f4 e8 [d] e4 fis
          g dis e\fermata e8 [d]
          c4 f8 [e] d4 e
          a2.\fermata } c4
          b,8 [b] a4 gis a
          e2.\fermata e4
          a g8 [f] c'4 e
          fis e8 [d] g4\fermata gis
          a e f4. e8
          dis [b,] cis [dis] e4\fermata d
          c f e8 [d] e4
          a,2.\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Von Gott will ich nicht la - ßen,
      denn er läßt nicht von mir,
      Er reicht mir sei -- ne Hand,
      den A -- bend und den Mor -- gen
      thut er mich wohl ver -- sor - gen,
      sei wo ich wolf im Land.      
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      führt mich durch al -- le Stra - ßen,
      da ich sonst irr -- te sehr.
    }
