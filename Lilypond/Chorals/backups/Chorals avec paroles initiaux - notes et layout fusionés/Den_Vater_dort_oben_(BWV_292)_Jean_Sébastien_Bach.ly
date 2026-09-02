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
 title = "Den Vater dort oben"
 poet = "Auteur : Michael Weisse (v.1488-1534)"
  opus = "BWV 292"
  composer = "Jean-Sébastien Bach (1685-1750)"
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
          g'4 g' a' b'
          c''2 c''\fermata
          e''4 d'' c'' b'
          a'2 g'\fermata
          g'4 g' a' b'
          c'' g' g'2\fermata
          a'4 g' f' e'
          d' d' c'2\fermata
          c''4 d'' c'' b'
          a'2 g'\fermata
          g'4 g' a' b'
          c'' g' g'2\fermata
          a'4 g' f' e'
          d'2 c'\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          e'4 d' e'8 [fis'] g'4
          g' f'2 e'4\fermata
          g' fis'8 [g'16 fis'] e'8 [a'] d' [c'16 d']
          e'8 [c'] a [d'16 c'] b2\fermata
          e'4 e' e'8 [fis'] g'4
          g'8 f'4 e'16 [d'] e'2\fermata
          f'8 [e'] d' [e'16 d'] c'8 [b] c'4~
          c' c'8 [b] g2\fermata
          g'4 g'4. fis'8 g'4
          g' fis' g'2\fermata
          e'8 [f'] g'4. f'16 [e'] f'4
          f'8 [e'] d'4 c'2\fermata
          c'8 f'4 e' d'8 c'4~
          c'8 [b16 a] b4 g2\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Den Va -- ter dort o -- ben wol -- len wir nun lo -- ben, der uns als ein mil -- der Gott gnä -- dig -- lich ge -- spei -- set hat, und Chris -- tum sei -- nen Sohn, durch wel -- chen der Se -- gen kommt vom al -- ler -- höch -- sten Thron.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key c \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          c'4 g c' d'
          c'8 [bes] a4 g2\fermata
          c'8 [b] a [b16 a] g8 [fis] g4~
          g4. fis8 d2\fermata
          b4 b c' d'
          c' d'8 [g] c'2\fermata
          c'4 b8 [c'16 b] a8 [d'] g [f16 g]
          a8 [f] d [g16 f] e2\fermata
          e'4 d' g8 [a] b [c'16 d']
          e'8 [c'] a [d'16 c'] b2\fermata
          c'4 c' c' d'
          g g8. [f16] e2\fermata
          f4 g8 [c'16 bes] a4 a
          a8 [d] d [g16 f] e2\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          c4. b,8 a,4 g,8 [f,]
          e,4 f, c,2\fermata
          c4. b,8~ b, [a,] g, [a,16 b,]
          c8 [a,] d4 g,2\fermata
          e,8 e4 d8 c4 b,
          a, b, c2\fermata
          f4. e8~ e [d] c [d16 e]
          f8 [d] g [g,] c2\fermata
          c4. b,8 e4 d
          c d g,2\fermata
          c8 [d] e4 f8 [e] d4
          c4. b,8 c2\fermata
          f4 c d a,8 [g,]
          f,4 g, c,2\fermata \fine
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
