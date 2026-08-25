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
 title = "Wenn wir in höchsten Nöten sein (II)"
 poet = "Auteur : Paul Eber (1511-1569)"
  opus = "BWV 432"
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
          \partial 4  g'4
          g' a' b' a'8 [b']
          c'' [b'] a'4 g'\fermata b'
          c'' b' a' g'
          fis'8 [g'] g'8. [fis'32 g'] a'4\fermata d''
          c'' b' a' g'8 [fis']
          e'8. [fis'32 g'] e'4 d'\fermata b'
          c'' b' a' g'8 [a']
          b'4 a' g'\fermata }
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  d'4
          e'4. d'8 d' [e'] fis'4
          e'8 [g'16 fis'] e'8 [fis'] d'4\fermata g'
          g'8 a'4 g'8 fis' [e'16 dis'] e'4
          d' d' d'\fermata fis'
          e' d'8 [cis'16 d'] e'8 [fis'16 e'] d'4
          d' cis' d'\fermata fis'
          e' d' e'8 [fis'] g'4
          g' fis' d'\fermata }
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wenn wir in höch -- sten Nö -- then sein
      und wis -- sen nicht wo aus und ein,
      und fin -- den we -- der Hülf' noch Rath,
      ob wir gleich sor -- gen früh und spat.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      so ist das un -- ser Trost al -- lein,
      daß wir zu -- sam -- men ins -- ge -- mein
      an -- ru -- fen dich, du treu -- er Gott,
      um Ret -- tung aus der Angst und Noth.
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
          \partial 4  b4
          b a8 [fis] g4 a
          a8 [d'] c' [b16 a] b4\fermata d'
          e'8 dis'4 e'8 c'4 b
          a b fis\fermata b8 [a]
          g [a] b4 cis' b
          b8 [g] a4 fis\fermata fis
          g8 [a] b4 e8 b4 c'8
          d'4 c'16 [b c'8] b4\fermata }
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  g8 [fis]
          e [d] c [d] g,4 d
          a,8 [b,] c [d] g,4\fermata g8 [fis]
          e4 e e4. d8
          c [b,] a, [g,] d4\fermata b,
          e8 [fis] g4. fis8 b [a]
          g [e] a4 d\fermata dis
          e8 [fis] g4 cis8 [dis] e [d16 c]
          b,8 [c] d4 g,\fermata }
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
