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
 title = "Allein Gott in der Höh sei Ehr"
 poet = "Auteur : Nikolaus Decius (v.1485-1541)"
  opus = "BWV 260"
  composer = "Jean-Sébastien Bach (1685-1750)"
  tagline = ##f   
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A}}
    {
      \clef treble
      \key g \major
      \time 4/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
          \partial4 g'8 [a']
          b'4 c'' d''  c''
          b' a' b'\fermata b'
          b'4 a'8 [b'] c'' [b'] a'4
          g'8 [e' fis'4] g'\fermata}
          \partial4 g'4
          a' b' c'' b'
          a'8. [b'16] b'4 a'\fermata a'
          b' c'' d'' c''
          b' a' b'\fermata g'
          a' b' c''8 [b'] a'4
          g'8 [e' fis'4] g'\fermata \fine
        }
        
        \new Voice = "alto" {
          \voiceTwo
          \repeat volta 2 {
          \partial4 d'4
          g' g' fis' e'8 [fis']
          g' [fis'] e'4 dis'\fermata e'
          d'8 [e'] fis'4 g'4. fis'8 
          g'4 d' d'\fermata }
          \partial 4  d'8 [e']
          fis'4 gis' a'8 [a] d' [e']
          a8 a'4 gis'8 e'4\fermata d'
          d' g' fis'8 [gis'] a'4
          g'8 [fis'] e'4 dis'\fermata b8 [cis']
          d' [e'] fis'4 e'4. d'16 [c']
          g'4 d' d'\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {
      Al --  lein Gott in der Höh' sei Ehr'
      und Dank für sei -- ne__ Gna -- de,
      Ein Wohl -- ge -- fall'n Gott an uns hat,
      nun ist groß Fried' ohn' Un -- ter -- laß,
      all' Fehd' hat nun eine En -- de.
    }
    
    \new Lyrics \lyricsto "soprano" {
      da -- rum dass nun und nim -- mer -- mehr
      uns rüh -- ren kann kein Scha -- de.

    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B}}
    {
      \clef bass
      \key g \major
      \time 4/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
          \partial4 b8 [c']
          d'4 e'8 [g] a [b] c' [d']
          e' [b] c'4 fis\fermata g8 [a] 
          b8 [c'] d'4 e'4. d'16 [c']
          d'8 [c'16 b] a4 b\fermata }
          \partial4 b4 
          a d' e'8 f'4 e'8
          e'16 [d' e'8] f' [e'16 d'] c'4\fermata a
          g g8 [a] b4 e
          e'8 [b] c'4 fis\fermata g
          fis b8 [a] g4. fis8 
          d' [c'16 b] a4 b\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
          \partial 4 \break g,4
          g8 [fis] e4 d a,
          e8 [d] c4 b,\fermata e8 [ fis
          g4 fis e8 [d] c [a,]
          b,8 [c] d4 g,\fermata }
          \partial 4 \break g4 
          d8 [d'] c' [b] a4 g
          f8 [c] d [e] a,4\fermata fis
          g8 [fis] e4 b, c8 [d]
          e [d] c4 b,\fermata e 
          d dis e8 [d] c [a,]
          b, [c] d4 g,\fermata \fine
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
