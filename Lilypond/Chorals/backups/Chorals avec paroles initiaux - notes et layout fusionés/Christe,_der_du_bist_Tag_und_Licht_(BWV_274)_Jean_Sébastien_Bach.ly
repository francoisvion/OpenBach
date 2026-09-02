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
 title = "Christe, der du bist Tag und Licht"
 poet = "Wittenberg 1526"
  opus = "BWV 274"
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
          \partial 4 g'
          bes' g' f' g'8 [a'] bes'4 a' g'\fermata bes'
          bes' bes' bes' f' g' bes' a'\fermata a'
          c'' c'' c''8 [bes'16 a'] g'8 [a']
          bes'4 a' g'\fermata a'
          bes' g' fis' g'8 [a'] bes'4 a' g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 d'
          d' d' d' d'8 [fis'] g'4. fis'8 d'4\fermata g'
          g' g' f'!8 [es'] es' [d'16 c']
          d'8 [e'16 f'] g'4 f'\fermata f'
          f' e'8 [fis'] g' [fis'] g' [d']
          d' g'4 fis'8 d'4\fermata fis'
          g' d' d' d'8 [fis'] g'4. fis'8 d'4 \fine
          
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Chris -- te, der du bist Tag und Licht,
      Vor dir ist, Herr, ver -- bor -- gen nichts;
      du vä -- ter -- li -- ches Lich -- tes Glanz,
      Lehr' uns den Weg der Wahr -- heit ganz.
    }
        
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 d'8 [c']
          bes4 bes a bes8 [c'] 
          d'4 es'8 [d'16 c'] bes4\fermata
          d' d' d' d'8 [g] a [bes]
          bes [a] g [c'] c'4\fermata c'8 [bes]
          a [g] a4 g8 [c'] bes [a]
          g [d'] es'! [d'16 c'] bes4\fermata d'
          d' bes a bes8 [c']
          d'4 es'8 [d'16 c'] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 bes,8 [a,]
          g, [a,] bes, [c] d [c] bes, [a,]
          g, [bes,] c [d] g,4\fermata g
          g,8 [a,] bes, [c] d [es] f4
          f e f\fermata f,8 [g,]
          a, [bes,] c [d] es4. fis,8
          g, [bes,] c [d] g,4\fermata d
          g,8 [a,] bes, [c] d [c] bes, [a,]
          g, [bes,] c [d] g,4\fermata      
        }
      >>
    }
  >>
}

\layout {}
\midi {}
