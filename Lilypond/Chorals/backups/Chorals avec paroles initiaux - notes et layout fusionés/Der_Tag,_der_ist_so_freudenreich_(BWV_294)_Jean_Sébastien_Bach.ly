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
 title = "Der Tag, der ist so freudenreich"
 poet = "Anonyme"
  opus = "BWV 294"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
          g' g' a' b'
          c''8 [b'] a'4 g'2\fermata
          a'4 a' e' fis'
          g' a' g'\fermata }
          \partial 4  g'
          d'' d'' e'' d''8 [c'']
          b'4 cis'' d''\fermata d''
          d'' d'' e'' d''8 [c'']
          b'4 a' g'2\fermata
           e'4 fis' g' e'
          d' cis' d'2\fermata
          g'4 g' a' b'
          c''8 [b'] a'4 g'2\fermata
           a'4 a' e' fis'
          g'8 [fis'] e'4 d'\fermata f'
          e' c' e' fis'
          g' a' g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          e' e'4. fis'8 g'4
          g'4. fis'8 d'2\fermata
          fis'4 e'8 [d'] e'4. d'16 [c']
          b8 [g] d'4 d'\fermata }
          \partial 4  d'
          d' g'8 [a'] b' [c''] b' [a']
          g'4 g' a'\fermata a'
          g' g' g' a'~
          a'8 g'4 fis'8 d'2\fermata
          c'4 c' d'8 b4 a8
          a [b] a4 a2\fermata
          e'4 e' e'8 [fis'] g'4
          g'4. fis'8 d'2\fermata
           d'4 d' cis' d'
          d' cis' a\fermata d'
          c' g c' d'
          d'4. c'8 b4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Der Tag, der ist so freu -- den -- reich al -- ler Cre -- a -- tu - re, von ei -- ner Jung -- frau ist ge -- bor'n, Ma -- ri -- a du bist aus -- er -- kor'n, dass du Mut -- ter wä - rest. Was ge -- schah so wun -- der -- lich? Got -- tes Sohn vom Him -- mel -- reich der __ _ ist Mensch ge -- bo - ren. }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      denn Got -- tes Sohn vom Him -- mel reich, ü -- ber die Na -- tu - re, }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          b c' c' d'8 [f']
          e'4 a8 [d'16 c'] b2\fermata
          d'4 c'8 b4 a b16 [a]
          g4. fis8 b4\fermata }
          \partial 4  b
          a8 [c'] b [a] g4 d'
          d' e' fis'\fermata d'8 [c']
          b [c'] d' [b] c' [b] a [d']
          d'4 d'8. [c'16] b2\fermata
          g4 a d8 g4 fis16 [e]
          fis4 e8 [fis16 g] fis2\fermata
          b4 c' c' d'8 [f']
          e'4 a8 [d'16 c'] b2\fermata
           fis8 [g] a4 a a
          b e8 [a16 g] fis4\fermata g
          g e a a
          g fis g \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g8 [fis]
          e [d] c [b,] a,4 g,
          c d g,2\fermata
          d4 a,8 [b,] c4 d
          e d g,\fermata }
          \partial 4  g
          fis g8 [fis] e4 fis
          g8 [fis] e4 d\fermata fis
          g8 [a] b [g] c'4 fis
          g d g,2\fermata
          c8 [b,] a,4 b, cis
          d a, d,2\fermata
          e8 [d] c [b,] a,4 g,
          c d g,2\fermata
           d,8 [e,] fis, [g,] a, [g,] fis,4
          e, a, d\fermata b,
          c4. b,8 a,4 d8 [c]
          b, [g,] d4 g,\fermata \fine
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
