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
 title = "Singt dem Herrn ein neues Lied"
 poet = "Auteur : Matthäus Apelles von Löwenstern (1594-1648)"
  opus = "BWV 411"
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
          g'4 g' g' d'
          g' a' b'2\fermata
          g'8 a' b' cis'' d''4 fis''
          e''2 d''\fermata }
          e''4 d'' c'' e''
          d'' c'' b'2
          a'\fermata a'4 gis'
          a' b' c'' c''
          b'2\fermata g'4 a'
          b' c'' c'' b'
          c''2\fermata d''4. c''8
          b'4 a' g'8 [a'] b'4
          a'2 g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          d'8 [c'] b [c'] d'4 d'
          e'16 [fis'] g'4 fis'8 g'2\fermata
          d'4 d'8 [g'] fis'4 a'
          b'8 [g'] e' [a'16 g'] fis'2\fermata }
          g'8 [e'] fis' [gis'] a'4 e'
          a'8 [gis'] a'4 a'8 [gis'16 fis'] gis'4
          e'2\fermata e'4 e'
          e' e' e' e'
          e'2\fermata e'4. d'16 [c']
          d'8 g'4 f'16 [e'] a'4 g'
          g'2\fermata g'4 fis'
          d' d' e'8 [fis'] g'4~
          g'8 [fis'16 e'] fis'4 d'2\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Singt dem Herrn ein neu -- es Lied:
      die Ge -- mei -- ne soll ihn lo -- ben,
      Is -- ra -- el er -- freu' sich des -- sen,
      wel -- cher ihn ge -- ma -- chet hat.
      und in Aeng -- sten schaf -- fet Rath:
      Sei -- ner soll er nicht ver -- ges -- sen.
    }
    
     \new Lyrics \lyricsto "soprano" {\set stanza = 2
      weil er ih -- ren Gren -- zen Fried'
      hat ver -- lie -- hen hoch von o -- ben.
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
          b8 [c'] d' [c'] b [c'] b [a]
          b4 e'8 [d'] d'2\fermata
          b8 [a] g4 a d'~
          d'8 [cis'16 b] cis'4 a2\fermata }
          c'4 d' e'8 [d'] c' [b]
          a [b] c' [d'16 e'] f'8 [d'] b [e'16 d']
          c'2\fermata c'4 b
          c' b4. a16 [gis] a4~
          a gis\fermata b8 [c'16 b] a4
          g8 [b] a16 [b c'8] d'4. f'8
          e'2\fermata d'4 a
          g a b8 [c'] d'4
          e'8 [c'] a [d'16 c'] b2\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          g8 [a] b [a] g [a] g [fis]
          e [d] c [d] g,2\fermata
          g8 [fis] g [e] fis [e] d [e16 fis]
          g8 [e] a4 d2\fermata }
           c'4. b8 a4. g8
          f4. e8 d [b,] e4
          a,2\fermata a,8 [c] e [d]
          c [b,] a, [gis,] a, [b,] c [d]
          e2\fermata e8 [c] f4~
          f8 [e] a [g] f [d] g4
          c2\fermata b,8 [c] d4
          g,8 g4 fis8 e [d] c [b,]
          c [a,] d4 g,2\fermata \fine
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
