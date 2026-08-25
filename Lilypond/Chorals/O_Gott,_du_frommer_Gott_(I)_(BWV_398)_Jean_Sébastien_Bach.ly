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
 title = "O Gott, du frommer Gott (I)"
 poet = "Auteur : Johann Heermann (1585-1647)"
  opus = "BWV 398"
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
          \partial 4 a'4
          fis' d' a' a'
          b'2\fermata r4 b'
          e' e' a' g'
          fis' e' d'\fermata a'
          b' b' a' g'
           fis'2\fermata r4 e'
          fis' gis' a' b'8 [cis''16 d'']
          cis''4 b' a'\fermata a'
          a' a' d'' c''8 [b']
          b'2\fermata r4 b'
           b' b' e'' d''8 [cis'']
          cis''2\fermata r4 a'
          b' a' b' cis''
          d''2\fermata r4 a'
          b'8 [a'] g' [fis'] e'4 e'
          d'2.\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 d'4
          d' d'8 [e'] fis'4 d'
          d'2 r4 d'
          cis' cis' d' e'
          d' cis' a fis'
          g' g'8 [fis'] e' [d'] e'4
           d'2 r4 cis'
          d' e' e' fis'
          e'4. d'8 cis'4 cis'
          d' d' d' d'
          d'2 r4 g'
           g'8 [fis'] g' [a'] b' [a'] b' [gis']
          a'2 r4 a'
          g' fis' fis' fis'
          fis'2 r4 fis'8 [e']
          d'4 d' cis' cis'
          a2. \fine
        }
      >>
    }
    \new Lyrics \lyricsto "soprano" {
      O Gott, du from -- mer Gott,
      du Brunn -- quell al -- ler Ga - ben,
      Ohn' den nichts ist, was ist,
      von dem wir al -- les ha - ben:
      ge -- sun -- den Leib gib mir,
      und laß in sol -- chem Leib
      ein' un -- ver -- letz -- te Seel'
      und rein Ge -- wi -- ßen bleib'.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 fis4
          a a d' a
          g2 r4 b
          a a a a
          a4. g8 fis4 d'
          d' g a a
           a2 r4 a
          a b a a
          a gis e e
          fis8 [e] fis [g] a [g] a [fis]
          g2 r4 d'
           e' e' b e'
          e'2 r4 d'
          d' d' d' cis'
          b2 r4 d'8 [cis']
          b4 b8 [d'] a4. g8
          fis2. \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 d4
          d8 [e] fis [g] fis [e] fis [d]
          g2 r4 g
          a8 [g] fis [e] fis [e] d [cis]
          d4 a, d d
          g8 [fis] e [d] cis [b,] cis [a,]
           d2 r4 a,
          d8 [cis] d [b,] cis4 d
          e8 [d] e4 a, a,
          d8 [cis] d [e] fis [e] fis [d]
          g2 r4 g8 [fis]
           e [dis] e [fis] gis [fis] gis [e]
          a2 r4 fis
          g8 [b] d' [e'] d' [cis'] b [ais]
          b2 r4 fis
          g8 [a] b [g] a4 a,
          d2. \fine
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
