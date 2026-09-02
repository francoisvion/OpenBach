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
 title = "Ich hab mein Sach Gott heimgestellt"
 poet = "Auteur : Johann Leon (v.1531-1597)"
  opus = "BWV 351"
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
          \partial 4  g'4
          g' g' fis' bes'
          a' g' fis'\fermata fis'
          fis' fis' g' e'
          fis' fis' g'\fermata
          \partial 4  a'
          a' c'' a' f'
          g' a' bes'\fermata bes'
          a' g' fis'\fermata fis'
          fis' fis' g' e'
          fis' fis' g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d' d'8 [cis'] d'4 g'8 [f']
          ees' [d'] e'4 d'\fermata d'
          c' d' d' c'
          c'8 [ees'] d'4 d'\fermata
          \partial 4  f'
          f' g' f' f'
          ees'8 [d'] c' [ees'] d'4\fermata g'~
          g'8 [fis'] g' [c'] d'4\fermata d'
          c'8 [d'] ees' [d'] d'4 e'
          d' d' d'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Ich hab' mein' Sach' Gott heim -- ge -- stellt,
      er mach's mit mir, wie's ihm ge -- fällt,
      soll ich all hier noch län -- ger leb'n,
      nicht wi -- der -- streb'n, 
      sei'm Will'n thu ich mich ganz er -- geb'n
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  bes4
          bes8 [a] g4 a d'
          c' bes8 [a] a4\fermata a
          a a g g
          a8 [c'] c' [bes16 a] bes4\fermata
          \partial 4  c'
          c' c' c' bes
          bes a8 [c'] bes4\fermata d'
          d'4. g8 a4\fermata a
          a a g g16 [a bes8]
          a [g] a16 [bes c'8] c' [b]\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          g8 [f] ees4 d8 [c] bes, [g,]
          c4 cis d\fermata d8 [ees]~
          ees d4 c8~ c [b,] c [bes,]
          a,4 d g,\fermata
          \partial 4  f
          f8 [g] f [e] f ees4 d8
          ees [e] f [fis] g4\fermata g,
          d ees d\fermata d
          a,8 [bes,] c4 bes,8 [b,] c [cis]
          d4 d, g,\fermata \fine
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
