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
 title = "Aus meines Herzens Grunde"
 poet = "Auteur : Georg Niege (1525-1589)"
  opus = "BWV 269"
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
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  g'4
          g'2 d''4
          b'4. a'8 g'4
          g'4. a'8 b'4
          a'2\fermata b'4
          d''2 c''4
          b' a'2
          g'\fermata }
          \partial 4  b'4
          b' c'' d''
          d''4. c''8 b'4
          a'2\fermata g'4
          b'2 c''4
          d''2 c''4
          b'2.
          g'2\fermata
          \partial 4  b'4
          d''2 c''4
          b'2 a'4
          g'4. a'8 b'4
          a'2\fermata b'4
          d''2 c''4
          b' a'2
          g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d' e' d'
          d'2 b4
          e'8 [d'] e' [fis'] g'4
          fis'2\fermata g'4
          d' e' fis'
          g'2 fis'4
          d'2\fermata }
          \partial 4  g'4
          g'8 [fis'] e' [fis'] g'4~
          g'8 [a'] g' [fis'] g'4
          fis'2\fermata e'4
          e' fis'8 [g'] a'4
          a' g'4. fis'8
          g'2 f'4
          e'2\fermata
          \partial 4 g'4
          a'4. g'8 fis'4
          g'2 fis'4
          fis'8 [e'] e' [fis'] g'4
          fis'2\fermata g'4
          a'2 g'8 [fis']
          g'2 fis'4
          d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Aus mei -- nes Her - zens Grun - _ de
      sag' ich dir Lob und Dank,
      O Gott - in dei -- _ nem Thron,
      Dir zu Lob, Preis und Eh -- ren,
      Durch Chris -- tum, un -- sern Her - _ ren,
      Dein' ein -- ge -- bor -- nen Sohn.
    }
    
    \new Lyrics \lyricsto "soprano" {
      In die -- ser Mor - gen -- stun - _ de,
      Dar -- zu mein Le -- be -- lang,
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key g \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  b4
          b c'8 [b] a4
          g fis g
          c'8 [b] c'4 d'
          d'2\fermata d'4
          a b c'
          d' e' d'8 [c']
          b2\fermata }
          \partial 4  d'4
          d' c' b8 [a]
          b [c'] d'4 d'
          d'2\fermata b4
          g b e'
          d'2 d'4
          d'2.
          c'2\fermata
          \partial 4 d'4
          d'8 [c'] b4 c'
          d'2 d'8 [c']
          b4 c' d'
          d'2\fermata d'4
          d'2 e'4
          e'2 d'8 [c']
          b2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g e fis
          g d e
          c b,8 [a,] g,4
          d2\fermata g,4
          fis, g, a,
          b, c d
          g,2\fermata }
          \partial 4  g,4
          g, a, b,
          b,4. a,8 g,4
          d2\fermata e4~
          e d c
          b,4. c8 d4
          g,8 [a,] b,4 g,
          c2\fermata
          \partial 4 g,4
          fis, g, a,
          b, g, d
          e8 [d] c [b,] a, [g,]
          d2\fermata g4~
          g fis e~
          e8 [d] c4 d
          g,2\fermata \fine
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
