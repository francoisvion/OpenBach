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
 title = "Es woll uns Gott gnädig sein (II)"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 312"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b'4
          c'' b' a' b'8 [c'']
          d''4 e'' d'' c''
          b'2\fermata r4 d''
          c'' b' c''8 [b'] a'4
          g' f' e'\fermata }
          \partial 4  g'
          f' e' d' e'8 [d']
          c' [d'] d'4 e'\fermata b'
          c'' b'8 [a'] g'4 a'8 [b']
          c''4 d'' b'\fermata
          \partial 4  e''
          d''8 [c''] b' [c''] d''4 a'
          g' f' e'\fermata d'
          g' a' b'8 [c''] d''4
          c'' b' a'\fermata
          \partial 4  c''
          b' a' g'8 [f'] e' [f']
          g'4 f' e'2~
          e'2.\fermata \fine }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  gis'4
          a'8 [e'] f' [e']~ e' [d'] g'4~
          g'8 [f'] g' [e'] f'4 e'8 [dis']
          e'2\fermata r4 f'
          e'8 [fis'] g'4 g' f'
          e'4. d'16 [c'] b4\fermata }
          \partial 4  d'8 [e']
          c' d'4 c'8 a g4 gis8
          a4. b8 c' [b]\fermata e'4
          e'8 [a'] g' [f'] e'4 d'
          c'8 [e'] a'4 a'8 [gis']\fermata
          \partial 4 g' [fis']
          g'4 g' g'4. f'8
          e'4. d'8 d' [cis']\fermata a [b]
          c'4 c' b8 [e'] d' [e']
          e' a'4 gis'8 a'4\fermata
          \partial 4  g'8 [a']
          b' [g'] e' [f'] b [d'] g' [f']
          f' [e'] e' [d'] d' [e'16 d'] c'4
          b2.\fermata \fine }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Es woll' uns Gott ge -- nä - - dig sein und sei -- nen Se -- gen ge - ben; dass wir er -- ken -- nen sei -- ne Werk; und, was ihn liebt, auf Er - den, und Je -- sus Chris -- tus Heil und Stärk be -- kannt den Hei -- den wer - den und sie zu Gott be -- keh - ren.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      sein Ant -- litz uns mit hel - - lem Schein er -- leucht' zum ew' -- gen Le - ben,
    }
    
    \new Lyrics \lyricsto "alto" {
    \repeat unfold 54 {\skip1} be -- keh - - - ren.
    }

    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  e'4
          e'8 [c'] d' [e'] a4 g
          a bes a8 [gis] a4
          a gis\fermata r a8 [b]
          c'4 d' e'8 [d'] c'4
          bes8 a4 b8 gis4\fermata }
          \partial 4  b
          a8 g4 a8 f4 e
          e a a8 [gis]\fermata g4
          a16 [b] c'4 d'8 e' [e] fis [gis]
          a4. f'8 e'4\fermata
          \partial 4 g8 [a]
          b [c'] d'4 d' d'
          e'8 [a] a4 a\fermata f
          e4. fis8 g4 a8 [b]
          c' [e'] f' [e'] c'4\fermata
          \partial 4  e'
          d' cis'8 [d'] e' [b] c'4
          d'8 [a a] b4 e8 a4
          a gis8 [fis] gis4\fermata \fine }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e4
          a4. g8 f4. e8
          d4. cis8 d4 a,
          e2\fermata r4 d
          a g8 [f] e4 f8 [e]
          d [cis] d4 e\fermata }
          \partial 4  e
          a,8 [b,] c4~ c8 [b,] c [b,]
          a, [g,] f,4 e,\fermata e
          a,4. b,8 c4. b,8
          a, [a] f [d] e4\fermata
          \partial 4 c
          g g,8 [a,] b, [c] d4
          d8 [cis] d4 a,\fermata d
          c8 [b,] a,4 e fis8 [gis]
          a [c] d [e] f4\fermata
          \partial 4  e8 [fis]
          g4. f8 e [d] c [a,]
          b, [cis] d [gis,] a, [b,] c [d]
          e2.\fermata \fine }
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
