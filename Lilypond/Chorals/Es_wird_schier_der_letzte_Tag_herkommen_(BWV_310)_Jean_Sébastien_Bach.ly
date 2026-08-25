\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm % Pas d'indentation pour un instrument solo/clavier
  
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
 title = "Es wird schier der letzte Tag herkommen"
 poet = "Auteur : Michael Weisse (v.1488-1534)"
  opus = "BWV 310"
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
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           e'4 e' b' b'8 [c'']
          d''4 b' g' a'8 [b']
          c''2 b'\fermata
          a'4 a' g' a'
           b' a' g' fis'
          e'2 d'\fermata
          g'4 fis' g'8 [a'] b'4
          a'8 [g'] fis'4 e'2\fermata
          fis'4 e'8 [fis'] g'4 fis'
          e'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           b4 b e'8 [fis'] g'4
          a'8 [fis' g' fis'] e'4 fis'8 [g']~
          g' [fis'16 e'] fis'4 g'2\fermata
          g'4. fis'8 fis' [e' d' a']
           a' g'4 fis'8 e'4 a8 [d']
          d' [cis'16 b] cis'4 a2\fermata
          e'4 fis' e' e'
          e' dis' e'2\fermata
          dis'4 e'8 [dis'] e'4. dis'8
          b1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Es wird Schier der letz -- te Tag her -- kom -- men, denn die Bos -- heit hat sehr zu -- ge -- nom -- men; was Chri -- stus hat vor ge -- sagt, das wird jeztz be -- klagt.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           g4 g8 [a] b4 e'
          d' d' c'4. d'8
          c' [d'16 e'] d'4 d'2\fermata
          e'4 d'8. [c'16] b4 d'
           d' d'4. cis'8 d' [a]
          b [g] e [a16 g] fis2\fermata
          b4 b b b
          c' c'8 [b16 a] g2\fermata
          b4. a8 b4~ b8. [a16]
          gis1\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           e4. fis8 g4 e
          fis8 [d] g4 c'8 [b a g]
          a4 d g2\fermata
          cis4 d e fis
           g d e fis
          g8 [e a a,] d2\fermata
          e4. dis8 e4 g,
          a, b, c2\fermata
          b,8 [a, g, fis,] e,4 b,
          e1\fermata \fine
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
