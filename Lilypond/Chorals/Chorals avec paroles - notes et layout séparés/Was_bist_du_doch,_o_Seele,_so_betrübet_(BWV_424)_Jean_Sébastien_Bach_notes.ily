sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          r4 e'' c''4. b'8
          a'4\fermata e'' f'' e''8 [d'']
          c''4 d'' e'' e''\fermata }
          r c'' d''4. g'8
          g'2\fermata r4 d''
          e''4. c''8 c''2\fermata
          r4 e'' f'' e''
          d'' c'' b'4. a'8
          gis' [e''] d'' [c''] b'2
          a'\fermata r \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          r4 a' a' gis'
          e'\fermata a' a' gis'
          e' a' gis' gis'\fermata }
          r a' g' f'~
          f' e'\fermata r g'
          g' g' f'2\fermata
          r4 g' f'8 [a'] gis'4
          a'8 [d'] e'4 f' e'
          d' a'2 gis'4
          e'2\fermata r \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
           r4 c'8 [d'] e'4 e'8. [d'16]
          c'4\fermata c' b b
          a8 [c'] b [a] b4 b\fermata }
          r e' d' d'
          c'2\fermata r4 d'
          c' c'8 [bes] a2\fermata
          r4 cis' d'4. c'8
          c' b4 a gis a8
          b4 e' e' e'8 [d']
          cis'2\fermata r \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          r4 a, a e
          a,\fermata e d e
          a f e e\fermata }
          r a, b,2
          c\fermata r4 b,
           c e f2\fermata
          r4 e d e
          f e d c
          b, a, e e,
          a,2\fermata r \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Was bist du doch, o See -- le so be -- trü -- bet,
      Was grämst du dich,
      so äng -- stig -- lich,
      als wür -- dest du drum nicht von Gott ge -- lie -- bet?
    }

versoTwoLyrics = \lyricmode {\set stanza = 2  
    dass dir der Herr ein Kreuz zu tra -- gen gie -- bet?
    }
