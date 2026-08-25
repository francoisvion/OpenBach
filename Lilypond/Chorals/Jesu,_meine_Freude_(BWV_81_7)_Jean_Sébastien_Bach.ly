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
 title = "Jesu, meine Freude"
 subtitle = "tiré de la cantate : Jesus schläft, was soll ich hoffen?"
 poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 81/7"
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
          \repeat volta 2 {
          b'4 b' a' g'
          fis'2 e'\fermata
          b'4 cis'' d'' b'
          e''2 dis''\fermata
          e''4 g'' fis'' fis''
          e''1\fermata }
          b'4 b' c'' b'
          a' a' g'2\fermata
          b'4 cis'' d'' b'
          e'' d''8 [cis''] cis''2
          b'\fermata b'4 b'
          a' g' fis'2
          e'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          g'4 fis' e'8 [dis'] e'4
          e' dis' b2\fermata
          g'8 [fis'] e'4 fis' d'
          g' a' b'2\fermata
          b'4 b' c'' b'8 [a']
          g'1\fermata }
          g'4 fis' e' d'8 [g']
          g'4 fis' d'2\fermata
          d'4 g' fis' fis'
          g' fis' fis'4. e'8
          dis'2\fermata e'4 e'8 [dis']
          e' [fis'] g' [e'] e'4 dis'
          b1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Un -- ter dei -- nen Schir -- men
      bin ich für den Stür -- men
      al -- ler Fein -- de frei.
      Ob es jetzt gleich kracht und blitzt,
      ob gleich Sünd und Höl -- le schre -- cken,
      Je -- sus will mich de -- cken.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Laß den Sa -- tan wit -- tern,
      laß den Feind er -- bit -- tern,
      mir steht Je -- sus bei.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key e \minor
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          e'4 b c' c'8 [b]
          c'4 b8 [a] g2\fermata
          e'8 [d'] cis' [b] a4 g8 [a]
          b4 e' fis'2\fermata
          b4 e' e' dis'
          b1\fermata }
          e'4 b8 [a] g [a] b4
          e' d'8 [c'] b2\fermata
          b4 b ais b
          ais b b ais
          fis2\fermata g8 [a] b4
          c' b cis' b8 [a]
          gis1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          e4 d c8 [b,] a, [g,]
          a,4 b, e,2\fermata
          e4 a8 [g] fis4 g8 [fis]
          e [g] c'4 b2\fermata
          g8 [fis] e4 a b
          e1\fermata }
          e4 dis e8 [fis] g4
          cis d g,2\fermata
          g4 fis8 [e] fis4 e8 [d]
          cis4 d8 [e] fis2
          b,\fermata e8 [fis] g [e]
          c [d] e [c] ais,4 b,
          e,1\fermata \fine
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
