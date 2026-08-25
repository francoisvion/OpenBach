\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 5\mm % Marge pour la mention SATB
  
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
 title = "Der du bist drei in Einigkeit"
 poet = "Auteur : Martin Luther (1483-1546)"
  opus = "BWV 293"
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
          \partial 4  a'4
          g' d' f' g'
          a' a' g'\fermata a'
          g' d' f' g'
          a' a' g'\fermata
          \partial 4  a'
          b' c'' a' g'
          g' f' e'\fermata f'
          g' d' f' g'
          a' a' g'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d'8 c'4 b16 [cis'] d'8 [c'] b4
          e' d'8 [c'] b4\fermata d'~
          d'8 c'4 b16 [cis'] d'8 [c'] b4
          e' d' d'\fermata
          \partial 4  f'
          f'4. e'4 d'8 d'4
          e'4. d'8 cis'4\fermata d'8 [c']
          b c'4 b16 [cis'] d'8 [c'] b4
          e' d'8 [c'] b4\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Der du bist drei in Ei -- nig -- keit, ein wah -- rer Gott von E -- wig -- keit; die Sonn' mit dem Tag von uns weicht, lass uns leuch -- ten dein gött -- lich Licht.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  f4
          g g a g~
          g fis d\fermata f
          g g a g~
          g fis8 [c'] b4\fermata
          \partial 4  c'
          d' g a16 [b] c'4 b8
          c' [bes] a4 a\fermata a
          g g a g~
          g fis d\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          e g d e8 [d]
          c4 d g,\fermata d
          e g d e8 [d]
          c4 d g,\fermata
          \partial 4  f8 [e]
          d4 c f8 [fis] g4
          c8 [cis] d4 a,\fermata d
          e g d e8 [d]
          c4 d g,\fermata \fine
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
