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
 title = "Als der gütige Gott"
 poet = "Auteur : Michael Weisse (v.1488-1534)"
  opus = "BWV 264"
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
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d'4
          g' a' b' a'
          g'2\fermata r4 a'
          b' c'' b' a'
          g'2\fermata r4
          \partial 4  b'
          d'' d'' c'' b'
          a'2\fermata r4 b'
          g' c'' b' a'
          g'2 a'4\fermata
          \partial 4  a'
          b' c'' b' a'
          g'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  b4
          e'8 g'4 fis'8 g' [fis'16 e'] fis'4
          d'2\fermata r4 fis'
          g' g'8 a'4 g' fis'8
          d'2\fermata r4
          \partial 4  g'
          g' g'4. fis'8 g'4~
          g' fis'\fermata r fis'~
          fis'8 [e'] g' a'4 g' fis'8
          g'4. fis'16 [e'] fis'4\fermata
          \partial 4 fis'
          g' g' g'4. fis'8
          d'2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Als der gü -- ti -- ge Gott,
      vol -- len -- den wollt' sein Wort,
      sandt er ein En -- gel schnell,
      des Na -- me Ga -- bri __ el, __ _
      in's ga -- li -- lä -- isch Land.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  g4
          b d' d' d'8 [c']
          b2\fermata r4 d'
          d' e' d'4. d'16 [c']
          b2\fermata r4
          \partial 4  d'
          d' b c' d'
          d'2\fermata r4 b
          b e'8 [d'] d'4. d'16 [c']
          b8 [a] b [cis'] d'4\fermata
          \partial 4 d'
          d' c'8 [e'] d'4 d'8. [c'16]
          b2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          e d g d
          g,2\fermata r4 d
          g c d d,
          g,2\fermata r4
          \partial 4  g,
          b, g, a, b,8 [c]
          d2\fermata r4 dis
          e4. fis8 g4 d
          e2 d4\fermata
          \partial 4 d
          g e8 [c] d4 d,
          g,2.\fermata \fine
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
