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
 title = "Wenn mein Stündlein vorhanden ist (I)"
 poet = "Auteur : Nikolaus Herman (v.1480-1561)"
  opus = "BWV 428"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  g'4
          d' e' fis' g'
          a' b' g'\fermata b'8 [c'']
          d''4 d'' b'8 [c''] d''4
          c''2 b'4\fermata b'
          c'' b' a' g'8 [a']
          b'4 b'8 [a'] g'4\fermata b'8 [c'']
          d''4 d'' b' d''
          c''2 b'4\fermata b'
          c'' b' a' g'8 [a']
          b'4 b' g'\fermata a'
          b' b' e' fis'
          g'8 [fis'] e'4 d'\fermata d'
          g' a' b' a'8 [b']
          c''4 b' a'2
          g'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d' c' c' d'
          d' d' e'\fermata d'
          d'8 [e'] fis'4 g' f'
          e' fis' d'\fermata d'
          d'4. e'8 fis'4 g'8 [fis']
           e'4 dis' e'\fermata e'
          d' a' g' b'~
          b' a' g'\fermata g'
          g' g' fis'8 [e'] d'4
          d' d' e'\fermata e'8 [fis']~
          fis' [e'16 fis'] g'8 [fis'] e'4. d'8
          d'4 d'8 [cis'] a4\fermata d'
          d' d' g' g'
          fis'8 a'4 g'8 g'4 fis'
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Wenn mein Stünd -- lein vor -- han -- den ist
      und ich soll fahr'n mein' Stra -- ße,
      so g'leit du mich, Herr Je -- su Christ,
      mit Hülf' mich nicht ver -- las -- se;
      mein' Seel' an mei -- nem letz -- ten End'
      be -- fehl' ich, Herr, in dei -- ne Händ',
      du wirst sie wohl be -- wah - - ren.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b8 [a]
          g4 g a b
          c' b c'\fermata b
          a a g8 [a] b4~
          b a g\fermata b
          a b b b
           b b b\fermata g
          a8 [b] c' [d'] d' [e'] f'4
          e' fis' d'\fermata d'
          c' d' d' d'8 [c']
          b [a] g4 c'\fermata c'
          b b4. a8 a [b16 c']
          b8 [a] g4 fis\fermata fis8 [a]
          b4 a g e'8 [d']
          c' [d'] d'4 e' d'8 [c']
          b2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g,8 [a,]
          b,4 bes, a, g,
          fis, g, c\fermata g
          fis8 [e] d4 e b,
          c d g,\fermata g
          fis g dis e8 [fis]
           g [a] b4 e\fermata e
          f fis g gis
          a d g\fermata g8 [fis]
          e4 d c b,8 [a,]
          g, [a,] b,4 c\fermata a
          g8 [fis] e [d] cis4 d
          g, a, d\fermata d8 [c]
          b, [a,] g, [fis,] e, [d] c [b,]
          a, [fis,] g, [b,] c [a,] d [d,]
          g,2.\fermata \fine
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
