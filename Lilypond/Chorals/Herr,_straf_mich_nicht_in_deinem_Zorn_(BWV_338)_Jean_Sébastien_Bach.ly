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
 title = "Herr, straf mich nicht in deinem Zorn"
 poet = "Anonyme"
  opus = "BWV 338"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f

  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    {
      \clef treble
      \key a \minor
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  a'4
          c'' b' a' a'
          g' f' e'\fermata e'
          fis' gis' a' c''
          b'2 a'4\fermata }
          \partial 4  b'
          b' b' b' g'
          a' b' c''\fermata b'
          b' b' c'' b'
          a' a' gis'\fermata
          \partial 4  gis'
          a' b' c'' d''
          b'2 a'4\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  e'4
          a' a'8 [g'] f'4 f'~
          f'8 e'4 d'8 cis'4\fermata e'
          d'8. [e'16] f'8 [e'] e' [fis'16 gis'] a'4
          a' gis' e'\fermata }
          \partial 4  g'
          fis' g' fis'4. e'8~
          e' d'4 e'8 e'4\fermata e'
          fis'16 [g'] a'4 gis'8 a'4. g'8~
          g' [f'16 e'] d'4 e'\fermata
          \partial 4 e'
          e' e'4. a'16 [gis'] a'4~
          a'8 [gis'16 fis'] gis'4 e'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Herr, straf' mich nicht in dei -- nem Zorn,
      das bitt ich dich von Her -- zen,
      und zücht -- ge mich nicht in dein'm Grimm,
      weil ich so voll Be -- trüb -- niss bin,
      und lei -- de gro -- ße Schmer -- zen.
     
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      sonst bin ich ganz und gar ver -- lorn,
      mit dir ist nicht zu Scher -- zen;
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    {
      \clef bass
      \key a \minor
      \time 4/4
      <<
        
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial 4  c'4
          e' e'8. [d'16] c'4 d'~
          d'8 [a] a4 a\fermata a
          a d'8 [c'16 b] c'8 [d'] e'4
          f'8 [d'] b [e'16 d'] c'4\fermata }
          \partial 4  e'
          dis' e' b b8 [c']~
          c' [d'16 c'] b [a b8] a4\fermata g
          b e' e' e'8. [d'16]
          c'4 b8 [a] b4\fermata
          \partial 4 b
          c' b a4. f'8
          e' [b] e' [d'] cis'4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4  a,4
          a e f8 [e] d [c]
          b, [cis] d4 a,\fermata c~
          c8 [d16 c] b,8 [e] c [b,] a, [c]
          d [b,] e4 a,\fermata }
          \partial 4  e
          b8 [a] g [fis] e [dis] e4
          fis gis a\fermata e
          dis d c8 [d] e4
          f8 [e] f4 e\fermata
          \partial 4 e8 [d]
          c [b,] a, [gis,] a,4 f8 [d]
          e2 a,4\fermata \fine
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
