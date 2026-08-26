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
  title = "O Gott, du frommer Gott"
  opus = "BWV 1125"
  poet = "Auteur : Johann Heermann (1585-1647)"
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
          fis'4 d'4 a'4 a'8 [b'16 c''16]
          b'2.\fermata b'4
          e'4 e'4 a'4 g'4
          fis'4 e'4 d'4\fermata a'4
          b'4 b'4 a'4 g'8 [fis'8]
          fis'2.\fermata e'4
          fis'4 gis'4 a'4 b'8 [cis''16 d''16]
          cis''4 b'4 a'4\fermata a'4
          a'4 a'4 d''8 [e''8] d''8 [c''8]
          b'2.\fermata b'4
          b'4 b'4 e''8 [fis''8] d''8 [cis''8]
          <a' cis''>2.\fermata a'4
          b'4 a'4 b'4 cis''4
          d''2.\fermata a'4
          b'8 [a'8] g'8 [fis'8] e'4. d'8
          d'2.\fermata r4 \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 e'4
          d'4 a4 d'4 d'4
          d'2.\fermata d'4
          cis'8 [b8] cis'4 d'4 e'4 ~
          e'8 d'4 cis'8 a4\fermata fis'4
          g'8 [fis'8] g'4 g'8 [fis'8] e'4
          d'2.\fermata e'4
          a4 b4 a4 e'4
          e'4. d'8 cis'4\fermata e'4
          fis'8 [g'8] a'4 a'8 [g'8] g'8 [fis'8]
          g'2.\fermata fis'4
          e'4 b'4 b'8 a'4 gis'8
          s2. g'4
          fis'4 fis'4 fis'4 fis'4
          fis'2.\fermata d'4
          d'4 d'4 d'8 [b8] cis'4
          a2.\fermata s4 \fine
        }
      >>
    }   
     
    \new Lyrics \lyricsto "soprano" {
      O Gott, du from -- mer Gott,
      du Brunn -- quell gu -- ter Ga - ben,
      Ohn' den nichts ist, was ist,
      Von dem wir al -- les ha - ben:
      Ge -- sun -- den Leib gib mir,
      und daß in sol -- chem Leib
      Ein' un -- ver -- letz -- te Seel'
      Und rein Ge -- wi -- ßen bleib'.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key d \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 a4
          a4 fis4 fis8 [e8] fis4
          g2.\fermata g4
          a4. a4 s4.
          a8 [a8] a8 [g8] fis4\fermata d'4
          d'4 d'8 [e'8] cis'8 [d'8] e'8 [cis'8]
          a2.\fermata a8 [g8]
          fis4 d'4 e'4 b4
          b8 a4 gis8 a4\fermata cis'4
          d'4 fis4 b4 a8 [d'8]
          d'2.\fermata dis'4
          e'4 gis4 cis'4 b8 [e'8]
          e'2.\fermata e'4
          d'4 cis'4 d'4 cis'4
          b2.\fermata d'4
          g4. b8 e4 a8 [g]
          fis2.\fermata r4 \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 cis4
          d4. e8 d8 [c8] b,8 [a,8]
          g,2.\fermata g4
          d4. d4 s4.
          d8 [fis8] a4 d4\fermata d4
          g8 [a8] b8 [g8] a8 [b8] cis'8 [a8]
          d2.\fermata cis4
          d8 [cis8] b,8 [d8] cis8 [b,8] a,8 [gis,8]
          a,8 [cis8] e4 a,4\fermata a8 [g8]
          fis8 [e8] d8 [c8] b,8 [c8] d4
          g,2.\fermata b8 [a8]
          gis8 [fis8] e8 [d8] cis8 [d8] e4
          a,2.\fermata d8 [cis8]
          d8 [e8] fis8 [e8] d8 [cis8] b,8 [ais,8]
          b,2.\fermata fis4
          g8 [a8] b8 [g8] a8 [g8] a4
          d2.\fermata s4 \fine
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
