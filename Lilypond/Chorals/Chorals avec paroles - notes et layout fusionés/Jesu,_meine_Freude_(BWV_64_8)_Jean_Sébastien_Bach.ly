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
 subtitle = "tiré de la cantate : Sehet, welch eine Liebe hat uns der Vater erzeiget"
 poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 64/8"
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
          b'4 b' cis'' dis''
          e''2 dis''\fermata
          e''4 g'' fis''4. fis''8
          e''1\fermata }
          b'4 b' c'' b'
          a'4. g'8 g'2\fermata
          b'4 cis'' d'' b'
          e'' d'' cis''2
          b'\fermata b'4 b'
          a' g' fis'2
          e'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          g'4 g'8 [fis'] e'4 e'
          e' dis' b2\fermata
          g'4 g' a'8 [g'] fis'4
          e' fis' fis'2\fermata
          g'8 [a'] b'4 b' a'
          g'1\fermata }
          g'8 [fis'] e' [dis'] e' [fis'] g'4
          g' fis' d'2\fermata
          g'4 g' fis' fis'
          g' fis' fis'4. e'8
          dis'2\fermata d'8 [e'] f'4
          e'8 [fis'] g' [e'] e'4 dis'
          b1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Gu -- te Nacht, o We -- sen,
      das die Welt er -- le -- sen!
      Mir ge -- fällst du nicht.
      Gu -- te Nacht, du Stolz und Pracht!
      Dir sei ganz, o La -- ster -- le -- ben,
      gu -- te Nacht ge -- ge -- ben!
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      \repeat unfold 3 {\skip1} ihr Sün -- den,
      blei -- bet weit da -- hin -- ten,
      kommt nicht mehr ans Licht!
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
          e'4 d' c' b
          c' b8 [a] g2\fermata
          e'4 d' a8 [b] c'4
          b cis' b2\fermata
          b4 e' e' dis'
          b1\fermata }
          e'4 b a g
          e' d' b2\fermata
          d'4 e' ais b
          ais b b ais
          fis2\fermata gis4 gis
          a8 [c'] b4 cis' b8 [a]
          gis1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          e8 [fis] g4 c8 [d] e4
          a, b, e2\fermata
          e8 [fis] g4 fis8 [g] a4
          gis ais b2\fermata
          g8 [fis] e4 b b,
          e1\fermata }
          e8 [fis] g4 c8 [d] e4
          cis d g,2\fermata
          g8 [fis] e4 fis8 [e] d4
          cis d8 [e] fis2
          b,\fermata b,8 [cis] d4
          cis8 [dis] e4 ais, b,
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
