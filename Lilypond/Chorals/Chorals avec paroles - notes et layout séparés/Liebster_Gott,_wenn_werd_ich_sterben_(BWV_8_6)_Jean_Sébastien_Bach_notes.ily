sopranoMusic = {
          \voiceOne
          \repeat volta 2 {
          r4 b'8 b' e''4 b'
          cis'' b' a'4. b'16 [a']
          gis'4 fis' r b'8 a'
          gis'4 cis''8 [b'] ais' [fis'] b'4~
          b' ais' b'2 }          
          r4 fis'8 gis' a'!4 gis'
          cis''4. dis''8 bis'2
          r4 cis''8 b' ais'4 b'
          b' ais' b' fis'8 fis'
          b'4. a'8 gis'4 cis''
          bis' cis''2 bis'4
          cis''2 r4 e''8 b'
          cis''4 gis'8 [a'] b'4. a'8
          gis'4 fis'8 [e'] dis'4 e'~
          e' dis' e'2\fermata \fine
        }

altoMusic = {
          \voiceTwo
          \repeat volta 2 {
          r2 r4 gis'8 gis'
          a'4. gis'8 gis' [fis'16 e'] fis'8 fis'
          e'4 dis' r2
          r4 gis'8 gis' fis'4 fis' 
          fis' fis' fis'2 }          
          r4 d'8 e' fis'4 e'8 [fis']
          gis' [fis'] gis' [a'] gis'2
          r4 gis'8 gis' fis'4
          fis' fis' fis' fis' r
          r fis'2 e'4
          fis'8 gis' ais'8 ais' gis'2
          gis'4 gis'8 dis' e'2~
          e'4 e' dis'8 [e'] fis'4
          fis'8 [e'] dis' [e'] b4 cis'
          b2 b\fermata \fine
        }

tenorMusic = {
          \voiceOne
          \repeat volta 2 {
          r2 r4 e'8 e'
          e'4 e' cis' b
          b b r2
          r4 e'8 dis' cis'4 dis'
          cis' cis' dis'2 }         
          r2 r4 e'8 dis'
          cis' a' gis' fis' dis'2
          r4 e'8 dis' cis'4 dis'
          cis'8 [b] cis'4 dis' r
          r dis'8 dis' b4 cis'
          dis' e' dis'2
          e'4 e'8 bis cis'4. d'8
          cis'2 b~
          b4 c' fis g
          fis8 [e] fis4 gis!2\fermata \fine
        }

bassMusic = {
          \voiceTwo
          \repeat volta 2 {
          r2 r4 e8 e
          a4 e fis dis
          e b,4 r2
          r4 e4. dis8 cis b,
          fis8 [e] fis4 b,2 }          
          r2 r4 cis8 dis
          e dis e fis gis,4 gis8 fis
          e2. dis8 [e]
          fis4 fis, b, r
          r b,8 b, e [dis] cis [b,]
          a, [gis,] fisis,4 gis,2
          cis r4 cis'8 gis
          a [b] cis'4 gis dis
          e a,2 ais,4
          b,2 e\fermata \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Herr -- scher ü -- ber Tod und Le - - ben
      mach ein -- mal mein En - de gut,
      Hilf, daß ich ein ehr -- lich Grab
      ne -- ben from -- men Chri -- sten hab und auch end -- lich in der Er - - de
      nim -- mer -- mehr zu -- schan - - den wer - - de.
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Leh -- re mich den Geist auf -- ge - - ben
      mit recht wohl -- ge -- faßt - tem Mut.
    }

altoVersoOneLyrics = \lyricmode {\set stanza = 1
      Herr -- scher ü -- ber Tod __ _ und Le -- ben
      mach ein -- mal mein En -- de gut,
      Hilf, daß ich ein ehr -- lich Grab
      ne -- ben from -- men Chri -- sten hab
      und auch end -- lich in der Er -- de
      nim -- mer -- mehr __ zu -- schan - - - - den wer -- de.
      
    }

altoVersoTwoLyrics = \lyricmode {\set stanza = 2
      Leh -- re mich den Geist __ _ auf -- ge -- ben
      mit recht wohl -- ge -- faß -- tem Mut.
    }

tenorVersoOneLyrics = \lyricmode {\set stanza = 1
         Herr -- scher ü -- ber Tod und Le -- ben
         mach ein -- mal mein En -- de gut,
         Hilf, daß ich ein ehr -- lich Grab
         ne -- ben from -- men Chri -- sten hab und auch end -- lich in der Er -- de
         nim -- mer -- mehr zu -- schan - - - den wer - de.
       }

tenorVersoTwoLyrics = \lyricmode {\set stanza = 2
         Leh -- re mich den Geist auf -- ge -- ben
         mit recht wohl -- ge -- faßt -- tem Mut.
       }

bassVersoOneLyrics = \lyricmode {\set stanza = 1
         Herr -- scher ü -- ber Tod und Le -- ben
         mach ein -- mal mein En -- de gut,
         Hilf, daß ich ein ehr -- lich Grab
         ne -- ben from -- men Chri -- sten hab und auch end -- lich in der Er -- de
         nim -- mer -- mehr zu -- schan - - - den wer -- de.
       }

bassVersoTwoLyrics = \lyricmode {\set stanza = 2
         Leh -- re mich den Geist auf -- ge -- ben
         mit recht wohl -- ge -- faßt -- tem Mut.
       }
