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
 title = "Machs mit mir, Gott, nach deiner Güt"
 poet = "Auteur : Johann Hermann Schein (1586-1630)"
  opus = "BWV 377"
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
          \partial 4  d'8 [e']
          fis'4 g' a' a'
          g' fis' e'\fermata a'
          b' cis'' d'' cis''
          b'2 a'4\fermata } a'
          d'' cis'' b' a'
          g' fis' e'\fermata a'
          g' fis' e'8 [fis'] g'4
          fis' e' d'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a4
          d' d' e' d'8 [cis']
          b [cis'] d'4 cis'\fermata e'
          fis'8 [gis'] a'4 b' a'~
          a' gis' e'\fermata } e'
          fis' e' d'8 [e'] fis'4
          e' a8 [b] cis'4\fermata fis'8 [e']
          d' e'4 d' cis'8 d'4
          d' cis' a\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Mach's mit mir, Gott, nach dei -- ner Güt,
      hilf mir in mei -- nem Lei -- den,
      so nimm sie, Herr, in dei -- ne Händ,
      ist Al -- les gut, wenn gut das End.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      was ich dich bitt', ver -- sag' mir nicht,
      wenn mei -- ne Seel' will schei -- den:
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
          \partial 4  fis8 [g]
          a4 g8 [fis] e4 fis
          g a a\fermata a
          d' e' e' e'
          fis' e'8 [d'] cis'4\fermata } cis'8 [b]
          a [fis] g [a] b4 b
          b8 [cis'] d'4 a\fermata cis'
          b8 [a] a4 a g
          a4. g8 fis4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d4
          d8 [cis] b,4 cis d
          e fis8 [g] a4\fermata cis'
          b a gis a
          d e a,\fermata } a8 [g]
          fis [d] e [fis] g [fis] e [dis]
          e4 fis8 [gis] a4\fermata fis
          b,8 [cis] d4 a, b,
          a,8 [g,] a,4 d,\fermata \fine
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
