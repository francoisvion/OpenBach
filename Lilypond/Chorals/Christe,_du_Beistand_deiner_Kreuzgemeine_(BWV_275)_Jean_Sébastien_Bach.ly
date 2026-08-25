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
 title = "Christe, du Beistand deiner Kreuzgemeine"
 poet = "Auteur : Matthäus Apelles von Löwenstern (1594-1648)"
  opus = "BWV 275"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    \relative c' {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \partial 4 d
          d e f2
          e\fermata a4 b 
          c d8 [c] b2
          a\fermata r4 c
          b a g g 
          a g f f 
          e2 f4\fermata e
          e f g2 
          e\fermata a4 b
          c d8 [c] b2
          a\fermata r4 fis 
          g g g fis
          g2 r4 e
          f g e2
          d2.\fermata \fine
         }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 a4
          a e' e d
          cis2\fermata e4 e
          a a a gis 
          e2\fermata r4 a
          a8 [g] f [e] d4 g
          g8 [f] f [e] e [d] c [d]
          c2 c4\fermata cis8 [d]
          e4 e8 [d] d [c] d [b]
          c2\fermata a'4 a
          a8 [gis] a4 a gis
          e2\fermata r4 c
          d d es d
          d2\fermata r4 cis4
          d d d cis
          a2.\fermata \fine
          
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
     Chris -- te, du Bei -- stand dei -- ner Kreuz -- ge -- mein -- e,
     ei -- le, mit Hülf' und Ret -- tung uns er -- schei -- ne;
     steu -- re den Fein -- den: ih -- re Blut -- ge -- ri -- chte
     ma -- che zu ni - chte, ma -- che zu nich -- te.
    }
        
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    \relative c
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 f8 [g]
          a4 a a2 
          a2\fermata a4 e'
          e d8 [e] f4 e8 [d]
          c2\fermata r4 e
          f8 [e16 d] c4 b c
          c c a a
          g8 [a] bes4 a\fermata a
          a a g2
          g\fermata e'4 f
          e d8 [e] f4 e8 [d]
          c2\fermata r4 a
          g4. f8 es [bes'] a [c]
          bes2\fermata r4 a
          a g8 [bes] a [e] a [g]
          fis2.\fermata \fine
    
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 d8 [e]
          f [e] d [cis] d [e] f [d]
          a2\fermata c!8 [b] a [gis]
          a [c] f [e] d [b] e4
          a,2\fermata r4 a
          d8 [e] f4 f e
          f c d a8 [bes]
          c2 f,4\fermata a
          cis d8 [c] b! [a] b [g]
          c2\fermata c4 d
          e f8 [e] d4 e
          a,2\fermata r4 a
          bes b c d
          g,2 r4 a
          d8 [c] bes [g] a2
          d2.\fermata \fine
       
       }
      >>
    }
  >>
}

\layout {}
\midi {}
