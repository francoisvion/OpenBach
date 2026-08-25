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
 title = "Das walt mein Gott"
 poet = "Auteur : Basilius Förtsch (?-1619)"
  opus = "BWV 291"
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
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  f'4
          f' e' f'2
          a'4 c'' bes' a'
          g' g' g'\fermata c'
          d'8 [e'] f'4 f' e'
          f'2\fermata r4 f'8 [g']
           a'4 g' a' bes'
          c''2 g'4\fermata g'
          g' g' g' g'
          a'2 a'4\fermata f'
          e' d' d' cis'
          d'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          c' c' c'2
          f'4 g' f'8 [g' g' f']~
          f' [e'] d'4 c'\fermata c'
          bes c'8 [d'] c'4 c'
          c'2\fermata r4 c'
           f' g' f' f'
          f'2 e'4\fermata g'8 [f']
          e'4 d' e' e'
          e'8 [d' e' cis'] d'4\fermata d'8 [c']
          bes4 a bes a
          a2.\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Das walt' mein Gott, Va -- ter, Sohn und heil' -- ger Geist, der mich er -- schaf -- fen hat, mir Lieb und Seel ge -- ge -- ben im Mut -- ter -- leib das Le -- ben, ge -- sund ohn' al -- len Schad'.
    }
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a4
          a g16 [a bes8] a2
          c'4 c' d'8 [c'] c'4
          c' g8 f4 e8\fermata f4
          f8 [g] a4 g8 [a] bes4
          a2 r4 a8 [bes]
           c'4 c' c' d'
          c'2 c'4\fermata d'
          c' b c' c'
          cis'8 [b a g] f4\fermata a
          g4. f8 e4. g8
          fis2.\fermata \fine
        }
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  d4
          a,8 [bes,] c4 f,2
          f4. e8 d [e] f4
          c b, c\fermata a,
          bes, a,8 [bes,] c4 c,
          f,2\fermata r4 f,
           f4. e8 f [e] d4
          a,8 [g, a, bes,] c4\fermata b,
          c8 [e g f] e [d c bes,]
          a, [b, cis a,] d4\fermata d~
          d8 [cis d f,] g, [e,] a,4
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
