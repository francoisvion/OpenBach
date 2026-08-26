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
 title = "In allen meinen Taten (choral)"
 poet = "Auteur : Paul Fleming (1609-1640)"
  opus = "BWV 367"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key c \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          c'' c'' d'' d''
          e''2 d''4\fermata d''
          c'' b' a' a'
          b'2 b'4\fermata g'
          g' g' c'' c''
          b'2\fermata r4
          \partial 4  b'
          e'' e'' c'' c''
          d''2 b'4\fermata b'
          c'' c'' a' a'
          b'2 g'4\fermata g'
          c'' d'' e'' d''
          c''2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  e'4
          e'8 [f'] g'4 a' g'
          g'2 g'4\fermata g'~
          g'8 [fis'] g'4 g' fis'
          g'2 g'4\fermata d'
          e' e' a' a'
          gis'2\fermata r4
          \partial 4  g'
          g' g' f' f'
          fis'8 [g'] a' [fis'] g'4\fermata g'
          g' g' fis' fis'
          fis' b b\fermata b
          c' f' e'8 [f'] g' [f']
          e'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      In al -- len mei -- nen Ta -- ten
      laß ich den Höch -- sten ra -- ten,
      der Al -- les kann und hat;
      er muß zu al -- len Ding -- en,
      soll's an -- ders wohl ge -- lin -- gen,
      selbst ge -- ben Rat und Tat.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  c'4
          c' c' c' b
          c'2 b4\fermata b
          c' d' e' d'
          d'2 d'4\fermata b
          c' c'8 [d'] e'4 e'
          e'2\fermata r4
          \partial 4  e'
          e'8 [d'] c' [b] a [b] c' [b]
          a4 d' d'\fermata d'
          e' e' e' d'
          dis'8 [e'] fis' [dis'] e'4\fermata d'
          g b c' b
          g2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  c4
          c8 [d] e4 f g
          c8 [d] e [f] g4\fermata g,
          a, b, c d
          g2 g,4\fermata g8 [f]
          e [d] c [b,] a, [b,] c [d]
          e2\fermata r4
          \partial 4  e8 [d]
          c [d] e [c] f [g] a [f]
          d [e] fis [d] g4\fermata g,
          c8 [d] e [c] d [e] fis [d]
          b, [cis] dis [b,] e4\fermata g8 [f]
          e [f] e [d] c4 g
          c2.\fermata \fine
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
