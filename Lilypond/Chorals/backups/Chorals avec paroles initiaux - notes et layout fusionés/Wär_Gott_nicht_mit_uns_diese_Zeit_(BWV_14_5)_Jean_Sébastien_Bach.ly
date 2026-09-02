\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }

  system-system-spacing = #'((basic-distance . 11) 
                             (minimum-distance . 7) 
                             (padding . 1.5) 
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9) 
                             (minimum-distance . 6) 
                             (padding . 1.5) 
                             (stretchability . 20))
}

\header {
  title = \markup{\concat{"Wär Gott nicht mit uns diese Zeit" \small " (v. 3)"}}
  subtitle = "tiré de la cantate : Wär Gott nicht mit uns diese Zeit"
  poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 14/5"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
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
          \partial 4  g'8 [a']
          bes'4 b' c'' d''
          c'' b' c''\fermata c''
          bes'8 [a'] g' [a'] bes' [c''] d''4
          c''8 [bes'] c''4 bes'\fermata } c''
          d'' c''8 [bes'] a'4 bes'
          c''8 [bes'] a'4 g'\fermata g'
          c'' b' c'' d''8 [c'']
          bes' [a'] g'4 f'\fermata f'
          bes' c'' d'' c''8 bes'
          a' [g'] a'4 g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          g' g' g' g'
          ees' d' c'\fermata g'8 [a']
          bes' bes4 c'8 d' [ees'] f' [g']
          a' bes'4 a'8 f'4\fermata } f'8 [ees']
          d' [e'] f' [g'] c'4 f'
          ees' a8 [d'] d'4\fermata d'
          g'8 [aes'] g' [f'] ees'4 d'8 [fis']
          g' d'4 cis'8 d'4\fermata d'
          d' g' fis'8 [d'] g'4
          g' fis' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Gott Lob und Dank, der nicht zu -- gab,
      daß ihr Schlund uns möcht fan - gen.
      Strick ist ent -- zwei und wir sind frei,
      des Her -- ren Na -- men steht uns bei,
      des Got -- tes Him -- mels und Er - den.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Wie ein Vo -- gel des Stricks kommt ab,
      ist un -- ser Seel ent -- gan - gen,
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
          \partial 4  bes8 [c']
          d'4 d' ees' d'
          g8 g'4 f'8 ees'4\fermata ees'
          f' g' f'8 [ees'] d' [bes]
          f'4 g'8 [f'16 ees'] d'4\fermata } c'
          c'8 [bes] a [g] f4. g8
          a g4 fis8 bes4\fermata b
          c' d' g8 [a] bes [a]
          g [a] bes [a] a4\fermata bes
          bes8 [a] g4 a8 [bes16 c'] d'4
          d'4. c'8 b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g8 [aes] g [f] ees [d] c [b,]
          c [ees] g [g,] c4\fermata c
          d ees d8 [c] bes, ees~
          ees d ees [f] bes,4\fermata } a,
          bes,8 [c] d [e] f [ees] d4
          c d g,\fermata g8 [f]
          ees4 d c g,
          g8 [f] e [a,] d4\fermata bes8 [a]
          g [f] ees [d] c [bes,] a, [g,]
          d2 g,4\fermata \fine
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
