sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          b'4 b' a' g'
          fis'2 e'\fermata
          b'4 cis'' d'' b'
          e''2 dis''\fermata
          e''8 [fis''] g''4 fis''4. fis''8
          e''1\fermata }
          b'4 b' c'' b'
          a' a' g'2\fermata
          b'4 cis'' d'' b'
          e'' d'' cis''2
          b'\fermata b'4 b'
          a' g' fis'2
          e'1\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          r8 g' b' g' g' fis'4 e'8
          e' [dis'16 cis'] dis'4 e'8\fermata dis' e' fis'
          g'16 [fis'] g'8 r e' a'4. g'16 [fis']
          g'8 a'16 [b'] a'4 b'\fermata r8 c''
          b' [a'] g' [b'] c'' [a'] fis'4
          b'8 gis' e' a' gis'2\fermata }
          g'8 ([a']) a' ([g']) g' ([a']) a' ([g'])
          g'4 fis' g'8\fermata d' [e'] fis'
          g' d' g'4 r8 a'4 g'16 [fis']
          e'8 g' fis' b' b'4 ais'
          b'8\fermata fis' b' a' g'2~
          g'8 fis'4 e'8 e' [d'16 cis'] d'4 ~ 
          d'8 [e'16 d'] c' [b c'8] b2\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          r8 b e' b e' dis' e' g
          c' [b16 a] b8 [a] g\fermata a g fis
          e e r4 r8 fis d' a
          b a16 [g] e' [dis' e'8] fis'4\fermata r
          r8 dis' e'4. e'8 d'4~
          d' c'16 [b c'8] b2\fermata }
          e'8 ([fis']) fis' ([e']) e' ([d']) d' ([e'])
          e'4 d'8 [c'] c' [b]\fermata c' a
          g b e' a4 g16 [fis] d'4 ~
          d'8 cis' d' [e'16 fis'] g'8 [cis'] fis' [e']
          dis'4\fermata r8 b e' e'16 [dis'] e'4~
          e'8 [dis'] e' [g] c' [a] fis b
          b [gis] e a4 gis8 gis4\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          r8 e g e c' r r b
          a fis b [b,] e4\fermata r
          r8 e a g fis d g4~
          g8 fis16 [e] c'4 b8\fermata c' [b] a
          g [fis] e [g] a [fis] b [a]
          gis e [a] a, e2\fermata }
          e8 ([dis]) dis ([e]) e ([fis]) g ([e])
          c [cis] d4 g,2\fermata
          r8 g4 fis16 [e] fis8 d g fis
          gis [ais] b [g] e [eis] fis4
          b,2\fermata r8 e g e
          c' r r b a [fis] b [a]
          gis [e] a [a,] e2\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Weg mit al -- len Schä -- tzen,
      du bist mein Er -- gö -- tzen,
      Je -- su, mei -- ne Lust!
      E -- lend, Not, Kreuz, Schmach und Tod
      soll mich, ob ich viel muß lei -- den,
      nicht von Je -- su schei -- den.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Weg ihr eit -- len Eh -- ren,
      ich mag euch nicht hö -- ren,
      bleibt mir un -- be -- wußt!
    }

altoVersoOneLyrics = \lyricmode {\set stanza = 1
      Weg, weg, mit al - len Schä - tzen,
      mit al -- len Schä -- tzen,
      du, du bist mein Er -- gö -- tzen,
      Je - su, mei -- ne Lust, mei - ne Lust!
      E -- lend, Not, Kreuz, Schmach und Tod,
      Schmach und Tod soll mich, ob __ _ _ ich viel muß lei - den,
      nicht, nicht von Je - su schei - - den.
       }

altoVersoTwoLyrics = \lyricmode {\set stanza = 2
      Weg, weg, ihr eit - len Eh - ren,
      ihr eit -- len Eh -- ren,
      ich ich mag duch nicht hö -- ren,
      bleibt __ _ mir un -- be -- wußt, un - be -- wußt!
    }

tenorVersoOneLyrics = \lyricmode {\set stanza = 1
        Weg, weg, weg, weg, mit al -- len Schä - tzen,
        mit al -- len Schä -- tzen,
        Du, du bist mein Er -- gö -- tzen,
        Je - su, mei -- ne Lust!
        E -- lend, Not, Kreuz, Schmach und Tod,
        Schmach und Tod soll mich, ob ich viel __ muß lei - - den,
        nicht, nicht von Je -- su schei -- den, von Je -- su schei - den
       }

tenorVersoTwoLyrics = \lyricmode {\set stanza = 2
         Weg, weg, weg, weg, ihr eit -- len Eh - ren,
         ihr eit -- len Eh -- ren,
         ich, ich mag euch nicht hö -- ren,
         bleibt __ _ mir un -- be -- wußt!
       }

bassVersoOneLyrics = \lyricmode {\set stanza = 1
         Weg, weg, weg, weg, mit al -- len Schä -- tzen,
         Du, du bist mein Er -- gö - - tzen,
         Je -- su, Je -- su mei -- ne Lust, mei -- ne Lust.
         E -- lend, Not, Kreuz, Schmach und Tod
         soll mich, ob ich viel muß lei - - - den,
         nicht, nicht, nicht, nicht von Je -- su schei -- den.
       }

bassVersoTwoLyrics = \lyricmode {\set stanza = 2
         Weg, weg, weg, weg,  ihr eit -- len Eh -- ren,
         ich mag euch nicht hö -- ren,
         mir un -- be -- wußt!
    }
