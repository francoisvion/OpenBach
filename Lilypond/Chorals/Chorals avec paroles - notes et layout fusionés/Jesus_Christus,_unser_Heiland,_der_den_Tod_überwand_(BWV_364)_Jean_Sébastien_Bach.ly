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
 title = "Jesus Christus, unser Heiland, der den Tod überwand"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 364"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          g'4 f' f' g'
          a' g' f' e'
          d'2\fermata r4 f'
          g' a' g' fis'
          g'2\fermata r4 c''
          g'8 [a'] bes'4 a' g'
          a'2\fermata r4
          \partial 4  g'
          f' g' a' g'
          f' e' d'\fermata f'
          g' a' g' fis'
          g'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          d'4 d' d'4. c'8
          c' f'4 e'8 d'4. cis'8
          a2\fermata r4 d'
          d' ees'8 [d'] d'4 d'
          d'2\fermata r4 g'8 [f']
          ees'4 d'8 g'4 fis'8 g' [g]
          d'2\fermata r4
          \partial 4  d'8 [cis']
          d' f'4 e'8 f'4 e'~
          e'8 d'4 cis'8 a4\fermata d'
          d' ees' d' d'
          d'1\fermata \fine
        }
      >>
      
    }
    \new Lyrics \lyricsto "soprano" {
      Je -- sus Chris -- tus un -- ser Hei - land,
      der den Tod ü -- ber -- wand,
      ist auf -- er -- stan - den,
      die Sünd hat er ge -- fan - gen,
      Ky -- rie e -- le -- i -- son, e -- lei -- son.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes4 bes a8 [bes] g4
          f8 [a] bes4 b e8 [a16 g]
          f2\fermata r4 a
          bes8 [g] c'4. bes8 a4
          bes2\fermata r4 c'
          c' d' d'4. c'8
          fis2\fermata r4
          \partial 4  bes
          a c' c' bes
          a~ a8. [g16] f4\fermata a
          bes c'4. bes8 a [c']
          b1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          g,8 [a,] bes, [c] d4 e
          f g gis a8 [a,]
          d2\fermata r4 d8 [c]
          bes,4 fis, g, d
          g,2\fermata r4 ees8 [d]
          c4 g, d ees
          d2\fermata r4
          \partial 4  g,
          d c f8 [e] d [cis]
          d4 a, d,\fermata d8 [c]
          bes, [a,] g, [fis,] g,4 d,
          g,1\fermata \fine
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
