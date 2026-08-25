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
 title = "Ihr Gestirn', ihr hohlen Lüfte"
 poet = "Auteur : Johann Franck (1618-1677)"
  opus = "BWV 366"
  composer = "Jean Sébastien Bach (1685-1750)"
  tagline = ##f
  copyright = "© 2026 — OpenBach"
  }

\score {
  \new ChoirStaff <<
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {S A} }
    \relative c' {
      \clef treble
      \key d \minor
      \time 3/4
      <<
        \new Voice = "soprano" {
          \voiceOne
          \repeat volta 2 {
            d2 e4
            f2 g4
            a2 d4
            cis2 cis4\fermata
            d2 e4
            f2.
            f,4 g4. g8
            f2.\fermata
          }
          g2 g4
          a2 c4
          bes2 g4
          a2 a4\fermata
          c2 c4
          d2 f4
          e d cis
          d2 d4\fermata \fine
        }
        
        \new Voice = "alto" {
         \voiceTwo
         \repeat volta 2 {
            a,2 cis4
            d2 e4
            f4. g8 a4
            a2 a4\fermata
            a2 a4
            a4. g8 f [e]
            f2 e4
            c2.\fermata
          }
          e4 f g ~
          g8 f4 e8 f4
          f e8 [d] e4
          f2 f4\fermata
          a2 a8 [g]
          f [e] f [g] a4
          bes8 [g] f [e] e [g]
          fis2 fis4\fermata \fine
        }
      >>
    }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 1
      Ihr Ge -- stirn', ihr hoh -- len Lüf -- te
      und du, lich -- tes Fir -- ma -- ment;
      Jauch -- zet fröh -- lich, laßt das Sin -- gen
      jetzt bis durch die Wol - ken drin -- gen.
     }
    
    \new Lyrics \lyricsto "soprano" {\set stanza = 2
      tie -- fes Rund, ihr dun -- klen Klüf -- te,
      die der Wie -- der -- hall zer -- trennt.
    }
    
    \new Staff \with { \autoBeamOff instrumentName = \markup \center-column {T B} }
    \relative c {
      \clef bass
      \key d \minor
      \time 3/4
      <<
        \new Voice = "tenor" {
          \voiceOne
          \repeat volta 2 {
            f8 [g] a4 g
            a2 bes4
            c d8 [e] f4
            e2 e4\fermata
            f2 e4
            d8 [cis] d [e] d [c]
            bes [a] d4 c8. [bes16]
            a2.\fermata
          }
          c2 c4
          c4. bes8 a4
          d2 c4
          c2 c4\fermata
          f2 f8 [ees]
          d2 c4
          bes b a
          a2 a4\fermata \fine
        }
        
        \new Voice = "bass" {
          \voiceTwo
          \repeat volta 2 {
            d,8 [e] f [g] f [e]
            d4 c8 [bes] a [g]
            f [g] f [e] d4
            a'2 a4\fermata
            d8 [e] f [e] d [cis]
            d2. ~
            d8 [c] bes4 c
            f,2.\fermata
          }
          c'4 d e
          f g a 
          g g, c
          f2 f4\fermata
          f4 f,8 [g] a4
          bes bes' a
          g gis a
          d,2 d4\fermata \fine
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
