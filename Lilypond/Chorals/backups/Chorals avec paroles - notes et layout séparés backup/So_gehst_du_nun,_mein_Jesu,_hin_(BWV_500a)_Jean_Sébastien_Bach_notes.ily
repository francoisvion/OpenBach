sopranoMusic = \relative c' {
          \voiceOne
          \repeat volta 2 {
          \partial 4 d'4
          d d c c
          d bes a\fermata a
          bes c d es8 [d]
          c4. bes8 bes4\fermata } c
          c c d\fermata d
          d d es\fermata d
          c bes a bes
          a4. g8 g4\fermata c
          c c d\fermata d
          d d es\fermata d
          c bes a bes
          a4. g8 g4\fermata \fine 
        }

altoMusic = \relative c' {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 g'4
          a b c8 [bes] a [g]
          fis4 g d\fermata d
          d f! f g
          g f f\fermata } g
          f f f\fermata fis
          g g g\fermata d
          g g a g8 [f]         
          e4 d d\fermata e
          f c' b\fermata a
          g8 [a] bes4 c\fermata a
          g8 [fis] g [a] d,4 d
          e d d\fermata \fine
        }

tenorMusic = \relative c {
          \voiceOne
          \repeat volta 2 {
          \partial 4 bes'8 [a]
          d4 d, g fis8 [g]
          a4 e a f'!
          bes, f bes bes
          c8 [d] es4 d\fermata } c
          f,8 [c'] f [es] d4\fermata c
          bes8 [a] g4 c\fermata a
          es' g, d'8 [c] bes [g]
          a [bes] c4 bes\fermata c
          c g'8 [f] d4\fermata d
          d8 [c] d4 c\fermata d
          g, e' a, g8 [d]
          a' [bes] c4 b\fermata \fine
        }

bassMusic = \relative c {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 g'4
          fis f e es
          d cis d\fermata d
          g a bes8 [a] g [f]
          e4 f bes,\fermata } e
          f8 [es!] d [c] bes4\fermata d
          g8 [f] es [d] c4\fermata d
          es e fis g
          cis, d g,\fermata bes'
          a aes g c
          bes b a\fermata b
          c cis d8 [c] bes [g]
          cis,4 d g,\fermata \fine
          \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      So gehst du nun, mein Je -- su, hin,
      den Tod für mich zu lei - den,
      Wohl -- an! fahr fort,
      du e -- dler Hort,
      mein Au -- gen sol -- len flie - ßen
      ein Trä -- nen -- see,
      mich Ach und Weh,
      die Lei -- den zu be -- gie - ßen.
     }

sopranoVersoOneLyrics = \lyricmode {\set stanza = 1
      für mich, der ich ein Sün -- der bin,
      der dich be -- trübt in Freu - den.
     }
