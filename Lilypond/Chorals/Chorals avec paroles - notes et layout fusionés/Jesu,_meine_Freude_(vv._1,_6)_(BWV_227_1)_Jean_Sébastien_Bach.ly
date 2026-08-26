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
 title = \markup{\concat{"Jesu, meine Freude" \small " (v. 1 & 6)"}}
 subtitle = "tiré du motet : Jesu, meine Freude"
 poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 227/1"
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
          e''8 [fis''] g''4 fis''4. fis''8
          e''1\fermata }          
          b'4 b' c'' b'
          a'4. a'8 g'2\fermata
          b'4 cis'' d'' b'
          e'' d''8 [cis''] cis''2
          b'\fermata b'4 b'
          a' g'8 [fis'] fis'2
          e'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          g'4 fis' e'8 [dis'] e'4
          e' dis' b2\fermata
          g'8 [fis'] e'4 d' d'
          g'8 [a'] b'4 b'2\fermata
          g'8 [a'] b'4 b'4. a'8
          g'1\fermata }          
          g'4 g' a' g'
          g' fis' d'2
          g'4 g' a' g'8 [a']
          b'4 b' b' ais'
          fis'2 g'4 fis'
          e' e' e' dis'
          b1 \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Je -- su, mei -- ne Freu -- de,
      mei -- nes Her -- zens Wei -- de,
      Je -- su, mei -- ne Zier!
      Got -- tes Lamm, mein Bräu -- ti -- gam,
      Au -- ßer dir soll mir auf Er -- den
      nichts sonst Lie -- bers wer -- den.
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
      ach wie lang, ach lan -- ge
      ist dem Her -- zen ban -- ge
      und ver -- langt nach dir! 
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
          e'4 b c'8 [fis] g4
          c' b8 [a] g2\fermata
          e'8 [d'] cis' [b] a4 g8 [a]
          b4 g' fis'2\fermata
          e'4 e' e' dis'
          b1\fermata }        
          e'4 d' d' d'
          e' d'8 [c'] b2
          d'4 e' d' d'
          g' fis' g' fis'8 [e']
          dis'2 e'4 fis'8 [g']
          a' [a] b4 c' b8 [a]
          gis1 \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          e4 d c4. b,8
          a,4 b, e2\fermata
          e4 a8 [g] fis4 g8 [fis]
          e [fis] g [a] b2\fermata
          c'4 b8 [a] b4 b,
          e1\fermata }
          e8 [fis] g4 fis g
          c d g,2
          g4 fis8 [e] fis4 g8 [fis]
          e4 b, e fis
          b,2 e4 d
          c b, a, b,
          e1 \fine
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
