sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a'4
          a' a' gis' e'
          a' b' c'' c''
          d'' c''16 [b' c''8] b'4\fermata b'
          c'' d''8 [e''16 f''] e''4 c''
          f'' f'' e''8 [d''] c'' [d'']
          d''2 c''4\fermata c''
          b' a' g'8 [fis'] e' [fis']
          g'4 g' a' g'
          f'2 e'4\fermata e''
          d'' c''8 [b'] b'2
          a'2.\fermata }
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  c'8 [d']
          e'4 e' e' b
          e'8 [fis'] gis'4 a' a'
          a'2 gis'4\fermata gis'
          a' g' g' f'
          a' a' a' e'
          a' g' g'\fermata a'
          a'8 [g'] g' [fis'] e'4 e'
          e'8 [d'] cis' [d'] e'4 e'
          e' d' cis'\fermata a'
          a'8 [b'] e' [d'] f'4 e'8 [d']
          cis'2.\fermata }
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a8 [b]
          c'4 c' b gis
          a d' e' e'
          f' a e'\fermata e'
          e' b c' a
          d' d' c' c'
          c' b e'\fermata e'
          fis'8 [e'] c'4 b b
          b bes a a
          a2 a4\fermata c'
          c'8 [b] a4 a gis
          e2.\fermata }
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          a,8 [b,] c [d] e [f] e [d]
          c [d] c [b,] a, [e] a [g]
          f [e] f [d] e4\fermata e
          a8 [g] f [g] c [d] e [f]
          d [e] f [g] a [b] a [g]
          f [e] f [g] c4\fermata a
          dis8 [e] fis [dis] e [fis] g [fis]
          e [f] e [d] cis [a,] b, [cis]
          d [e] f [g] a4\fermata a8 [g]
          fis [gis] a [f] d [b,] e4
          a,2.\fermata }
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      \tweak X-offset #-4 "8. Ach," gro -- ßer Kö -- nig, groß zu al -- len Zei - ten,
      wie kann ich gnug -- sam die -- se Treu aus -- brei -- ten? 
      Keins Men -- schen Her -- ze mag in -- des aus -- den -- ken,
      was dir zu schen -- ken.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      \tweak X-offset #-4 "9. Ich" kann's mit mei -- nen Sin -- nen nicht er -- rei - chen,
      wo -- mit doch dein Er -- bar -- men zu ver -- glei -- chen.
      Wie kann ich dir denn dei -- ne Lie -- bes -- ta -- ten
      im Werk er -- stat -- ten? _
    }
