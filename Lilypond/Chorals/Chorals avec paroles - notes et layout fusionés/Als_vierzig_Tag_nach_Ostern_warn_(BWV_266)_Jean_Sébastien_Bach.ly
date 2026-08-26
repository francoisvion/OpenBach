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
 title = "Als vierzig Tag nach Ostern warn"
 poet = "Auteur : Nikolaus Herman (v.1480-1561)"
  opus = "BWV 266"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          e'4 e' e'
          b'2 b'4
          a' b' g'8 [a']
          b'4 a' a'
          b'2\fermata g'4
          fis' g' a'
          b' a' g'
          g'2 fis'4
          g'2\fermata a'4
          b'2 b'4
          a'2 a'4
          g'2 g'4
          fis'2.\fermata
          e'4 fis' dis'
          e'2\fermata
          \partial 4  e'4
          a'2 a'4
          b'2 b'4
          g'2 g'4
          fis'2.\fermata
          e'8 [fis' g' a'] b'4
          b'2 a'4
          b'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          b4 b b
          fis'2 g'4~
          g' fis' e'
          fis' e'8 [g' fis' e']
          fis'2\fermata b8 [cis']
          d'2 e'8 [fis']
          g'4. fis'4 e'8
          e' [d'] c'4 d'
          d'2\fermata fis'4
          g'2 g'4
          fis'8 [e'] fis'4 dis'
          e'8 [dis'] e'2~
          e'4 dis'2\fermata
          e'4 c' b
          b2\fermata
          \partial 4 b4
          e' d' c'
          d' e' fis'~
          fis' e'8 [dis'] e'4
          e' dis'2\fermata
          b4 e' fis'
          e'4. g'8 [fis' e']
          dis'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Als vier -- zig Tag' nach O - - - - stern war'n
      und Chri - stus wollt' _ gen Him -- mel fahr'n,
      b'schied er sein' Jün -- ger auf ein Berg,
      auf _ ein Berg,
      vol -- len -- det da sein Amt und Werk.
      Hal - le -- lu -- ja!
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          g4 g g
          fis dis' e'
          e' b b
          b c'8 [e' dis' e']
          dis'2\fermata e'4
          a b c'
          d'4. c'8 b4
          c'4. b8 a4
          b2\fermata d'4
          d'2 e'8 [d']
          c'4 b b
          b2 b4
          b2.\fermata
          g4 a fis
          g2\fermata
          \partial 4 g4~
          g fis fis
          g b2
          b b4
          b2.\fermata
          g4 b b8 [a]
          g [fis e dis] e4
          fis2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          e4 g e
          dis b, e
          cis dis e
          d c8 [b,] c4
          b,2\fermata e4
          d8 [c] b,4 a,
          g, d e
          c a, d
          g,2\fermata d4
          g fis e~
          e dis b,
          e g e
          b,2.\fermata
          c4 a, b,
          e2\fermata
          \partial 4 e4
          cis d8 [c b, a,]
          g,4 g8 [fis e dis]
          e4 e,8 [fis, g, a,]
          b,2.\fermata
          e,4 e dis
          e8 [d c b,] c4
          b,2.\fermata \fine
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
