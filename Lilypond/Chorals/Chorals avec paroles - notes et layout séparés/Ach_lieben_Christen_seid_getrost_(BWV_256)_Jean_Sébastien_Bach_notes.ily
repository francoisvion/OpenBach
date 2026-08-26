sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4 c''4
          c'' a'8 [b'] c'' [d''] e''4
          d''8 [e''16 f''] d''4 c''\fermata c''
          b' a'8 [b'] c''4 d'' 8 [c'']
          b'2 a'4\fermata }
          \partial 4 d'' \bar "|"
          e'' e'' b'8 [c''8] d''4
          c'' c'' b'\fermata c''
          d'' a'8 [b'] c''4 b'
          a'16 [b' c''8] a'4 g'\fermata c''
          b' a'8 [b'] c''4 d''8 [c'']
          b'2 a'4\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 e'8 [f']
          g'4 f' g' g'
          a' g'8 [f'] e'4\fermata fis'
          g' f' e' a'
          a' gis' e'\fermata }
          \partial 4 g' \bar "|" 
          g' g' d'8 [e'] f'4
          e' a' gis'\fermata a'
          a'8 [g'] fis'4 e' d'8 [g']  
          g' [e']  fis'4 d'\fermata e'
          d'8 [e' fis' f'] e'4 a'~
          a' gis' e'\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4 c'4
          c' c' c' c'
          c' b g\fermata a
          d' d' c'8 [b] a4
          f' e'8 [d'] cis'4\fermata }
          \partial 4 b \bar "|"
          c' g8 [a] b4 a8 [b]
          c' [d'] e'4 e'\fermata  e'
          a d' g8 [a b d']
          e'4 d'8 [c'] b4\fermata g8 [a]
          b [c'] d'4 c'8 [b a c']
          f' [d' b e'] cis'4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 a4
          e f e8 [d] c4
          f g c\fermata a
          g d' a8 [g f e]
          d4 e a,\fermata }
          \partial 4 g,
          c8 [d e f] g4 f
          a,8 [ b, c d] e4\fermata a8 [g]
          fis [e] d4 e8 [fis] g4 
          c d g,\fermata e8 [fis]
          g4 fis8 [gis] a [g f e] 
          d8 [b,] e4 a,4\fermata \fine
        }

sopranoLyrics = \lyricmode {
      Ach lie -- ben __ Chris -- ten, seid ge -- trost,
      Wie thut ihr so ver -- za -- gen?
      Die Straf' wir wohl ver -- die -- net han,
      Das muß be -- ken -- nen Je -- der -- mann,
      Nie -- mand darf sich aus -- schlie -- ßen.

    }

sopranoLyricsTwo = \lyricmode {
      Weil uns der Herr heim -- su -- chen tut,
      laßt uns von Her -- zen sa -- gen:
    }
