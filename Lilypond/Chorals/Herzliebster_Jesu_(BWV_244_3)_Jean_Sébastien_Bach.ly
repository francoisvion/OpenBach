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
 title = "Herzliebster Jesu"
 subtitle = "tiré de la Passion selon saint Matthieu"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 244/3"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key b \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  b'4
          b' b' ais'8 [gis'] fis'4
          b' cis'' d'' d''
          e'' d'' cis''\fermata cis''
          d'' e'' fis''8 [e''] d''4
          g'' g'' fis''8 [e''] fis''4
          e''2 d''4\fermata d''
          cis'' b' a' fis'8 [g']
          a'4 a' b' a'
          g'2 fis'4\fermata fis''
          e'' d''8 [cis''] cis''2
          b'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  fis'4
          g' d'8 [e'] fis'4 cis'
          fis' fis' fis' fis'
          fis'2 fis'4\fermata fis'
          fis' a' a' b'8 [a']
          g'4 a' a' d''8 [cis'']
          b'4 a'8 [g'] fis'4\fermata fis'
          e' d' e' d'8 [e']
          fis'4 fis' g' fis'
          fis'8 [dis'] e'4 e'\fermata d'
          g' fis' fis'4. e'8
          dis'2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Herz -- lieb -- ster Je -- su, was hast du ver -- bro - chen,
      daß man ein solch scharf Ur -- teil hat ge -- spro -- chen?
      Was ist die Schuld, in was für Mis -- se -- ta -- ten
      bist du ge -- ra -- ten?
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key b \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  d'4
          e' b cis'8 [b] ais4
          b ais b8 [cis'] d'4
          cis' b ais\fermata ais
          b cis' d'8 [cis'] b [cis']
          d'4 e' e' d'
          d' cis' a\fermata b8 [a]
          g4 g8 [fis] e [a] a4
          d' d' d' c'
          b4. ais16 [b] cis'4\fermata b
          b8 [ais] b4 b ais
          fis2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  b4
          e8 [fis] g4 fis fis8 [e]
          d4 fis b, b
          ais b fis\fermata fis
          b a d g8 [a]
          b4 cis' d'8 [cis'] b [a]
          g4 a d\fermata b,
          e8 [fis] g4 cis d
          d'8 [c'] b [a] g [fis] e [dis]
          e2 ais,4\fermata b,
          cis d8 [e] fis4 fis,
          b,2.\fermata \fine
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
