\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm % Marge pour la mention SATB
  
  oddHeaderMarkup = \markup \fill-line { \null \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \fromproperty #'page:page-number-string \null }
  oddFooterMarkup = ##f
  evenFooterMarkup = ##f

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
 title = "Nun freut euch, lieben Christen gmein"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 388"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          g' d' g' c''
          b' a' g'\fermata g'
          a'8 [b'] c''4 b' a'
          e' fis' g'\fermata } g'
          c'' b' a' d''
          d'' cis'' d''\fermata d''
          e'' c'' d''4. c''8
          b'4 a' g'\fermata b'
          a' d' g' c''
          b' a' g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d' a d' a'
          d' d'8. [c'16] b4\fermata b8 [cis']
          d' [f'] e' [fis'] g'4 d'8 [a16 b]
          c'2 b4\fermata } d'
          g'8 a'4 g'16 [fis'] e'4 a'8 [fis']
          e' g'4 fis'16 [e'] fis'4\fermata g'
          g' g' a'8 [fis'] g' [a']~
          a' g'4 fis'8 e'4\fermata e'
          e'8 [d'16 c'] b4 e'8 [d'] e' [fis']
          g'4. fis'8 d'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Nun freut euch, lie -- ben Chri -- sten g'mein,
      und laßt uns frö -- hlich sprin - gen,
      was Gott an uns ge -- wen -- det hat
      und sei -- ne sü -- ße Wun -- der -- tat; gar teu'r hat er's er -- wor - ben.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      daß wir ge -- trost und all in Ein
      mit Lust und Lie -- be sin - gen:
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b8 [a]
          g4 fis g4. fis8
          g4. fis8 d4\fermata g
          fis8 [gis] a4 d8 [e] fis4
          g a d\fermata } b
          e'8 [d'] d'4 cis' d'
          b8 [e] a4 a\fermata d'~
          d'8 [c'16 b] c'8 [e'] d' [c'] b [a]
          b16 [c'] d'4 c'8 b4\fermata g
          a g8 [a] b4 a
          d'~ d'8. [c'16] b4\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,8 [a,]
          b, [c] d [c] b,4 a,
          g,8 [b,] d4 g,\fermata e
          d a, b,8 [c] d4
          c8 [b,] a,4 g,\fermata } g8 [fis]
          e [fis] g4~ g8 [a16 g] fis8 [b]
          g4 a8 [a,] d4\fermata b,
          c8 [d] e4 fis8 [d] e [fis]
          g4 d e\fermata e
          fis g8 [fis] e4 a,
          b,8 [c] d4 g,\fermata \fine
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
