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
 title = "Laßt Furcht und Pein"
 subtitle = "tiré de l'Oratorio de Noël, partie n° 3 : Herrscher des Himmels, erhöre das Lallen"
 poet = "Auteur : Christoph Runge (1619-1681)"
  opus = "BWV 248/35"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key fis \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4  fis'8 [gis']
          a'4 gis' fis'\fermata fis'
          a' gis' fis'\fermata cis''
          b' a' gis'\fermata gis'
          a' a' b' b'
          cis'' cis'' b' a'
          gis'2 fis'4\fermata cis''
          b' a'8 [gis'] gis'4\fermata cis''
          b' a' gis'\fermata gis'
          a' a' b' b'
          cis'' cis'' b' a'8 [gis']
          gis'2 fis'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4  cis'4
          fis' eis' fis'\fermata fis'
          fis' eis' cis'\fermata fis'
          fis'8 [eis'] fis'4 eis'\fermata eis'
          fis' fis' fis'8 [gis'16 a'] gis'4
          gis'8 [fis'] eis' [fis'] gis'4. fis'8
          fis'4 eis' cis'\fermata fis'
          fis'8 [eis'] fis'4 eis'\fermata fis'8 [e']
          dis' [e'] fis' [dis'] e'4\fermata gis'8 [eis']
          fis'4 a'8 [fis'] d'4 b'8 [gis']
          a' [g'] fis'4. eis'8 fis'4~
          fis'8 [eis'16 dis'] eis'4 cis'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Seid froh, die -- weil,
      seid froh, die -- weil
      daß eu -- er Heil
      ist hier ein Gott und auch ein Mensch ge -- bo -- ren,
      der wel -- cher ist
      der Herr und Christ
      in Da -- vids Stadt, von vie -- len aus -- er -- ko -- ren.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key fis \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4  a8 [b]
          cis'4 cis'8 [b] a4\fermata b
          cis' cis'8 [b] a4\fermata a
          b cis' cis'\fermata cis'
          cis' d' d'8 [e'16 fis'] e'8 [d']
          cis'4 b8 [a] d' [cis'] cis' [d']
          d' [b] gis [cis'] a4\fermata a
          b8 [cis'] dis'4 cis'\fermata cis'
          fis b b\fermata cis' ~
          cis'8 [a] d'4~d'8 [b] e'4~
          e'8 [cis'] fis' [e'] d' [cis'] dis'4
          cis'8 [gis] cis' [b] a4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4  fis4
          fis16 [gis a b] cis'8 [cis] d4\fermata d
          cis8 [b,] cis4 fis\fermata fis
          gis a8 [b] cis'4\fermata cis
          fis8 [e] d [cis] d [b,] e4
          a,8 [a] gis fis~ fis eis fis [d]
          b, [gis,] cis4 fis,\fermata fis8 [e]
          d [cis] bis,4 cis\fermata a,
          b,8 [cis] dis [b,] e4\fermata eis8 [cis]
          fis4 fis8 [d] g4 gis8 [e]
          a4 ais8 [fis] b4 bis8 [gis]
          cis' [b] cis' [cis] fis4\fermata \fine
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
