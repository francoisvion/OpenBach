\version "2.27.1"

\language "english"

\header {
  piece = \markup { \larger "2. Allemande"}
  title = "Partita pour clavier n° 3 en la mineur"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 827"
  tagline = ##f
}

bc = #(define-music-function (parser location left right) (integer? integer?)
#{
\set stemLeftBeamCount = #left
\set stemRightBeamCount = #right
#})

hs = #(define-music-function (parser location hshift) (number?)
#{
#})

longStem = #(define-music-function (parser location length) (number?)
#{
#})

\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_2._Allemande_Jean_Sébastien_Bach.ily"

\score 
{
  \new PianoStaff
  <<
    \new Staff = upperTwo \upperTwo
    \new Staff = lowerTwo \lowerTwo
  >>
  
  \layout
  {
    \context 
    {
      \Score
      \remove "Mark_engraver"
    }
    \context 
    {
      \Staff
      \consists "Mark_engraver"
    }
  } 


  \midi   
  {
    \context 
    {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 40 4)
    }
  }
}
