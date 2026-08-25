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
 title = "Was Gott tut, das ist wohlgetan"
 poet = "Auteur : Samuel Rodigast (1649-1708)"
  opus = "BWV 250"
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
          \partial 4  d'4
          g'4 a'4 b'4 c''8 [d''16 e''16]
          d''4 c''8 [b'8] b'4\fermata e''4
          d''4 c''4 b'4 a'8 [b'16 c''16]
          a'4 a'8 [g'8] g'4\fermata } d''4
          e''4 e''4 a'4\fermata a'4
          d''4 d''4 g'4\fermata b'4
          a'4 g'4 fis'4 g'8 [fis'8]
          e'2 d'4\fermata d''4
          c''4 b'4 a'4 b'8 [c''8]
          a'2 g'4\fermata \fine
        }
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  b8 [c'8]
          d'4 d'4 g'4 g'4
          g'8 [e'8] fis'4 d'4\fermata c'8 [b8]
          a4 e'4 d'4 e'4
          d'2 d'4\fermata } g'4
          g'4 a'8 [g'8] fis'4\fermata fis'4
          g'8 [a'8] g'8 [f'8] e'4\fermata g'4
          g'8 [fis'8] e'4 e'8 [d'8] d'4
          d'4 cis'4 a4\fermata b8 [a8]
          g8 [a8] b8 [c'8] d'4 d'8 [e'8]
          e'4 d'4 d'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Was Gott thut, das ist wohl -- ge -- than,
      es bleibt ge -- recht sein Wil - le;
      Er ist mein Gott,
      der in der Noth
      mich wohl weiß zu er -- hal -- ten:
      drum laß' ich ihn nur wal -- ten.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      wie er fängt mei -- ne Sa -- chen an,
      will ich ihm hal -- ten stil - le. 
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
          \partial 4  g8 [a8]
          b4 a4 e'4 e'8 [c'8]
          b8 [g8] a4 g4\fermata g4
          fis4 g8 [a8] b8 [a8] g4
          g4 fis4 b4\fermata } b4
          c'8 [b8] a4 d'4\fermata d'4
          d'8 [c'8] d'4 c'4\fermata d'4
          d'8 [a8] b8 [a8] a4 g8 [a8]
          b4 a8 [g8] fis4\fermata fis'4
          e'4 d'8 [e'8] a4 g4
          g4 fis4 b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g4 fis4 e8 [d8] c4
          d4 d4 g,4\fermata c4
          d4 e8 [fis8] g4 c4
          d2 g,4\fermata } g4
          c4 cis4 d4\fermata d8 [c8]
          b,8 [a,8] b,4 c4\fermata g,4
          d4 d8 [cis8] d8 [fis8] b8 [a8]
          g8 [e8] a4 d4\fermata b,4
          e8 [fis8] g4 g8 [fis8] g8 [e8]
          c8 [a,8] d4 g,4\fermata \fine
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
