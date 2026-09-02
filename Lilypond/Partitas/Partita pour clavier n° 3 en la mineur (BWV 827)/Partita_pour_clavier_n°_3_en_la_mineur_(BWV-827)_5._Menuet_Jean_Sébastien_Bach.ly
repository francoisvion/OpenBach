\version "2.27.1"

\language "english"

\header {
  piece = \markup{\larger "5. Menuet"}
  title = "Partita pour clavier n° 3 en la mineur"
  composer = "Jean-Sébastien Bach (1685-1750)"
  opus = "BWV 827"
  tagline = ##f
}

bc = % bass cleff
{
  \change Staff = lower
  \stemUp
}

tc = % treble cleff
{
  \change Staff = upper
  \stemNeutral
}

voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)

\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_5._Menuet_Jean_Sébastien_Bach.ily"

\score 
{
  \new PianoStaff
  <<
    \new Staff = upperFive \upperFive
    \new Staff = lowerFive \lowerFive
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

  \header { piece = "5. Menuet" }

  \midi   
  {
  }
}