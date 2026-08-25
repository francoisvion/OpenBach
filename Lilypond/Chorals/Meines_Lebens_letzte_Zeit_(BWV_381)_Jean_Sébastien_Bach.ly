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
 title = "Meines Lebens letzte Zeit"
 poet = "Gotha 1726"
  opus = "BWV 381"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key e \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
           b'4 b' c'' b'
          b' a' b'2\fermata
          d''4 d'' e'' e''
          a' d''8 [c''] b'4 b'\fermata
          g'4. a'8 b'4 a'8 [g']
           fis'4. e'8 e'2\fermata
          b'4. c''8 d''4 b'
          c'' b'8 [a'] a'4 g'\fermata
          b' b' e'' e''
          a' a'\fermata b' c''
           d'' d'' c'' b'
          a' a'\fermata b'4. c''8
          d''4 b' c'' b'
          a' b' b' a'8 [g']
          fis'2 e'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
           g'4 g' fis' g'8 [fis']
          e' [dis'] e'4 dis'2\fermata
          g'8 [a' b' a'] b'4 e'
          d'8 [g'] fis'4 g' g'\fermata
          e' e' fis' e'
           e' dis' b2\fermata
          g'4 g' a' g'
          g'8 [fis'] g'4. fis'8 d'4\fermata
          g'8 [a'] b'4 b' a'8 [g']~
          g' [fis'16 e'] fis'4\fermata g' g'
          a'8 [g'] a'4 g'8 a'4 g'8
          g' [fis'16 e'] fis'4\fermata g' g'
          gis'8 [fis' gis'] b'4 a'8 g'4~
          g'8 [fis'] fis'4 e' e'~
          e' dis' b2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Mei -- nes Le -- bens letz -- te Zeit
      ist nun -- meh -- ro an -- ge -- kom -- men,
      da der schnö -- den Ei -- tel -- keit
      mei -- ne See -- le wird ent -- nom -- men;
      wer kann wi -- der -- stre -- ben,
      daß uns Men -- schen Gott das Le -- ben
      auf ein zeit -- lich Wie -- der -- neh -- men hat ge -- ge -- ben.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
           e'4 e' a g
          g fis8 [e] fis2\fermata
          b8 [c'] d'2 c'4
          d' d' d' d'\fermata
          c' c' b b
           c' b8. [a16] g2\fermata
          e'4 d' d' d'
          c'8 [d'] e'4 d'8. [c'16] b4\fermata
          d' g'8 [fis'] e' [d'] e'4
          d' d'\fermata d' e'
          a d'8 [fis'] e' [d'] d'4
          d' d'\fermata d' e'
          b e' e' d'
          d' b8 [a] g4 a8 [b]
          c'4 b8 [a] gis2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
           e,4 e~ e8 [dis e g]
          c2 b,\fermata
          g,4 g~ g8 [fis g c']
          fis [d] d4 g g,\fermata
          c'8 [b] c'4 dis e
           a, b, e,2\fermata
          e8 [fis] g4~ g8 [fis g b]
          e [d] c4 d g,\fermata
          g8 [fis e d] c4 cis
          d2\fermata g4 fis8 [e]
          fis [e fis b] e [fis] g4
          d2\fermata g8 [fis] e4~
          e8 [d e gis] a,4 b,8 [c]
          d4 dis e8 [g c b,]
          a,4 b, e2\fermata \fine
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
