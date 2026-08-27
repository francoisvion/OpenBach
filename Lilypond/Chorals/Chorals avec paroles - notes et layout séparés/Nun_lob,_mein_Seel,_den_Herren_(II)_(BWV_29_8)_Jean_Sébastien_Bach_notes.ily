sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d''4
          d''2 cis''4
          b'2 a'4
          d'' e''2
          fis''\fermata fis''4
          fis''8 [e''] fis''2
          fis'' e''4
          d''8 [e''] e''2
          d''\fermata } d''4
          d'' e'' fis''
          e''2 fis''8 [e'']
          d'' [e''] cis''2
          b'\fermata e''4
          e'' d'' cis''
          d''8 [cis''] b'2
          a'\fermata a'4
          d''2 d''4
          e''2 e''4
          fis'' e'' fis''
          d''2\fermata d''4
          g''2 g''4
          fis''8 [e''] fis''2
          e''\fermata e''4
          fis''2 fis''4
          g''2 g''4
          a''4. g''8 fis'' [e'']
          d''2\fermata fis''4
          e'' d'' cis''
          d''8 [cis''] b'2
          a'\fermata a'4
          d''2 cis''4
          b'2 a'4
          e'' fis''2
          e''\fermata fis''4
          g'' fis'' e''
          fis''8 [g''] e''2
          d''\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a'4
          b' a' a'
          a' g' a'8 [g']
          fis'4 b' a'
          a'2\fermata a'4
          a'2 cis''4
          fis' b' e'
          a' b' a'8 [e']
          fis'2\fermata } a'4
          b' a' a'
          a'8 [b'] a' [g'] fis'4
          fis' g'8 [fis'] e' [fis']
          d'2\fermata e'4
          e'2 e'4
          a'2 gis'4
          e'2\fermata
          e'4
          d'8 [e'] fis'4 b'
          b' a' a'
          a'2.~
          a'4\fermata g' g'8 [a']
          b'4 a'8 [g'] c'' [b']
          a' [g'] c''4 b'8 [a']
          g'2\fermata
          a'4
          a' b'2~
          b'4 a'8 [g'] c'' [b']
          a' [g'] a'2~
          a'4\fermata g' a'
          b'2 a'4
          a'2 gis'4
          e'2\fermata
          e'4
          a'8 [gis'] a' [b'] e'4
          fis' cis' cis'8 [d']
          e'4 a'2
          a'\fermata a'4
          b' a' g'
          fis' g'8 [fis'] e'4
          fis'2\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis'4
          fis'2 fis'8 [e']
          d'4 e'8 [d'] cis'4
          d'2 cis'4
          d'2\fermata d'4
          d'2 cis'4
          d'2 cis'4
          d'2 cis'4
          a2\fermata } d'4
          g' cis' d'
          d' cis' cis'
          b2 ais4
          b2\fermata gis8 [a]
          b [gis] a [b] cis' [b]
          a4 fis' e'8 [d']
          cis'2\fermata cis'8 [b]
          a4 d'2~
          d'4 cis'8 [b] cis'4
          d' a d'
          b2\fermata b4
          e'2 e'4
          e'2 dis'4
          b2\fermata
          cis'4
          d'2 d'4
          g e'2~
          e'4 d'4. c'8
          b2\fermata d'8 [cis']
          b4 e'2
          d'8 [e'] fis'4 e'8 [d']
          cis'2\fermata
          cis'4~
          cis' b a
          a gis a
          a2 d'4
          cis'2\fermata d'4
          d'2 a4
          d'2 cis'4
          a2\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [cis']
          b4 fis2
          g8 [fis] e4 fis
          b8 [a] g4 a
          d2\fermata d4
          d'4. cis'8 b [ais]
          b [a] g [fis] g [e]
          fis4 g a
          d2\fermata } fis4
          g8 [a] g [fis] e [d]
          a2 ais4
          b e fis
          b,2\fermata cis4
          gis8 [e] fis [gis] a [gis]
          fis [e] d4 e
          a,2\fermata
          a8 [g]
          fis4 b8 [a] g [fis]
          g [e] a [g] fis [e]
          d [e] d [cis] d [fis]
          g2\fermata g8 [fis]
          e4 fis8 [g] a [b]
          c'4 a b
          e2\fermata
          a4
          d'8 [cis'] b [a] g [fis]
          e d' c' [b] a [g]
          fis [g] fis [e] d4
          g2\fermata d'4
          gis8 [e] fis [gis] a [gis]
          fis [e] d4 e
          a,2\fermata
          a8 [gis]
          fis [e] fis [gis] a4
          dis8 [cis] dis [eis] fis [e]
          d [cis] d2
          a,\fermata d8 [cis]
          b, [a,] b, [d] cis [e]
          d4 g, a,
          d2\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      \repeat unfold 8 { \skip1 }
      Gott Va -- ter, Sohn, Hei -- li -- gem Geist!
      \repeat unfold 31 { \skip1 }
      ihm tröst -- lich soll'n an -- han - - gen.
      \repeat unfold 7 { \skip1 }
      A -- men, wir wer -- dens er -- lan -- gen,
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      \repeat unfold 8 { \skip1 }
      Was er uns aus Gna -- den ver -- heißt,
    }

altoVersoOneLyrics = \lyricmode {\set stanza = 1
      Sei Lob __ _ und Preis __ _ mit Eh - - ren
      Gott Va -- ter, Sohn __ _ Hei -- li -- gem __ _ Geist!      
      daß wir __ _ ihm fest __ _ ver -- trau - - en,
      gänz -- lich ver -- laß'n auf ihn,
      von Her - zen auf __ _ ihn bau -- en,
      daß uns'r __ _ Herz, Mut und __ _ Sinn
      ihm tröst - lich soll'n an -- han -- gen.
      drauf sin -- gen wir zur Stund:
      A - - men, wir wer -- dens er -- lan -- gen,
      Glaub'n wir __ _ aus Her -- zens - grund.
    }

altoVersoTwoLyrics = \lyricmode {\set stanza = 2
      Der woll' __ _ in uns __ _ ver -- meh - - ren,
      Was er uns aus __ _ Gna -- den __ _ ver -- heißt,
    }

tenorVersoOneLyrics = \lyricmode {\set stanza = 1
      \repeat unfold 50 { \skip1 }
      ihm tröst -- lich soll'n an -- han - gen.
      \repeat unfold 7 { \skip1 }
      A -- men, wir wer -- dens er -- lan - gen,
    }

bassVersoOneLyrics = \lyricmode {\set stanza = 1
      \repeat unfold 10 { \skip1 }
      Gott Va - - - ter, Sohn Hei -- li -- gem Geist!      
      \repeat unfold 37 { \skip1 }
      ihm tröst - lich soll'n an -- han - - - - gen.
      \repeat unfold 18 { \skip1 }     
      Glau - ben wir aus Her -- zens -- grund.
    }

bassVersoTwoLyrics = \lyricmode {\set stanza = 2
      \repeat unfold 10 { \skip1 }
      Was er __ _ _ _ uns aus Gna -- den ver -- heißt,
    }
