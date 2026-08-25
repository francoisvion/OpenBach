\version "2.27.1"


\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)
  
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm
  
  indent = 0\mm % Pas d'indentation pour un instrument solo/clavier
  
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
  title = "Wo Gott zum Haus nicht gibt sein Gunst"
  opus = "BWV 1123"
  poet = "Auteur : Johann Kohlross (1487-1560)"
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
          \partial 4 g'4
          d''4 d''4 b'4 a'4
          b'4 cis''4 d''4\fermata d''8 [c''8]
          b'8 [c''8] d''4 c''4 d''8 [c''8]
          b'4 a'4 g'4\fermata d''4
          e''4 e''4 b'8 [c''8] d''4
          c''4 c''4 b'4\fermata g''!4
          fis''4 e''4 d''4 e''8 [d''8]
          c''8 [b'8] a'4 g'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \partial 4 d'4
          d'4 a'4 g'4 a'4
          g'4 g'4 fis'4\fermata a'4
          g'4 fis'4 g'4 a'4
          g'4 fis'4 d'4\fermata g'4
          g'4 a'4 g'8 [gis'8] a'8 [b'8]
          a'8 [gis'8] a'4 gis'4\fermata b'4
          c''8 [d''8] g'8 [a'8] b'8 [a'8] g'4
          a'8 [g'8] g'8 [fis'8] d'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Wo Gott zum Haus nicht giebt sein' Gunst,
      so ar -- beit't je -- der -- mann um -- sonst;
      wo Gott die Stadt nicht selbst be -- wacht,
      so ist um -- sonst der Wäch -- ter Macht.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \partial 4 b4
          a4 d'4 d'4 d'4
          g'8 [fis'8] e'4 d'4\fermata d'4
          d'4 d'4 e'4 d'4
          d'4 d'8 [c'8] b4\fermata b4
          c'8 [d'8] e'4 e'4 a8 [e'8]
          e'4 e'4 e'4\fermata e'4
          e'8 [d'8] e'8 [fis'8] g'4 c'8 [b8]
          a8 [b16 c'16] d'8 [c'8] b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \partial 4 g4
          fis8 [e8] fis8 [d8] g4 fis4
          e4 a4 d4\fermata fis4
          g4 b,4 e4 fis4
          g4 d4 g,4\fermata g4
          c8 [b,8] c8 [d8] e4 fis8 [gis8]
          a8 [b8] c'8 [a8] e4\fermata e'4
          a8 [b8] c'4 g8 [fis8] e4
          fis8 [g8] d4 g,4\fermata \fine
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
