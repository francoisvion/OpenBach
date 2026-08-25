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
 title = "Uns ist ein Kindlein heut geborn"
 poet = "Anonyme"
  opus = "BWV 414"
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
          \repeat volta 2 {
          \partial 4  b'4
          b'8 [c''] d''4 b' g'
          a' b' c''\fermata b'
          a' g' g'4. a'8
          b'4 b' a'8 [g'] a'4
          g'2.\fermata } b'4
          a' b' g' e'
          fis' g' a'\fermata b'
          g' g' g'4. a'8
          b'4 b' a'8 [g'] a'4
          g'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g'4
          g' a' g' g'
          f'8 [e'] d'4 e'\fermata d'~
          d'8 [c'] b4 e'2
          d'4 d' d'4. c'8
          b2.\fermata } g'4
          fis' fis' e'8 [d'] cis'4
          d'4. cis'8 d'4\fermata dis'
          b e' d' e'8 [fis']
          g'4 d' d'4. c'8
          b2.\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Uns ist ein Kind -- lein heut' ge -- bor'n
      von ei -- ner Jung - - frau aus -- er -- kor'n.
      Lob, Preis und Dank sei Gott be -- reit
      für sol -- che Gnad __ _ _ in E -- wig -- keit.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      Des freu -- en sich die En -- ge -- lein,
      soll -- ten wir Men - schen nicht fröh -- lich sein?
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  d'4
          d' d' d' d'8 [c']
          c'4 g g\fermata g
          fis g c'2
          b8 [a] g4 g fis
          d2.\fermata } d'4
          d'8 [c'] b4 b a
          a g fis\fermata fis
          g c' b8 [c'] b [a]
          g4 g2 fis4
          d2.\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g fis g e
          f g c\fermata g,
          d e8 [d] c [d] e [fis]
          g4 b,8 [c] d4 d
          g,2.\fermata } g,4
          d dis e a8 [g]
          fis4 e d\fermata b,
          e8 [d] e [fis] g [a] g [fis]
          e4 b,8 [c] d2
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
