sopranoMusic = {
          \voiceOne
          \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} }
          \repeat volta 2 {
          c''4 a'2
          g' f'4
          bes' c''4. d''16 [ees'']
          d''2.
          c''2 r4 \bar "||"
          \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "||"
          d''4 bes'2
          c'' f'4
          bes' a'2
          g'2. R } \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "||"
          e''4 c''2
          a' d''4
          cis'' d''4. e''16 [f'']
          e''2.
          a'2 r4
          \once \textLengthOn s2.^\markup { \tiny \override #'(baseline-skip . 1.5) \column{"interlude" "instrumental"} } \bar "||"
          d''4 e'' f''
          g'' c'' bes'
          a' d'' bes'
          g'2. 
          f'2 r4 \fine
        }

altoMusic = {
          \voiceTwo
          s2.
          \repeat volta 2 {
          a'4 f'2
          f'4 e' f'
          d' g' f'
          f'2.
          f'2 r4 \bar "||"
          s2.
          a'4 g'2
          g'4 f' f'
          f'8 [g'] g'4 f'
          e'2. R } s2. \bar "||"
          g'8 [f'] g'4 g'
          g' f' f'
          g' a' bes'8 [a']
          g' [f'] g'4. e'8
          f'2 r4
          s2.
          f'4 g' a'
          g'8 [f'] g'4 e'
          c' bes f'
          f' e'8 [d'] e'4
          c'2 r4 \fine
        }

tenorMusic = {
          \voiceOne
          s2.
          \repeat volta 2 {
          f'4 c'2
          c'4. bes8 a4
          bes2 a8 [bes16 c']
          c'4 bes8 [a] bes4
          a2 r4
          s2.
          f'4 d'2
          c'8 [bes] a4 a
          d'8 [c'] c'2
          c'2. R } s2. \bar "||"
          c'2 r4
          c'2 bes4~
          bes a d'8 [c']
          bes4 a8 [g] a4
          a2 r4
          s2.
          bes4. g8 c'4
          c'2 g4
          f2 d'4
          g c' bes
          a2 r4 \fine
        }

bassMusic = {
          \voiceTwo
          s2.
          \repeat volta 2 {
          f8 [g] a4 f
          c2 d4
          g8 [f] ees4 f
          bes,8 [c] d4 bes,
          f2 r4 
          s2.
          d4 g f
          e f8 [e] d [c]
          d [e] f4 f
          c2. R } s2. \bar "||"
          c8 [d] e4 c
          f8 [e] f4 bes
          e f d
          d cis8 [b,] cis4
          d2 r4
          s2.
          bes8 [a] g4 f
          e8 [d] e4 c
          f bes,2
          c8 [bes,] c2
          f,2 r4 \fine
        }

versoOneLyrics = \lyricmode {\set stanza = 1
      Je -- sus rich -- te mein Be - gin -- nen,
      Je -- sus blei -- be stets bei mir,
      Je -- sus sei mir in Ge - dan -- ken,
      Je - su, la - ße mich __ _ nicht wan -- ken!
    }

versoTwoLyrics = \lyricmode {\set stanza = 2
      Je -- sus zäu -- me mir die _ Sin -- nen,
      Je -- sus sei nur mein Be -- gier,
    }
