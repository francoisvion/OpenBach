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
 title = "Vor deinen Thron tret ich hiermit"
 poet = "Auteur : Bobo von Hodenberg (1604-1650)"
  opus = "BWV 327"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  d''4
          d''2 cis''4
          b'2 a'4
          d'' e''2
          fis''\fermata fis''4
          fis''2 fis''4
          e''2 fis''4
          g'' fis''2
          e''\fermata
          \partial 4  d''4
          e''2 fis''4
          e''2 d''4
          b' cis''2
          d''\fermata a''4
          fis''2 d''4
          e''2 g''4
          fis'' e''2
          d''\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  a'4
          b'2 a'4
          g'2 fis'4
          fis' b' a'
          a'2 cis''4
          b'2 b'4
          b' a' a'
          a' d'' a'
          a'2
          \partial 4  b'4
          a'2 a'4
          b' a'8 [g'] fis'4
          b' b' ais'
          b'2 a'4
          a'2 b'4
          a'2 a'4
          a' g'2
          fis' \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Vor dei -- nen Thron tret' ich hier -- mit, o Gott, und dich de -- mü -- tig bitt': wend' dein ge -- nä -- dig An -- ge -- sicht von mir dem ar -- men Sün -- der, nicht.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  fis'4
          fis'2 fis'4
          d'2 d'4
          d'2 cis'4
          d'2 cis'4
          d'2 d'4
          d' cis' d'
          e' a d'
          cis'2
          \partial 4  fis'4
          e'2 d'4
          d' cis' d'
          d' g' fis'
          fis'2 e'4
          fis'2 fis'4
          e'2 cis'4
          a b cis'
          a2 \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          b, d fis
          g b d'
          b g a
          d2\fermata ais4
          b2 a4
          gis a fis
          cis d fis
          a2\fermata
          \partial 4  b4
          cis'2 d'4
          g a b
          g e fis
          b,2\fermata cis'4
          d' cis' b
          cis' b a
          d' g a
          d2\fermata \fine
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
