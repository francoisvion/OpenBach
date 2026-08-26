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
 title = "Befiehl du deine Wege (II)"
 poet = "Auteur : Paul Gerhardt (1607-1676)"
  opus = "BWV 271"
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
          \partial 4  fis'4
          b' a' g' fis'
          e'2 fis'4\fermata cis''
          d'' d'' cis''8 [b'] cis''4
          b'2.\fermata } \break
          \partial 4  d''4
          cis''8 [b'] a'4 b' cis''
          d''2 d''4\fermata a'
          b' a' g' g'
          fis'2.\fermata
          \partial 4  d''4
          cis''8 [d''] e''4 d'' cis''
          b'2 cis''4\fermata fis'
          g' fis' e' a'8 [g']
          fis'2.\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          d' d' e' a
          b a a\fermata fis'
          fis' fis' fis' fis'8 [e']
          d'2.\fermata }
          \partial 4  fis'4
          g' fis'8 [e'] d'4 g'
          g' fis'8 [e'] fis'4\fermata fis'
          g' fis' fis' e'
          dis'2.\fermata
          \partial 4 e'4
          e' a'8 [gis'] fis' [gis'] a'4
          a' gis' a'\fermata a
          e' a8 [b] cis' [d'] e'4~
          e'8 [cis'] d'4 cis'\fermata \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      Be -- fiehl du dei -- ne We -- ge,
      und was dein Her -- ze kränkt,
      Der Wol -- ken, Luft und Win -- den
      gibt We -- ge, Lauf und Bahn,
      der wird auch We -- ge fin -- den,
      Da dein Fuß ge -- hen kann.
    }
    
    \new Lyrics \lyricsto "soprano" {
      der al -- ler -- treu -- sten Pfle -- ge
      des, der den Him -- mel lenkt.
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
          \partial 4  a4
          g a b8 [cis'] d'4
          d' cis' d'\fermata cis'~
          cis' b b ais
          b2.\fermata }
          \partial 4  b8 [a]
          g4 d'8 [cis'] b [a g a]
          b4 a8 [g] a4\fermata d'
          d' c' b b
          b2.\fermata
          \partial 4 b4
          a8 [b] cis'4 d' e'
          fis' e' e'\fermata d'8 [cis']
          b [cis'] d'4 a8 [b] cis'4~
          cis'8 [fis] b4 ais\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d4
          g fis e d
          g, a, d\fermata ais,
          b,8 [cis d e] fis4 fis,
          b,2.\fermata }
          \partial 4  b4
          e fis g8 [fis] e4
          d2 d4\fermata d
          g8 [fis e dis] e [fis g e]
          b2.\fermata
          \partial 4 gis4
          a a, b, cis
          d e a,\fermata d
          e fis8 [g] a [g fis e]
          d4 cis8 [b,] fis4\fermata \fine
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
