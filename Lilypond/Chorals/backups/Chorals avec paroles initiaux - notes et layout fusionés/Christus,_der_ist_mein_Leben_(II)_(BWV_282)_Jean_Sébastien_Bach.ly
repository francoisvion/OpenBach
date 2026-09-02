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
 title = "Christus, der ist mein Leben (II)"
 poet = "Geneva 1609"
  opus = "BWV 282"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          b'2 a'4
          b'2 c''4
          d''2.
          b'2\fermata r4
          e''2.~
          e''
          d''
          d''
          c''
          c''8 [b'] c''4\fermata r
           b' e''8 [c''] a'4
          b'2\fermata d''4
          e''2 fis''4
          g''2 fis''4
          e''2.
          d''2\fermata b'4
          a'2 g'4
          g'2 fis'4
          g'2\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          g'2 fis'4
          g'2 g'4
          g'4. fis'16 [e'] fis'4
          d'2\fermata r4
          r2.
          f'~
          f'
          f'
          e'
          fis'4 fis'\fermata r
           g'8 [fis'] e'4 fis'8 [e']
          dis'2\fermata g'4
          g'2 a'4
          b'2 a'4
          b'8 [a'] g'4. a'16 [g']
          fis'2\fermata g'4
          g' fis' e'
          e' d'2
          d'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Chri -- stus, der ist mein Le -- ben Ster - - - - ben ist mein Ge -- winn; dem thu' ich mich er -- ge -- ben, mit Freud' fahr' ich da -- hin.
    }
    \new Lyrics \lyricsto "alto" {
      \repeat unfold 9 {\skip1} Ster - - - ben
    }
    \new Staff = "lower" \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          d'2 d'4
          d'2 c'4
          b4. a16 [g] a4
          g2\fermata r4
          r2.
          r
          gis~
          gis
          a~
          a4 a\fermata r
           g8 [b b a16 b] c'4
          fis2\fermata d'4
          c'2 c'4
          d'2 d'4
          d'4. cis'16 [b] cis'4
          a2\fermata e'4
          e' b b
          c'8 [b] a [b] c'4
          b2\fermata \fine
        }
        \new Lyrics \with {
      alignAboveContext = "lower"
    } \lyricsto "tenor" {
        \repeat unfold 9 {\skip1} Ster - ben
        }

        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          g2 d4
          g fis e
          b,8 [c] d4 d
          g,2\fermata r4
          r2.
          r
          r
          c~
          c4. b,8 [c a,]
          d4 d\fermata r
           e8 [d] c4 c
          b,2\fermata b4
          b2 a4
          g b d'
          g8 [fis] e4 a
          d2\fermata e8 [d]
          cis4 dis e
          c d2
          g,\fermata \fine
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
