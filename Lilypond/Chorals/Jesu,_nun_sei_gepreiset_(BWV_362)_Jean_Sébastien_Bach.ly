\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Jesu, nun sei gepreiset"
  opus = "BWV 362"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key bes \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d''4
          d'' bes' c'' d''
          ees'' d''8 [c''] c''4\fermata c''
          c'' bes' bes'8 [g'] a'4
          bes'2.\fermata c''4
           c'' c'' c''8 [d''16 ees''] d''8 [c'']
          bes'2 bes'4\fermata bes'
          a'8 [f'] bes' [ees''] d'' [c''] c''4
          bes'2.\fermata }
          \partial 4  a'4
          a' a' a' a'
          bes'2 bes'4\fermata bes'
          a' a' a' a'
          bes'2 bes'4\fermata d''
           d''8 [c''] bes'4 c'' d''
          ees''2 d''4\fermata d''
          c''8 [b'] c'' [f''] ees'' [d''] d''4 \bar "||"
          \time 3/4
          c''2 b'4
          c''2 c''4
           d''2 d''4
          ees''2.
          d''2 d''4
          c''2 c''4
          c'' ees''8 [d''] c'' [b']
          c''2\fermata b'4
           c''2 c''4
          d''2 d''4
          ees''2.
          d''2 d''4
          c''2 bes'4
          bes' d''8 [c''] bes' [a']
          bes'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f'4
          g'8 [fis'] g'4 g'8 [a'] bes'4
          bes'8 [a'] bes'4 a'\fermata g'
          fis' d' g' f'
          f'2.\fermata f'8 [e']
           f' [g'] a' [g'] a'4. fis'8
          d' [ees'] f'4 ees'\fermata g'
          f'8 [ees'] d' [ees'] f' [g'] f' [ees']
          d'2.\fermata }
          \partial 4 c'4
          f' f' fis'8 [g' a' fis']
          g' [ees'] f'4 ees'\fermata g'
          f' ees'8 [d'] c'4 f'
          f' ees' d'\fermata f'8 [g']
           a'4 d' g'8 [f'] f'4
          ees'8 [d'] c' [f'] f'4\fermata f'
          f'8 [d'] ees' [f'] g' [aes'] g' [f'] \bar "||"
          \time 3/4
          ees'2 f'4
          g'2 f'8 [ees']
          d'4 d''8 [c''] bes' [aes']
          g' [f'] ees' [g'] c'' [bes']
          a'4 d' g'
          g' f' ees'8 [f']
          g'4 aes' g'
          g'2\fermata g'4
           g' f'2~
          f'8 [g'] aes'4 g'
          g'2 f'4
          f'2 g'4
          g'2 g'4
          f' g' f'
          f'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, nun sei ge -- prei - set
      zu die -- sem neu -- en Jahr,
      für dein' Güt' uns be -- wei -- set
      in al -- ler Noth und G'fahr:
      Daß wir in gu -- ter Stil -- le
      das alt' Jahr hab'n er -- fül -- let.
      Wir wolln uns dir er -- ge -- ben
      jetz -- und und im -- mer -- dar:
      be -- hüt' uns Leib und Le -- ben, hin -- fort das gan - ze Jahr!
      be -- hüt' uns Leib und Le -- ben, hin -- fort das gan - ze Jahr!
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Daß wir ha -- ben er -- le - bet
      die neu fröh -- li -- che Zeit,
      die vol -- ler Gna -- den schwe -- bet 
      und ew -- ger Se -- lig -- keit. 
      }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key bes \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  bes4
          bes8 [c'] d'4 c' f'
          ees'8 [c'] f'4 f'\fermata c'
          d'8 [a] bes4 c' c'
          d'2.\fermata a8 [bes]
           c' [d'] ees'4 d' a
          bes aes g\fermata c'
          c' bes bes a
          f2.\fermata }
          \partial 4 f8 [a]
          c'4 c' d' d'8 [c']
          bes4 aes g\fermata c'
          c' c' f' c'
          bes8 [aes] g4 f\fermata bes
           a bes8 [a] g [a] bes4
          bes a bes\fermata bes
          c' c' c' b \bar "||"
          \time 3/4
          g2 d'4
          c' bes aes
          a2 bes4~
          b c'2~
          c'4 bes bes
          bes aes8 [bes] c' [d']
          ees'4 f' d'
          ees'2\fermata d'4
           c' f' ees'
          d'8 [ees'] f'4 ees'8 [d']
          c'4 bes c'
          bes2 bes4
          c' d' ees'
          d' ees' c'
          d'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  bes8 [a]
          g [a] g [f] ees [f] ees [d]
          c4 d8 [ees] f4\fermata ees
          d g8 [f] e4 f
          bes,2.\fermata f8 [g]
           a [bes] c'4 fis4. d8
          g [f] ees [d] ees4\fermata e
          f g f8 [ees] f4
          bes,2.\fermata }
          \partial 4 f,4
          f8 [g] f [ees] d [e] fis [d]
          g [f] ees [d] ees4\fermata e
          f c8 [d] ees [g] f [ees]
          d [bes,] ees4 bes,\fermata bes
           fis g8 [f] ees [f] ees [d]
          c4 f bes,\fermata bes
          a aes g8 [f] g4 \bar "||"
          \time 3/4
          c2 d4
          ees e f
          f fis g
          g aes g
          fis g f
          e f8 [g] aes4
          g f g
          c2\fermata g4
           aes a2
          bes4 b2
          c'4 g a
          bes8 [c'] bes [a] g [f]
          ees [g] f [ees] d [c]
          f4 ees f
          bes,2.\fermata \fine
        }
      >>
    }
  >>
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
}

\midi {}
