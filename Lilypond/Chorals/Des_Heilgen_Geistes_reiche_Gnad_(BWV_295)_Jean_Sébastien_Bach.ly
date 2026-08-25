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
 title = "Des Heilgen Geistes reiche Gnad"
 poet = "Leipzig 1582"
  opus = "BWV 295"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           d'4 d' d'
          a'2 a'4
          bes'2 bes'4
          a'2.\fermata
          f'4 g' a'
          bes'2.
          a'4 g'4. f'8
          f'2\fermata
          \partial 4  g'4
          a'2 g'4
          g'2 a'4
          f'2 f'4
          e'2.\fermata
          d'4 e' f'
          g'2.
          f'4 e'4. d'8
          d'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
           a4 a d'
          e' d' a'
          a' g'8 [fis'] g'4~
          g' f'2\fermata
          f'4. e'8 ees' [d']
          d'4 e'8 [f'] g'4~
          g'8 [f'] f'4 e'
          c'2\fermata
          \partial 4  e'4
          f'2 e'8 [d']
          cis' [d'] e'4 e'~
          e' d'8 [cis'] d'4
          d' cis'2\fermata
          d'4 a d'
          e'4. d'8 e'4~
          e'8 [d'] d'4 cis'
          a2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Des heil' -- gen Gei -- stes rei -- che Gnad' die Her -- zen der A -- po -- stel hat er -- füllt mit sei -- ner Gü -- tig -- keit, ge -- schenkt der Spra -- chen Un -- ter -- scheid.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           f8 [g a g] a4~
          a8 [g f e] d4
          d'2 d'4
          d'2.\fermata
          a8 d'4 c'8 c'4
          bes8 [a] g4 c'
          c' d' c'8. [bes16]
          a2\fermata
          \partial 4  c'4
          c'2 c'8 [bes]
          bes4 a8 [b] cis'4
          a a b
          e a2\fermata
          a4 a a
          bes a a
          a bes a8. [g16]
          fis2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
           d8 [e f e f d]
          cis4 d fis,
          g,8 [a,] bes,4 g,
          d2.\fermata
          d4 e fis
          g c8 [d] e4
          f bes, c
          f,2\fermata
          \partial 4  c4
          f,8 [g, a, bes, c d]
          e [d] cis4 a,
          d8 [e] f4 gis,
          a,2.\fermata
          f8 [e d cis] d4~
          d cis8 [b, cis a,]
          d4 g, a,
          d,2.\fermata \fine
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
