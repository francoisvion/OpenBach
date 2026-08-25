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
 title = "Liebster Jesu, wir sind hier (choral)"
 poet = "Auteur : Tobias Clausnizer (1619-1684)"
  opus = "BWV 373"
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
          b'4 a'8 [g'] a'4 d''
          b' g' a'2\fermata
          g'4 g' g' g'
          a' b' a'2
          g'1\fermata }
           d'4 d' e' fis'
          g' a' fis' d'\fermata
          g' g' g' g'
          a' b' a'2
          g'1\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          d'4 d' d' fis'
          d' d'8 [e'] fis'2\fermata
          e'4 f' e' d'
          e'8 [fis'] g'4 g' fis'
          d'1\fermata }
           b4 a b8 [cis'] d'4
          e' e' d' a\fermata
          d'8 [b] c' [d'] e'4 e'
          e'8 [fis'] g'4 g' fis'
          d'1\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Lieb -- ster Je -- su, wir sind hier,
      dich und dein Wort an -- zu -- hö -- ren;
      daß die Her -- zen von der Er -- den
      ganz zu dir ge -- zo -- gen wer -- den.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      len -- ke Sin -- nen und Be -- gier
      auf die sü -- ßen Him -- mels -- leh -- ren,
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
          g8 [a] b4 a a
          b8 [c'] d'4 d'2\fermata
          b4 b c' g
          c' d' e'8 [c'] a [d'16 c']
          b1\fermata }
           g4 a g a
          b a a fis\fermata
          g4. f8 e [fis] g [a16 b]
          c'4 d' d'4. c'8
          b1\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          g,4 g~ g8 [fis] e [d]
          g [a] b [g] d2\fermata
          e,8 e4 d8 c, c4 b,8
          a,4 g,8 [b,] c [a,] d4
          g,1\fermata }
           g,8 g4 fis8 e4 d
          d cis d d\fermata
          b,8 [g,] a, [b,] c [d] c [b,]
          a,4 g,8 [b,] d2
          g,1\fermata \fine
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
