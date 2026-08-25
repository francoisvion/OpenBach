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
 title = "Wer Gott vertraut, hat wohl gebaut"
 poet = "Auteur : Joachim Magdeburg (1525-v.1587)"
  opus = "BWV 433"
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
          r4 g' g' a'
          b'2\fermata r4 b'
          c'' b' a'2\fermata
          r4 a' g' a'
          b' a' g'2
          a'4\fermata a' b' a'
          g' g' fis'2
          g'1\fermata }
          r4 b' c'' b'
          a'2\fermata r4 a'
          g' g' fis'2\fermata
          r4 fis' g' fis'
          e' e' dis'2
          e'\fermata r4 g'
          g' fis' g'2\fermata
          r4 b' c'' b'
          a'2\fermata r4 a'
          g' a' b' a'
          g'2 a'4\fermata a'
          b' a' g' g'
          fis'2 g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          r4 d' e'8 g'4 fis'8
          g'2 r4 g'~
          g'8 [fis'] g'4 g' fis'\fermata
          r fis'4. e'4 d'8
          d'4 d' d' cis'
          d' d' d'8 [e'] fis'4~
          fis'8 [e'] d' [e'] d'2
          d'1 }
          r4 g' g'8 a'4 g'8~
          g' [fis'16 e'] fis'4\fermata r fis'~
          fis' e'2 dis'4\fermata
          r fis' b8 [e'] dis'4
          e' b8 [c'] b2
          b r4 b8 [c']
          d' [e'] d'4 d'2
          r4 g' a'4. g'8
           g'4 fis'\fermata r fis'
          g' d' d'8 [e'] fis' [e']
          d' [c'] d' [e'] fis'4 a'~
          a'8 g'4 fis'8 ~ fis' [e'] d' [e']
          d'2 d' \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Wer Gott ver -- traut
      hat wohl -- ge -- baut
      im Him -- mel und auf Er -- den,
      im Him -- mel und auf Er -- den;      
      Da -- rum auf dich
      all Hoff -- nung ich
      ganz fest und steif tu set -- zen,
      Herr Je -- su Christ,
      Mein Trost du bist
      In To -- des -- noth und Schmer -- zen,
      In To -- des -- noth und Schmer -- zen.
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
    wer sich ver -- läßt
    auf Je -- sum Christ,
    dem muß der Him -- mel wer -- den,
    dem muß der Him -- mel wer -- den.
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
          r4 b b d'
          d'2 r4 d'
          c' d' d'2
          r4 d'8 [c'] b4 a~
          a8 g4 fis8 g [b] a [g]
           fis4 d'8 [c'] b [cis'] d' [c']
          b4 b8 [a] a [b] c'4
          b1 }
          r4 d' e'8 [d'] d'4
          d'2 r4 b
          b b b2
          r4 b8 [a] g c'4 b8~
          b [a] g [fis] fis [g] a4
          g2 r4 g8 [a]
          b [a] a16 [b c'8] c'4 b\fermata
          r d'8 e'4 d'8 d'4
           d'2 r4 d'
          d'4. c'8 b [c'] d'4
          g8 [a] b [c'16 b] a4 d'
          d' d' b4. a8
          a [b] c'4 b2 \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          r4 g8 [fis] e4 d
          g2\fermata r4 g,
          a, b,8 [c] d2\fermata
          r4 d e fis
          g d e2
          d4\fermata fis g d
          e b,8 [c] d2
          g,1\fermata }
          r4 g8 [fis] e [fis] g4
          d2\fermata r4 dis8 [b,]
          e [fis] g [a] b2
          r4 dis e b,
          c g,8 [a,] b,2
          e\fermata r4 e
          b,8 [c] d4 g,2\fermata
          r4 g~ g8 [fis] g4
          d2\fermata r4 c
          b, fis, g, d8 [c]
          b, [a,] g,4 d\fermata fis
          g d e b,8 [c]
          d2 g,\fermata \fine
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
