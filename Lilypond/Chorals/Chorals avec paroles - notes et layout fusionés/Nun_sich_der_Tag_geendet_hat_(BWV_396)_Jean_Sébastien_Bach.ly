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
 title = "Nun sich der Tag geendet hat"
 poet = "Auteur : Adam Krieger (1634-1666)"
  opus = "BWV 396"
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
          \partial 4  e''4
          a' b' c'' c''
          d'' d'' e''\fermata e''
          d'' e'' c'' c''
          b'2\fermata r4
          \partial 4  e''
          c'' b' c'' a'
          gis' a' b'\fermata e''
          d'' c'' b'4. b'8
          a'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          e' e' e'8 [f'] g'4
          a' g' g'\fermata g'
          a' e' e' e'
          e'2\fermata r4
          \partial 4  b'
          b'8 [a'] gis'4 a'8 [g'] f'4~
          f'8 [e'] e' [fis'] gis'4\fermata a'
          a'8 [gis'] a'4 a' gis'
          e'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Nun sich der Tag ge -- en -- det hat,
      und kei -- ne Sonn' mehr scheint,
      schläft Al -- les, was sich ab -- ge -- matt',
      und was zu -- vor ge -- weint.
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
          c' b~ b8 [a] g [c']~
          c' [b16 a] b4 c'\fermata c'~
          c' b~ b a~
          a gis\fermata r
          \partial 4  e'
          e' e' e' d'
          d'8 [b] c'4 b\fermata a
          d' e' f'8 [d'] b [e'16 d']
          cis'2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  a,8 [b,]
          c [b,] a, [gis,] a,4 e,
          f, g, c\fermata c
          fis, gis, a,8 [b,] c [d]
          e2\fermata r4
          \partial 4  gis,
          a, e8 [d] c4 d8 [c]
          b, [e] c [a,] e4\fermata c
          b, a, d e
          a,2.\fermata \fine
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
