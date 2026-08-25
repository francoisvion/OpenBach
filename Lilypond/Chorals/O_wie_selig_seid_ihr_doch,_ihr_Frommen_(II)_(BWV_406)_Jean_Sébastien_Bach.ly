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
 title = "O wie selig seid ihr doch, ihr Frommen (II)"
 poet = "Auteur : Simon Dach (1605-1659)"
  opus = "BWV 406"
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
           d''4 a' c'' d''8 [e'']
          f''4 e'' d'' c''
          bes'2 a'\fermata
          f''4 d'' c'' a'8 [bes']
          c''4. c''8 a'4 bes'
          g'2 f'4\fermata
          \partial 4  a'
          g' f' e'2
          d'\fermata a'4 c''
          d'' a' c'' a'
          g' f' e'2
          d'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           f'8 [g'] a'4 e' f'8 [g']
          a'4 a'8. [g'16] f'4 f'
          d'8 [bes] c'4 c'2\fermata
          f'4 f'8 [d'] g' [e'] c'4
          f' e' f'8 [a'] g' [f']~
          f' [e'16 d'] e'4 c'\fermata
          \partial 4  f'
          f'8 e'4 d' cis'16 [b] cis'4
          d'2\fermata c'8 [d'] e'4
          f'8 [g'] a' [f'] g' [e'] f'4
          e' d' d' cis'
          a1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      O wie se -- lig seid ihr doch, ihr From -- men,
      die ihr durch den Tod zu Gott ge -- kom -- men!
      Ihr seid ent -- gan -- gen
      al -- ler Noth, die uns noch hält ge -- fan -- gen.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           a4 d' c'8 [bes] bes4
          d'4. c'8 ~ c' bes4 a8~
          a [g] f [e] f2\fermata
          c'8 [a] d' [bes] g4 f8 [g]
          a4 g f8 [c'] d'4
          c'8 [g] c' [bes] a4\fermata
          \partial 4  c'
          c'8. [bes16] a4 bes8 [e] a [g]
          f2\fermata f4 g
          a d' c' c'
          bes a8 [bes] bes [g] e [a16 g]
          fis1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           d8 [e] f [g] a [g] f [e]
          d4 a bes f
          g c f2\fermata
          a8 [f] bes4 e8 [c] f4~
          f8 [a,] bes, [c] d [c] bes,4
          c c, f,\fermata
          \partial 4  f
          c d g, a,
          bes,2\fermata f4 e
          d8 [e] f [d] e [c] f [e]
          d [cis] d [bes,] g, [e,] a,4
          d,1\fermata \fine
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
