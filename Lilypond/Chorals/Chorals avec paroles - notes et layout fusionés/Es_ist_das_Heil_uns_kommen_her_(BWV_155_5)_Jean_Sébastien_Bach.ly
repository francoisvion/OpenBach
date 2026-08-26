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
 title = "Es ist das Heil uns kommen her"
 subtitle = "tiré de la cantate : Mein Gott, wie lang, ach lange"
 poet = "Auteur : Paul Speratus (1489-1551)"
  opus = "BWV 155/5"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key f \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c''4
          c'' c'' c''8 [d''] ees''4
          d'' c'' bes'\fermata c''8 [bes']
          a' [g'] f' [g'] a'4 b'
          c''8. [d''16] d''4 c''\fermata } c''
          f'' e'' d'' e''
          f''8 [e''] d''4 c''\fermata c''
          f'' c'' d'' a'8 [bes']
          c''4 bes' a'\fermata a'
          g'8 [a'] bes'4 a' g'
          d' e' f'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f'4
          f' e' f' g'
          f' f'8 [ees'] d'4\fermata c'
          c' c' f'8 [a'] g' [f']
          e'8. [f'16] g'8. [f'16] e'4\fermata } f'8 [g']
          a'4 g' g'8 [f'] e' [g']
          c' [a'] d' [g'] e'4\fermata f'8 [g']
          a' [bes'] a' [g'] f'4 f'
          e' d'8 [e'] fis'4\fermata f'
          e' d' c'8 [d'] e'4
          d' c'8 [bes] a4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ob sichs an -- ließ, als wollt er nicht,
      laß dich es nicht er -- schre - cken,
      Sein Wort laß dir ge -- wis -- ser sein,
      und ob dein Herz spräch lau -- ter Nein,
      so laß doch dir nicht grau - en.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      denn wo er ist am be -- sten mit,
      da will ers nicht ent -- de - cken.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a8 [bes]
          c' [d'] c' [bes] a4 g8 [a]
          bes4 a bes\fermata g
          f8 [g] a [bes] c'4 d'
          g8 c'4 b8 c'4\fermata } a
          a8 [b] c'4 b8 [a] g4
          f8 [c'] b4 c'\fermata a8 [bes]
          c'4 f'8 [e'] d'4 d'
          g8 [a] bes [c'] d'4\fermata c'
          c' f8 [g] a [bes] c'4
          bes8 [a] g4 f\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  f4
          a,8 [bes,] c4 f, c
          d8 [ees] f4 g\fermata e
          f f, f8 [e] d4
          c g, c\fermata } f8 [e]
          d4 e8 [f] g4 c8 [b,]
          a, [g,] g,4 c\fermata f
          f,8 [g,] a,4 bes,8 [c] d4
          e8 [fis] g4 d\fermata a,8 [bes,]
          c4 d8 [e] f4 e8 [f]
          g4 c f,\fermata \fine
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
