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
 title = "Die Nacht ist kommen"
 poet = "Auteur : Petrus Herbert (v.1533-1571)"
  opus = "BWV 296"
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
          a' b' c''2
          b'\fermata a'4 a'
          gis' a' b'2
          a'\fermata r4
          \partial 4  c''
          c'' b'8 [a'] a'2
          d''\fermata r4 b'
          c'' a' b' a'
          g'2\fermata r4
          \partial 4  d''
          d'' d'' c''2
          a'\fermata r4 c''
          c'' b' c''8 [b'] a'4
          a'2\fermata r4 d''
          c'' b' a'2
          g'1\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d' d' e' d'
          d'2\fermata e'4 d'8 [c']
          b4 e' f' e'8 [d']
          c'2\fermata r4
          \partial 4  a'
          g'8 [f'] g'4. f'16 [e'] f'8 [g']
          a'2\fermata r4 g'
          g' a'4. g'4 fis'8
          d'2\fermata r4
          \partial 4 g'
          a'8 [d'] g'4. f'8 g' [e']
          f'2\fermata r4 g'
          a'4. g'8 g'4 g'
          fis'2\fermata r4 g'~
          g'8 [fis'] g'4 g' fis'
          d'1\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Die Nacht ist kom -- men, drin wir ru -- hen sol -- len; Gott walt zu From -- men nach sein'm Wohl -- ge -- fal -- len, dass wir uns le -- gen, in sein'm G'leit und Se -- gen sein'n Will'n zu pfle -- gen.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          a g g a
          g2\fermata g4 f8 [e]
          e4 e8 [a] a4 gis
          a2\fermata r4
          \partial 4  e'
          e'8 [d'] e'4 c'8 [cis' d' e']
          f'2\fermata r4 d'
          e' d' d'4. c'8
          b2\fermata r4
          \partial 4 b
          a b c'2
          c'\fermata r4 e'
          d' d' e'8 [d'] e'4
          d'2\fermata r4 d'
          g8 [a] b [e'] a d'4 c'8
          b1\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          fis f e fis
          g2\fermata cis4 d~
          d c d e
          a,2\fermata r4
          \partial 4  a
          e c f8 [g f e]
          d2\fermata r4 g8 [f]
          e4 fis g d
          g,2\fermata r4
          \partial 4 g
          fis g8 [f] e [d e c]
          f2\fermata r4 e
          fis g c cis
          d2\fermata r4 b,
          e d8 [c] d4 d,
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
