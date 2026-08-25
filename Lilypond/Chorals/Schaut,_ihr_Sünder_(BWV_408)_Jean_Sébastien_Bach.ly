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
 title = "Schaut, ihr Sünder"
 poet = "Auteur : Matthäus Apelles von Löwenstern (1594-1648)"
  opus = "BWV 408"
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
          g'4 a' bes' g'\fermata
          r d'' c'' bes'
          a' g' a'2\fermata
          bes'4 c'' d'' bes'\fermata
          r d'' ees'' d''
          c'' c'' bes'2\fermata
          d''4 c'' bes' g'\fermata
          r c'' c'' bes'
          a' g' f'2\fermata
          bes'4 c'' d'' bes'\fermata
          r d'' c'' g'8 [a']
          bes'4 a' g'2\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          d'4 d' d' d'\fermata
          r g'4. fis'8 g'4~
          g'8 [fis'] g' [g] d'2\fermata
          f'4 f' f' f'\fermata
          r bes'4. a'8 bes'4
          bes' a' f'2\fermata
          f'4. fis'8 g'4 d'\fermata
          r g'4. f'16 [e'] f'4~
          f' e' c'2\fermata
          g'4 a' bes'8 [aes'] g'4\fermata
          r g' g' g'~
          g' fis' d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Schaut, ihr Sün -- der!
      Ihr macht mir gro -- ße Pein!
      Ihr sollt Kin -- der
      des To -- des e -- wig sein:
      durch mein Ster -- ben
      seid ihr hier -- von be -- freit
      und nun Er -- ben
      der wah -- ren Se -- lig -- keit.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key f \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          bes4 a g bes\fermata
          r bes c' d'
          d'4. c'8 fis2\fermata
          d'4 c' bes d'\fermata
          r f' ees' f'
          g' f'8 [ees'] d'2\fermata
           bes4 c' d' bes\fermata
          r c'8 [bes] a4. g8
          a [bes] c' [bes] a2\fermata
          d'4 f' f' ees'\fermata
          r f' ees' bes8 [c']
          d'4. c'8 b2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           g4. fis8 g4 g,\fermata
          r g, a, bes,8 [c]
          d4 ees d2\fermata
          d8 bes,4 a,8 bes,4 bes\fermata
          r bes8 [aes] g4 f
          ees f bes,2\fermata
           bes,8 bes4 a8 g4 g,\fermata
          r e f d
          c c f,2\fermata
          g4 f8 [ees] d [bes,] ees4\fermata
          r b, c8 [d] ees4
          d d, g,2\fermata \fine
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
