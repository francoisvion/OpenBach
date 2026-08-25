\version "2.27.1"

#(set-global-staff-size 19)

\header {
 title = "Herr Jesu Christ, ich schrei zu dir"
 subtitle = "tiré de la cantate : Ich elender Mensch, wer wird mich erlösen"
 poet = "Freiberg 1670"
  opus = "BWV 48/7"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          g' fis' g' a'
          bes' a' g'\fermata g'
          a' a' d'' c''
          bes'2 a'4\fermata } d''
          c'' bes' a' c''
          bes' a' g'\fermata bes'
          a' g' f'8 [e'] d' [e']
          f'4 g' a'\fermata g'8 [a']
          bes'4 c'' d''4. c''8
          bes'4 c''8 [bes'] a'2
          g'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          ees' d' d' c'
          bes8 [c'] d' [c'] bes4\fermata d'8 [e']
          f'4 f' bes'4. a'8
          a' [g'16 fis'] g'4 fis'\fermata } d'8 [ees']
          f'4. e'8 f'4 g'
          g' fis' d'\fermata e'
          f' e'8 [d'] cis'4 d'
          d' c' c'\fermata c'
          d' ees' d'8 [fis'] g' [a']
          bes' [a'] g'2 fis'4
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Herr Je -- su Christ, ei -- ni -- ger Trost, 
      zu dir will ich mich wen -- den;
      In dei -- nen Wil -- len seis ge -- stellt,
      machs, lie -- ber Gott, wie dirs ge -- fällt:
      dein bin und will ich blei - - ben.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      mein Herz -- leid ist dir wohl be -- wußt,
      du kannst und wirst es en -- den.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  bes4
          a a g d'
          d'8 [e'] fis'4 g'\fermata bes
          c' d'8 [ees'] f'4 c'8 [d']
          g [d] d'4 d'\fermata } f8 [g]
          a4 bes c' c'
          d' d'8 [c'] bes4\fermata c'
          c' bes a8 [g] f4
          bes a8 [g] f4\fermata g
          f g8 [a] bes4. a8
          d'4 c'8 [d'] ees'4 d'8 [c']
          b2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g4
          c d e fis
          g d g,\fermata g
          f8 [ees] d [c] bes, [d] e [fis]
          g [a] bes [c'] d'4\fermata } bes
          a g f! ees!
          d8 [c] d4 g,\fermata c
          f, g, a, bes,8 [c]
          d4 e f\fermata ees
          d c bes,8 [d] e [fis]
          g [f!] ees! [d] c4 d
          g,2.\fermata \fine
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
