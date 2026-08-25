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
 title = "Der Herr ist mein getreuer Hirt"
 subtitle = "tiré de la cantate : Der Herr ist mein getreuer Hirt"
 poet = "Auteur : Cornelius Becker (1561-1604)"
  opus = "BWV 112/5"
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
          \partial 4  g'8 [a']
          b'4 c'' d'' c''
          b' a' b'\fermata b'
          b' a'8 [b'] c'' [b'] a'4
          g'8. [a'16] a'4 g'\fermata } g'
          a' b' c'' b'
          a'4. gis'8 a'4\fermata a'
          b' c'' d'' c''
          b' a' b'\fermata b'
          b' a'8 [b'] c'' [b'] a'4
          g'8. [a'16] a'4 g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'8 [fis']
          g'4 g' fis' e'8 [fis']
          g'4 g'8 [fis'] g'4\fermata g'
          g' fis'8 [g'] a' [g'] fis'4
          g'~ g'8 fis' d'4\fermata } d'
          d' d' e' e'
          e'8 [c'] f' [e'] e'4\fermata fis'
          g' f' e' e'8 [fis']
          g'4. fis'16 [e'] dis'4\fermata e'
          d'8 [e'] fis' [g'] a' g'4 fis'8
          e' [d'] e' [d'] d'4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Gu -- tes und die Barm -- her -- zig -- keit
      fol -- gen mir nach im Le - ben,
      auf Erd in christ -- li -- cher Ge -- mein
      und nach dein Tod da werd ich sein
      bei Chri -- sto, mei -- nem Her - ren.
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
      und ich werd blei -- ben al -- le -- zeit
      im Haus des Her -- ren e - ben,
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
          \partial 4  b8 [c']
          d'4 e' a a
          d' d' d'\fermata e'
          d' d' e'8 [d'] d' [c']
          b4 e'8 [d'16 c'] b4\fermata } b
          a g g gis
          a d' c'\fermata a
          d' c' b c'8 [d']
          e'4 e fis\fermata g8 [a]
          b [c'] d' [g] fis [g16 fis] e8 [fis]
          g4. fis8 b4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g,4
          g8 [fis] e4 d a,
          b,8 [c] d4 g,\fermata e
          b,8 [c] d4 a,8 [b,] c [d]
          e [d] c [d] g,4\fermata } g
          fis f e d
          c8 [f] d [e] a,4\fermata d8 [c]
          b,4 a, gis, a,
          e8 [d] c4 b,\fermata e8 [fis]
          g4 fis8 [e] dis [e] cis [dis]
          e [b,] c [d] g,4\fermata \fine
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
