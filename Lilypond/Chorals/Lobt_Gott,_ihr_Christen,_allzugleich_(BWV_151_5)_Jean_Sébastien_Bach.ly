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
 title = "Lobt Gott, ihr Christen, allzugleich"
 subtitle = "tiré de la cantate : Süßer Trost, mein Jesus kömmt"
 poet = "Auteur : Nikolaus Herman (v.1480-1561)"
  opus = "BWV 151/5"
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
          d'' d'' d'' d''
          e'' d''8 [c''] b'4\fermata a'
          b'8 [cis''] d''4 e'' e''
          d''2\fermata r4 d''
          d'' d'' d'' b'8 [c'']
          d''4 c''8 [b'] a'4\fermata d''
          c'' b' a' a'
          g'8 [a'] b' [c''] d''4\fermata d''
          c'' b'8 [a'] b'4 a'
          g'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  d'4
          d'8 [e'] fis'4 g' g'
          g' fis' g'\fermata a'
          g' fis' e'8 [fis'] g'4
          fis'2\fermata r4 a'
          g' fis' g' g'
          g' a'8 [g'] fis'4\fermata fis'
          g'8 a'4 g' e'8 fis'4
          g'2 fis'4\fermata g'
          g' g' g' fis'
          d'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Heut schleußt er wie -- der auf die Tür
      zum schö -- nen Pa -- ra -- deis,
      der Che -- rub steht nicht mehr da -- für,
      Gott sei Lob, Ehr und Preis, __ _ _
      Gott sei Lob, Ehr und Preis.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  b4
          a d'8 [c'] b [c'] d'4
          c'8 [b] a [d'] d'4\fermata d'
          g a b cis'
          a2\fermata r4 d'8 [c']
          b4 c' d' e'
          d' e' a\fermata b
          b8 [a] b [c'] d'4 c'
          b e' d'\fermata b
          c'8 [d'] e'4 d' d'8 [c']
          b2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  g4
          fis d g8 [a] b4
          c d g\fermata fis
          e d g a
          d2\fermata r4 fis
          g a b e
          b, c d\fermata b,
          e8 [fis] g4 d dis
          e8 [fis] g [a] b4\fermata g
          e d8 [c] d4 d
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
