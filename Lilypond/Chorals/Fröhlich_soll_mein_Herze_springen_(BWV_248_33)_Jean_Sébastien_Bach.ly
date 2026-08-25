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
 title = "Fröhlich soll mein Herze springen"
 subtitle = "tiré de l'Oratorio de Noël, partie n° 6 : Herr, wenn die stolzen Feinde schnauben"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 248/33"
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
          g'4 g' a' g'
          a'8 [b'] c''4 c'' b'
          c''2\fermata d''4 e''
          c''2\fermata b'8 [c''] d''4
          a'2\fermata d''4 d''
          c'' b'8 [a'] a'2
          g'\fermata g'4 g'
          a' g' a'8 [b'] c''4
          c'' b' c''2\fermata
          d''4 e'' c''2\fermata
          b'8 [c''] d''4 a'2\fermata
          d''4 d'' c'' b'8 [a']
          a'2 g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          d'4 e' d' d'
          e' f' g'2
          g'\fermata b'8 [a'] b'4
          a'2\fermata g'4 g'
          fis'2\fermata fis'4 g'
          g' g' g' fis'
          d'2\fermata e'4 b8 [cis']
          d' [c'] b4 c'8 [d'] c' [d']
          e'4 d' c'2\fermata
          fis'4 gis' e'2\fermata
          g'4 fis'8 [g'] a'2\fermata
          g'4 g'8 [fis'] g' [a'] d' [e']
          fis' g'4 fis'8 d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Ich will dich mit Fleiß be -- wah - ren,
      Ich will dir
      le -- ben hier,
      dir will ich ab -- fah -- ren,
      mit dir will ich end -- lich schwe - ben
      vol -- ler Freud
      oh -- ne Zeit
      dort im an -- dern Le -- ben.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          b4 c' fis g
          c' c'8 [d'] e'4 d'
          e'2\fermata g'8 [f'] e'4
          e'2\fermata e'4 d'
          d'2\fermata a4 b
          c' d' e' d'8 [c']
          b2\fermata c'4 g
          fis g g8 [f] g [a]
          g4 e' e'2\fermata
          d'8 [c'] b4 a2\fermata
          g8 [a] b [g] d'2\fermata
          b8 [c'] d'4 e'8 [fis'] g'4
          d'8 [c'16 b] c'4 b2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          g4 c~ c b,
          a, aes, g,2
          c\fermata g4 gis
          a2\fermata e4 b,8 [c]
          d2\fermata d4 g8 [fis]
          e4 d c d
          g,2\fermata c8 [d] e4
          d8 [e] f4 e8 [d] e [fis]
          g4 gis a2\fermata
          b4 e a2\fermata
          e4 d8 [e] fis2\fermata
          g8 [a] b4~ b8 a b [c']
          d'4 d g,2\fermata \fine
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
