\version "2.27.1"

\language "english"

\header {
  piece = \markup{\larger "6. Gigue"}
  title = "Partita pour clavier n° 3 en la mineur"
  composer = "Jean Sébastien Bach (1685-1750)"
  opus = "BWV 827"
  tagline = ##f
}

\include "Partita_pour_clavier_n°_3_en_la_mineur_(BWV-827)_6._Gigue_Jean_Sébastien_Bach.ily"

\score
{
  \new PianoStaff
  <<
    \new Staff = upperSix \upperSix
    \new Staff = lowerSix \lowerSix
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
  }
}