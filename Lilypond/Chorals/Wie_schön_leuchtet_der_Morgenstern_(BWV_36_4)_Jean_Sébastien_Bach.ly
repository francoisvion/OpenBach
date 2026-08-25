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
  title = "Wie schön leuchtet der Morgenstern v.6)"
  subtitle = "tiré de la cantate : Liebster Gott, wenn werd ich sterben?"
 poet = "Auteur : Philipp Nicolai (1556-1608)"
  opus = "BWV 36/4"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key d \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          a' fis'8 [e'] d'4 a'
          b'8. [cis''32 d''] b'4 a'\fermata a'
          b' cis'' d'' cis''
          b'8 [d''] cis'' [b'] a'4\fermata fis'
          b' a' g' fis'
          e'2 d'4\fermata } r
          a'2 fis'\fermata
          a' fis'\fermata
          fis'4 fis' e' e'
          fis' fis' e' fis'
          g' fis' e'2
          d'\fermata d''4 cis''
          b' a' g' fis'
          e'2 d'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          a a b cis'
          fis' e' e'\fermata fis'
          g' g' fis' e'8 [a']
          a'4 gis' e'\fermata d'
          d' d' d'8 [cis'] d'4
          d' cis' a\fermata } r
          e'2 d'
          e' d'\fermata
          d'4 d' cis' cis'
          d' d' cis' dis'
          e' d'8 [cis'] b4 cis'
          a2\fermata fis'4 fis'8 [e']
          d' [e'] fis'4 fis'8 [e'] e' [d']
          d' [cis'16 b] cis'4 a\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Zwingt die Sai -- ten in Cy -- tha -- ra
      und laßt die sü -- ße Mu -- si -- ca
      ganz freu -- den -- reich er -- schal -- len,      
      Sin -- get,
      Sprin -- get,
      Ju -- bi -- lie -- ret, tri -- ump -- hie -- ret, dankt dem Her -- ren!
      Groß ist der Kö -- nig der Eh -- ren.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      daß ich mö -- ge mit Je -- su -- lein,
      dem wun -- der -- schö -- nen Bräut -- gam mein,
      in ste -- ter Lie -- be wal -- len!
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  fis4
          e d8 [e] fis [gis] a4
          a gis cis'\fermata d'
          d' e' a8 [b] cis'4
          fis8 [fis'] e' [d'] cis'4\fermata a
          g a b8 [g] a4
          a4. g8 fis4\fermata } r
          a2 a
          cis' a\fermata
          a4 a a a
          a a a a
          b8 [cis'] d'4 d'8 [cis'16 b] a8 [g]
          fis2\fermata fis8 [gis] ais4
          b cis' d'8 [e'] a4
          b a8 [g] fis4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d4
          cis d8 [cis] b,4 fis8 [e]
          d [b,] e4 a,\fermata d
          g fis8 [e] fis [gis] a4
          d e a,\fermata d
          g fis e d
          a,2 d4\fermata }r
          cis2 d\fermata
          a, d\fermata
          d8 [e] fis [g] a [b] a [g]
          fis [e] fis [d] a, [a] g [fis]
          e4 b8 [a] g4 a
          d2\fermata b,4 fis,
          g, a, b,8 [cis] d4
          g, a, d\fermata \fine
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
